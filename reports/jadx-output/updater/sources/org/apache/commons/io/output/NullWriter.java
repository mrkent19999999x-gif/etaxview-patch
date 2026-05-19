package org.apache.commons.io.output;

import java.io.Writer;

/* loaded from: updater.jar:commons-io.jar:org/apache/commons/io/output/NullWriter.class */
public class NullWriter extends Writer {
    public static final NullWriter NULL_WRITER = new NullWriter();

    @Override // java.io.Writer
    public void write(int idx) {
    }

    @Override // java.io.Writer
    public void write(char[] chr) {
    }

    @Override // java.io.Writer
    public void write(char[] chr, int st, int end) {
    }

    @Override // java.io.Writer
    public void write(String str) {
    }

    @Override // java.io.Writer
    public void write(String str, int st, int end) {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
