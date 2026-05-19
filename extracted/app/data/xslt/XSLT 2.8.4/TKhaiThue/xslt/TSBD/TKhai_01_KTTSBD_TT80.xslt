<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_KTTSBD_TT80">
		<xsl:with-param name="mauTKhai"   select="'01/KTTSBĐ'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng cho tổ chức tín dụng hoặc bên thứ ba được tổ chức tín dụng ủy quyền kê khai và nộp thuế thay cho Người nộp thuế có tài sản bảo đảm)'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                      		<div> <b>I. Kê khai thay cho người nộp thuế có tài sản bảo đảm là tổ chức, doanh nghiệp</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng giá tính thuế GTGT</td>
										<td class="align-c"><b>[14]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng số thuế GTGT phải nộp trong kỳ </td>
										<td class="align-c"><b>[15]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15)"/></td>
									</tr>

									<tr>
										<td class="align-c">3</td>
										<td>Tổng thu nhập tính thuế TNDN</td>
										<td class="align-c"><b>[16]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế TNDN phải nộp trong kỳ</td>
										<td class="align-c"><b>[17]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
									</tr>
									
								</table>
								
										<div> <b>II. Kê khai thay cho người nộp thuế có tài sản bảo đảm là cá nhân</b> </div>	
							<br/>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						        <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>
										<td class="align-c"><b>Chỉ tiêu</b></td>
										<td class="align-c"><b>Mã chỉ tiêu</b></td>
										<td class="align-c"><b>Số tiền</b></td>
									</tr>
									<tr>
										<td class="align-c">1</td>
										<td>Tổng giá tính thuế GTGT</td>
										<td class="align-c"><b>[18]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
									</tr>
									<tr>
										<td class="align-c">2</td>
										<td>Tổng số thuế GTGT phải nộp trong kỳ </td>
										<td class="align-c"><b>[19]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
									</tr>

									<tr>
										<td class="align-c">3</td>
										<td>Tổng doanh thu tính thuế TNCN</td>
										<td class="align-c"><b>[20]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
									</tr>
									<tr>
										<td class="align-c">4</td>
										<td>Tổng số thuế TNCN phải nộp trong kỳ</td>
										<td class="align-c"><b>[21]</b></td>
										<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
									</tr>
									
								</table>
								
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
