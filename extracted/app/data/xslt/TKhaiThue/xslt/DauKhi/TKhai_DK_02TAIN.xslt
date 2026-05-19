<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="' '"/>
		 <xsl:call-template name="tkhaiHeader-DK3">
		<xsl:with-param name="mauTKhai"   select="'02/TAIN-DK'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	 </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		 <table class="tkhai_table">
             <tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Đơn vị tính</b></td>
				<td class="align-c"><b>Giá trị</b></td>
			 </tr>
			  <tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>I</b></td>
				<td class="align-l"><b>Số ngày khai thác dầu khí trong kỳ tính thuế</b></td>
				<td class="align-c"><b>[25]</b></td>
				<td class="align-c"><b>Ngày</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct25"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>II</b></td>
				<td class="align-l"><b>Sản lượng</b></td>
				<td class="align-c"></td>
				<td class="align-c"></td>
				<td class="align-r"></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên kỳ tính thuế trước chuyển sang</td>
				<td class="align-c">[26]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct26"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên trong kỳ tính thuế</td>
				<td class="align-c">[27]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct27"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên thực tế  bán trong kỳ tính thuế [28]=[28a]+[28b]</td>
				<td class="align-c">[28]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct28"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3.1</td>
				<td class="align-l"> - Xuất khẩu</td>
				<td class="align-c">[28a]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct28a"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3.2</td>
				<td class="align-l"> - Tiêu thụ nội địa</td>
				<td class="align-c">[28b]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct28b"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên chuyển sang kỳ tính thuế sau [29]=[26]+[27]-[28]</td>
				<td class="align-c">[29]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct29"/></td>
			 </tr>
			 <tr>
				<td class="align-c">5</td>
				<td class="align-l">Sản lượng dầu khí chịu thuế tài nguyên bình quân/ngày trong kỳ tính thuế [30]=[27]/[25]</td>
				<td class="align-c">[30]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct30"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>III</b></td>
				<td class="align-l"><b>Tổng doanh thu xuất bán trong kỳ tính thuế</b></td>
				<td class="align-c"><b>[31]</b></td>
				<td class="align-c"><b>USD</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct31"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>IV</b></td>
				<td class="align-l"><b>Tỷ lệ thuế tài nguyên bằng dầu khí trong kỳ tính thuế</b></td>
				<td class="align-c"><b>[32]</b></td>
				<td class="align-c"><b>%</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct32"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>V</b></td>
				<td class="align-l"><b>Thuế tài nguyên tính bằng dầu khí</b></td>
				<td class="align-c"><b></b></td>
				<td class="align-c"><b></b></td>
				<td class="number align-r"><b></b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Thuế tài nguyên bằng dầu khí chưa bán kỳ tính thuế trước chuyển sang</td>
				<td class="align-c">[33]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct33"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Thuế tài nguyên bằng dầu khí phải nộp trong kỳ tính thuế [34]=[27]x[32]</td>
				<td class="align-c">[34]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct34"/></td>
			 </tr>
			 <tr>
				<td class="align-c">3</td>
				<td class="align-l">Thuế tài nguyên bằng dầu khí bán trong kỳ tính thuế [35]=[28]x[32]</td>
				<td class="align-c">[35]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct35"/></td>
			 </tr>
			 <tr>
				<td class="align-c">4</td>
				<td class="align-l">Thuế tài nguyên bằng dầu khí chưa bán chuyển kỳ tính thuế sau [36]=[33]+[34]-[35]</td>
				<td class="align-c">[36]</td>
				<td class="align-c">Thùng; m3</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct36"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>VI</b></td>
				<td class="align-l"><b>Giá tính thuế tài nguyên trong kỳ tính thuế [37]=[31]/[28]</b></td>
				<td class="align-c"><b>[37]</b></td>
				<td class="align-c"><b>USD/thùng; USD/m3</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct37"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>VII</b></td>
				<td class="align-l"><b>Số tiền thuế tài nguyên phải nộp trong kỳ tính thuế [38]=[39]+[40]</b></td>
				<td class="align-c"><b>[38]</b></td>
				<td class="align-c"><b>USD</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct38"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c">1</td>
				<td class="align-l">Số tiền thuế tài nguyên kỳ trước chuyển sang [39]=[33]x[37]</td>
				<td class="align-c">[39]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct39"/></td>
			 </tr>
			 <tr>
				<td class="align-c">2</td>
				<td class="align-l">Số tiền thuế tài nguyên phát sinh trong kỳ tính thuế  [40]=([28]-[26])x[32]x[37]</td>
				<td class="align-c">[40]</td>
				<td class="align-c">USD</td>
				<td class="number align-r"><xsl:value-of select="$tkchinh/ct40"/></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>VIII</b></td>
				<td class="align-l"><b>Số tiền thuế tài nguyên tạm tính đã kê khai trong kỳ tính thuế</b></td>
				<td class="align-c"><b>[41]</b></td>
				<td class="align-c"><b>USD</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct41"/></b></td>
			 </tr>
			 <tr>
				<td class="align-c"><b>IX</b></td>
				<td class="align-l"><b>Chênh lệch giữa số tiền phải nộp theo quyết toán với số đã kê khai trong kỳ tính thuế [42]=[38]-[41] </b></td>
				<td class="align-c"><b>[42]</b></td>
				<td class="align-c"><b>USD</b></td>
				<td class="number align-r"><b><xsl:value-of select="$tkchinh/ct42"/></b></td>
			 </tr>
	    </table>	
	   </div>
       </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	   
	 <xsl:call-template name="tkhaiFooter"/>
	 <div class="ghichu">
	 <div><i><b><u>Ghi chú:</u></b></i></div><br/>
	 <div><i>- Trường hợp một NNT khai thác đồng thời dầu thô, condensate và khí thiên nhiên thì kê khai thành từng tờ khai riêng biệt.</i></div><br/>
	 <div><i>- USD: Đô la Mỹ</i></div><br/>
	 </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 
	</xsl:template>		
</xsl:stylesheet>