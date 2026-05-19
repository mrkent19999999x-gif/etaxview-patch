package seatechit.ihtkk.tool.taxview;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringEscapeUtils;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.LocationAdapter;
import org.eclipse.swt.browser.LocationEvent;
import org.eclipse.swt.browser.ProgressAdapter;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OleFrame;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Listener;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;
import seatechit.ihtkk.tool.SWidgetTool;
import seatechit.ihtkk.tool.TaxViewExceptionHandler;
import seatechit.ihtkk.tool.signature.XMLSignatureValidationResult;
import seatechit.ihtkk.tool.taxdoc.HSoThue;
import seatechit.ihtkk.tool.taxdoc.HSoThueFactory;
import seatechit.ihtkk.tool.taxdoc.ITaxInvalidDocException;
import seatechit.ihtkk.tool.taxdoc.PLuc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxview/HSoThueViewer.class */
public class HSoThueViewer {
    public static final int COLOR_BORDER = 18;
    private HSoThue hso;
    private static OleFrame oleExcelFrame;
    private static OleAutomation oleExcel;
    private static OleClientSite oleExcelClientSite;
    private static Composite viewArea;
    private static Composite actionArea;
    private Control selectedControl;
    private static Browser fileBrowser = null;
    private static String displaySigFunctionName = "displaySigFunction";

    public HSoThueViewer(ConfigInfo config, Composite viewArea2, Composite actionArea2, String tkhaiFileName) throws IOException, ParserConfigurationException, ITaxInvalidDocException, ITaxViewerException {
        viewArea = viewArea2;
        actionArea = actionArea2;
        this.hso = HSoThueFactory.createHSoThue(tkhaiFileName, config);
        System.setProperty("org.eclipse.swt.browser.DefaultType", "edge");
    }

    public void createHSoViewer() throws IOException {
        if (HSoThue.LANDSCAPE_PAGE_FORMAT.equals(this.hso.getViewMethod())) {
            closeHTMLViewer();
            createHTMLViewer();
        } else if (!"2".equals(this.hso.getViewMethod())) {
            "3".equals(this.hso.getViewMethod());
        }
        if (this.hso.getPlucList() != null) {
            createPLucViewLink();
        }
    }

    private void createPLucViewLink() {
        Collection<PLuc> plucList = this.hso.getPlucList();
        Composite composite = new Composite(actionArea, 0);
        composite.setBackground(actionArea.getBackground());
        RowLayout rowLayout = new RowLayout();
        rowLayout.marginLeft = 5;
        rowLayout.marginTop = 5;
        rowLayout.marginRight = 5;
        rowLayout.marginBottom = 5;
        rowLayout.spacing = 5;
        composite.setLayout(rowLayout);
        final Link tkhaiLk = SWidgetTool.createFlatLink(composite, 3, 2, 1, 18, "Tờ khai");
        tkhaiLk.setToolTipText(this.hso.getTenHSo());
        tkhaiLk.addMouseListener(new MouseListener() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.1
            public void mouseDown(MouseEvent e) {
                HSoThueViewer.this.viewHSoHTML();
                HSoThueViewer.this.enableLink(tkhaiLk);
            }

            public void mouseUp(MouseEvent e) {
            }

            public void mouseDoubleClick(MouseEvent e) {
            }
        });
        int i = 0;
        for (final PLuc pluc : plucList) {
            if (i == 13) {
                composite = new Composite(actionArea, 0);
                composite.setBackground(actionArea.getBackground());
                RowLayout rowLayout2 = new RowLayout();
                rowLayout2.marginLeft = 5;
                rowLayout2.marginTop = 5;
                rowLayout2.marginRight = 5;
                rowLayout2.marginBottom = 5;
                rowLayout2.spacing = 5;
                composite.setLayout(rowLayout2);
            }
            if ("PL_NQ101_GTGT".equals(pluc.getPlucID())) {
                pluc.setPlucID("PL_Giamthue_GTGT_23_24");
                pluc.setPlucName("GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 110/2023/QH15");
            }
            if ("PL_NQ142_GTGT".equals(pluc.getPlucID())) {
                pluc.setPlucID("PL 142/2024/QH15 – 174/2024/QH15 – 204/2025/QH15");
            }
            final Link plucLk = SWidgetTool.createFlatLink(composite, 3, 2, 1, 18, pluc.getPlucID());
            plucLk.setToolTipText(pluc.getPlucName());
            plucLk.addMouseListener(new MouseListener() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.2
                public void mouseDown(MouseEvent e) {
                    try {
                        HSoThueViewer.this.viewPLucHTML(pluc);
                        HSoThueViewer.this.enableLink(plucLk);
                    } catch (IOException ioEx) {
                        TaxViewExceptionHandler.handleError(HSoThueViewer.actionArea.getShell(), ioEx);
                    }
                }

                public void mouseUp(MouseEvent e) {
                }

                public void mouseDoubleClick(MouseEvent e) {
                }
            });
            i++;
        }
        actionArea.layout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableLink(Link selectedLk) {
        selectedLk.setEnabled(false);
        if (this.selectedControl != null) {
            this.selectedControl.setEnabled(true);
        }
        this.selectedControl = selectedLk;
    }

    public void viewHSoHTML() {
        viewHTML(this.hso.getTkhaiHTML(), this.hso.getOrientation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewPLucHTML(PLuc pluc) throws IOException {
        viewHTML(pluc.getPlucHTML(), pluc.getOrientation());
    }

    private void viewHTML(String html, String pageFormat) {
        if (pageFormat.equals(HSoThue.LANDSCAPE_PAGE_FORMAT)) {
            fileBrowser.execute("document.getElementById('tkhaiTable').width='1262px';");
        } else if (pageFormat.equals(HSoThue.PORTRAIT_PAGE_FORMAT)) {
            fileBrowser.execute("document.getElementById('tkhaiTable').width='892px';");
        }
        fileBrowser.execute("document.getElementById('tkhai').innerHTML=\"" + StringEscapeUtils.escapeJava(html) + "\";");
        fileBrowser.setFocus();
    }

    public void displaySignatureStatus() throws Exception {
        Collection validationResult = this.hso.getSigValidationResult();
        if (validationResult.isEmpty()) {
            throw new Exception("Hồ sơ không có chữ ký điện tử");
        }
        new SignatureList(viewArea.getShell(), 67680, validationResult).open();
    }

    public void dispose() {
        for (Control control : viewArea.getChildren()) {
            control.dispose();
        }
        Control[] children = actionArea.getChildren();
        for (Control control2 : children) {
            control2.dispose();
        }
        closeHTMLViewer();
        closeExcelViewer();
    }

    public void createHTMLViewer() throws IOException {
        if (fileBrowser != null) {
            fileBrowser.dispose();
        }
        fileBrowser = new Browser(viewArea, 0);
        SWidgetTool.boderControl(fileBrowser, 18);
        fileBrowser.addListener(35, new Listener() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.3
            public void handleEvent(Event event) {
                event.doit = false;
            }
        });
        String runhtml = new File("data\\run.html").toURI().toURL().toString();
        fileBrowser.setUrl(runhtml);
        fileBrowser.addProgressListener(new ProgressListener() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.1HSoHTML
            public void completed(ProgressEvent event) {
                try {
                    HSoThueViewer.fileBrowser.execute("showLoadingMsgBox('Đang đọc tệp hồ sơ...');");
                    String xmlFileName = new File(HSoThueViewer.this.hso.getHsoViewFileName()).toURI().toURL().toString();
                    String xsltFileName = new File(HSoThueViewer.this.hso.getXsltFile()).toURI().toURL().toString();
                    String html = (String) HSoThueViewer.fileBrowser.evaluate("return transform('" + xmlFileName + "','" + xsltFileName + "');");
                    HSoThueViewer.fileBrowser.execute("document.getElementById('tkhai').innerHTML=\"" + StringEscapeUtils.escapeJava(html) + "\";");
                    HSoThueViewer.this.hso.setTkhaiHTML(html.replace("<?xml version=\"1.0\" encoding=\"UTF-16\"?>", ""));
                    Double htmlWidth = (Double) HSoThueViewer.fileBrowser.evaluate("return document.getElementById('tkhaiTable').offsetWidth");
                    HSoThueViewer.this.hso.setPageWidth(htmlWidth);
                    if (HSoThueViewer.this.hso.getPlucList() != null) {
                        for (Object obj : HSoThueViewer.this.hso.getPlucList()) {
                            PLuc pluc = (PLuc) obj;
                            String xsltFileName2 = new File(pluc.getPlucXSLTFile()).toURI().toURL().toString();
                            String html2 = (String) HSoThueViewer.fileBrowser.evaluate("return transform('" + xmlFileName + "','" + xsltFileName2 + "');");
                            HSoThueViewer.fileBrowser.execute("document.getElementById('tkhai').innerHTML=\"" + StringEscapeUtils.escapeJava(html2) + "\";");
                            Double htmlWidth2 = (Double) HSoThueViewer.fileBrowser.evaluate("return document.getElementById('tkhaiTable').offsetWidth");
                            pluc.setPlucHTML(html2);
                            pluc.setPageWidth(htmlWidth2);
                        }
                    }
                    HSoThueViewer.this.viewHSoHTML();
                    HSoThueViewer.fileBrowser.execute("document.getElementById('signature').innerHTML=\"" + StringEscapeUtils.escapeJava(HSoThueViewer.this.getSigStatusHTML(HSoThueViewer.this.hso)) + "\";");
                    HSoThueViewer.fileBrowser.execute("hideMsgBox();");
                } catch (Exception ex) {
                    ex.printStackTrace();
                    TaxViewExceptionHandler.handleError(HSoThueViewer.viewArea.getShell(), ex);
                }
            }

            public void changed(ProgressEvent event) {
            }
        });
        fileBrowser.addKeyListener(new KeyListener() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.4
            public void keyReleased(KeyEvent e) {
                if ((e.stateMask & 262144) == 262144 && e.keyCode == 112) {
                    try {
                        HSoThueViewer.this.printFile();
                    } catch (IOException ex) {
                        TaxViewExceptionHandler.handleError(HSoThueViewer.viewArea.getShell(), ex);
                    }
                }
            }

            public void keyPressed(KeyEvent e) {
                if ((e.stateMask & 262144) == 262144 && e.keyCode == 112) {
                    try {
                        HSoThueViewer.this.printFile();
                    } catch (IOException ex) {
                        TaxViewExceptionHandler.handleError(HSoThueViewer.viewArea.getShell(), ex);
                    }
                }
            }
        });
        final BrowserFunction displaySigFunction = new SignatureListFunction(displaySigFunctionName);
        fileBrowser.addProgressListener(new ProgressAdapter() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.5
            public void completed(ProgressEvent event) {
                Browser browser = HSoThueViewer.fileBrowser;
                final BrowserFunction browserFunction = displaySigFunction;
                browser.addLocationListener(new LocationAdapter() { // from class: seatechit.ihtkk.tool.taxview.HSoThueViewer.5.1
                    public void changed(LocationEvent event2) {
                        HSoThueViewer.fileBrowser.removeLocationListener(this);
                        browserFunction.dispose();
                    }
                });
            }
        });
        viewArea.layout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSigStatusHTML(HSoThue hso) throws IOException {
        String sigImageURL;
        Collection validationResults = hso.getSigValidationResult();
        Iterator ito = validationResults.iterator();
        String sigStatusMsgColor = "green";
        String str = "<hr width=\"100%\" style=\"color: #C0C0C0; height: 1px\"><table onclick=\"displaySig();\" border=\"0\" cellpadding=\"0\" cellspacing=\"5\" style=\"cursor:hand;\">";
        while (true) {
            String msgHTML = str;
            if (ito.hasNext()) {
                XMLSignatureValidationResult valResult = (XMLSignatureValidationResult) ito.next();
                String subject = "<em>" + valResult.getSignerName() + "</em>";
                String sigStatusMsg = String.valueOf("Ký điện tử bởi: ") + subject;
                if (!valResult.getChucVu().equals("") && valResult.getChucVu() != null) {
                    sigStatusMsg = String.valueOf(sigStatusMsg) + " - Chức vụ: " + valResult.getChucVu();
                }
                if (!valResult.getTimeStampKDT().equals("") && valResult.getTimeStampKDT() != null) {
                    sigStatusMsg = String.valueOf(sigStatusMsg) + "<br/>Ngày ký: " + valResult.getTimeStampKDT();
                }
                if (XMLSignatureValidationResult.SIG_STATUS_GOOD == valResult.getValidStatus()) {
                    sigImageURL = new File("image\\valid_sig.png").toURI().toURL().toString();
                } else if (XMLSignatureValidationResult.SIG_STATUS_ERROR == valResult.getValidStatus()) {
                    sigStatusMsgColor = "red";
                    sigImageURL = new File("image\\error_sig.png").toURI().toURL().toString();
                    sigStatusMsg = String.valueOf(sigStatusMsg) + ". " + valResult.getValidMessage();
                } else {
                    sigImageURL = new File("image\\warning_sig.png").toURI().toURL().toString();
                    sigStatusMsg = String.valueOf(sigStatusMsg) + ". " + valResult.getValidMessage();
                }
                str = String.valueOf(msgHTML) + "<tr> <td style=\"vertical-align:middle\"><img src=\"" + sigImageURL + "\"/></td> <td style=\"vertical-align:middle;font-family:arial;color:" + sigStatusMsgColor + "\">" + sigStatusMsg + ".</td></tr>";
            } else {
                return String.valueOf(msgHTML) + "</table>";
            }
        }
    }

    public void createExcelViewer(String templatefileName, String dataFileName) throws IOException {
        closeHTMLViewer();
        String strXML = readFile(dataFileName, StandardCharsets.UTF_8);
        oleExcelFrame = new OleFrame(viewArea, 0);
        SWidgetTool.boderControl(oleExcelFrame, 18);
        oleExcelClientSite = new OleClientSite(oleExcelFrame, 0, new File(templatefileName));
        oleExcelFrame.setFileMenus(viewArea.getShell().getMenuBar().getItems());
        oleExcelClientSite.doVerb(-5);
        oleExcelClientSite.exec(24, 0, (Variant) null, (Variant) null);
        viewArea.layout();
        oleExcel = new OleAutomation(oleExcelClientSite);
        int[] rgdispid = oleExcel.getIDsOfNames(new String[]{"Application"});
        int dispIdMember = rgdispid[0];
        Variant result = oleExcel.getProperty(dispIdMember);
        OleAutomation oleExcelApp = result.getAutomation();
        int[] rgdispid2 = oleExcelApp.getIDsOfNames(new String[]{"Workbooks"});
        int dispIdMember2 = rgdispid2[0];
        Variant result2 = oleExcelApp.getProperty(dispIdMember2);
        OleAutomation oleExcelWorkbooks = result2.getAutomation();
        int[] rgdispid3 = oleExcelWorkbooks.getIDsOfNames(new String[]{"Item"});
        int dispIdMember3 = rgdispid3[0];
        Variant result3 = oleExcelWorkbooks.getProperty(dispIdMember3, new Variant[]{new Variant(1)});
        OleAutomation oleExcelWorkbook = result3.getAutomation();
        int[] rgdispid4 = oleExcelWorkbook.getIDsOfNames(new String[]{"XmlMaps"});
        int dispIdMember4 = rgdispid4[0];
        Variant result4 = oleExcelWorkbook.getProperty(dispIdMember4, new Variant[]{new Variant(1)});
        OleAutomation oleExcelXmlMap = result4.getAutomation();
        int[] rgdispid5 = oleExcelXmlMap.getIDsOfNames(new String[]{"ImportXml"});
        int dispIdMember5 = rgdispid5[0];
        oleExcelXmlMap.invoke(dispIdMember5, new Variant[]{new Variant(strXML)});
    }

    public void printFile() throws IOException {
        boolean objPDFRunable;
        URL stylesheet;
        String baseFileName = FilenameUtils.getBaseName(this.hso.getHsoFileName());
        if (baseFileName.length() < 3) {
            baseFileName = "hso_" + baseFileName;
        }
        File tempfile = File.createTempFile(baseFileName, ".pdf");
        tempfile.deleteOnExit();
        ArrayList<File> printFiles = new ArrayList<>();
        String width = Integer.valueOf(this.hso.getPageWidth().intValue()).toString();
        boolean orientation = this.hso.getOrientation().equalsIgnoreCase(HSoThue.LANDSCAPE_PAGE_FORMAT);
        Double pdfVer = (Double) fileBrowser.evaluate("return getPdfVer()");
        if (pdfVer == null || "".equals(pdfVer)) {
            objPDFRunable = false;
        } else if (pdfVer.doubleValue() >= 9.0d) {
            objPDFRunable = true;
        } else {
            objPDFRunable = false;
        }
        if (orientation) {
            if (this.hso.getPageWidth().doubleValue() < 1262.0d) {
                width = "1262px";
            }
        } else if (this.hso.getPageWidth().doubleValue() < 892.0d) {
            width = "892px";
        }
        String beginBlock = "<div style='background-color:white; padding:0px 0px 0px 0px' border='0' align='center'> \n<table cellpadding='0' cellspacing='0' border='0' width = '" + width + "'  align='center'>\n<tr> \n<td align='left' id='tkhai'> \n";
        String sig = getSigStatusHTML(this.hso);
        if (this.hso.getXsltFile().contains("CTu")) {
            stylesheet = new File("data\\css\\ihtkk_ntdt.css").toURI().toURL();
        } else {
            stylesheet = new File("data\\css\\ihtkk.css").toURI().toURL();
        }
        String html = (String.valueOf(beginBlock) + this.hso.getTkhaiHTML() + "</td>\n</tr> \n</table> \n </div> \n").replaceAll("<div id=\"sigDiv\"></div>", sig).replaceAll("<DIV id=sigDiv></DIV>", sig);
        if (this.hso.getXsltFile().contains("XNhanHSThue")) {
            html = html.replace("<table style=\"border-width: 1pt; border-style: solid; border-color: rgb(0, 0, 0) !important; padding: 3px; width: 98%; margin-top: 5px; float: left; border-collapse: collapse; position: relative;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\"><tbody></tbody></table>", "");
        }
        File hsofile = File.createTempFile("hso" + baseFileName, ".pdf");
        hsofile.deleteOnExit();
        if (objPDFRunable) {
            new TKhaiConverter().convertToHSoPDF(html, stylesheet, orientation, hsofile, false, this.hso.getPageWidth());
        } else {
            new TKhaiConverter().convertToHSoPDF(html, stylesheet, orientation, hsofile, true, this.hso.getPageWidth());
        }
        printFiles.add(hsofile);
        if (this.hso.getPlucList() != null) {
            for (Object obj : this.hso.getPlucList()) {
                PLuc pluc = (PLuc) obj;
                String width2 = Integer.valueOf(pluc.getPageWidth().intValue()).toString();
                boolean orientation2 = pluc.getOrientation().equalsIgnoreCase(HSoThue.LANDSCAPE_PAGE_FORMAT);
                if (orientation2) {
                    if (pluc.getPageWidth().doubleValue() < 1262.0d) {
                        width2 = "1262px";
                    }
                } else if (pluc.getPageWidth().doubleValue() < 892.0d) {
                    width2 = "892px";
                }
                String beginBlock2 = "<div style='background-color:white; padding:0px 0px 0px 0px' border='0' align='center'> \n<table cellpadding='0' cellspacing='0' border='0' width = '" + width2 + "'  align='center'>\n<tr> \n<td align='left' id='tkhai'> \n";
                String html2 = (String.valueOf(beginBlock2) + pluc.getPlucHTML() + "</td>\n</tr> \n</table> \n </div> \n").replaceAll("<div id=\"sigDiv\"></div>", sig).replaceAll("<DIV id=sigDiv></DIV>", sig);
                File plucfile = File.createTempFile("hso" + baseFileName, ".pdf");
                plucfile.deleteOnExit();
                new TKhaiConverter().convertToHSoPDF(html2, stylesheet, orientation2, plucfile, false, pluc.getPageWidth());
                printFiles.add(plucfile);
            }
        }
        String tkhaiPDFURL = tempfile.toURI().toURL().toString();
        try {
            new TKhaiConverter().mergePDF(printFiles, tempfile);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (objPDFRunable) {
            String script = "var objPDF= '<object id=\"tkhaiPDF\" width=\"0\" height=\"0\" onreadystatechange=\"this.printWithDialog();\" type=\"application/pdf\" data=\"" + tkhaiPDFURL + "\"></object>';\ndocument.body.insertAdjacentHTML('beforeEnd', objPDF);\n";
            fileBrowser.execute(script);
        } else {
            Desktop desktop = Desktop.getDesktop();
            desktop.open(tempfile);
        }
    }

    public void webBrowserExe(int OLECMDID) {
        String script = "var objBrowser= '<object id=\"browser\" width=\"0\" height=\"0\" classid=\"CLSID:8856F961-340A-11D0-A96B-00C04FD705A2\"></object>';\ndocument.body.insertAdjacentHTML('beforeEnd', objBrowser);\nbrowser.ExecWB(" + OLECMDID + ", 2);\nbrowser.outerHTML = \"\";";
        fileBrowser.execute(script);
    }

    public void closeHTMLViewer() {
        if (fileBrowser != null) {
            fileBrowser.dispose();
            fileBrowser = null;
        }
    }

    public void closeExcelViewer() {
        if (oleExcel != null) {
            oleExcel.dispose();
            oleExcel = null;
            try {
                Runtime.getRuntime().exec("taskkill /F /IM EXCEL.EXE");
            } catch (IOException ex) {
                TaxViewExceptionHandler.handleError(viewArea.getShell(), ex);
            }
            if (oleExcelClientSite != null) {
                oleExcelClientSite.doVerb(-6);
                oleExcelClientSite.dispose();
                oleExcelClientSite = null;
            }
            if (oleExcelFrame != null) {
                oleExcelFrame.dispose();
                oleExcelFrame = null;
            }
        }
    }

    private String readFile(String path, Charset encoding) throws IOException {
        byte[] encoded = Files.readAllBytes(Paths.get(path, new String[0]));
        return encoding.decode(ByteBuffer.wrap(encoded)).toString();
    }

    /* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxview/HSoThueViewer$SignatureListFunction.class */
    class SignatureListFunction extends BrowserFunction {
        SignatureListFunction(String name) {
            super(HSoThueViewer.fileBrowser, name);
        }

        public Object function(Object[] arguments) {
            try {
                HSoThueViewer.this.displaySignatureStatus();
                return new Boolean(true);
            } catch (Exception ex) {
                TaxViewExceptionHandler.handleError(HSoThueViewer.fileBrowser.getShell(), ex);
                return new Boolean(false);
            }
        }
    }
}
