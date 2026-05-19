package seatechit.ihtkk.tool.signature;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/ITaxCertValidException.class */
public class ITaxCertValidException extends Exception {
    private String message;

    public ITaxCertValidException(String message) {
        this.message = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
