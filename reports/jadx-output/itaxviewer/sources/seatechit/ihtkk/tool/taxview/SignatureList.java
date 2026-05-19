package seatechit.ihtkk.tool.taxview;

import java.io.File;
import java.security.cert.X509Certificate;
import java.util.Collection;
import org.apache.commons.io.FileUtils;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import seatechit.ihtkk.tool.TaxViewExceptionHandler;
import seatechit.ihtkk.tool.signature.XMLSignatureValidationResult;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxview/SignatureList.class */
public class SignatureList extends Dialog {
    protected Object result;
    protected Shell signatureList;
    private Collection signatureValidationResult;

    public SignatureList(Shell parent, int style, Collection signatureValidationResult) {
        super(parent, style);
        this.signatureValidationResult = signatureValidationResult;
    }

    public Object open() {
        createContents();
        Display display = getParent().getDisplay();
        Monitor primary = display.getPrimaryMonitor();
        Rectangle bounds = primary.getBounds();
        Rectangle rect = this.signatureList.getBounds();
        int x = bounds.x + ((bounds.width - rect.width) / 2);
        int y = bounds.y + ((bounds.height - rect.height) / 2);
        this.signatureList.setLocation(x, y);
        this.signatureList.open();
        this.signatureList.layout();
        while (!this.signatureList.isDisposed()) {
            if (!display.readAndDispatch()) {
                display.sleep();
            }
        }
        return this.result;
    }

    private void createContents() {
        final X509Certificate[] certs = new X509Certificate[this.signatureValidationResult.size()];
        int idx = 0;
        this.signatureList = new Shell(getParent(), getStyle());
        this.signatureList.setImage(new Image(this.signatureList.getDisplay(), "image\\verify.ico"));
        this.signatureList.setSize(459, 214);
        this.signatureList.setText("Danh sách chữ ký điện tử");
        Label signatureListLabel = new Label(this.signatureList, 0);
        signatureListLabel.setBounds(5, 10, 200, 13);
        signatureListLabel.setText("Danh sách chữ ký điện tử trên hồ sơ");
        final Button viewCertButton = new Button(this.signatureList, 0);
        final Table signatureTable = new Table(this.signatureList, 67584);
        signatureTable.addMouseListener(new MouseAdapter() { // from class: seatechit.ihtkk.tool.taxview.SignatureList.1
            public void mouseDoubleClick(MouseEvent e) {
                X509Certificate selectedSignatureSert = certs[signatureTable.getSelectionIndex()];
                if (selectedSignatureSert == null) {
                    return;
                }
                try {
                    SignatureList.this.viewCert(selectedSignatureSert);
                } catch (Exception ex) {
                    TaxViewExceptionHandler.handleError(SignatureList.this.signatureList, ex);
                }
            }
        });
        signatureTable.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.SignatureList.2
            public void widgetSelected(SelectionEvent event) {
                X509Certificate selectedSignatureSert = certs[signatureTable.getSelectionIndex()];
                viewCertButton.setEnabled(selectedSignatureSert != null);
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        signatureTable.setBounds(4, 29, 445, 100);
        signatureTable.setHeaderVisible(true);
        signatureTable.setLinesVisible(true);
        TableColumn subjectCol = new TableColumn(signatureTable, 0);
        subjectCol.setWidth(265);
        subjectCol.setText("Chủ thể");
        TableColumn statusCol = new TableColumn(signatureTable, 0);
        statusCol.setWidth(176);
        statusCol.setText("Trạng thái chữ ký");
        for (XMLSignatureValidationResult validationResult : this.signatureValidationResult) {
            TableItem tableItem = new TableItem(signatureTable, 0);
            if (validationResult.getCertChain() != null) {
                certs[idx] = validationResult.getCertChain()[0];
            }
            idx++;
            if (XMLSignatureValidationResult.SIG_STATUS_ERROR == validationResult.getValidStatus()) {
                Color red = new Color(Display.getCurrent(), 255, 0, 0);
                tableItem.setForeground(red);
            }
            tableItem.setText(0, validationResult.getSignerName());
            String resultMsg = validationResult.getValidMessage();
            tableItem.setText(1, resultMsg);
        }
        signatureTable.setSelection(0);
        viewCertButton.addSelectionListener(new SelectionAdapter() { // from class: seatechit.ihtkk.tool.taxview.SignatureList.3
            public void widgetSelected(SelectionEvent e) {
                X509Certificate selectedSignatureSert = certs[signatureTable.getSelectionIndex()];
                if (selectedSignatureSert == null) {
                    return;
                }
                try {
                    SignatureList.this.viewCert(selectedSignatureSert);
                } catch (Exception ex) {
                    TaxViewExceptionHandler.handleError(SignatureList.this.signatureList, ex);
                }
            }
        });
        viewCertButton.setBounds(223, 147, 105, 23);
        viewCertButton.setText("&Xem chứng thư số");
        Button closeButton = new Button(this.signatureList, 0);
        closeButton.addSelectionListener(new SelectionAdapter() { // from class: seatechit.ihtkk.tool.taxview.SignatureList.4
            public void widgetSelected(SelectionEvent e) {
                SignatureList.this.signatureList.dispose();
            }
        });
        closeButton.setBounds(149, 147, 68, 23);
        closeButton.setText("&OK");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewCert(X509Certificate cert) throws Exception {
        File certTempfile = File.createTempFile("IHTKKViewerCert", ".cer");
        certTempfile.deleteOnExit();
        byte[] certEncode = cert.getEncoded();
        FileUtils.writeByteArrayToFile(certTempfile, certEncode);
        Runtime.getRuntime().exec("cmd /c \"" + certTempfile + "\"");
    }
}
