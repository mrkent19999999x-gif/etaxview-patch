package seatechit.ihtkk.tool.hquanform1;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/hquanform1/DMucHquan1.class */
public class DMucHquan1 {
    private Document dmucDoc;
    private String prefix;

    public DMucHquan1(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getTBaoViewType(String maTBaoHquan, String pbanTBaoHquan) {
        return getTBaoAttr(maTBaoHquan, pbanTBaoHquan, "viewMethod");
    }

    public String getTKhaiOrientation(String maTBaoHquan, String pbanTBaoHquan) {
        return getTBaoAttr(maTBaoHquan, pbanTBaoHquan, "orientation");
    }

    private String getTBaoAttr(String maTBaoHquan, String pbanTBaoHquan, String attr) {
        String tbaoNodeName = "TBaoHquan";
        if (this.prefix != null) {
            tbaoNodeName = String.valueOf(this.prefix) + ":" + tbaoNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tbaoNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTBaoHquan.equals(eElement.getAttribute("maTBaoHquan")) && pbanTBaoHquan.equals(eElement.getAttribute("pbanTBaoHquan"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTBao(String maTBaoHquan, String pbanTBaoHquan) {
        return getTTinTBao(maTBaoHquan, pbanTBaoHquan, "XMLSchema");
    }

    public String getXSLTTBao(String maTBaoHquan, String pbanTBaoHquan) {
        return getTTinTBao(maTBaoHquan, pbanTBaoHquan, "XSLT");
    }

    public String getExcelTemplateTTBao(String maTBaoHquan, String pbanTBaoHquan) {
        return getTTinTBao(maTBaoHquan, pbanTBaoHquan, "ExcelTemplate");
    }

    private String getTTinTBao(String maTBaoHquan, String pbanTBaoHquan, String nodeName) {
        String tbaoNodeName = "TBaoHquan";
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
                if (maTBaoHquan.equals(eElement.getAttribute("maTBaoHquan")) && pbanTBaoHquan.equals(eElement.getAttribute("pbanTBaoHquan"))) {
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

    public String getPLucViewType(String maTBaoHquan, String pbanTBaoHquan, String plucID) {
        return getPLucAttr(maTBaoHquan, pbanTBaoHquan, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maTBaoHquan, String pbanTBaoHquan, String plucID) {
        return getPLucAttr(maTBaoHquan, pbanTBaoHquan, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maTBaoHquan, String pbanTBaoHquan, String plucID, String attr) {
        String tbaoNodeName = "TBaoHquan";
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
                if (maTBaoHquan.equals(eElement.getAttribute("maTBaoHquan")) && maTBaoHquan.equals(eElement.getAttribute("pbanTBaoHquan"))) {
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

    public String getTenPLuc(String maTBaoHquan, String pbanTBaoHquan, String plucID) {
        return getTTinPLuc(maTBaoHquan, pbanTBaoHquan, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maTBaoHquan, String pbanTBaoHquan, String plucID) {
        return getTTinPLuc(maTBaoHquan, pbanTBaoHquan, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maTBaoHquan, String pbanTBaoHquan, String plucID) {
        return getTTinPLuc(maTBaoHquan, pbanTBaoHquan, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maTBaoHquan, String pbanTBaoHquan, String plucID, String nodeName) {
        String tbaoNodeName = "TBaoHquan";
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
                if (maTBaoHquan.equals(eElement.getAttribute("maTBaoHquan")) && pbanTBaoHquan.equals(eElement.getAttribute("pbanTBaoHquan"))) {
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
