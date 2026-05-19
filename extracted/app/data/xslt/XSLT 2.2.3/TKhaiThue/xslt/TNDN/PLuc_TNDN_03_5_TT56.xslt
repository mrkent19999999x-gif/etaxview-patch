<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 151/2014/TT-BTC  ngày 10/10/2014 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_5_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_5_TNDN">	
		<xsl:variable name="pl03-5_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_5_TNDN' />
		<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-5/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐỐI VỚI HOẠT ĐỘNG CHUYỂN NHƯỢNG BẤT ĐỘNG SẢN'"/>
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
								   <td class="align-c">(2)</td>
								   <td class="align-c">(1) </td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>
								 </tr>
								 <tr>
								   <td class="align-c">1</td>
								   <td class="align-l">Doanh thu từ hoạt động chuyển nhượng bất động sản</td>
								   <td class="align-c">[01]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct01"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2</td>
								   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản</td>
								   <td class="align-c">[02]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct02"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.1</td>
								   <td class="align-l"> - Giá vốn của đất chuyển nhượng</td>
								   <td class="align-c">[03]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct03"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.2</td>
								   <td class="align-l"> - Chi phí đền bù thiệt hại về đất</td>
								   <td class="align-c">[04]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct04"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.3</td>
								   <td class="align-l"> - Chi phí đền bù thiệt hại về hoa màu</td>
								   <td class="align-c">[05]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct05"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.4</td>
								   <td class="align-l"> - Chi phí cải tạo san lấp mặt bằng</td>
								   <td class="align-c">[06]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct06"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.5</td>
								   <td class="align-l"> - Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
								   <td class="align-c">[07]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct07"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.6</td>
								   <td class="align-l"> - Chi phí khác</td>
								   <td class="align-c">[08]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct08"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">3</td>
								   <td class="align-l">Thu nhập từ hoạt động chuyển nhượng bất động sản ([09]=[01]-[02])</td>
								   <td class="align-c">[09]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct09"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">4</td>
								   <td class="align-l">Số lỗ từ hoạt động chuyển nhượng bất động sản từ những năm trước được chuyển sang</td>
								   <td class="align-c">[10]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct10"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">5</td>
								   <td class="align-l">Thu nhập tính thuế TNDN từ hoạt động chuyển nhượng bất động sản ([11]=[09]-[10])</td>
								   <td class="align-c">[11]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct11"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">5a</td>
								   <td class="align-l">Số lỗ từ chuyển nhượng BĐS được bù trừ với lãi của hoạt động SXKD</td>
								   <td class="align-c">[11a]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct11a"/></td>
								 </tr>								   
								 <tr>
								   <td class="align-c">6</td>
								   <td class="align-l">Trích lập Quỹ khoa học công nghệ (nếu có)</td>
								   <td class="align-c">[12]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct12"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">7</td>
								   <td class="align-l">Thu nhập tính thuế TNDN sau khi trừ trích lập Quỹ KHCN ([13]=[11]-[12])</td>
								   <td class="align-c">[13]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct13"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">8</td>
								   <td class="align-l">Thuế suất thuế TNDN (%)</td>
								   <td class="align-c">[14]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct14"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">9</td>
								   <td class="align-l">Thuế TNDN phải nộp của bất động sản trong năm ([15]=[13] x [14])</td>
								   <td class="align-c">[15]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-5_tndn/ct15"/></td>
								 </tr>  
					   </table>
					</div>
				</div>
							<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
		<div><i><u><b>Ghi chú:</b></u> - TNDN: thu nhập doanh nghiệp.</i></div>
							<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_5_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>