package com.seatech.tct.autoupdate;

import com.seatech.tct.autoupdate.objects.Action;
import com.seatech.tct.autoupdate.objects.Instruction;
import com.seatech.tct.autoupdate.objects.Modes;
import com.seatech.tct.autoupdate.parsers.UpdateXMLParser;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import org.xml.sax.SAXException;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/Updater.class */
public class Updater {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action;

    static /* synthetic */ int[] $SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action() {
        int[] iArr = $SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[Action.valuesCustom().length];
        try {
            iArr2[Action.DELETE.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[Action.EXECUTE.ordinal()] = 3;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[Action.MOVE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action = iArr2;
        return iArr2;
    }

    public void update(String instructionsxml, String tmp, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        UpdateXMLParser parser = new UpdateXMLParser();
        Iterator iterator = parser.parse(String.valueOf(tmp) + File.separator + instructionsxml, mode).iterator();
        while (iterator.hasNext()) {
            Instruction instruction = iterator.next();
            switch ($SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action()[instruction.getAction().ordinal()]) {
                case 1:
                    copy(String.valueOf(tmp) + File.separator + instruction.getFilename(), instruction.getDestination());
                    break;
                case 2:
                    delete(instruction.getDestination());
                    break;
                case 3:
                    Runtime.getRuntime().exec("java -jar " + tmp + File.separator + instruction.getFilename());
                    break;
            }
        }
    }

    public void update(String instructionsxml, String tmp, String dstdir, Modes mode) throws SAXException, FileNotFoundException, IOException, InterruptedException {
        UpdateXMLParser parser = new UpdateXMLParser();
        Iterator iterator = parser.parse(String.valueOf(tmp) + File.separator + instructionsxml, mode).iterator();
        while (iterator.hasNext()) {
            Instruction instruction = iterator.next();
            switch ($SWITCH_TABLE$com$seatech$tct$autoupdate$objects$Action()[instruction.getAction().ordinal()]) {
                case 1:
                    copy(String.valueOf(tmp) + File.separator + instruction.getFilename(), String.valueOf(dstdir) + File.separator + instruction.getDestination());
                    break;
                case 2:
                    delete(String.valueOf(dstdir) + File.separator + instruction.getDestination());
                    break;
                case 3:
                    Runtime.getRuntime().exec("java -jar " + tmp + File.separator + instruction.getFilename());
                    break;
            }
        }
    }

    private void copy(String source, String destination) throws FileNotFoundException, IOException {
        File srcfile = new File(source);
        File dstfile = new File(destination);
        if (dstfile.getParentFile() != null) {
            dstfile.getParentFile().mkdirs();
        }
        InputStream in = new FileInputStream(srcfile);
        OutputStream out = new FileOutputStream(dstfile);
        byte[] buffer = new byte[512];
        while (true) {
            int length = in.read(buffer);
            if (length > 0) {
                out.write(buffer, 0, length);
            } else {
                in.close();
                out.close();
                return;
            }
        }
    }

    private void delete(String filename) {
        File file = new File(filename);
        file.delete();
    }
}
