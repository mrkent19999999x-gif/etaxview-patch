<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 6/11/2013 của Bộ Tài chính
'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_04GTGT">
		<xsl:with-param name="mauTKhai"   select="'04/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho người nộp thuế tính thuế theo phương pháp tính trực tiếp trên doanh thu)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Nhóm ngành</b></td>
				<td class="align-c" colspan="2"><b>Doanh thu hàng hoá, dịch vụ chịu thuế suất 0% và không chịu thuế</b></td>
				<td class="align-c" colspan="2"><b>Doanh thu hàng hoá, dịch vụ chịu thuế</b></td>
				<td class="align-c"><b>Tỷ lệ GTGT</b></td>
				<td class="align-c" colspan="2"><b>Thuế giá trị gia tăng phải nộp</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c" colspan="2"><b>(3)</b></td>
				<td class="align-c" colspan="2"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c" colspan="2"><b>(6)</b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Phân phối, cung cấp hàng hoá</td>
				<td class="align-c" rowspan="5">[21]</td>
				<td class="align-r" rowspan="5"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td> 
				<td class="align-c">[22]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PPhoiCCapHHoa/ct22)"/></td> 
				<td class="align-c">1%</td>
				<td class="align-c">[23]=[22]x1%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/PPhoiCCapHHoa/ct23)"/></td> 
			</tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Dịch vụ, xây dựng không bao thầu nguyên vật liệu</td>
				<td class="align-c">[24]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DVuXDungKoBaoThauNVL/ct24)"/></td> 
				<td class="align-c">5%</td>
				<td class="align-c">[25]=[24]x5%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/DVuXDungKoBaoThauNVL/ct25)"/></td> 
			</tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Sản xuất, vận tải, dịch vụ có gắn với hàng hoá, xây dựng có bao thầu nguyên vật liệu</td>
				<td class="align-c">[26]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHoaXDungCoBaoThauNVL/ct26)"/></td> 
				<td class="align-c">3%</td>
				<td class="align-c">[27]=[26]x3%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HHoaXDungCoBaoThauNVL/ct27)"/></td> 
			</tr>
			<tr>
				<td class="align-c">4</td>
				<td class="align-l">Hoạt động kinh doanh khác</td>
				<td class="align-c">[28]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HDongKDoanhKhac/ct28)"/></td> 
				<td class="align-c"><xsl:if test="$tkchinh/hoatDongThuHo = 'true' or $tkchinh/hoatDongThuHo = '1'" >10%</xsl:if> <xsl:if test="$tkchinh/hoatDongThuHo = 'false' or $tkchinh/hoatDongThuHo = '0'" >2%</xsl:if> </td>
				<td class="align-c">[29]=[28]x<xsl:if test="$tkchinh/hoatDongThuHo = 'true' or $tkchinh/hoatDongThuHo = '1'" >10%</xsl:if> <xsl:if test="$tkchinh/hoatDongThuHo = 'false' or $tkchinh/hoatDongThuHo = '0'" >2%</xsl:if></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/HDongKDoanhKhac/ct29)"/></td> 
			</tr>
			<tr>
				<td></td>
				<td class="align-c"><b>Tổng</b></td>
				<td class="align-c">[30]=[22]+[24]+[26]+[28]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongCong/ct30)"/></td> 
	            <td></td>
				<td class="align-c">[31]=[23]+[25]+[27]+[29]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/TongCong/ct31)"/></td> 
			</tr>
		</table>	
<div class="ghichu">			
                <div><b>Tổng doanh thu [32]=[21]+[30]: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct32
                )"/></b></div>
				<div><b>Tổng số thuế giá trị gia tăng phải nộp [33]=[31]: <xsl:value-of select="ihtkk:formatNumber($tkchinh/ct33)"/></b></div>
   </div>				
	    </div>
       </div>	
<table style="page-break-inside: avoid;" >
<tr>
<td>		   
	 <xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		 
			
	</xsl:template>		
</xsl:stylesheet>