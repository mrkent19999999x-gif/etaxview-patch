package com.seatech.tct.autoupdate.parsers;

import com.seatech.tct.autoupdate.objects.Instruction;
import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: updater.jar:com/seatech/tct/autoupdate/parsers/UpdateXMLParserHandler.class */
public class UpdateXMLParserHandler extends DefaultHandler {
    private String currentelement = "";
    private ArrayList<Instruction> instructions = new ArrayList<>();
    private Instruction instruction = new Instruction();
    private boolean ininstruction = false;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String uri, String name, String qName, Attributes atts) {
        this.currentelement = qName;
        this.ininstruction = true;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String namespaceURI, String localName, String qName) {
        this.ininstruction = false;
        if (qName.equals("instruction")) {
            this.instructions.add(this.instruction);
            this.instruction = new Instruction();
            this.currentelement = "";
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] ch, int start, int length) {
        String value = null;
        if (!this.currentelement.equals("")) {
            value = String.copyValueOf(ch, start, length).trim();
        }
        if (this.ininstruction) {
            if (this.currentelement.equals("action")) {
                this.instruction.setAction(value);
            } else if (this.currentelement.equals("destination")) {
                this.instruction.setDestination(value);
            } else if (this.currentelement.equals("file")) {
                this.instruction.setFilename(value);
            }
            this.currentelement = "";
        }
    }

    public ArrayList<Instruction> getInstructions() {
        return this.instructions;
    }
}
