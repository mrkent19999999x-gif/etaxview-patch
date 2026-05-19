<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
      <!-- Phụ lục 01-1-TĐ/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_TD_GTGT">	
		<xsl:variable name="pl01td" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_TD_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-1/TĐ-GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ SỐ THUẾ GIÁ TRỊ GIA TĂNG PHẢI NỘP CỦA HOẠT ĐỘNG
 SẢN XUẤT THỦY ĐIỆN '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên nhà máy thuỷ điện</b></td>
							   <td class="align-c"><b>Mã số thuế</b></td>
							   <td class="align-c"><b>Số thuế GTGT đầu ra của hoạt động sản xuất thủy điện</b></td>
							   <td class="align-c"><b>Số thuế GTGT đầu vào của hoạt động sản xuất thủy điện</b></td>
							   <td class="align-c"><b>Số thuế GTGT phải nộp của hoạt động sản xuất thủy điện</b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)=(5)-(4)</td>
							</tr>
							<xsl:for-each select="$pl01td/BANGTHUEGTGTCUASXTHUYDIEN/chiTietThueGTGTCuaSXThuyDien">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenNhaMay"/></td>
							  <td class="align-c"><xsl:value-of select="mstNhaMay" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueDauRaNhaMay)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueDauVaoNhaMay)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuePNopNhaMay)" /></td>
							  </tr>
							</xsl:for-each>
                           <tr>
                               <td></td>
                               <td class="align-c"><b>Tổng cộng:</b></td>
                               <td></td>
                               <td></td>
                                <td></td>
                               <td class="align-r"> <b><xsl:value-of select="ihtkk:formatNumber($pl01td/tongThuePhaiNop)"/></b></td>
        				</tr>
					</table>  
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>	
<div class="ghichu">			
		<div><i><u><b>Ghi chú: </b></u> - GTGT: giá trị gia tăng</i></div><br/>
</div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>
</xsl:if>		
		<!-- Kết thúc PL 01-1-TĐ/GTGT -->
		
	</xsl:template>		
</xsl:stylesheet>