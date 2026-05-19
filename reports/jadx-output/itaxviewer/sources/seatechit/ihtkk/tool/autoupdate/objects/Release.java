package seatechit.ihtkk.tool.autoupdate.objects;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/autoupdate/objects/Release.class */
public class Release implements Comparable {
    private String pubDate;
    private String pkgver;
    private String pkgrel;
    private String severity;
    private String message;

    public String getPubDate() {
        return this.pubDate;
    }

    public String getpkgver() {
        return this.pkgver;
    }

    public String getPkgrel() {
        return this.pkgrel;
    }

    public String getseverity() {
        return this.severity;
    }

    public String getMessage() {
        return this.message;
    }

    public void setPubDate(String pubDate) {
        this.pubDate = pubDate;
    }

    public void setpkgver(String pkgver) {
        this.pkgver = pkgver;
    }

    public void setPkgrel(String pkgrel) {
        this.pkgrel = pkgrel;
    }

    public void setseverity(String severity) {
        this.severity = severity;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String toString() {
        return "pubDate:\t" + this.pubDate + "\npkgver:\t\t" + this.pkgver + "\npkgrel:\t\t" + this.pkgrel + "\nseverity:\t" + this.severity + "\nmessage:\t" + this.message;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object release) {
        String ver = this.pkgver.replace(".", "");
        String verLocal = ((Release) release).pkgver.replace(".", "");
        if (ver.equals(verLocal)) {
            return Integer.parseInt(this.pkgrel) - Integer.parseInt(((Release) release).getPkgrel());
        }
        if (Float.parseFloat(ver) - Float.parseFloat(verLocal) > 0.0f) {
            return 1;
        }
        if (Float.parseFloat(ver) - Float.parseFloat(verLocal) < 0.0f) {
            return -1;
        }
        return 0;
    }
}
