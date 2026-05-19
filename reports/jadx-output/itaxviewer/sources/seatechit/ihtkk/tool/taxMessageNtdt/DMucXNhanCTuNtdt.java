package seatechit.ihtkk.tool.taxMessageNtdt;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/DMucXNhanCTuNtdt.class */
public class DMucXNhanCTuNtdt {
    private Document dmucDoc;
    private String prefix;

    public DMucXNhanCTuNtdt(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getCTuViewType(String pbanXml) {
        String tkhaiNodeName = "XNhanCTu";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (pbanXml.equals(eElement.getAttribute("pbanXML"))) {
                    return eElement.getAttribute("viewMethod");
                }
            }
        }
        return null;
    }

    public String getXSDTXNhanCTu(String pbanXML) {
        return getTTinXNhanCTu(pbanXML, "XMLSchema");
    }

    public String getXSLTXNhanCTu(String pbanXML) {
        return getTTinXNhanCTu(pbanXML, "XSLT");
    }

    private String getTTinXNhanCTu(String pbanXML, String nodeName) {
        String tkhaiNodeName = "XNhanCTu";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":" + nodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (pbanXML.equals(eElement.getAttribute("pbanXML"))) {
                    Node firstChild = eElement.getFirstChild();
                    while (true) {
                        Node child = firstChild;
                        if (child != null) {
                            if (!(child instanceof Element) || !nodeName.equals(child.getNodeName())) {
                                firstChild = child.getNextSibling();
                            } else {
                                return child.getTextContent();
                            }
                        } else {
                            return null;
                        }
                    }
                }
            }
        }
        return null;
    }
}
