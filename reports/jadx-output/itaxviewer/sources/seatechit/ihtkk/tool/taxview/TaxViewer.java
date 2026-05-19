package seatechit.ihtkk.tool.taxview;

import java.awt.Component;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.swing.Icon;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.xml.sax.SAXException;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.SWidgetTool;
import seatechit.ihtkk.tool.TaxViewExceptionHandler;
import seatechit.ihtkk.tool.autoupdate.AutoUpdate;
import seatechit.ihtkk.tool.autoupdate.objects.Modes;
import seatechit.ihtkk.tool.autoupdate.objects.Release;
import seatechit.ihtkk.tool.autoupdate.parsers.ReleaseXMLParser;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxview/TaxViewer.class */
public class TaxViewer {
    private static ConfigInfo config;
    private static final Display display = Display.getDefault();
    private static final Color bgViewColor = new Color(display, new RGB(242, 242, 242));
    private static final Shell shell = new Shell();
    private static Composite viewArea;
    private static Composite actionArea;
    private static Menu appMenu;
    private static ToolBar appToolBar;
    private HSoThueViewer hsoViewer;
    private Browser homeBrowser;

    public static void main(String[] args) {
        String hsoFileName = null;
        if (args.length > 0) {
            hsoFileName = args[0];
        }
        try {
            init();
        } catch (Exception ex) {
            TaxViewExceptionHandler.handleError(shell, ex);
            shell.dispose();
            display.dispose();
            System.exit(0);
        }
        try {
            new TaxViewer().start(hsoFileName);
        } catch (Exception ex2) {
            SignerLogger.log("start" + ex2);
            TaxViewExceptionHandler.handleError(shell, ex2);
        }
    }

    private static void init() throws Exception {
        config = new ConfigInfo();
        System.setProperty("java.net.useSystemProxies", "true");
    }

    public void start(String hsoFileName) throws IOException, SAXException, ParserConfigurationException {
        shell.setBackground(bgViewColor);
        shell.setText("iTax Viewer");
        shell.setImage(new Image(shell.getDisplay(), "image\\appicon.ico"));
        shell.addListener(21, new Listener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1
            public void handleEvent(Event event) {
                TaxViewer.this.exit();
            }
        });
        createMenuToolbar();
        createLayout();
        shell.open();
        shell.setMaximized(true);
        if (hsoFileName == null) {
            openHomePage();
        } else {
            viewFile(hsoFileName);
        }
        checkVersion();
        while (!shell.isDisposed()) {
            try {
                if (!display.readAndDispatch()) {
                    display.sleep();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                return;
            }
        }
    }

    private void createMenuToolbar() {
        appMenu = new Menu(shell, 2);
        shell.setMenuBar(appMenu);
        MenuItem fileMenuItem = new MenuItem(appMenu, 64);
        fileMenuItem.setText("&Tệp hồ sơ");
        Menu fileSubMenu = new Menu(fileMenuItem);
        fileMenuItem.setMenu(fileSubMenu);
        MenuItem openMenuItem = new MenuItem(fileSubMenu, 0);
        openMenuItem.setText("&Mở tệp hồ sơ");
        openMenuItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Open
            public void widgetSelected(SelectionEvent event) {
                TaxViewer.this.openFile();
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        new MenuItem(fileSubMenu, 2);
        MenuItem printMenuItem = new MenuItem(fileSubMenu, 0);
        printMenuItem.setEnabled(false);
        printMenuItem.setText("&In hồ sơ");
        printMenuItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Print
            public void widgetSelected(SelectionEvent event) {
                try {
                    TaxViewer.this.hsoViewer.printFile();
                } catch (IOException ex) {
                    TaxViewExceptionHandler.handleError(TaxViewer.shell.getShell(), ex);
                }
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        new MenuItem(fileSubMenu, 2);
        MenuItem exitMenuItem = new MenuItem(fileSubMenu, 0);
        exitMenuItem.setText("&Thoát khỏi ứng dụng");
        exitMenuItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1ExitApp
            public void widgetSelected(SelectionEvent event) {
                TaxViewer.this.exit();
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        MenuItem signatureMenu = new MenuItem(appMenu, 64);
        signatureMenu.setEnabled(false);
        signatureMenu.setText("Chữ &ký điện tử");
        Menu signatureSubMenu = new Menu(signatureMenu);
        signatureMenu.setMenu(signatureSubMenu);
        MenuItem verifyMenuItem = new MenuItem(signatureSubMenu, 0);
        verifyMenuItem.setText("&Xác minh chữ ký điện tử");
        verifyMenuItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Verifier
            public void widgetSelected(SelectionEvent event) {
                try {
                    TaxViewer.this.hsoViewer.displaySignatureStatus();
                } catch (Exception ex) {
                    TaxViewExceptionHandler.handleError(TaxViewer.shell.getShell(), ex);
                }
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        appToolBar = new ToolBar(shell, 131072);
        appToolBar.setBackground(bgViewColor);
        appToolBar.setBounds(5, 5, 129, 22);
        ToolItem openToolItem = new ToolItem(appToolBar, 8);
        openToolItem.setToolTipText("Mở tệp hồ sơ");
        openToolItem.setImage(new Image(shell.getDisplay(), "image\\open.ico"));
        openToolItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Open
            public void widgetSelected(SelectionEvent event) {
                TaxViewer.this.openFile();
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        new ToolItem(appToolBar, 2);
        ToolItem printToolItem = new ToolItem(appToolBar, 0);
        printToolItem.setEnabled(false);
        printToolItem.setToolTipText("In hồ sơ");
        printToolItem.setImage(new Image(shell.getDisplay(), "image\\print.ico"));
        printToolItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Print
            public void widgetSelected(SelectionEvent event) {
                try {
                    TaxViewer.this.hsoViewer.printFile();
                } catch (IOException ex) {
                    TaxViewExceptionHandler.handleError(TaxViewer.shell.getShell(), ex);
                }
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        new ToolItem(appToolBar, 2);
        ToolItem verifyToolItem = new ToolItem(appToolBar, 0);
        verifyToolItem.setEnabled(false);
        verifyToolItem.setToolTipText("Xác minh chữ ký điện tử");
        verifyToolItem.setImage(new Image(shell.getDisplay(), "image\\verify.ico"));
        verifyToolItem.addSelectionListener(new SelectionListener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.1Verifier
            public void widgetSelected(SelectionEvent event) {
                try {
                    TaxViewer.this.hsoViewer.displaySignatureStatus();
                } catch (Exception ex) {
                    TaxViewExceptionHandler.handleError(TaxViewer.shell.getShell(), ex);
                }
            }

            public void widgetDefaultSelected(SelectionEvent event) {
            }
        });
        appToolBar.pack();
    }

    private void createLayout() {
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginWidth = 0;
        gridLayout.marginHeight = 0;
        gridLayout.verticalSpacing = 0;
        gridLayout.horizontalSpacing = 0;
        shell.setLayout(gridLayout);
        GridData gridData = new GridData(4, 4, true, true);
        shell.setLayoutData(gridData);
        viewArea = new Composite(shell, 0);
        viewArea.setBackground(bgViewColor);
        GridLayout gridLayout2 = new GridLayout();
        gridLayout2.marginWidth = 1;
        gridLayout2.marginHeight = 1;
        gridLayout2.verticalSpacing = 1;
        gridLayout2.horizontalSpacing = 1;
        viewArea.setLayout(gridLayout2);
        GridData gridData2 = new GridData(4, 4, true, true);
        viewArea.setLayoutData(gridData2);
        actionArea = new Composite(shell, 0);
        actionArea.setBackground(bgViewColor);
        GridLayout gridLayout3 = new GridLayout();
        gridLayout3.marginWidth = 0;
        gridLayout3.marginHeight = 0;
        gridLayout3.verticalSpacing = 0;
        gridLayout3.horizontalSpacing = 0;
        actionArea.setLayout(gridLayout3);
        GridData gridData3 = new GridData(4, 4, false, false);
        actionArea.setLayoutData(gridData3);
    }

    private void openHomePage() throws IOException, SAXException, ParserConfigurationException {
        this.homeBrowser = new Browser(viewArea, 0);
        SignerLogger.log("----homeBrowser: 881");
        SWidgetTool.boderControl(this.homeBrowser, 18);
        this.homeBrowser.addListener(35, new Listener() { // from class: seatechit.ihtkk.tool.taxview.TaxViewer.2
            public void handleEvent(Event event) {
                event.doit = false;
            }
        });
        this.homeBrowser.setUrl(config.getHomePageFileName());
        viewArea.layout();
        shell.layout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openFile() {
        FileDialog fd = new FileDialog(shell, 4096);
        fd.setFilterPath("C:/");
        String[] filterExt = {"*.xml", "*.*"};
        String[] filterNamne = {"Tax Files (*.xml)", "All Files (*.*)"};
        fd.setFilterExtensions(filterExt);
        fd.setFilterNames(filterNamne);
        String openedFilePath = fd.open();
        if (openedFilePath != null) {
            viewFile(openedFilePath);
        }
    }

    private void viewFile(String fileName) {
        try {
            if (this.homeBrowser != null) {
                this.homeBrowser.dispose();
                Control[] children = viewArea.getChildren();
                for (Control control : children) {
                    control.dispose();
                }
                this.homeBrowser = null;
            }
            if (this.hsoViewer != null) {
                this.hsoViewer.dispose();
                this.hsoViewer = null;
            }
            SignerLogger.log("----viewFile: 2 " + fileName);
            this.hsoViewer = new HSoThueViewer(config, viewArea, actionArea, fileName);
            this.hsoViewer.createHSoViewer();
            enableMenu();
            shell.layout();
        } catch (Exception ex) {
            try {
                openHomePage();
                TaxViewExceptionHandler.handleError(shell, ex);
            } catch (Exception hex) {
                TaxViewExceptionHandler.handleError(shell, hex);
            }
        }
    }

    public static void enableMenu() {
        for (int i = 0; i < appMenu.getItemCount(); i++) {
            MenuItem item = appMenu.getItem(i);
            item.setEnabled(true);
            Menu menu = item.getMenu();
            for (int j = 0; j < menu.getItemCount(); j++) {
                menu.getItem(j).setEnabled(true);
            }
        }
        for (int k = 0; k < appToolBar.getItemCount(); k++) {
            appToolBar.getItem(k).setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exit() {
        if (this.hsoViewer != null) {
            this.hsoViewer.dispose();
        }
        display.dispose();
        shell.dispose();
        System.exit(0);
    }

    private static void checkVersion() {
        ReleaseXMLParser parser = new ReleaseXMLParser();
        try {
            boolean isNewVersion = AutoUpdate.isNewVersion("http://ihtkkresource.gdt.gov.vn/etax_resource/resources/Itaxviewer/update");
            if (isNewVersion) {
                SignerLogger.log("Start update new version");
                Release currentLocal = parser.parse("update/latest.xml", Modes.FILE);
                Release current = parser.parse(String.valueOf("http://ihtkkresource.gdt.gov.vn/etax_resource/resources/Itaxviewer/update") + "/latest.xml", Modes.URL);
                String versionLocal = currentLocal.getpkgver();
                String versionServer = current.getpkgver();
                int res = JOptionPane.showOptionDialog(new JFrame(), "Đã có phiên bản " + versionServer + " mới hơn phiên bản " + versionLocal + " hiện tạiBạn có muốn cập nhật không ?", "Thông báo", 0, 3, (Icon) null, new Object[]{"Yes", "No"}, 0);
                if (res == 0) {
                    upgradePackage("http://ihtkkresource.gdt.gov.vn/etax_resource/resources/Itaxviewer/update");
                } else if (res == 1 || res == -1) {
                    return;
                }
                boolean isNewVersion2 = AutoUpdate.isNewVersion("http://ihtkkresource.gdt.gov.vn/etax_resource/resources/Itaxviewer/update");
                if (!isNewVersion2) {
                    JOptionPane.showMessageDialog((Component) null, "Cập nhật iTaxviewer phiên bản " + versionServer + " thành công!");
                    String currentPath = new File(".").getCanonicalPath();
                    String source = Paths.get("update/update.zip", new String[0]).toString();
                    String target = Paths.get(currentPath, new String[0]).toString();
                    unzip(source, target);
                    return;
                }
                return;
            }
            SignerLogger.log("No new version");
        } catch (Exception e) {
            SignerLogger.log(e);
            SignerLogger.log("Error: No new version");
        }
    }

    private static void upgradePackage(String rootUrl) throws Exception {
        String[] params = {rootUrl};
        AutoUpdate _updater = new AutoUpdate();
        _updater.downloadPackage(rootUrl);
        _updater.updatePackage();
    }

    public static void unzip(String zipFilePath, String destDirectory) throws IOException {
        File destDir = new File(destDirectory);
        if (!destDir.exists()) {
            destDir.mkdir();
        }
        ZipInputStream zipIn = new ZipInputStream(new FileInputStream(zipFilePath));
        ZipEntry nextEntry = zipIn.getNextEntry();
        while (true) {
            ZipEntry entry = nextEntry;
            if (entry != null) {
                String filePath = String.valueOf(destDirectory) + File.separator + entry.getName();
                if (!entry.isDirectory()) {
                    extractFile(zipIn, filePath);
                } else {
                    File dir = new File(filePath);
                    dir.mkdirs();
                }
                zipIn.closeEntry();
                nextEntry = zipIn.getNextEntry();
            } else {
                zipIn.close();
                return;
            }
        }
    }

    private static void extractFile(ZipInputStream zipIn, String filePath) throws IOException {
        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(filePath));
        byte[] bytesIn = new byte[63];
        while (true) {
            int read = zipIn.read(bytesIn);
            if (read != -1) {
                bos.write(bytesIn, 0, read);
            } else {
                bos.close();
                return;
            }
        }
    }
}
