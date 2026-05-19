package seatechit.ihtkk.tool.taxmessagekdtt;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxmessagekdtt/DMucBKeKDTT.class */
public class DMucBKeKDTT {
    private Document dmucDoc;
    private String prefix;

    public DMucBKeKDTT(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getTBaoViewType(String maBKe, String pbanBKe) {
        return getTBaoAttr(maBKe, pbanBKe, "viewMethod");
    }

    public String getTKhaiOrientation(String maBKe, String pbanBKe) {
        return getTBaoAttr(maBKe, pbanBKe, "orientation");
    }

    private String getTBaoAttr(String maBKe, String pbanBKe, String attr) {
        String tbaoNodeName = "BKe";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maBKe.equals(eElement.getAttribute("maBKe")) && pbanBKe.equals(eElement.getAttribute("pbanBKe"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTBao(String maBKe, String pbanBKe) {
        return getTTinTBao(maBKe, pbanBKe, "XMLSchema");
    }

    public String getXSLTTBao(String maBKe, String pbanBKe) {
        return getTTinTBao(maBKe, pbanBKe, "XSLT");
    }

    public String getExcelTemplateTTBao(String maBKe, String pbanBKe) {
        return getTTinTBao(maBKe, pbanBKe, "ExcelTemplate");
    }

    private String getTTinTBao(String maBKe, String pbanBKe, String nodeName) {
        String tbaoNodeName = "BKe";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":" + nodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maBKe.equals(eElement.getAttribute("maBKe")) && pbanBKe.equals(eElement.getAttribute("pbanBKe"))) {
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

    public String getPLucViewType(String maBKe, String pbanBKe, String plucID) {
        return getPLucAttr(maBKe, pbanBKe, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maBKe, String pbanBKe, String plucID) {
        return getPLucAttr(maBKe, pbanBKe, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maBKe, String pbanBKe, String plucID, String attr) {
        String tbaoNodeName = "maBKe";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        String dsPLucNodeName = "DSachPLuc";
        if (this.prefix != null) {
            dsPLucNodeName = String.valueOf(this.prefix) + ":" + dsPLucNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maBKe.equals(eElement.getAttribute("maBKe")) && pbanBKe.equals(eElement.getAttribute("pbanBKe"))) {
                    Node firstChild = eElement.getFirstChild();
                    while (true) {
                        Node child = firstChild;
                        if (child != null) {
                            if (!(child instanceof Element) || !dsPLucNodeName.equals(child.getNodeName())) {
                                firstChild = child.getNextSibling();
                            } else {
                                NodeList plList = child.getChildNodes();
                                for (int temp1 = 0; temp1 < plList.getLength(); temp1++) {
                                    Node plucNode = plList.item(temp1);
                                    if (plucNode.getNodeType() == 1) {
                                        Element plucElement = (Element) plucNode;
                                        if (plucID.equals(plucElement.getAttribute("plucID"))) {
                                            return plucElement.getAttribute(attr);
                                        }
                                    }
                                }
                                return null;
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

    public String getTenPLuc(String maBKe, String pbanBKe, String plucID) {
        return getTTinPLuc(maBKe, pbanBKe, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maBKe, String pbanBKe, String plucID) {
        return getTTinPLuc(maBKe, pbanBKe, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maBKe, String pbanBKe, String plucID) {
        return getTTinPLuc(maBKe, pbanBKe, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maBKe, String pbanBKe, String plucID, String nodeName) {
        String tbaoNodeName = "TBao";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        if (this.prefix != null) {
            nodeName = String.valueOf(this.prefix) + ":" + nodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maBKe.equals(eElement.getAttribute("maBKe")) && pbanBKe.equals(eElement.getAttribute("pbanBKe"))) {
                    Node firstChild = eElement.getFirstChild();
                    while (true) {
                        Node plucChild = firstChild;
                        if (plucChild != null) {
                            if (!(plucChild instanceof Element) || !"DSachPLuc".equals(plucChild.getNodeName())) {
                                firstChild = plucChild.getNextSibling();
                            } else {
                                NodeList plList = plucChild.getChildNodes();
                                for (int temp1 = 0; temp1 < plList.getLength(); temp1++) {
                                    Node plucNode = plList.item(temp1);
                                    if (plucNode.getNodeType() == 1) {
                                        Element plucElement = (Element) plucNode;
                                        if (plucID.equals(plucElement.getAttribute("plucID"))) {
                                            Node firstChild2 = plucElement.getFirstChild();
                                            while (true) {
                                                Node child = firstChild2;
                                                if (child != null) {
                                                    if (!(child instanceof Element) || !nodeName.equals(child.getNodeName())) {
                                                        firstChild2 = child.getNextSibling();
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
