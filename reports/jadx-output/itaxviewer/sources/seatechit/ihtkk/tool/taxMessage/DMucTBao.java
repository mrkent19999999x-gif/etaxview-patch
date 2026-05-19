package seatechit.ihtkk.tool.taxMessage;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxMessage/DMucTBao.class */
public class DMucTBao {
    private Document dmucDoc;
    private String prefix;

    public DMucTBao(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getTBaoViewType(String maTBao, String pbanTBao) {
        return getTBaoAttr(maTBao, pbanTBao, "viewMethod");
    }

    public String getTBaoHDDTViewType(String maTBao, String pbanTBao) {
        return getTBaoHDDTAttr(maTBao, pbanTBao, "viewMethod");
    }

    public String getTKhaiOrientation(String maTBao, String pbanTBao) {
        return getTBaoAttr(maTBao, pbanTBao, "orientation");
    }

    public String getTKhaiHDDTOrientation(String maTBao, String pbanTBao) {
        return getTBaoHDDTAttr(maTBao, pbanTBao, "orientation");
    }

    private String getTBaoAttr(String maTBao, String pbanTBao, String attr) {
        String tbaoNodeName = "TBao";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    private String getTBaoHDDTAttr(String maTBao, String pbanTBao, String attr) {
        String tbaoNodeName = "TBao";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTBao.equals(eElement.getAttribute("MSo")) && pbanTBao.equals(eElement.getAttribute("PBan"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTBao(String maTBao, String pbanTBao) {
        return getTTinTBao(maTBao, pbanTBao, "XMLSchema");
    }

    public String getXSLTTBao(String maTBao, String pbanTBao) {
        return getTTinTBao(maTBao, pbanTBao, "XSLT");
    }

    public String getXSLTTBaoHDDT(String maTBao, String pbanTBao) {
        return getTTinTBaoHDDT(maTBao, pbanTBao, "XSLT");
    }

    public String getExcelTemplateTTBao(String maTBao, String pbanTBao) {
        return getTTinTBao(maTBao, pbanTBao, "ExcelTemplate");
    }

    public String getExcelHDDTTemplateTTBao(String maTBao, String pbanTBao) {
        return getTTinTBaoHDDT(maTBao, pbanTBao, "ExcelTemplate");
    }

    private String getTTinTBao(String maTBao, String pbanTBao, String nodeName) {
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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

    private String getTTinTBaoHDDT(String maTBao, String pbanTBao, String nodeName) {
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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

    public String getPLucViewType(String maTBao, String pbanTBao, String plucID) {
        return getPLucAttr(maTBao, pbanTBao, plucID, "plucViewMethod");
    }

    public String getPLucHDDTViewType(String maTBao, String pbanTBao, String plucID) {
        return getPLucHDDTAttr(maTBao, pbanTBao, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maTBao, String pbanTBao, String plucID) {
        return getPLucAttr(maTBao, pbanTBao, plucID, "plucOrientation");
    }

    public String getPLucHDDTOrientation(String maTBao, String pbanTBao, String plucID) {
        return getPLucHDDTAttr(maTBao, pbanTBao, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maTBao, String pbanTBao, String plucID, String attr) {
        String tbaoNodeName = "TBao";
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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

    private String getPLucHDDTAttr(String maTBao, String pbanTBao, String plucID, String attr) {
        String tbaoNodeName = "TBao";
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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

    public String getTenPLuc(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLuc(maTBao, pbanTBao, plucID, "TenPLuc");
    }

    public String getTenPLucHDDT(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLuc(maTBao, pbanTBao, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLuc(maTBao, pbanTBao, plucID, "PLucXSLT");
    }

    public String getXSLTPLucHDDT(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLucHDDT(maTBao, pbanTBao, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLuc(maTBao, pbanTBao, plucID, "PLucExcelTemplate");
    }

    public String getExcelHDDTTemplatePLuc(String maTBao, String pbanTBao, String plucID) {
        return getTTinPLucHDDT(maTBao, pbanTBao, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maTBao, String pbanTBao, String plucID, String nodeName) {
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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

    private String getTTinPLucHDDT(String maTBao, String pbanTBao, String plucID, String nodeName) {
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
                if (maTBao.equals(eElement.getAttribute("maTBao")) && pbanTBao.equals(eElement.getAttribute("pbanTBao"))) {
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
