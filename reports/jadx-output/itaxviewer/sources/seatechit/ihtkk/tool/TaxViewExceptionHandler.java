package seatechit.ihtkk.tool;

import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/TaxViewExceptionHandler.class */
public class TaxViewExceptionHandler {
    public static void showMsg(Shell shell, String msg, int iconType) {
        MessageBox messageBox = new MessageBox(shell, iconType | 32);
        messageBox.setText("Thông báo");
        messageBox.setMessage(msg);
        messageBox.open();
    }

    public static void handleError(Shell shell, Exception ex) {
        ex.printStackTrace();
        showMsg(shell, ex.getMessage(), 8);
    }
}
