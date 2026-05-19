package com.seatech.tct.autoupdate.objects;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/objects/Modes.class */
public enum Modes {
    FILE,
    URL;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Modes[] valuesCustom() {
        Modes[] valuesCustom = values();
        int length = valuesCustom.length;
        Modes[] modesArr = new Modes[length];
        System.arraycopy(valuesCustom, 0, modesArr, 0, length);
        return modesArr;
    }
}
