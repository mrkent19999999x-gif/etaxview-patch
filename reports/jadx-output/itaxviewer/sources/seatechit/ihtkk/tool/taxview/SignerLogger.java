package seatechit.ihtkk.tool.taxview;

import java.io.BufferedWriter;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.output.FileWriterWithEncoding;
import org.apache.commons.lang3.exception.ExceptionUtils;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxview/SignerLogger.class */
public class SignerLogger {
    private static final String PATH_LOG = "C:\\extChrome\\hostlog.txt";
    private static final String PATH_DIR = "C:\\extChrome";

    public static void log(Throwable ex) {
        File file = new File(PATH_LOG);
        try {
            File dir = new File(PATH_DIR);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            long lengthTemp = file.length();
            if (lengthTemp > 200000) {
                file.delete();
                file.createNewFile();
            }
            FileWriterWithEncoding fileWriter = new FileWriterWithEncoding(file.getAbsoluteFile(), "UTF-8", true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            bufferedWriter.write(String.valueOf(dateFormat.format(date)) + ": " + ExceptionUtils.getStackTrace(ex) + "\r\n");
            bufferedWriter.close();
        } catch (Exception e) {
            log(ex);
            e.printStackTrace();
        }
    }

    public static void log(String message) {
        File file = new File(PATH_LOG);
        try {
            File dir = new File(PATH_DIR);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            long lengthTemp = file.length();
            if (lengthTemp > 200000) {
                file.delete();
                file.createNewFile();
            }
            FileWriterWithEncoding fileWriter = new FileWriterWithEncoding(file.getAbsoluteFile(), "UTF-8", true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            bufferedWriter.write(String.valueOf(dateFormat.format(date)) + ": " + message + "\r\n");
            bufferedWriter.close();
        } catch (Exception e) {
            log(e);
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        log("dddd");
    }
}
