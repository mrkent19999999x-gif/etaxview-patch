package seatechit.ihtkk.tool.signature;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.xml.crypto.XMLStructure;
import javax.xml.crypto.dom.DOMStructure;
import javax.xml.crypto.dsig.Reference;
import javax.xml.crypto.dsig.SignedInfo;
import javax.xml.crypto.dsig.XMLObject;
import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.XMLSignatureException;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.dom.DOMValidateContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.keyinfo.X509Data;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.crypto.dsig.spec.DigestMethodParameterSpec;
import javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import seatechit.ihtkk.tool.utils.TaxViewerUtils;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/IHTKKXMLSignature.class */
public class IHTKKXMLSignature {
    private X509Certificate[] rootCerts;
    private X509Certificate[] trustedCerts;

    public IHTKKXMLSignature(X509Certificate[] rootCerts, X509Certificate[] trustedCerts) {
        this.rootCerts = rootCerts;
        this.trustedCerts = trustedCerts;
    }

    public void signXMLFile(X509Certificate cert, PrivateKey privateKey, String fileName) throws Exception {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        Document doc = dbf.newDocumentBuilder().parse(new FileInputStream(fileName));
        signXMLDoc(cert, privateKey, doc);
        OutputStream os = new FileOutputStream(fileName);
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer trans = tf.newTransformer();
        trans.transform(new DOMSource(doc), new StreamResult(os));
    }

    public void signXMLDoc(X509Certificate cert, PrivateKey privateKey, Document doc) throws Exception {
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList nl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        String objID = String.valueOf("signedtaxreturn") + Integer.toString(nl.getLength());
        Node invoice = doc.getDocumentElement();
        XMLObject obj = fac.newXMLObject(Collections.singletonList(new DOMStructure(invoice)), objID, (String) null, (String) null);
        Reference ref = fac.newReference("#" + objID, fac.newDigestMethod("http://www.w3.org/2000/09/xmldsig#sha1", (DigestMethodParameterSpec) null));
        SignedInfo si = fac.newSignedInfo(fac.newCanonicalizationMethod("http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments", (C14NMethodParameterSpec) null), fac.newSignatureMethod("http://www.w3.org/2000/09/xmldsig#rsa-sha1", (SignatureMethodParameterSpec) null), Collections.singletonList(ref));
        KeyInfoFactory kif = fac.getKeyInfoFactory();
        List x509Content = new ArrayList();
        x509Content.add(cert.getSubjectX500Principal().getName());
        x509Content.add(cert);
        X509Data xd = kif.newX509Data(x509Content);
        KeyInfo ki = kif.newKeyInfo(Collections.singletonList(xd));
        XMLSignature signature = fac.newXMLSignature(si, ki, Collections.singletonList(obj), (String) null, (String) null);
        DOMSignContext dsc = new DOMSignContext(privateKey, doc);
        signature.sign(dsc);
    }

    public void verifyXMLSignature(String fileName) throws Exception {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(true);
        Document doc = dbf.newDocumentBuilder().parse(new FileInputStream(fileName));
        verifyXMLSignature(doc);
    }

    public Collection verifyXMLSignature(Document doc) {
        String tgianKy;
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        String attNamr = "";
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if ("/HSoThueDTu/HSoKhaiThue" == 0) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
        }
        String[] elemData = "/HSoThueDTu/HSoKhaiThue".split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("id".equals(attNamr) || "Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            NodeList all = doc.getElementsByTagName("*");
            for (int i2 = 0; i2 < all.getLength(); i2++) {
                Element e2 = (Element) all.item(i2);
                if (e2.hasAttribute("Id")) {
                    e2.setIdAttribute("Id", true);
                }
            }
            if (!checkSignXpath) {
                nodeToSign = nodes.item(0);
            }
            for (int i3 = 0; i3 < signl.getLength(); i3++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i3);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKyTemp = sgtime.getFirstChild().getTextContent();
                            boolean check = tgianKyTemp.contains("-");
                            if (check) {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            } else {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormat(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            }
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                        }
                    } catch (Exception e3) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i3));
                    if (!checkSignXpath) {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, attNamr);
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    } else if (ex instanceof IllegalArgumentException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
    }

    public Collection verifyXMLSignatureTKhaiHDDT(Document doc) {
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if ("/TKhai/DLTKhai" == 0) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TKhai/DLTKhai");
        }
        String[] elemData = "/TKhai/DLTKhai".split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TKhai/DLTKhai");
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TKhai/DLTKhai");
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                String attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            NodeList all = doc.getElementsByTagName("*");
            for (int i2 = 0; i2 < all.getLength(); i2++) {
                Element e2 = (Element) all.item(i2);
                if (e2.hasAttribute("Id")) {
                    e2.setIdAttribute("Id", true);
                }
            }
            if (!checkSignXpath) {
                nodeToSign = nodes.item(0);
            }
            for (int i3 = 0; i3 < signl.getLength(); i3++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i3);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                        }
                    } catch (Exception e3) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i3));
                    if (!checkSignXpath) {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, "Id");
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TKhai/DLTKhai");
    }

    public Collection verifyXMLSignature(Document doc, String xPath_data) {
        String tgianKy;
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        String attNamr = "";
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if (xPath_data == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
        }
        String[] elemData = xPath_data.split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("id".equals(attNamr) || "Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            if (!checkSignXpath && attNamr != "") {
                nodeToSign = nodes.item(0);
            }
            for (int i2 = 0; i2 < signl.getLength(); i2++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i2);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKyTemp = sgtime.getFirstChild().getTextContent();
                            boolean check = tgianKyTemp.contains("-");
                            if (check) {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            } else {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormat(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            }
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                            NodeList signInfo = line1.getElementsByTagName("SignerInformation");
                            if (signInfo != null && signInfo.getLength() > 0) {
                                Element info = (Element) signInfo.item(0);
                                String chucvu = info.getElementsByTagName("Title").item(0).getFirstChild().getTextContent();
                                result.setChucVu(chucvu);
                            }
                        }
                    } catch (Exception e2) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i2));
                    if (!checkSignXpath && attNamr != "") {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, attNamr);
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
    }

    private void verifyXMLSignature(XMLSignature signature, DOMValidateContext valContext) throws ITaxSigValidException {
        try {
            boolean coreValidity = signature.validate(valContext);
            if (!coreValidity) {
                boolean sv = signature.getSignatureValue().validate(valContext);
                if (!sv) {
                    throw new ITaxSigValidException("Chữ ký điện tử trên hồ sơ không hợp lệ");
                }
                Iterator ito = signature.getSignedInfo().getReferences().iterator();
                int j = 0;
                while (ito.hasNext()) {
                    boolean refValid = ((Reference) ito.next()).validate(valContext);
                    if (refValid) {
                        j++;
                    } else {
                        throw new ITaxSigValidException("Hồ sơ đã bị sửa sau khi ký điện tử");
                    }
                }
            }
        } catch (XMLSignatureException ex) {
            ex.printStackTrace();
            throw new ITaxSigValidException("Chữ ký điện tử trên hồ sơ không hợp lệ (" + ex.getMessage() + ").");
        }
    }

    private X509Certificate[] getCertificateChain(KeyInfo keyInfo) throws Exception {
        ArrayList certList = new ArrayList();
        if (keyInfo != null) {
            List<XMLStructure> keyInfoContent = keyInfo.getContent();
            for (XMLStructure xMLStructure : keyInfoContent) {
                if (xMLStructure instanceof X509Data) {
                    X509Data x509Data = (X509Data) xMLStructure;
                    List<Object> x509DataList = x509Data.getContent();
                    for (Object x509DataObject : x509DataList) {
                        if (x509DataObject instanceof X509Certificate) {
                            certList.add(x509DataObject);
                        }
                    }
                    if (!certList.isEmpty()) {
                        return (X509Certificate[]) certList.toArray(new X509Certificate[0]);
                    }
                }
            }
            return null;
        }
        return null;
    }

    public static boolean isHDDT(String maTKhai) {
        return Pattern.compile("^(958|959|967|965|966|963|964)$").matcher(maTKhai).find();
    }

    public Collection verifyXMLSignatureTBaoHDDT(Document doc) {
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if ("/TBao/DLTBao" == 0) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TBao/DLTBao");
        }
        String[] elemData = "/TBao/DLTBao".split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TBao/DLTBao");
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TBao/DLTBao");
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                String attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            NodeList all = doc.getElementsByTagName("*");
            for (int i2 = 0; i2 < all.getLength(); i2++) {
                Element e2 = (Element) all.item(i2);
                if (e2.hasAttribute("Id")) {
                    e2.setIdAttribute("Id", true);
                }
            }
            if (!checkSignXpath) {
                nodeToSign = nodes.item(0);
            }
            for (int i3 = 0; i3 < signl.getLength(); i3++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i3);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                        }
                    } catch (Exception e3) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i3));
                    if (!checkSignXpath) {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, "Id");
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: /TBao/DLTBao");
    }

    public Collection verifyXMLSignatureTKhaiDNghiHDDT(Document doc) {
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if ("/DNghi/DLDNghi" == 0) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /DNghi/DLDNghi");
        }
        String[] elemData = "/DNghi/DLDNghi".split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /DNghi/DLDNghi");
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: /DNghi/DLDNghi");
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                String attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            NodeList all = doc.getElementsByTagName("*");
            for (int i2 = 0; i2 < all.getLength(); i2++) {
                Element e2 = (Element) all.item(i2);
                if (e2.hasAttribute("Id")) {
                    e2.setIdAttribute("Id", true);
                }
            }
            if (!checkSignXpath) {
                nodeToSign = nodes.item(0);
            }
            for (int i3 = 0; i3 < signl.getLength(); i3++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i3);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                        }
                    } catch (Exception e3) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i3));
                    if (!checkSignXpath) {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, "Id");
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: /DNghi/DLDNghi");
    }

    public Collection verifyXMLSignatureHDDT(Document doc, String xPath_data) {
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        String attNamr = "";
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if (xPath_data == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
        }
        String[] elemData = xPath_data.split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            if (!checkSignXpath && attNamr != "") {
                nodeToSign = nodes.item(0);
            }
            for (int i2 = 0; i2 < signl.getLength(); i2++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i2);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                            NodeList signInfo = line1.getElementsByTagName("SignerInformation");
                            if (signInfo != null && signInfo.getLength() > 0) {
                                Element info = (Element) signInfo.item(0);
                                String chucvu = info.getElementsByTagName("Title").item(0).getFirstChild().getTextContent();
                                result.setChucVu(chucvu);
                            }
                        }
                    } catch (Exception e2) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i2));
                    if (!checkSignXpath && attNamr != "") {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, "Id");
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: " + xPath_data);
    }

    public Collection verifyXMLSignatureHHDT(Document doc) {
        String tgianKy;
        CertVerifier certVerifier = new CertVerifier(this.rootCerts, this.trustedCerts);
        ArrayList resultArr = new ArrayList();
        XMLSignatureFactory fac = XMLSignatureFactory.getInstance("DOM");
        NodeList signl = doc.getElementsByTagNameNS("http://www.w3.org/2000/09/xmldsig#", "Signature");
        Node nodeToSign = null;
        NodeList nodes = null;
        boolean checkSignXpath = false;
        try {
        } catch (ITaxSigValidException e) {
            checkSignXpath = true;
        }
        if ("/HSoThueDTu/HSoKhaiThue" == 0) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
        }
        String[] elemData = "/HSoThueDTu/HSoKhaiThue".split("/");
        if (elemData == null) {
            throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
        }
        String nodeDataSig = elemData[elemData.length - 1];
        nodes = doc.getElementsByTagName(nodeDataSig);
        if (nodes.getLength() > 0) {
            nodeToSign = nodes.item(0);
            if (nodeToSign == null) {
                throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
            }
            NamedNodeMap atts = nodeToSign.getAttributes();
            for (int i = 0; atts != null && i < atts.getLength(); i++) {
                String attNamr = atts.item(i) != null ? atts.item(i).getNodeName() : null;
                if ("Id".equals(attNamr)) {
                    atts.item(i).getTextContent();
                }
            }
            NodeList all = doc.getElementsByTagName("*");
            for (int i2 = 0; i2 < all.getLength(); i2++) {
                Element e2 = (Element) all.item(i2);
                if (e2.hasAttribute("Id")) {
                    e2.setIdAttribute("Id", true);
                }
            }
            if (!checkSignXpath) {
                nodeToSign = nodes.item(0);
            }
            for (int i3 = 0; i3 < signl.getLength(); i3++) {
                XMLSignatureValidationResult result = new XMLSignatureValidationResult();
                try {
                    try {
                        Element tempNode = (Element) signl.item(i3);
                        NodeList name1 = tempNode.getElementsByTagName("SignatureProperty");
                        if (name1 == null || name1.getLength() == 0) {
                            name1 = tempNode.getElementsByTagName("ds:SignatureProperty");
                        }
                        if (name1 != null) {
                            Element line1 = (Element) name1.item(0);
                            NodeList ndlst = line1.getElementsByTagName("DateTimeStamp");
                            if (ndlst == null || ndlst.getLength() == 0) {
                                ndlst = line1.getElementsByTagName("SigningTime");
                            }
                            Element sgtime = (Element) ndlst.item(0);
                            String tgianKyTemp = sgtime.getFirstChild().getTextContent();
                            boolean check = tgianKyTemp.contains("-");
                            if (check) {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormatForHDDT(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            } else {
                                tgianKy = TaxViewerUtils.ConvertDateStringToFormat(sgtime.getFirstChild().getTextContent(), "ddMMyyyyHHmmss");
                            }
                            result.setTimeStamp(tgianKy);
                            result.setTimeStampKDT(tgianKy);
                        }
                    } catch (Exception e3) {
                        result.setTimeStamp("");
                        result.setTimeStampKDT("");
                        result.setChucVu("");
                    }
                    DOMValidateContext valContext = new DOMValidateContext(new X509KeySelector(), signl.item(i3));
                    if (!checkSignXpath) {
                        valContext.setIdAttributeNS((Element) nodeToSign, (String) null, "Id");
                    }
                    XMLSignature signature = fac.unmarshalXMLSignature(valContext);
                    X509Certificate[] certChain = getCertificateChain(signature.getKeyInfo());
                    result.setCertChain(certChain);
                    verifyXMLSignature(signature, valContext);
                    certVerifier.verifyCertificationChain(null, certChain[0], certChain);
                    certVerifier.checkRevocationStatus(certChain[0], this.trustedCerts);
                } catch (Exception ex) {
                    if (ex instanceof ITaxSigValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxCertValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    } else if (ex instanceof ITaxStatusValidException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_WARNING);
                    } else if (ex instanceof IllegalArgumentException) {
                        result.setValidStatus(XMLSignatureValidationResult.SIG_STATUS_ERROR);
                    }
                    result.setValidMessage(ex.getMessage());
                }
                resultArr.add(result);
            }
            return resultArr;
        }
        throw new ITaxSigValidException("Không tìm thấy node qua PATH: /HSoThueDTu/HSoKhaiThue");
    }
}
