package com.seatech.tct.autoupdate.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.FileWriterWithEncoding;
import org.apache.commons.lang3.CharEncoding;
import org.apache.commons.lang3.exception.ExceptionUtils;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/utils/UpdateSignerLogger.class */
public class UpdateSignerLogger {
    private static final String PATH_LOG = "C:\\extChrome\\hostlog_update.txt";
    private static boolean isLog = true;

    public static void log(Throwable ex) {
        if (isLog) {
            File file = new File(PATH_LOG);
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
                FileWriterWithEncoding fileWriter = new FileWriterWithEncoding(file.getAbsoluteFile(), CharEncoding.UTF_8, true);
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                bufferedWriter.write(String.valueOf(dateFormat.format(date)) + ": " + ExceptionUtils.getStackTrace(ex) + IOUtils.LINE_SEPARATOR_WINDOWS);
                bufferedWriter.close();
            } catch (Exception e) {
                log(ex);
            }
        }
    }

    public static void log(String message) {
        if (isLog) {
            File file = new File(PATH_LOG);
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
                FileWriterWithEncoding fileWriter = new FileWriterWithEncoding(file.getAbsoluteFile(), CharEncoding.UTF_8, true);
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                bufferedWriter.write(String.valueOf(dateFormat.format(date)) + ": " + message + IOUtils.LINE_SEPARATOR_WINDOWS);
                bufferedWriter.close();
            } catch (Exception e) {
                log(e);
            }
        }
    }

    public static void main(String[] args) {
        log("cứt");
    }
}
