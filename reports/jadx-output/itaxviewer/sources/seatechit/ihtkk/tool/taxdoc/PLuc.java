package seatechit.ihtkk.tool.taxdoc;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxdoc/PLuc.class */
public class PLuc {
    private String plucID;
    private String plucName;
    private String plucViewMethod;
    private String plucXSLTFile;
    private String plucExcelFile;
    private String plucHTML;
    private String orientation;
    private Double pageWidth;

    public Double getPageWidth() {
        return this.pageWidth;
    }

    public void setPageWidth(Double pageWidth) {
        this.pageWidth = pageWidth;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public void setPlucID(String plucID) {
        this.plucID = plucID;
    }

    public String getPlucID() {
        return this.plucID;
    }

    public void setPlucName(String plucName) {
        this.plucName = plucName;
    }

    public String getPlucName() {
        return this.plucName;
    }

    public void setPlucViewMethod(String plucViewMethod) {
        this.plucViewMethod = plucViewMethod;
    }

    public String getPlucViewMethod() {
        return this.plucViewMethod;
    }

    public void setPlucXSLTFile(String plucXSLTFile) {
        this.plucXSLTFile = plucXSLTFile;
    }

    public String getPlucXSLTFile() {
        return this.plucXSLTFile;
    }

    public void setPlucExcelFile(String plucExcelFile) {
        this.plucExcelFile = plucExcelFile;
    }

    public String getPlucExcelFile() {
        return this.plucExcelFile;
    }

    public String getPlucHTML() {
        return this.plucHTML;
    }

    public void setPlucHTML(String plucHTML) {
        this.plucHTML = plucHTML;
    }
}
