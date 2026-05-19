<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader-02TNDN">
		<xsl:with-param name="mauTKhai"   select="'02/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dùng cho doanh nghiệp kê khai thuế  thu nhập doanh nghiệp từ chuyển nhượng bất động sản theo từng lần phát sinh; kê khai theo quý đối với doanh nghiệp phát sinh thường xuyên hoạt động bất động sản)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 <div class="align-c"><i>(Trường hợp doanh nghiệp có nhiều hợp đồng chuyển nhượng thì lập bảng kê chi tiết về mục 2. Bên nhận chuyển nhượng kèm theo)</i></div>
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table" >
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>I</b></td>
						   <td class="align-l"><b>Đối với hình thức kê khai khi bàn giao bất động sản</b></td>
						   <td></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Doanh thu từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">[25]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">[26]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">- Giá vốn của đất chuyển nhượng</td>
						   <td class="align-c">[27]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về đất</td>
						   <td class="align-c">[28]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">- Chi phí đền bù thiệt hại về hoa màu</td>
						   <td class="align-c">[29]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.4</td>
						   <td class="align-l">- Chi phí cải tạo san lấp mặt bằng</td>
						   <td class="align-c">[30]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct30)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.5</td>
						   <td class="align-l">- Chi phí đầu tư xây dựng kết cấu hạ tầng</td>
						   <td class="align-c">[31]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct31)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.6</td>
						   <td class="align-l">- Chi phí khác</td>
						   <td class="align-c">[32]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct32)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thu nhập từ hoạt động chuyển nhượng bất động sản ([33]=[25]-[26])</td>
						   <td class="align-c">[33]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct33)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Số lỗ từ hoạt động chuyển nhượng bất động sản được chuyển kỳ này</td>
						   <td class="align-c">[34]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct34)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Thu nhập tính thuế TNDN từ hoạt động chuyển nhượng bất động sản ([35]=[33]-[34])</td>
						   <td class="align-c">[35]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct35)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6</td>
						   <td class="align-l">Thuế suất thuế TNDN  (22%)</td>
						   <td class="align-c">[36]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct36)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7</td>
						   <td class="align-l">Thuế TNDN phải nộp ([37]=[35] x [36])</td>
						   <td class="align-c">[37]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct37)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7.1</td>
						   <td class="align-l">Thuế TNDN đã kê khai theo tiến độ</td>
						   <td class="align-c">[38]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct38)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7.2</td>
						   <td class="align-l">Thuế TNDN bổ sung kê khai kỳ này ([39] = [37] - [38])</td>
						   <td class="align-c">[39]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiKhiBanGiaoBDS/ct39)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>II</b></td>
						   <td class="align-l"><b>Đối với hình thức kê khai thu tiền theo tiến độ</b></td>
						   <td></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">8</td>
						   <td class="align-l">Doanh thu thu tiền theo tiến độ từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">[40]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThuTienTheoTienDo/ct40)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">9</td>
						   <td class="align-l">Chi phí từ hoạt động chuyển nhượng bất động sản theo tiến độ thu tiền</td>
						   <td class="align-c">[41]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThuTienTheoTienDo/ct41)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">10</td>
						   <td class="align-l">Thuế suất thuế TNDN ( 22%) </td>
						   <td class="align-c">[42]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThuTienTheoTienDo/ct42)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">11</td>
						   <td class="align-l">Tỷ lệ nộp thuế TNDN trên doanh thu theo tiến độ thu tiền (1%)</td>
						   <td class="align-c">[43]</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThuTienTheoTienDo/ct43)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">12</td>
						   <td class="align-l"><b>Thuế TNDN tạm nộp:</b>
						   <br/> - Nếu người nộp thuế nộp theo mức thuế suất thuế TNDN: [44] = ([40] -[41])x [42]
						   <br/>- Nếu người nộp thuế nộp theo tỷ lệ nộp thuế TNDN trên doanh thu: [44] = [40] x [43]</td>
						   <td class="align-c" rowspan="3">[44]</td>
						   <td class="align-r" rowspan="3"><xsl:value-of select="ihtkk:formatNumber($tkchinh/KKhaiThuTienTheoTienDo/ct44)"/></td>
						 </tr>  
						
		          </table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
   <div class="ghichu">   
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/>
	</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
      	</xsl:template>		
</xsl:stylesheet>