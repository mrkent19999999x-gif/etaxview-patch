package seatechit.ihtkk.tool.taxRegistration;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxRegistration/DMucDKy.class */
public class DMucDKy {
    private Document dmucDoc;
    private String prefix;

    public DMucDKy(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getTBaoViewType(String maTBao, String pbanTBao) {
        return getTBaoAttr(maTBao, pbanTBao, "viewMethod");
    }

    public String getTKhaiOrientation(String maTBao, String pbanTBao) {
        return getTBaoAttr(maTBao, pbanTBao, "orientation");
    }

    private String getTBaoAttr(String maDKy, String pBanDKy, String attr) {
        String tbaoNodeName = "DKyThueDTu";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maDKy.equals(eElement.getAttribute("maDKy")) && pBanDKy.equals(eElement.getAttribute("pBanDKy"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTBao(String maDKy, String pBanDKy) {
        return getTTinTBao(maDKy, pBanDKy, "XMLSchema");
    }

    public String getXSLTTBao(String maDKy, String pBanDKy) {
        return getTTinTBao(maDKy, pBanDKy, "XSLT");
    }

    public String getExcelTemplateTTBao(String maDKy, String pBanDKy) {
        return getTTinTBao(maDKy, pBanDKy, "ExcelTemplate");
    }

    private String getTTinTBao(String maDKy, String pBanDKy, String nodeName) {
        String tbaoNodeName = "DKyThueDTu";
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
                if (maDKy.equals(eElement.getAttribute("maDKy")) && pBanDKy.equals(eElement.getAttribute("pBanDKy"))) {
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

    public String getPLucViewType(String maDKy, String pBanDKy, String plucID) {
        return getPLucAttr(maDKy, pBanDKy, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maDKy, String pBanDKy, String plucID) {
        return getPLucAttr(maDKy, pBanDKy, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maDKy, String pBanDKy, String plucID, String attr) {
        String tbaoNodeName = "DKyThueDTu";
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
                if (maDKy.equals(eElement.getAttribute("maDKy")) && pBanDKy.equals(eElement.getAttribute("pBanDKy"))) {
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

    public String getTenPLuc(String maDKy, String pBanDKy, String plucID) {
        return getTTinPLuc(maDKy, pBanDKy, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maDKy, String pBanDKy, String plucID) {
        return getTTinPLuc(maDKy, pBanDKy, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maDKy, String pBanDKy, String plucID) {
        return getTTinPLuc(maDKy, pBanDKy, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maDKy, String pBanDKy, String plucID, String nodeName) {
        String tbaoNodeName = "DKyThueDTu";
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
                if (maDKy.equals(eElement.getAttribute("maDKy")) && pBanDKy.equals(eElement.getAttribute("pBanDKy"))) {
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
