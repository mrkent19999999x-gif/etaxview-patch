package seatechit.ihtkk.tool.taxdoc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxdoc/ITaxInvalidDocException.class */
public class ITaxInvalidDocException extends Exception {
    private String message;

    public ITaxInvalidDocException(String message) {
        this.message = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
