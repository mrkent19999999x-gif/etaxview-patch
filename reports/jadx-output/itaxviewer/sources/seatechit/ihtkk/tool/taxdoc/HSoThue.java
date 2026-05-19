package seatechit.ihtkk.tool.taxdoc;

import java.io.IOException;
import java.util.Collection;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import seatechit.ihtkk.tool.ConfigInfo;
import seatechit.ihtkk.tool.ITaxViewerException;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/taxdoc/HSoThue.class */
public abstract class HSoThue {
    public static final String LANDSCAPE_PAGE_FORMAT = "1";
    public static final String PORTRAIT_PAGE_FORMAT = "0";
    protected ConfigInfo config;
    protected String hsoFileName;
    protected String hsoViewFileName;
    protected Document tkhaiDoc;
    protected String maHSo;
    protected String loaiHSo;
    protected String pbanHSoXML;
    protected String tenHSo;
    protected String viewMethod;
    protected String xsdFile;
    protected String xsltFile;
    protected String excelFile;
    protected Collection plucList;
    protected Collection sigValidationResult;
    protected String tkhaiHTML;
    protected Double pageWidth;
    protected String orientation = PORTRAIT_PAGE_FORMAT;
    protected String prefix;

    public Double getPageWidth() {
        return this.pageWidth;
    }

    public void setPageWidth(Double pageWidth) {
        this.pageWidth = pageWidth;
    }

    public HSoThue(Document tkhaiDoc, String hsoFileName, ConfigInfo config) throws IOException, ParserConfigurationException, ITaxViewerException {
        this.config = config;
        this.hsoFileName = hsoFileName;
        this.tkhaiDoc = tkhaiDoc;
        Element rootElm = tkhaiDoc.getDocumentElement();
        this.prefix = rootElm.getPrefix();
    }

    public String getHsoViewFileName() {
        return this.hsoViewFileName;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public String getViewMethod() {
        return this.viewMethod;
    }

    public String getXsdFile() {
        return this.xsdFile;
    }

    public String getXsltFile() {
        return this.xsltFile;
    }

    public String getExcelFile() {
        return this.excelFile;
    }

    public Collection getPlucList() {
        return this.plucList;
    }

    public Collection getSigValidationResult() {
        return this.sigValidationResult;
    }

    public String getMaHSo() {
        return this.maHSo;
    }

    public String getLoaiHSo() {
        return this.loaiHSo;
    }

    public String getPbanHSoXML() {
        return this.pbanHSoXML;
    }

    public String getTenHSo() {
        return this.tenHSo;
    }

    public String getTkhaiHTML() {
        return this.tkhaiHTML;
    }

    public void setTkhaiHTML(String tkhaiHTML) {
        this.tkhaiHTML = tkhaiHTML;
    }

    public String getHsoFileName() {
        return this.hsoFileName;
    }
}
