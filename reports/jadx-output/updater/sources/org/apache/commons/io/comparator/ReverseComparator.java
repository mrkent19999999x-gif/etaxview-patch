package org.apache.commons.io.comparator;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/comparator/ReverseComparator.class */
class ReverseComparator implements Comparator, Serializable {
    private final Comparator delegate;

    public ReverseComparator(Comparator delegate) {
        if (delegate == null) {
            throw new IllegalArgumentException("Delegate comparator is missing");
        }
        this.delegate = delegate;
    }

    @Override // java.util.Comparator
    public int compare(Object obj1, Object obj2) {
        return this.delegate.compare(obj2, obj1);
    }
}
