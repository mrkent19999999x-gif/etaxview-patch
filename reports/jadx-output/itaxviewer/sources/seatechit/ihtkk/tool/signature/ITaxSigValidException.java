package seatechit.ihtkk.tool.signature;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/ITaxSigValidException.class */
public class ITaxSigValidException extends Exception {
    private String message;

    public ITaxSigValidException(String message) {
        this.message = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
