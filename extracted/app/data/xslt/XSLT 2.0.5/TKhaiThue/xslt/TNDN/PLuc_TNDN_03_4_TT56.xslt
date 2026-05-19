<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!-- Phụ lục PL 03-4/TNDN -->
	<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_4_TNDN">	
		<xsl:variable name="pl03-4_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_4_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-4/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐÃ NỘP Ở NƯỚC NGOÀI ĐƯỢC TRỪ TRONG KỲ TÍNH THUẾ'"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Tên và địa chỉ của Người nộp thuế khấu trừ thuế ở nước ngoài</b></td>
							   <td class="align-c" colspan="2"><b>Thu nhập nhận được ở nước ngoài</b></td>
							   <td class="align-c" colspan="2"><b>Thuế thu nhập đã nộp ở nước ngoài cho phần thu nhập nhận đuợc </b></td>
							   <td class="align-c" colspan="2"><b>Thu nhập chịu thuế theo Luật thuế TNDN </b></td>
   							   <td class="align-c" colspan="3"><b>Xác định thuế thu nhập đã nộp ở nước ngoài được trừ </b></td>
							</tr>
							<tr>
                               <td class="align-c"><b>Ngoại tệ</b></td>
                               <td class="align-c"><b>Đồng Việt Nam</b></td>
                               <td class="align-c"><b>Ngoại tệ</b></td>
                               <td class="align-c"><b>Đồng Việt Nam</b></td>
                               <td class="align-c"><b>Ngoại tệ</b></td>
                               <td class="align-c"><b>Đồng Việt Nam</b></td>
                               <td class="align-c"><b>Thuế suất thuế TNDN (%)</b></td>
                               <td class="align-c"><b>Số thuế phải nộp theo Luật thuế TNDN</b></td>
                               <td class="align-c"><b>Số thuế đã nộp ở nước ngoài được khấu trừ </b></td>
							</tr>
                            <tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)=(3)+(5)</td>
								<td class="align-c">(8)= (4)+(6)</td>
								<td class="align-c">(9)</td>
								<td class="align-c">(10)= (8)x(9)</td>								
								<td class="align-c">(11)</td>
							</tr>
							<xsl:for-each select="$pl03-4_tndn/BangThongTinThueTNDNDaNopNN/TTinThueTNDNDaNopNN">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="ct2"/></td>
							  <td class="number align-r"><xsl:value-of select="TNhapNhanDuocONNgoai/ct3" /></td>
							  <td class="number align-r"><xsl:value-of select="TNhapNhanDuocONNgoai/ct4"/></td>
      						  <td class="number align-r"><xsl:value-of select="ThueTNhapDaNop/ct5"/></td>
							  <td class="number align-r"><xsl:value-of select="ThueTNhapDaNop/ct6" /></td>
							  <td class="number align-r"><xsl:value-of select="ThuNhapChiuThue/ct7"/></td>
      						  <td class="number align-r"><xsl:value-of select="ThuNhapChiuThue/ct8"/></td>
                              <td class="number align-r"><xsl:value-of select="XacDinhThueDuocTru/ct9"/></td>
                              <td class="number align-r"><xsl:value-of select="XacDinhThueDuocTru/ct10"/></td>
                              <td class="number align-r"><xsl:value-of select="XacDinhThueDuocTru/ct11"/></td>      						  
							  </tr>
							</xsl:for-each>
						    <tr>
						        <td></td>
						        <td class="align-c"><b>Tổng cộng</b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongNgoaiTeTNNN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongDongVNTNNN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongNgoaiTeDaNopTNNN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongDongVNDaNopTNNN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongNgoaiTeChiuThueTNDN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongDongVNChiuThueTNDN"/></b></td>
						        <td></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongThuePNopTNDN"/></b></td>
						        <td class="align-r"><b class="number"><xsl:value-of select="$pl03-4_tndn/tongThueDuocKhauTru"/></b></td>
						    </tr> 
					</table>  
		      </div>
			</div>
<table style="page-break-inside: avoid;" width="100%">
<tr>
<td>			
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><u><b>Ghi chú:</b></u> - TNDN: thu nhập doanh nghiệp.</i></div>
			<div><i>- Cột ngoại tệ: ghi rõ loại ngoại tệ</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!-- Kết thúc PL 03-4/TNDN -->
	   
	</xsl:template>		
</xsl:stylesheet>