package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import org.apache.commons.io.IOCase;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/comparator/PathFileComparator.class */
public class PathFileComparator implements Comparator, Serializable {
    public static final Comparator PATH_COMPARATOR = new PathFileComparator();
    public static final Comparator PATH_REVERSE = new ReverseComparator(PATH_COMPARATOR);
    public static final Comparator PATH_INSENSITIVE_COMPARATOR = new PathFileComparator(IOCase.INSENSITIVE);
    public static final Comparator PATH_INSENSITIVE_REVERSE = new ReverseComparator(PATH_INSENSITIVE_COMPARATOR);
    public static final Comparator PATH_SYSTEM_COMPARATOR = new PathFileComparator(IOCase.SYSTEM);
    public static final Comparator PATH_SYSTEM_REVERSE = new ReverseComparator(PATH_SYSTEM_COMPARATOR);
    private final IOCase caseSensitivity;

    public PathFileComparator() {
        this.caseSensitivity = IOCase.SENSITIVE;
    }

    public PathFileComparator(IOCase caseSensitivity) {
        this.caseSensitivity = caseSensitivity == null ? IOCase.SENSITIVE : caseSensitivity;
    }

    @Override // java.util.Comparator
    public int compare(Object obj1, Object obj2) {
        File file1 = (File) obj1;
        File file2 = (File) obj2;
        return this.caseSensitivity.checkCompareTo(file1.getPath(), file2.getPath());
    }
}
