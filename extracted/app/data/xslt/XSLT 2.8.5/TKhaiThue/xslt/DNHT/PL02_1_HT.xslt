<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
    <xsl:include href="../../include/TKhaiHeader.xsl"/>
    <xsl:include href="../../include/TKhaiFooter.xsl"/>
    <xsl:include href="../../common/common.xsl"/>

    <xsl:template match="/">
        <xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue" />        
        <xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh" />

        <!-- start phu luc PL_02_1_HT -->
        <xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_HT/NoiDungPL02_1_HT">
            <xsl:variable name="PL02_1" select="HSoThueDTu/HSoKhaiThue/PLuc/PL02_1_HT"/>
            <div class="ndungtkhai_div">
                <div class="content">
                    <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                    <table class="tkhai_table">
                        <tr>
                            <td class="align-c"><b>STT</b></td>
                            <td class="align-c"><b>Số chứng từ </b></td>
                            <td class="align-c"><b>Ngày chứng từ</b></td>
                            <td class="align-c"><b>Ngân hàng nơi nộp thuế</b></td>
                            <td class="align-c"><b>Tỉnh/TP</b></td>
                            <td class="align-c"><b>Kho bạc nhà nước nơi nộp thuế</b></td>
                            <td class="align-c"><b>Tiểu mục</b></td>
                            <td class="align-c"><b>Kiểu kỳ</b></td>
                            <td class="align-c"><b>Kỳ</b></td>
                            <td class="align-c"><b>Số thuế đã nộp</b></td>
                        </tr>
                        <tr>
                            <td class="align-c">(1)</td>
                            <td class="align-c">(2)</td>
                            <td class="align-c">(3)</td>
                            <td class="align-c">(4)</td>
                            <td class="align-c">(5)</td>
                            <td class="align-c">(6)</td>
                            <td class="align-c">(7)</td>
                            <td class="align-c">(8)</td>    
                            <td class="align-c">(9)</td>
                            <td class="align-c">(10)</td>                            
                        </tr>
                        <xsl:for-each select="$PL02_1/NoiDungPL02_1_HT">
                            <xsl:variable name="currentRows" select="position()"/>
                            <tr>
                                <td class="align-c"><xsl:value-of select="$currentRows"/></td>
                                <td class="align-l"><xsl:value-of select="ct2"/></td>
                                <td class="align-r"><xsl:value-of select="ihtkk:stringDatetime(ct3,'dd/mm/yyyy')"/></td>
                                <td class="align-l"><xsl:value-of select="ct4_tenNH"/></td>                               
								 <td class="align-l"><xsl:value-of select="ct4_tenTinh"/></td>
								<td class="align-l"><xsl:value-of select="ct4_tenKBNN"/></td>                               
                                <td class="align-l"><xsl:value-of select="ct5_ten"/></td>
                                <td class="align-l"><xsl:value-of select="ct6_LoaiKy"/></td>
                                <td class="align-l"><xsl:value-of select="ct6_KyKeKhai"/></td>
                                <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
                            </tr>    
                        </xsl:for-each>    
                        <tr> 
                            <td class="align-c" colspan="9"><b>Tổng cộng</b></td>
                            <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($PL02_1/tongCot7)"/></b></td>                            
                        </tr>
                    </table>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>