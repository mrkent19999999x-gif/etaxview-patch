package org.apache.commons.io.filefilter;

import java.io.File;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/filefilter/AbstractFileFilter.class */
public abstract class AbstractFileFilter implements IOFileFilter {
    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return accept(file.getParentFile(), file.getName());
    }

    @Override // org.apache.commons.io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File dir, String name) {
        return accept(new File(dir, name));
    }

    public String toString() {
        String name = getClass().getName();
        int period = name.lastIndexOf(46);
        return period > 0 ? name.substring(period + 1) : name;
    }
}
