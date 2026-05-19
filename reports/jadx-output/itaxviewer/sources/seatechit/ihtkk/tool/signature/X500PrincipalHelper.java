package seatechit.ihtkk.tool.signature;

import java.util.ArrayList;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/X500PrincipalHelper.class */
public class X500PrincipalHelper {
    public static int LEASTSIGNIFICANT = 0;
    public static int MOSTSIGNIFICANT = 1;
    public static final String attrCN = "CN";
    public static final String attrOU = "OU";
    public static final String attrO = "O";
    public static final String attrC = "C";
    public static final String attrL = "L";
    public static final String attrST = "ST";
    public static final String attrSTREET = "STREET";
    public static final String attrEMAIL = "EMAILADDRESS";
    public static final String attrUID = "UID";
    ArrayList rdnNameArray = new ArrayList();
    private static final String attrTerminator = "=";

    public X500PrincipalHelper() {
    }

    public X500PrincipalHelper(X500Principal principal) {
        parseDN(principal.getName("RFC2253"));
    }

    public void setPrincipal(X500Principal principal) {
        parseDN(principal.getName("RFC2253"));
    }

    public String getCN() {
        return findPart(attrCN);
    }

    public String getOU() {
        return findPart(attrOU);
    }

    public String getO() {
        return findPart(attrO);
    }

    public String getC() {
        return findPart(attrC);
    }

    public String getL() {
        return findPart(attrL);
    }

    public String getST() {
        return findPart(attrST);
    }

    public String getSTREET() {
        return findPart(attrSTREET);
    }

    public String getEMAILDDRESS() {
        return findPart(attrEMAIL);
    }

    public String getUID() {
        return findPart(attrUID);
    }

    private void parseDN(String dn) throws IllegalArgumentException {
        int endIndex;
        char c = 0;
        ArrayList nameValues = new ArrayList();
        this.rdnNameArray.clear();
        for (int startIndex = 0; startIndex < dn.length(); startIndex = endIndex + 1) {
            endIndex = startIndex;
            while (endIndex < dn.length()) {
                c = dn.charAt(endIndex);
                if (c == ',' || c == '+') {
                    break;
                }
                if (c == '\\') {
                    endIndex++;
                }
                endIndex++;
            }
            if (endIndex > dn.length()) {
                throw new IllegalArgumentException("unterminated escape " + dn);
            }
            nameValues.add(dn.substring(startIndex, endIndex));
            if (c != '+') {
                this.rdnNameArray.add(nameValues);
                if (endIndex != dn.length()) {
                    nameValues = new ArrayList();
                } else {
                    nameValues = null;
                }
            }
        }
        if (nameValues != null) {
            throw new IllegalArgumentException("improperly terminated DN " + dn);
        }
    }

    public ArrayList getAllValues(String attributeID) {
        ArrayList retList = new ArrayList();
        String searchPart = String.valueOf(attributeID) + attrTerminator;
        Iterator iter = this.rdnNameArray.iterator();
        while (iter.hasNext()) {
            ArrayList nameList = (ArrayList) iter.next();
            String namePart = (String) nameList.get(0);
            if (namePart.startsWith(searchPart)) {
                retList.add(namePart.toString().substring(searchPart.length()));
            }
        }
        return retList;
    }

    private String findPart(String attributeID) {
        return findSignificantPart(attributeID, MOSTSIGNIFICANT);
    }

    private String findSignificantPart(String attributeID, int significance) {
        String retNamePart = null;
        String searchPart = String.valueOf(attributeID) + attrTerminator;
        Iterator iter = this.rdnNameArray.iterator();
        while (iter.hasNext()) {
            ArrayList nameList = (ArrayList) iter.next();
            String namePart = (String) nameList.get(0);
            if (namePart.startsWith(searchPart)) {
                retNamePart = namePart.toString().substring(searchPart.length());
                if (significance == MOSTSIGNIFICANT) {
                    break;
                }
            }
        }
        return retNamePart;
    }
}
