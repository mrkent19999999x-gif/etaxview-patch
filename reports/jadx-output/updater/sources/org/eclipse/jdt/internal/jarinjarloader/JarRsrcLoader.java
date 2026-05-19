package org.eclipse.jdt.internal.jarinjarloader;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.Attributes;
import java.util.jar.Manifest;

/* loaded from: updater.jar:org/eclipse/jdt/internal/jarinjarloader/JarRsrcLoader.class */
public class JarRsrcLoader {

    /* loaded from: updater.jar:org/eclipse/jdt/internal/jarinjarloader/JarRsrcLoader$ManifestInfo.class */
    private static class ManifestInfo {
        String rsrcMainClass;
        String[] rsrcClassPath;

        private ManifestInfo() {
        }

        ManifestInfo(ManifestInfo manifestInfo) {
            this();
        }
    }

    public static void main(String[] args) throws ClassNotFoundException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, SecurityException, NoSuchMethodException, IOException {
        ManifestInfo mi = getManifestInfo();
        ClassLoader cl = Thread.currentThread().getContextClassLoader();
        URL.setURLStreamHandlerFactory(new RsrcURLStreamHandlerFactory(cl));
        URL[] rsrcUrls = new URL[mi.rsrcClassPath.length];
        for (int i = 0; i < mi.rsrcClassPath.length; i++) {
            String rsrcPath = mi.rsrcClassPath[i];
            if (rsrcPath.endsWith("/")) {
                rsrcUrls[i] = new URL(new StringBuffer("rsrc:").append(rsrcPath).toString());
            } else {
                rsrcUrls[i] = new URL(new StringBuffer("jar:rsrc:").append(rsrcPath).append("!/").toString());
            }
        }
        ClassLoader jceClassLoader = new URLClassLoader(rsrcUrls, null);
        Thread.currentThread().setContextClassLoader(jceClassLoader);
        Class c = Class.forName(mi.rsrcMainClass, true, jceClassLoader);
        Method main = c.getMethod("main", args.getClass());
        main.invoke(null, args);
    }

    private static ManifestInfo getManifestInfo() throws IOException {
        Enumeration resEnum = Thread.currentThread().getContextClassLoader().getResources("META-INF/MANIFEST.MF");
        while (resEnum.hasMoreElements()) {
            try {
                URL url = resEnum.nextElement();
                InputStream is = url.openStream();
                if (is != null) {
                    ManifestInfo result = new ManifestInfo(null);
                    Manifest manifest = new Manifest(is);
                    Attributes mainAttribs = manifest.getMainAttributes();
                    result.rsrcMainClass = mainAttribs.getValue("Rsrc-Main-Class");
                    String rsrcCP = mainAttribs.getValue("Rsrc-Class-Path");
                    if (rsrcCP == null) {
                        rsrcCP = "";
                    }
                    result.rsrcClassPath = splitSpaces(rsrcCP);
                    if (result.rsrcMainClass != null && !result.rsrcMainClass.trim().equals("")) {
                        return result;
                    }
                } else {
                    continue;
                }
            } catch (Exception unused) {
            }
        }
        System.err.println("Missing attributes for JarRsrcLoader in Manifest (Rsrc-Main-Class, Rsrc-Class-Path)");
        return null;
    }

    private static String[] splitSpaces(String line) {
        if (line == null) {
            return null;
        }
        List result = new ArrayList();
        int i = 0;
        while (true) {
            int firstPos = i;
            if (firstPos < line.length()) {
                int lastPos = line.indexOf(32, firstPos);
                if (lastPos == -1) {
                    lastPos = line.length();
                }
                if (lastPos > firstPos) {
                    result.add(line.substring(firstPos, lastPos));
                }
                i = lastPos + 1;
            } else {
                return (String[]) result.toArray(new String[result.size()]);
            }
        }
    }
}
