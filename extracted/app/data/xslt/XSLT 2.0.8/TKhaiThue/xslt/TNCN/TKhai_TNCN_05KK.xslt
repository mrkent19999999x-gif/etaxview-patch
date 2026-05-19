<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày 6/11/2013 của Bộ Tài chính '" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'05/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho tổ chức, cá nhân trả thu nhập chịu thuế từ tiền lương, tiền công cho cá nhân)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		 	       <div class="align-l">  
		 	               <xsl:if test="$tkchinh/dnCDoiLHinhHoacHNhat = 'true'">
							 [x]
							 </xsl:if>
							 <xsl:if test="$tkchinh/dnCDoiLHinhHoacHNhat = 'false'">
							 []
							 </xsl:if>
							 <xsl:if test="$tkchinh/dnCDoiLHinhHoacHNhat = '1'">
							 [x]
							 </xsl:if>
							 <xsl:if test="$tkchinh/dnCDoiLHinhHoacHNhat = '0'">
							 []
							 </xsl:if>	
							 doanh nghiệp chuyển đổi loại hình hoặc là hợp nhất</div>
							<div class="align-l">Lý do: <xsl:value-of select="$tkchinh/lyDo"/> </div>
							
            <div class="align-l"><b>I. Nghĩa vụ khấu trừ thuế của tổ chức, cá nhân trả thu nhập: </b></div>
	        <div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
            <table class="tkhai_table"  > 
						 <tr  class="tkhaiheader">
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Số người/Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c" rowspan="2"><b>1</b></td>
						   <td><b>Tổng số người lao động:</b></td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoNguoiLDong/ct21)"/></td>
						 </tr>  
						 <tr>
						   <td>Trong đó: Cá nhân cư trú có hợp đồng lao động </td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoNguoiLDong/ct22)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>2</b></td>
						   <td><b>Tổng số cá nhân đã khấu trừ thuế [23]=[24]+[25]</b></td>
						   <td class="align-c"><b>[23]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct23)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td>Cá nhân cư trú</td>
						   <td class="align-c"><b>[24]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct24)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[25]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCaNhanDaKhauTru/ct25)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>3</b></td>
						   <td><b>Tổng số cá nhân thuộc diện được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần</b></td>
						   <td class="align-c"><b>[26]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongCNhanMThueTheoHDinh/ct26)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td><b>Tổng thu nhập chịu thuế (TNCT) trả cho cá nhân [27]=[28]+[29]+[30]</b></td>
						   <td class="align-c"><b>[27]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct27)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[28]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct28)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct29)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCTTraChoCNhan/ct30)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>5</b></td>
						   <td><b>Tổng TNCT trả cho cá nhân thuộc diện phải khấu trừ thuế [31]=[32]+[33]+[34]</b></td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct31)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[32]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct32)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[33]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct33)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[34]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongTNCNTraChoCNKTru/ct34)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>6</b></td>
						   <td><b>Tổng số thuế thu nhập cá nhân (TNCN) đã khấu trừ [35]=[36]+[37]+[38]</b></td>
						   <td class="align-c"><b>[35]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct35)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[36]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct36)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[37]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct37)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[38]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueTNCNDaKTru/ct38)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>7</b></td>
						   <td><b>Tổng số thuế được giảm do làm việc tại khu kinh tế [39]=[40]+[41]+[42]</b></td>
						   <td class="align-c"><b>[39]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueDuocGiam/ct39)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7.1</td>
						   <td>Cá nhân cư trú có hợp đồng lao động</td>
						   <td class="align-c"><b>[40]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueDuocGiam/ct40)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7.2</td>
						   <td>Cá nhân cư trú không có hợp đồng lao động</td>
						   <td class="align-c"><b>[41]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueDuocGiam/ct41)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7.3</td>
						   <td>Cá nhân không cư trú</td>
						   <td class="align-c"><b>[42]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuKhauTruThue/TongSoThueDuocGiam/ct42)"/></td>
						 </tr>
					 </table>  
		 <div></div>
         <div class="align-l"><b>II. Nghĩa vụ quyết toán thay cho cá nhân:</b></div>
                <table class="tkhai_table" >  
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Đơn vị tính</b></td>
						   <td class="align-c"><b>Số người/Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>1</b></td>
						   <td>Tổng số cá nhân uỷ quyền cho tổ chức, cá nhân trả thu nhập quyết toán thay</td>
						   <td class="align-c"><b>[43]</b></td>
						   <td class="align-c">Người</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct43)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>2</b></td>
						   <td>Tổng số thuế TNCN đã khấu trừ</td>
						   <td class="align-c"><b>[44]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct44)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>3</b></td>
						   <td>Tổng số thuế TNCN phải nộp</td>
						   <td class="align-c"><b>[45]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct45)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>4</b></td>
						   <td>Tổng số thuế TNCN còn phải nộp NSNN </td>
						   <td class="align-c"><b>[46]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct46)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>5</b></td>
						   <td>Tổng số thuế TNCN đã nộp thừa  </td>
						   <td class="align-c"><b>[47]</b></td>
						   <td class="align-c">VNĐ</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuQuyetToanThay/ct47)"/></td>
						 </tr>  
				   </table>
      </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		
		<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	 
 	</xsl:template>		
</xsl:stylesheet>