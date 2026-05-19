package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/input/AutoCloseInputStream.class */
public class AutoCloseInputStream extends ProxyInputStream {
    public AutoCloseInputStream(InputStream in) {
        super(in);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
        this.in = new ClosedInputStream();
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int n = this.in.read();
        if (n == -1) {
            close();
        }
        return n;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b) throws IOException {
        int n = this.in.read(b);
        if (n == -1) {
            close();
        }
        return n;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        int n = this.in.read(b, off, len);
        if (n == -1) {
            close();
        }
        return n;
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
