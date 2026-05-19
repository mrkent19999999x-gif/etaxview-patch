package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/comparator/DefaultFileComparator.class */
public class DefaultFileComparator implements Comparator, Serializable {
    public static final Comparator DEFAULT_COMPARATOR = new DefaultFileComparator();
    public static final Comparator DEFAULT_REVERSE = new ReverseComparator(DEFAULT_COMPARATOR);

    @Override // java.util.Comparator
    public int compare(Object obj1, Object obj2) {
        File file1 = (File) obj1;
        File file2 = (File) obj2;
        return file1.compareTo(file2);
    }
}
