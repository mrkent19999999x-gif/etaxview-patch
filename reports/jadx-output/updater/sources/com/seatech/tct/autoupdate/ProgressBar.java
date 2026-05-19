package com.seatech.tct.autoupdate;

import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Observable;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/ProgressBar.class */
public class ProgressBar extends Observable implements Runnable {
    private static final int MAX_BUFFER_SIZE = 1024;
    public static final String[] STATUSES = {"Downloading", "Paused", "Complete", "Cancelled", "Error"};
    public static final int DOWNLOADING = 0;
    public static final int PAUSED = 1;
    public static final int COMPLETE = 2;
    public static final int CANCELLED = 3;
    public static final int ERROR = 4;
    private URL url;
    private int size = -1;
    private int downloaded = 0;
    private int status = 0;

    public ProgressBar(URL url) {
        this.url = url;
        download();
    }

    public String getUrl() {
        return this.url.toString();
    }

    public int getSize() {
        return this.size;
    }

    public float getProgress() {
        return (this.downloaded / this.size) * 100.0f;
    }

    public int getStatus() {
        return this.status;
    }

    public void pause() {
        this.status = 1;
        stateChanged();
    }

    public void resume() {
        this.status = 0;
        stateChanged();
        download();
    }

    public void cancel() {
        this.status = 3;
        stateChanged();
    }

    private void error() {
        this.status = 4;
        stateChanged();
    }

    private void download() {
        Thread thread = new Thread(this);
        thread.start();
    }

    private String getFileName(URL url) {
        String fileName = url.getFile();
        return fileName.substring(fileName.lastIndexOf(47) + 1);
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] buffer;
        RandomAccessFile file = null;
        InputStream stream = null;
        try {
            try {
                HttpURLConnection connection = (HttpURLConnection) this.url.openConnection();
                connection.setRequestProperty("Range", "bytes=" + this.downloaded + "-");
                connection.connect();
                if (connection.getResponseCode() / 100 != 2) {
                    error();
                }
                int contentLength = connection.getContentLength();
                if (contentLength < 1) {
                    error();
                }
                if (this.size == -1) {
                    this.size = contentLength;
                    stateChanged();
                }
                file = new RandomAccessFile(getFileName(this.url), "rw");
                file.seek(this.downloaded);
                stream = connection.getInputStream();
                while (this.status == 0) {
                    if (this.size - this.downloaded > MAX_BUFFER_SIZE) {
                        buffer = new byte[MAX_BUFFER_SIZE];
                    } else {
                        buffer = new byte[this.size - this.downloaded];
                    }
                    int read = stream.read(buffer);
                    if (read == -1) {
                        break;
                    }
                    file.write(buffer, 0, read);
                    this.downloaded += read;
                    stateChanged();
                }
                if (this.status == 0) {
                    this.status = 2;
                    stateChanged();
                }
                if (file != null) {
                    try {
                        file.close();
                    } catch (Exception e) {
                    }
                }
                if (stream != null) {
                    try {
                        stream.close();
                    } catch (Exception e2) {
                    }
                }
            } catch (Throwable th) {
                if (file != null) {
                    try {
                        file.close();
                    } catch (Exception e3) {
                    }
                }
                if (stream != null) {
                    try {
                        stream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            error();
            if (file != null) {
                try {
                    file.close();
                } catch (Exception e6) {
                }
            }
            if (stream != null) {
                try {
                    stream.close();
                } catch (Exception e7) {
                }
            }
        }
    }

    private void stateChanged() {
        setChanged();
        notifyObservers();
    }
}
