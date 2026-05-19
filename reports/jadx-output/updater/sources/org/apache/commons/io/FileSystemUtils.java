package org.apache.commons.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.StringUtils;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/FileSystemUtils.class */
public class FileSystemUtils {
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int INIT_PROBLEM = -1;
    private static final int OTHER = 0;
    private static final int WINDOWS = 1;
    private static final int UNIX = 2;
    private static final int POSIX_UNIX = 3;
    private static final int OS;

    static {
        int os;
        String osName;
        try {
            osName = System.getProperty("os.name");
        } catch (Exception e) {
            os = -1;
        }
        if (osName == null) {
            throw new IOException("os.name not found");
        }
        String osName2 = osName.toLowerCase();
        if (osName2.indexOf("windows") != -1) {
            os = 1;
        } else if (osName2.indexOf("linux") != -1 || osName2.indexOf("sun os") != -1 || osName2.indexOf("sunos") != -1 || osName2.indexOf("solaris") != -1 || osName2.indexOf("mpe/ix") != -1 || osName2.indexOf("freebsd") != -1 || osName2.indexOf("irix") != -1 || osName2.indexOf("digital unix") != -1 || osName2.indexOf("unix") != -1 || osName2.indexOf("mac os x") != -1) {
            os = 2;
        } else if (osName2.indexOf("hp-ux") != -1 || osName2.indexOf("aix") != -1) {
            os = 3;
        } else {
            os = 0;
        }
        OS = os;
    }

    public static long freeSpace(String path) throws IOException {
        return INSTANCE.freeSpaceOS(path, OS, false);
    }

    public static long freeSpaceKb(String path) throws IOException {
        return INSTANCE.freeSpaceOS(path, OS, true);
    }

    long freeSpaceOS(String path, int os, boolean kb) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (os) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return kb ? freeSpaceWindows(path) / FileUtils.ONE_KB : freeSpaceWindows(path);
            case 2:
                return freeSpaceUnix(path, kb, false);
            case 3:
                return freeSpaceUnix(path, kb, true);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceWindows(String path) throws IOException {
        String path2 = FilenameUtils.normalize(path);
        if (path2.length() > 2 && path2.charAt(1) == ':') {
            path2 = path2.substring(0, 2);
        }
        String[] cmdAttribs = {"cmd.exe", "/C", new StringBuffer().append("dir /-c ").append(path2).toString()};
        List lines = performCommand(cmdAttribs, Integer.MAX_VALUE);
        for (int i = lines.size() - 1; i >= 0; i--) {
            String line = (String) lines.get(i);
            if (line.length() > 0) {
                return parseDir(line, path2);
            }
        }
        throw new IOException(new StringBuffer().append("Command line 'dir /-c' did not return any info for path '").append(path2).append("'").toString());
    }

    long parseDir(String line, String path) throws IOException {
        int bytesStart = 0;
        int bytesEnd = 0;
        int j = line.length() - 1;
        while (true) {
            if (j < 0) {
                break;
            }
            if (Character.isDigit(line.charAt(j))) {
                bytesEnd = j + 1;
                break;
            }
            j--;
        }
        while (true) {
            if (j < 0) {
                break;
            }
            char c = line.charAt(j);
            if (!Character.isDigit(c) && c != ',' && c != '.') {
                bytesStart = j + 1;
                break;
            }
            j--;
        }
        if (j < 0) {
            throw new IOException(new StringBuffer().append("Command line 'dir /-c' did not return valid info for path '").append(path).append("'").toString());
        }
        StringBuffer buf = new StringBuffer(line.substring(bytesStart, bytesEnd));
        int k = 0;
        while (k < buf.length()) {
            if (buf.charAt(k) == ',' || buf.charAt(k) == '.') {
                int i = k;
                k = i - 1;
                buf.deleteCharAt(i);
            }
            k++;
        }
        return parseBytes(buf.toString(), path);
    }

    long freeSpaceUnix(String path, boolean kb, boolean posix) throws IOException {
        if (path.length() == 0) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String path2 = FilenameUtils.normalize(path);
        String flags = "-";
        if (kb) {
            flags = new StringBuffer().append(flags).append("k").toString();
        }
        if (posix) {
            flags = new StringBuffer().append(flags).append("P").toString();
        }
        String[] cmdAttribs = flags.length() > 1 ? new String[]{"df", flags, path2} : new String[]{"df", path2};
        List lines = performCommand(cmdAttribs, 3);
        if (lines.size() < 2) {
            throw new IOException(new StringBuffer().append("Command line 'df' did not return info as expected for path '").append(path2).append("'- response was ").append(lines).toString());
        }
        String line2 = (String) lines.get(1);
        StringTokenizer tok = new StringTokenizer(line2, StringUtils.SPACE);
        if (tok.countTokens() < 4) {
            if (tok.countTokens() == 1 && lines.size() >= 3) {
                String line3 = (String) lines.get(2);
                tok = new StringTokenizer(line3, StringUtils.SPACE);
            } else {
                throw new IOException(new StringBuffer().append("Command line 'df' did not return data as expected for path '").append(path2).append("'- check path is valid").toString());
            }
        } else {
            tok.nextToken();
        }
        tok.nextToken();
        tok.nextToken();
        String freeSpace = tok.nextToken();
        return parseBytes(freeSpace, path2);
    }

    long parseBytes(String freeSpace, String path) throws IOException {
        try {
            long bytes = Long.parseLong(freeSpace);
            if (bytes < 0) {
                throw new IOException(new StringBuffer().append("Command line 'df' did not find free space in response for path '").append(path).append("'- check path is valid").toString());
            }
            return bytes;
        } catch (NumberFormatException e) {
            throw new IOException(new StringBuffer().append("Command line 'df' did not return numeric data as expected for path '").append(path).append("'- check path is valid").toString());
        }
    }

    List performCommand(String[] cmdAttribs, int max) throws IOException {
        List lines = new ArrayList(20);
        Process proc = null;
        InputStream in = null;
        OutputStream out = null;
        InputStream err = null;
        BufferedReader inr = null;
        try {
            try {
                proc = openProcess(cmdAttribs);
                in = proc.getInputStream();
                out = proc.getOutputStream();
                err = proc.getErrorStream();
                inr = new BufferedReader(new InputStreamReader(in));
                for (String line = inr.readLine(); line != null && lines.size() < max; line = inr.readLine()) {
                    lines.add(line.toLowerCase().trim());
                }
                proc.waitFor();
                if (proc.exitValue() != 0) {
                    throw new IOException(new StringBuffer().append("Command line returned OS error code '").append(proc.exitValue()).append("' for command ").append(Arrays.asList(cmdAttribs)).toString());
                }
                if (lines.size() == 0) {
                    throw new IOException(new StringBuffer().append("Command line did not return any info for command ").append(Arrays.asList(cmdAttribs)).toString());
                }
                return lines;
            } catch (InterruptedException ex) {
                throw new IOException(new StringBuffer().append("Command line threw an InterruptedException '").append(ex.getMessage()).append("' for command ").append(Arrays.asList(cmdAttribs)).toString());
            }
        } finally {
            IOUtils.closeQuietly(in);
            IOUtils.closeQuietly(out);
            IOUtils.closeQuietly(err);
            IOUtils.closeQuietly(inr);
            if (proc != null) {
                proc.destroy();
            }
        }
    }

    Process openProcess(String[] cmdAttribs) throws IOException {
        return Runtime.getRuntime().exec(cmdAttribs);
    }
}
