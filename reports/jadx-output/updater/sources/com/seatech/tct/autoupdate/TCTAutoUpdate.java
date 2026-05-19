package com.seatech.tct.autoupdate;

import com.seatech.tct.autoupdate.objects.Modes;
import com.seatech.tct.autoupdate.utils.UpdateSignerLogger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.swing.JFrame;
import javax.swing.JLabel;
import org.xml.sax.SAXException;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/TCTAutoUpdate.class */
public class TCTAutoUpdate extends JFrame {
    private static final long serialVersionUID = 1;
    private JLabel jLabel1;
    private JLabel jLabel2;

    public TCTAutoUpdate(String rootUrl) {
        initComponents();
        if (rootUrl == null || rootUrl == "") {
        }
        try {
            UpdateSignerLogger.log("Start update");
            Updater update = new Updater();
            update.update("update.xml", "./update", Modes.FILE);
            UpdateSignerLogger.log("Update completed");
            System.exit(0);
        } catch (FileNotFoundException ex) {
            UpdateSignerLogger.log("Cập nhật phần mềm không thành công.\n");
            UpdateSignerLogger.log(ex);
        } catch (IOException ex2) {
            UpdateSignerLogger.log("Cập nhật phần mềm không thành công.\n");
            UpdateSignerLogger.log(ex2);
        } catch (InterruptedException ex3) {
            UpdateSignerLogger.log("Cập nhật phần mềm không thành công.\n");
            UpdateSignerLogger.log(ex3);
        } catch (SAXException ex4) {
            UpdateSignerLogger.log("Cập nhật phần mềm không thành công.");
            UpdateSignerLogger.log(ex4);
        }
        File tmp = new File("./update");
        if (tmp.exists()) {
            for (File file : tmp.listFiles()) {
                file.delete();
            }
            tmp.delete();
        }
    }

    private void initComponents() {
        pack();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        javax.swing.UIManager.setLookAndFeel(r0.getClassName());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r3) {
        /*
            java.lang.String r0 = ""
            r4 = r0
            javax.swing.UIManager$LookAndFeelInfo[] r0 = javax.swing.UIManager.getInstalledLookAndFeels()     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            r1 = r0
            r8 = r1
            int r0 = r0.length     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            r7 = r0
            r0 = 0
            r6 = r0
            goto L2f
        L11:
            r0 = r8
            r1 = r6
            r0 = r0[r1]     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            r5 = r0
            java.lang.String r0 = "Nimbus"
            r1 = r5
            java.lang.String r1 = r1.getName()     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            boolean r0 = r0.equals(r1)     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            if (r0 == 0) goto L2c
            r0 = r5
            java.lang.String r0 = r0.getClassName()     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            javax.swing.UIManager.setLookAndFeel(r0)     // Catch: java.lang.ClassNotFoundException -> L38 java.lang.InstantiationException -> L40 java.lang.IllegalAccessException -> L48 javax.swing.UnsupportedLookAndFeelException -> L50
            goto L55
        L2c:
            int r6 = r6 + 1
        L2f:
            r0 = r6
            r1 = r7
            if (r0 < r1) goto L11
            goto L55
        L38:
            r5 = move-exception
            r0 = r5
            com.seatech.tct.autoupdate.utils.UpdateSignerLogger.log(r0)
            goto L55
        L40:
            r5 = move-exception
            r0 = r5
            com.seatech.tct.autoupdate.utils.UpdateSignerLogger.log(r0)
            goto L55
        L48:
            r5 = move-exception
            r0 = r5
            com.seatech.tct.autoupdate.utils.UpdateSignerLogger.log(r0)
            goto L55
        L50:
            r5 = move-exception
            r0 = r5
            com.seatech.tct.autoupdate.utils.UpdateSignerLogger.log(r0)
        L55:
            com.seatech.tct.autoupdate.TCTAutoUpdate$1 r0 = new com.seatech.tct.autoupdate.TCTAutoUpdate$1
            r1 = r0
            r1.<init>()
            java.awt.EventQueue.invokeLater(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.seatech.tct.autoupdate.TCTAutoUpdate.main(java.lang.String[]):void");
    }
}
