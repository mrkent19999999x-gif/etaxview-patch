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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessageNtdt/DmucTBaoBTruNtdt.class */
public class DmucTBaoBTruNtdt {
    private Document dmucDoc;
    private String prefix;

    public DmucTBaoBTruNtdt(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getCTuViewType(String pbanTBaoBTru, String maTBao) {
        String tkhaiNodeName = "TBaoBTru";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBaoBTru.equals(eElement.getAttribute("pbanTBaoBTru"))) {
                    return eElement.getAttribute("viewMethod");
                }
            }
        }
        return null;
    }

    public String getXSDTBaoBTru(String pbanTBaoBTru, String maTBao) {
        return getTTinTBaoBTru(pbanTBaoBTru, maTBao, "XMLSchema");
    }

    public String getXSLTTBaoBTru(String pbanTBaoBTru, String maTBao) {
        return getTTinTBaoBTru(pbanTBaoBTru, maTBao, "XSLT");
    }

    private String getTTinTBaoBTru(String pbanTBaoBTru, String maTBao, String nodeName) {
        String tkhaiNodeName = "TBaoBTru";
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBaoBTru.equals(eElement.getAttribute("pbanTBaoBTru"))) {
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
