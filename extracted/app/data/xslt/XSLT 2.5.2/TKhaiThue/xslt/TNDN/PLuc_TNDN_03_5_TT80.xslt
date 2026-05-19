<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_5_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_5_TNDN">	
		<xsl:variable name="pl03-5-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_5_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-5/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THU NHẬP ĐỐI VỚI HOẠT ĐỘNG CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">
						<div class="content">	
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
								 <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu</b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><i>(1)</i></td>
								   <td class="align-c"><i>(2)</i></td>
								   <td class="align-c"><i>(3)</i></td>
								   <td class="align-c"><i>(4)</i></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Hoạt động chuyển nhượng bất động sản đã bàn giao</b></td>
								   <td class="align-c"></td>
								   <td class="number align-r"></td>
								 </tr>  
								 <tr>
								   <td class="align-c">1</td>
								   <td class="align-l">Doanh thu từ hoạt động chuyển nhượng bất động sản</td>
								   <td class="align-c"><b>[04]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct04"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản</td>
								   <td class="align-c"><b>[05]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct05"/></td>
								 </tr>
								<tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Giá vốn của đất chuyển nhượng</td>
								   <td class="align-c"><b>[06]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct06"/></td>
								 </tr>
								<tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Chi phí đền bù thiệt hại về đất</td>
								   <td class="align-c"><b>[07]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct07"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Chi phí đền bù thiệt hại về hoa màu</td>
								   <td class="align-c"><b>[08]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct08"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Chi phí cải tạo san lấp mặt bằng</td>
								   <td class="align-c"><b>[09]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct09"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
								   <td class="align-c"><b>[10]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct10"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l">- Chi phí khác</td>
								   <td class="align-c"><b>[11]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct11"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l">Thu nhập từ hoạt động chuyển nhượng bất động sản đã bàn giao trong kỳ (<b>[12]=[04]-[05]</b>)</td>
								   <td class="align-c"><b>[12]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct12"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><i>- Trong đó: thu nhập từ thực hiện dự án đầu tư - kinh doanh nhà ở xã hội để bán, cho thuê, cho thuê mua được hưởng ưu đãi</i></td>
								   <td class="align-c"><b>[13]</b></td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5-tndn/ct13"/></td>
								 </tr>
					   </table>
					</div>
				</div>
							<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
		<div><i><u><b>Ghi chú:</b></u></i></div>
		<div><i> - TNDN: Thu nhập doanh nghiệp;</i></div>
		<div><i> - Số liệu chỉ tiêu [12] được tổng hợp vào chỉ tiêu B15 trên tờ khai 03/TNDN.</i></div>
							<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_5_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>