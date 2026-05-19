<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader_04_GTGT_TT80">
		<xsl:with-param name="mauTKhai"   select="'04/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với người nộp thuế tính thuế theo phương pháp trực tiếp trên doanh thu)'"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<i>(Trường hợp người nộp thuế không đánh dấu lựa chọn khai riêng đối với khoản thu hộ do cơ quan nhà nước có thẩm quyền giao thì chỉ khai thông tin nội dung A. Trường hợp người nộp thuế đánh dấu lựa chọn khai riêng đối với khoản thu hộ do cơ quan nhà nước có thẩm quyền giao thì chỉ khai thông tin nội dung B)</i>
		<div> <b>A. Khai thuế theo phương pháp trực tiếp trên doanh thu:</b> </div>	
							<br/>
		<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Nhóm ngành</b></td>
				<td class="align-c" colspan="2"><b>Doanh thu hàng hoá, dịch vụ chịu thuế suất 0% và không chịu thuế</b></td>
				<td class="align-c" colspan="2"><b>Doanh thu chịu thuế giá trị gia tăng (trừ thuế suất 0%)</b></td>
				<td class="align-c" colspan="2"><b>Thuế giá trị gia tăng phải nộp</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c" colspan="2"><b>(3)</b></td>
				<td class="align-c" colspan="2"><b>(4)</b></td>
				<td class="align-c" colspan="2"><b>(5)</b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Phân phối, cung cấp hàng hoá ([23]=[22]x1%)</td>
				<td class="align-c" rowspan="5">[21]</td>
				<td class="align-r" rowspan="5"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/ct21)"/></td> 
				<td class="align-c">[22]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/PPhoiCCapHHoa/ct22)"/></td> 
				<td class="align-c">[23]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/PPhoiCCapHHoa/ct23)"/></td> 
			</tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Dịch vụ, xây dựng không bao thầu nguyên vật liệu
([25]=[24]x5%)
</td>
				<td class="align-c">[24]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/DVuXDungKoBaoThauNVL/ct24)"/></td> 
				<td class="align-c">[25]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/DVuXDungKoBaoThauNVL/ct25)"/></td> 
			</tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Sản xuất, vận tải, dịch vụ có gắn với hàng hoá, xây dựng có bao thầu nguyên vật liệu ([27]=[26]x3%)</td>
				<td class="align-c">[26]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/HHoaXDungCoBaoThauNVL/ct26)"/></td> 
				<td class="align-c">[27]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/HHoaXDungCoBaoThauNVL/ct27)"/></td> 
			</tr>
			<tr>
				<td class="align-c">4</td>
				<td class="align-l">Hoạt động kinh doanh khác ([29]=[28]x2%)</td>
				<td class="align-c">[28]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/HDongKDoanhKhac/ct28)"/></td> 
				
				<td class="align-c">[29]<xsl:if test="$tkchinh/khaiRiengThuHo = 'true' or $tkchinh/khaiRiengThuHo = '1'" >10%</xsl:if> <xsl:if test="$tkchinh/khaiRiengThuHo = 'false' or $tkchinh/khaiRiengThuHo = '0'" >2%</xsl:if> </td>
		
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/HDongKDoanhKhac/ct29)"/></td> 
			</tr>
			<tr>
				<td class="align-c">5</td>
				<td class="align-l">Doanh thu và số thuế phải nộp ([30]=[22]+[24]+[26]+[28]; [31]=[23]+[25]+[27]+[29])</td>
				<td class="align-c">[30]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/DoanhThuVaSoThuePNop/ct30)"/></td> 
				<td class="align-c">[31]</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/DoanhThuVaSoThuePNop/ct31)"/></td> 
			</tr>
		</table>	
<div class="ghichu">			
                <div>Tổng doanh thu ([32] =[21]+[30]):
                <xsl:if test="$tkchinh/KhaiThueTPPTTTDT/ct32 !=''">
                 <xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiThueTPPTTTDT/ct32)"/> 
                </xsl:if>
                <xsl:if test="$tkchinh/KhaiThueTPPTTTDT/ct32 =''">
                ......................................
                </xsl:if>
                Đồng Việt Nam.</div>
				
   </div>	
   
   <div> <b>B. Khai riêng đối với khoản thu hộ do cơ quan nhà nước có thẩm quyền giao:</b> </div>	<br/>
					<table class="tkhai_table">
						<tr>
							<td class="align-c" rowspan="1"><b>STT</b></td>
					        <td class="align-c" rowspan="1"><b>Khoản thu hộ</b></td>
				            <td class="align-c" rowspan="1"><b>Doanh thu chưa có thuế giá trị gia tăng</b></td>
				            <td class="align-c" rowspan="1"><b>Thuế suất</b></td>
				            <td class="align-c" rowspan="1"><b>Thuế giá trị gia tăng phải nộp</b></td>
				            </tr>
				        <tr>
				            <td class="align-c"><b>(1)</b></td>
				           <td class="align-c"><b>(2)</b></td>
				           <td class="align-c"><b>[33]</b></td>
				           <td class="align-c"><b>[34]</b></td>
				           <td class="align-c"><b>[35]= [33]x[34]</b></td>
				</tr>
				        <xsl:for-each select="$tkchinh/KhaiRiengDoiVoiKhoanThuHo/KhoanThuHoCTGTGT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="khoanThuHoChiuThueGTGT"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct33)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct34)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct35)"/></td>
								</tr>	
								</xsl:for-each>	
								<tr>
								<td></td>
								<td class="align-l">Doanh thu và số thuế phải nộp ([36]=∑[33]]; [37]=∑[35])</td>
							<td class="align-r"><b>[36]</b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiRiengDoiVoiKhoanThuHo/DoanhThuVaSoThuePhaiNop/ct36)"/></td>
								<td></td>
							<td class="align-r"><b>[37]</b><xsl:value-of select="ihtkk:formatNumber($tkchinh/KhaiRiengDoiVoiKhoanThuHo/DoanhThuVaSoThuePhaiNop/ct37)"/></td>
	         				</tr>	
	         		
				        	</table>
   			
	    </div>
       </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		
</td></tr>
</table>	
	</xsl:template>		
</xsl:stylesheet>