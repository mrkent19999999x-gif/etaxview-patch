package seatechit.ihtkk.tool.signature;

import java.security.cert.X509Certificate;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/signature/XMLSignatureValidationResult.class */
public class XMLSignatureValidationResult {
    public static int SIG_STATUS_GOOD = 0;
    public static int SIG_STATUS_WARNING = 1;
    public static int SIG_STATUS_ERROR = 2;
    private X509Certificate[] certChain;
    private String validMessage;
    private int validStatus;
    private String timeStamp;
    private String chucVu = "";
    private String timeStampKDT;

    public String getTimeStamp() {
        if (this.timeStamp == null || this.timeStamp.equals("")) {
            return "";
        }
        String result = String.valueOf("(ký ngày ") + this.timeStamp.substring(0, 2);
        return String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(result) + " tháng ") + this.timeStamp.substring(2, 4)) + " năm ") + this.timeStamp.substring(4, 8)) + " , ") + this.timeStamp.substring(8, 10)) + " giờ ") + this.timeStamp.substring(10, 12)) + " phút ") + this.timeStamp.substring(12)) + " giây)";
    }

    public String getTimeStampKDT() {
        if (this.timeStamp == null || this.timeStamp.equals("")) {
            return "";
        }
        String result = String.valueOf(this.timeStamp.substring(0, 2)) + "/" + this.timeStamp.substring(2, 4) + "/" + this.timeStamp.substring(4, 8);
        return String.valueOf(String.valueOf(result) + " ") + this.timeStamp.substring(8, 10) + ":" + this.timeStamp.substring(10, 12) + ":" + this.timeStamp.substring(12);
    }

    public void setTimeStamp(String timeStamp) {
        this.timeStamp = timeStamp;
    }

    public void setTimeStampKDT(String timeStampKDT) {
        this.timeStampKDT = timeStampKDT;
    }

    public int getValidStatus() {
        return this.validStatus;
    }

    public void setValidStatus(int validStatus) {
        this.validStatus = validStatus;
    }

    public X509Certificate[] getCertChain() {
        return this.certChain;
    }

    public void setCertChain(X509Certificate[] certChain) {
        this.certChain = certChain;
    }

    public String getValidMessage() {
        if (this.validStatus == SIG_STATUS_GOOD) {
            return "Chữ ký điện tử hợp lệ";
        }
        return this.validMessage;
    }

    public void setValidMessage(String validMessage) {
        this.validMessage = validMessage;
    }

    public String getSignerName() {
        String subject = "[Không biết chủ thể của chứng thư số]";
        if (this.certChain != null) {
            X509Certificate cert = this.certChain[0];
            subject = new X500PrincipalHelper(cert.getSubjectX500Principal()).getCN();
        }
        return subject;
    }

    public String getChucVu() {
        return this.chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }
}
