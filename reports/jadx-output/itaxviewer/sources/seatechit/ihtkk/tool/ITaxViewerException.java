package seatechit.ihtkk.tool;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/ITaxViewerException.class */
public class ITaxViewerException extends Exception {
    private String message;

    public ITaxViewerException(String message) {
        this.message = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
