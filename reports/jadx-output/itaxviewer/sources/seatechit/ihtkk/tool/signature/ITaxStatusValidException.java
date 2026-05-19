package seatechit.ihtkk.tool.signature;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/ITaxStatusValidException.class */
public class ITaxStatusValidException extends Exception {
    private String message;

    public ITaxStatusValidException(String message) {
        this.message = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
