<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeader_03_CNNN_TMDT">
		<xsl:with-param name="mauTKhai"   select="'03/CNNN-TMĐT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<!--<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho cá nhân kinh doanh nộp thuế theo phương pháp khoán và cá nhân kinh doanh nộp thuế theo từng lần phát sinh )'"/>-->
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            <div  class="align-l"><i>KÊ KHAI THUẾ GIÁ TRỊ GIA TĂNG (GTGT), THUẾ THU NHẬP CÁ NHÂN (TNCN)</i></div>
		<br/>                     <div class="align-r">Đơn vị tính: <xsl:value-of select="$tkchinh/Header/ten_loaitien"/>
		</div>

							
							
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2" ><b>STT</b></td>
							<td class="align-c " rowspan="2"><b>Nhóm ngành nghề</b></td>
							<td class="align-c" rowspan="2"><b>Mã chỉ tiêu</b></td>
							
							<td class="align-c" colspan ='2'><b>Thuế GTGT</b></td>
							<td class="align-c" colspan ='2'><b>Thuế TNCN</b></td>
							
							
							
						</tr>
						<tr>
								<td class="align-c"><b>Doanh thu</b> <br/></td>
								<td class="align-c"><b>Số thuế</b><br/></td>
								<td class="align-c"><b>Doanh thu</b><br/></td>
								<td class="align-c"><b>Số thuế</b><br/></td>
								
						</tr>
						
						<tr>
								<td class="align-c">(1)<br/></td>
								<td class="align-c">(2)<br/></td>
								<td class="align-c">(3)<br/></td>
								<td class="align-c">(4)<br/></td>
								<td class="align-c">(5)<br/></td>
								<td class="align-c">(6)<br/></td>
								<td class="align-c">(7)<br/></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td>Cung cấp hàng hóa </td>
							<td class="align-c"><b>[13]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct13)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct13)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct13)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct13)"/></td>
						</tr>
						<tr>
							<td class="align-c">(2)</td>
							<td>Cung cấp dịch vụ</td>
							<td class="align-c"><b>[14]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct14)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct14)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct14)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct14)"/></td>
						</tr>
						<tr>
							<td class="align-c">(3)</td>
							<td>Vận tải, dịch vụ có gắn với hàng hóa</td>
							<td class="align-c"><b>[15]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct15)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct15)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct15)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct15)"/></td>
						</tr>
						<tr>
							<td class="align-c">(4)</td>
							<td>Hoạt động kinh doanh khác</td>
							<td class="align-c"><b>[16]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueGTGT/ct16)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueGTGT/ct16)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/DoanhThuThueTNCN/ct16)"/></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/SoThueTNCN/ct16)"/></td>
						</tr>
						<tr>
							<td class="align-c"></td>
							<td class="align-c"><b>Tổng cộng:</b></td>
							<td class="align-c"><b>[17]</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/TongCong/ct17_1)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/TongCong/ct17_2)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/TongCong/ct17_3)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKThueGTGT_TNCN/TongCong/ct17_4)"/></b></td>
						</tr>
					</table>
					<br/>
				<!--<div> <b>Xác định nghĩa vụ thuế TNCN phải nộp:</b> </div>	<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>	
					<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Chỉ tiêu</b></td>
							<td class="align-c"><b>Mã Chỉ tiêu</b></td>
							<td class="align-c"><b>Số tiền</b></td>
						</tr>
						<tr>
							<td class="align-c">1</td>
							<td>Doanh thu tính thuế TNCN do kinh doanh trong khu kinh tế</td>
							<td class="align-c"><b>[35]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct35)"/></td>
						</tr>
						<tr>
							<td class="align-c">2</td>
							<td>Số thuế TNCN được giảm trong khu kinh tế</td>
							<td class="align-c"><b>[36]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct36)"/></td> 
						</tr>
						<tr>
							<td class="align-c">3</td>
							<td>Số thuế TNCN phải nộp [37]=[34d]-[36]</td>
							<td class="align-c"><b>[37]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/XDinhNVuThue/ct37)"/></td>
						</tr>
					</table>
					<br/>-->
					
			
		<xsl:call-template name="tkhaiFooter"/>
		</div>	
		</div>
		
					</xsl:template>	

</xsl:stylesheet>
