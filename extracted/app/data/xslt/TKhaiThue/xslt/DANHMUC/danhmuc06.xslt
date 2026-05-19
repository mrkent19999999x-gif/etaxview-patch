<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	  <xsl:include href="../../common/common.xsl"/>
	<xsl:variable name="danhmuc" select='DanhMuc/TTGDichChung' />
		<xsl:template match="/">
		<div class="header_div">
			<div class="content">
		 <table>
 						<tr>
							<td class="align-c">								
									<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
									<br/>------------oOo-------------<br/><br/>
							</td></tr><br/><br/>
							<tr>
							<td class="align-c">Ngày <xsl:value-of select="ihtkk:stringDatetime($danhmuc/ngayGDich,'dd')"/>								
						 Tháng <xsl:value-of select="ihtkk:stringDatetime($danhmuc/ngayGDich,'mm')"/> Năm 
						 <xsl:value-of select="ihtkk:stringDatetime($danhmuc/ngayGDich,'yyyy')"/></td><br/><br/>
						</tr>
						<tr/>
						<tr/>
						<tr>
							<td class="align-c"><b>DANH MỤC</b></td>
						</tr>
						<tr/>
						<tr>
							<td class="align-c"><b>Danh Mục Hóa Đơn Sử Dụng</b></td>
						</tr>
				</table><br/>	
				<table class="tkhai_table">
						<tr class="tkhaiheader">
							<td>STT</td>
							<td>Mã Hóa Đơn</td>
     						<td>Mẫu Số</td>
     						<td>Tên Hóa Đơn</td>
						</tr>
                       <xsl:for-each select="DanhMuc/CTietDanhMuc/NoiDungDanhMuc">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="maHoaDon"/></td>
							<td class="align-l"><xsl:value-of select="mauSo"/></td>
							<td class="align-c"><xsl:value-of select="tenHoaDon"/></td>					
							</tr>
				         </xsl:for-each>
         		</table>	
		 </div>
	   </div>
   </xsl:template>		
</xsl:stylesheet>