package seatechit.ihtkk.tool.taxreturn;

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

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxreturn/DMucTKhai.class */
public class DMucTKhai {
    private Document dmucDoc;
    private String prefix;

    public DMucTKhai(String xmlFileName) throws ParserConfigurationException, SAXException, IOException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        DocumentBuilder db = dbf.newDocumentBuilder();
        this.dmucDoc = db.parse(new File(xmlFileName));
        this.prefix = this.dmucDoc.getDocumentElement().getPrefix();
    }

    public String getTKhaiViewType(String maTKhai, String pbanTKhai, String loaiTKhai) {
        return getTKhaiAttr(maTKhai, pbanTKhai, loaiTKhai, "viewMethod");
    }

    public String getTKhaiOrientation(String maTKhai, String pbanTKhai, String loaiTKhai) {
        return getTKhaiAttr(maTKhai, pbanTKhai, loaiTKhai, "orientation");
    }

    private String getTKhaiAttr(String maTKhai, String pbanTKhai, String loaiTKhai, String attr) {
        String tkhaiNodeName = "TKhai";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai")) && loaiTKhai.equals(eElement.getAttribute("loaiTKhai"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTKhai(String maTKhai, String pbanTKhai, String loaiTKhai) {
        return getTTinTKhai(maTKhai, pbanTKhai, loaiTKhai, "XMLSchema");
    }

    public String getXSLTTKhai(String maTKhai, String pbanTKhai, String loaiTKhai) {
        return getTTinTKhai(maTKhai, pbanTKhai, loaiTKhai, "XSLT");
    }

    public String getExcelTemplateTTKhai(String maTKhai, String pbanTKhai, String loaiTKhai) {
        return getTTinTKhai(maTKhai, pbanTKhai, loaiTKhai, "ExcelTemplate");
    }

    public String getTKhaiOrientationDKT(String maTKhai, String pbanTKhai) {
        return getTKhaiAttrDKT(maTKhai, pbanTKhai, "orientation");
    }

    private String getTTinTKhai(String maTKhai, String pbanTKhai, String loaiTKhai, String nodeName) {
        String tkhaiNodeName = "TKhai";
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
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai")) && loaiTKhai.equals(eElement.getAttribute("loaiTKhai"))) {
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

    private String getTKhaiAttrDKT(String maTKhai, String pbanTKhai, String attr) {
        String tkhaiNodeName = "TKhai";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai"))) {
                    return eElement.getAttribute(attr);
                }
            }
        }
        return null;
    }

    public String getXSDTKhaiDKT(String maTKhai, String pbanTKhai) {
        return getTTinTKhaiDKT(maTKhai, pbanTKhai, "XMLSchema");
    }

    public String getTKhaiViewTypeDKT(String maTKhai, String pbanTKhai) {
        return getTKhaiAttrDKT(maTKhai, pbanTKhai, "viewMethod");
    }

    public String getExcelTemplateTTKhaiDKT(String maTKhai, String pbanTKhai) {
        return getTTinTKhaiDKT(maTKhai, pbanTKhai, "ExcelTemplate");
    }

    public String getXSLTTKhaiDKT(String maTKhai, String pbanTKhai) {
        return getTTinTKhaiDKT(maTKhai, pbanTKhai, "XSLT");
    }

    private String getTTinTKhaiDKT(String maTKhai, String pbanTKhai, String nodeName) {
        String tkhaiNodeName = "TKhai";
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
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai"))) {
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

    public String getPLucViewType(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID) {
        return getPLucAttr(maTKhai, pbanTKhai, loaiTKhai, plucID, "plucViewMethod");
    }

    public String getPLucOrientation(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID) {
        return getPLucAttr(maTKhai, pbanTKhai, loaiTKhai, plucID, "plucOrientation");
    }

    private String getPLucAttr(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID, String attr) {
        String tkhaiNodeName = "TKhai";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        String dsPLucNodeName = "DSachPLuc";
        if (this.prefix != null) {
            dsPLucNodeName = String.valueOf(this.prefix) + ":" + dsPLucNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai")) && loaiTKhai.equals(eElement.getAttribute("loaiTKhai"))) {
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

    public String getTenPLuc(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID) {
        return getTTinPLuc(maTKhai, pbanTKhai, loaiTKhai, plucID, "TenPLuc");
    }

    public String getXSLTPLuc(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID) {
        return getTTinPLuc(maTKhai, pbanTKhai, loaiTKhai, plucID, "PLucXSLT");
    }

    public String getExcelTemplatePLuc(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID) {
        return getTTinPLuc(maTKhai, pbanTKhai, loaiTKhai, plucID, "PLucExcelTemplate");
    }

    private String getTTinPLuc(String maTKhai, String pbanTKhai, String loaiTKhai, String plucID, String nodeName) {
        String tkhaiNodeName = "TKhai";
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
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai")) && loaiTKhai.equals(eElement.getAttribute("loaiTKhai"))) {
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

    public String getTenPLucDKT(String maTKhai, String pbanTKhai, String plucID) {
        return getTTinPLucDKT(maTKhai, pbanTKhai, plucID, "TenPLuc");
    }

    public String getPLucViewTypeDKT(String maTKhai, String pbanTKhai, String plucID) {
        return getPLucAttrDKT(maTKhai, pbanTKhai, plucID, "plucViewMethod");
    }

    public String getPLucOrientationDKT(String maTKhai, String pbanTKhai, String plucID) {
        return getPLucAttrDKT(maTKhai, pbanTKhai, plucID, "plucOrientation");
    }

    public String getExcelTemplatePLucDKT(String maTKhai, String pbanTKhai, String plucID) {
        return getTTinPLucDKT(maTKhai, pbanTKhai, plucID, "PLucExcelTemplate");
    }

    public String getXSLTPLucDKT(String maTKhai, String pbanTKhai, String plucID) {
        return getTTinPLucDKT(maTKhai, pbanTKhai, plucID, "PLucXSLT");
    }

    private String getTTinPLucDKT(String maTKhai, String pbanTKhai, String plucID, String nodeName) {
        String tkhaiNodeName = "TKhai";
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
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai"))) {
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

    private String getPLucAttrDKT(String maTKhai, String pbanTKhai, String plucID, String attr) {
        String tkhaiNodeName = "TKhai";
        if (this.prefix != null) {
            tkhaiNodeName = String.valueOf(this.prefix) + ":" + tkhaiNodeName;
        }
        String dsPLucNodeName = "DSachPLuc";
        if (this.prefix != null) {
            dsPLucNodeName = String.valueOf(this.prefix) + ":" + dsPLucNodeName;
        }
        NodeList nList = this.dmucDoc.getElementsByTagName(tkhaiNodeName);
        for (int temp = 0; temp < nList.getLength(); temp++) {
            Node nNode = nList.item(temp);
            if (nNode.getNodeType() == 1) {
                Element eElement = (Element) nNode;
                if (maTKhai.equals(eElement.getAttribute("maTKhai")) && pbanTKhai.equals(eElement.getAttribute("pbanTKhai"))) {
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
}
