<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 160/2013/TT-BTC ngày 14/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_TemRuou">
		<xsl:with-param name="mauTKhai"   select="'02'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Ký hiệu mẫu</b></td>
							<td class="align-c"><b>Tên tem rượu</b></td>
							<td class="align-c"><b>Ký hiệu</b></td>
							<td class="align-c"><b>Từ số</b></td>
							<td class="align-c"><b>Ðến số</b></td>
							<td class="align-c"><b>Số lượng</b></td>
							</tr>
							<tr>
							<td class="align-c"><i>(1)</i></td>
							<td class="align-c"><i>(2)</i></td>
							<td class="align-c"><i>(3)</i></td>
							<td class="align-c"><i>(4)</i></td>
							<td class="align-c"><i>(5)</i></td>
							<td class="align-c"><i>(6)</i></td>
							<td class="align-c"><i>(7)</i></td>
						</tr>
						<div>Phương pháp hủy tem rượu: <xsl:value-of select="$tkchinh/phuongPhapHuy"/></div>
						<div>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTemRuou,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTemRuou,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayHuyTemRuou,'yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> thông báo hủy tem rượu  như sau:</div>
				<xsl:for-each select="$tkchinh/BangKe/ChiTietBangKe">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-c"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>
							</tr>
						</xsl:for-each>
			</table>
		<table style="page-break-inside: avoid;width:100%" ><br/>
		<tr>
		<div>Đơn vị cam kết: Việc khai báo trên là đúng sự thật, nếu phát hiện khai sai đơn vị xin chịu trách nhiệm trước pháp luật./.</div>

		<td>	  
        <xsl:call-template name="tkhaiFooter_TemRuou"/> 
		<div id="sigDiv"></div>
		<div><i>(1) Cơ quan quản lý thuế trực tiếp quản lý tổ chức, cá nhân sản xuất rượu</i></div>
		</td>
		
		</tr>
		
		</table>	
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
