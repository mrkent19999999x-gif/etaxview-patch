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
				
		<!-- Phụ lục 01-6/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_6_GTGT">	
		<xsl:variable name="pl06" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_6_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-6/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG PHÂN BỔ THUẾ GIÁ TRỊ GIA TĂNG CHO ĐỊA PHƯƠNG NƠI ĐÓNG TRỤ SỞ CHÍNH VÀ 
CHO CÁC ĐỊA PHƯƠNG NƠI CÓ CƠ SỞ SẢN XUẤT TRỰC THUỘC KHÔNG THỰC HIỆN HẠCH TOÁN KẾ TOÁN '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
<div class="ghichu">			
			     <div class="align-l"><b> [06]</b> Số thuế phải nộp của người nộp thuế: <xsl:value-of select="ihtkk:formatNumber($pl06/ct06)"/></div>
			     <div class="align-l"><b> [07]</b> Doanh thu chưa có thuế GTGT của sản phẩm sản xuất ra của người nộp thuế: <xsl:value-of select="ihtkk:formatNumber($pl06/ct07)"/></div>
			     
</div>
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Tên cơ sở sản xuất trực thuộc</b></td>
							   <td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
							   <td class="align-c" rowspan="2"><b>Cơ quan thuế trực tiếp quản lý</b></td>
							   <td class="align-c" colspan="3"><b>Doanh thu của sản phẩm sản xuất của cơ sở sản xuất trực thuộc</b></td>
							   <td class="align-c" colspan="2" rowspan="2"><b>Số thuế phải nộp cho từng địa phương nơi có cơ sở sản xuất trực thuộc</b></td>
							   <td class="align-c"  colspan="2" rowspan="2"><b>Số thuế phải nộp cho từng địa phương nơi có cơ sở sản 
							   xuất trực thuộc trong trường hợp [06] &lt; [16]</b></td>
							</tr>
							<tr>
							   <td class="align-c"><b>Hàng hóa chịu thuế suất 5%</b></td>
							   <td class="align-c"><b>Hàng hóa chịu thuế suất 10%</b></td>
							   <td class="align-c"><b>Tổng </b></td>								
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
								<td class="align-c" colspan="2">(8)</td>
								<td class="align-c" colspan="2">(9)</td>								
							</tr>
                            <tr>
								<td class="align-c"><b>[08]</b></td>
								<td class="align-c"><b>[09]</b></td>
                                <td class="align-c"><b>[10]</b></td>
								<td class="align-c"><b>[11]</b></td>
     							<td class="align-c"><b>[12]</b></td>
                                <td class="align-c"><b>[13]</b></td>
								<td class="align-c"><b>[14] = [12] + [13]</b></td>
								<td class="align-c" colspan="2"><b>[15] = 1%x[12]+ 2%x[13]</b></td>
                                <td class="align-c" colspan="2"><b>[17] = [06] x ([14]/[07])</b></td>
							</tr>
						  <xsl:for-each select="$pl06/PBoGTGTKhongHTKT/PBoThueGTGTChoDiaPhuong/PhanBoGTGT">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct09"/></td>
							  <td class="align-c"><xsl:value-of select="ct10" /></td>
							  <td class="align-l"><xsl:value-of select="ct11_ct"/> - <xsl:value-of select="ct11_cct"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DThuSPSXCuaCSSXPhuThuoc/ct12)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DThuSPSXCuaCSSXPhuThuoc/ct13)"/></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(DThuSPSXCuaCSSXPhuThuoc/ct14)"/></td>							  							  
      						  <td class="align-r" colspan="2"><xsl:value-of select="ihtkk:formatNumber(ct15)" /></td>
							  <td class="align-r" colspan="2"><xsl:value-of select="ihtkk:formatNumber(ct17)" /></td>	
							 </tr>					  
							</xsl:for-each>
                           <tr>
                               <td class="align-r" colspan="7"><b>Tổng cộng:</b></td>
                               <td class="align-c"><b>[16]</b></td>
                               <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl06/PBoGTGTKhongHTKT/ct16)"/></td>
                               <td class="align-c"><b>[18]</b></td>
                               <td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($pl06/PBoGTGTKhongHTKT/ct18)"/></td>
							</tr>
					</table>  
<div class="ghichu">					
					 <table>
					   <tr>
                         <td class="align-l"> <b>Số thuế phải nộp cho địa phương nơi có trụ sở chính ([19] = [06] - [16]):  <xsl:value-of select="ihtkk:formatNumber($pl06/PBoGTGTKhongHTKT/ct19)"/></b></td>
                      </tr>
					   <tr>
                         <td class="align-l"> <b>Số thuế phải nộp cho địa phương nơi có trụ sở chính trong trường hợp [06] &lt; [16]   ([20] = [06] - [18]): <xsl:value-of select="ihtkk:formatNumber($pl06/PBoGTGTKhongHTKT/ct20)"/></b></td>
					   </tr>
             		</table>
	</div>             		
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
		<!-- Kết thúc PL 01-6/GTGT -->
		
				
	</xsl:template>		
</xsl:stylesheet>