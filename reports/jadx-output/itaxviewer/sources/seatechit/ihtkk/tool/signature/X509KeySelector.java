package seatechit.ihtkk.tool.signature;

import java.security.Key;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import javax.xml.crypto.AlgorithmMethod;
import javax.xml.crypto.KeySelector;
import javax.xml.crypto.KeySelectorException;
import javax.xml.crypto.KeySelectorResult;
import javax.xml.crypto.XMLCryptoContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.X509Data;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/X509KeySelector.class */
public class X509KeySelector extends KeySelector {
    public KeySelectorResult select(KeyInfo keyInfo, KeySelector.Purpose purpose, AlgorithmMethod method, XMLCryptoContext context) throws KeySelectorException {
        for (X509Data x509Data : keyInfo.getContent()) {
            if (x509Data instanceof X509Data) {
                X509Data x509Data2 = x509Data;
                for (Object o : x509Data2.getContent()) {
                    if (o instanceof X509Certificate) {
                        final PublicKey key = ((X509Certificate) o).getPublicKey();
                        if (algEquals(method.getAlgorithm(), key.getAlgorithm())) {
                            return new KeySelectorResult() { // from class: seatechit.ihtkk.tool.signature.X509KeySelector.1
                                public Key getKey() {
                                    return key;
                                }
                            };
                        }
                    }
                }
            }
        }
        throw new KeySelectorException("No key found!");
    }

    static boolean algEquals(String algURI, String algName) {
        return true;
    }
}
