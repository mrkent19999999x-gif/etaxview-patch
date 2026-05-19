package seatechit.ihtkk.tool.taxCatalog;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxCatalog/DMucDMuc.class */
public class DMucDMuc {
    private Document dmucDoc;
    private String prefix;

    public DMucDMuc(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getDmucViewType(String maDanhMuc, String pBanDanhMuc) {
        return getDmucAttr(maDanhMuc, pBanDanhMuc, "viewMethod");
    }

    public String getDmucOrientation(String maDanhMuc, String pBanDanhMuc) {
        return getDmucAttr(maDanhMuc, pBanDanhMuc, "orientation");
    }

    private String getDmucAttr(String maDanhMuc, String pBanDanhMuc, String attr) {
        String tbaoNodeName = "DMuc";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maDanhMuc.equals(eElement.getAttribute("maDanhMuc")) && pBanDanhMuc.equals(eElement.getAttribute("pBanDanhMuc"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDDmuc(String maDanhMuc, String pBanDanhMuc) {
        return getTTinDmuc(maDanhMuc, pBanDanhMuc, "XMLSchema");
    }

    public String getXSLTDmuc(String maDanhMuc, String pBanDanhMuc) {
        return getTTinDmuc(maDanhMuc, pBanDanhMuc, "XSLT");
    }

    public String getExcelTemplateTDmuc(String maDanhMuc, String pBanDanhMuc) {
        return getTTinDmuc(maDanhMuc, pBanDanhMuc, "ExcelTemplate");
    }

    private String getTTinDmuc(String maDanhMuc, String pBanDanhMuc, String nodeName) {
        String tbaoNodeName = "DMuc";
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
                if (maDanhMuc.equals(eElement.getAttribute("maDanhMuc")) && pBanDanhMuc.equals(eElement.getAttribute("pBanDanhMuc"))) {
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

    public String getPLucViewType(String maDanhMuc, String pBanDanhMuc, String plucID) {
        return getPLucAttr(maDanhMuc, pBanDanhMuc, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maDanhMuc, String pBanDanhMuc, String plucID) {
        return getPLucAttr(maDanhMuc, pBanDanhMuc, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maDanhMuc, String pBanDanhMuc, String plucID, String attr) {
        String tbaoNodeName = "DMuc";
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
                if (maDanhMuc.equals(eElement.getAttribute("maDanhMuc")) && pBanDanhMuc.equals(eElement.getAttribute("pBanDanhMuc"))) {
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

    public String getTenPLuc(String maDanhMuc, String pBanDanhMuc, String plucID) {
        return getTTinPLuc(maDanhMuc, pBanDanhMuc, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maDanhMuc, String pBanDanhMuc, String plucID) {
        return getTTinPLuc(maDanhMuc, pBanDanhMuc, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maDanhMuc, String pBanDanhMuc, String plucID) {
        return getTTinPLuc(maDanhMuc, pBanDanhMuc, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maDanhMuc, String pBanDanhMuc, String plucID, String nodeName) {
        String tbaoNodeName = "DMuc";
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
                if (maDanhMuc.equals(eElement.getAttribute("maDanhMuc")) && pBanDanhMuc.equals(eElement.getAttribute("pBanDanhMuc"))) {
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
