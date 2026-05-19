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
							<td class="align-c"><b>Danh Mục Hàng Hóa/Dịch Vụ Thuế Tiêu Thụ Đặc Biệt</b></td>
						</tr>
				</table><br/>	
				<table class="tkhai_table">
						<tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Mã Hàng Hóa/Dịch Vụ</b></td>
     						<td class="align-c"><b>Tên Hàng Hóa/Dịch Vụ</b></td>
							<td class="align-c"><b>Thuế Suất(%)</b></td>
     						<td class="align-c"><b>Đơn Vị tính</b></td>
     						
						</tr>
                       <xsl:for-each select="DanhMuc/CTietDanhMuc/NoiDungDanhMuc">
							<xsl:variable name="currentRows" select='position()'/>
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows"/></td>
							<td class="align-c"><xsl:value-of select="maHHoaDVu"/></td>
							<td class="align-l"><xsl:value-of select="tenHHoaDVu"/></td>
							<td class="align-r"><xsl:value-of select="thueSuat"/></td>
							<td class="align-l"><xsl:value-of select="dViTinh"/></td>							
							</tr>
				         </xsl:for-each>
         		</table>	
		 </div>
	   </div>
   </xsl:template>		
</xsl:stylesheet>