package com.seatech.tct.autoupdate.objects;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/objects/Action.class */
public enum Action {
    MOVE,
    DELETE,
    EXECUTE;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Action[] valuesCustom() {
        Action[] valuesCustom = values();
        int length = valuesCustom.length;
        Action[] actionArr = new Action[length];
        System.arraycopy(valuesCustom, 0, actionArr, 0, length);
        return actionArr;
    }
}
