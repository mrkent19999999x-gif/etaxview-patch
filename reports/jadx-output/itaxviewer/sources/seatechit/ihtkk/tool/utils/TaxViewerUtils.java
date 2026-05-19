package seatechit.ihtkk.tool.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.FileUtils;
import seatechit.ihtkk.tool.ITaxViewerException;

/* loaded from: itaxviewer.jar:seatechit/ihtkk/tool/utils/TaxViewerUtils.class */
public class TaxViewerUtils {
    public static String createTemFileFromTextData(String dataContentXML) throws ITaxViewerException, IOException {
        File tempfile = File.createTempFile("TemKDTT", ".tmp");
        tempfile.deleteOnExit();
        FileUtils.writeStringToFile(tempfile, dataContentXML, "UTF-8");
        return tempfile.getAbsolutePath();
    }

    public static String getDataContectXMLFromBase64(String dataContentXMLBase64Encode) throws Exception {
        try {
            byte[] contentXMLBase64Decode = Base64Utils.base64Decode(dataContentXMLBase64Encode);
            String datacontentXML = new String(contentXMLBase64Decode, "UTF-8");
            return datacontentXML;
        } catch (Exception ex) {
            throw new ITaxViewerException("Lỗi chuyển đổi dữ liệu: " + ex.getLocalizedMessage());
        }
    }

    public static String ConvertDateStringToFormat(String dateValue, String pattern) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("ddMMyyyyHHmmss");
            SimpleDateFormat format2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date = null;
            try {
                date = format.parse(dateValue);
            } catch (Exception e) {
            }
            if (date == null) {
                date = format2.parse(dateValue);
            }
            SimpleDateFormat dt1 = new SimpleDateFormat(pattern);
            String kqdate = dt1.format(date);
            return kqdate;
        } catch (Exception e2) {
            return dateValue;
        }
    }

    public static String ConvertDateStringToFormatForHDDT(String dateValue, String pattern) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
            SimpleDateFormat format2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date = null;
            try {
                date = format.parse(dateValue);
            } catch (Exception e) {
            }
            if (date == null) {
                date = format2.parse(dateValue);
            }
            SimpleDateFormat dt1 = new SimpleDateFormat(pattern);
            String kqdate = dt1.format(date);
            return kqdate;
        } catch (Exception e2) {
            return dateValue;
        }
    }
}
