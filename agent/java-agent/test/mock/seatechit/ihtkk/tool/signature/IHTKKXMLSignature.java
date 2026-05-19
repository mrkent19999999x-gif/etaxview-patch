package seatechit.ihtkk.tool.signature;

import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.dom.DOMValidateContext;

public class IHTKKXMLSignature {
    public static int count = 0;

    public void verifyXMLSignature(XMLSignature sig, DOMValidateContext ctx) {
        count++;
        System.out.println("[MOCK] IHTKKXMLSignature.verifyXMLSignature called (" + count + ")");
    }
}
