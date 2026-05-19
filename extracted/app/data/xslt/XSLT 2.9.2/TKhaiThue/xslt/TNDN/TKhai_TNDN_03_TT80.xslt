<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_03TNDN_TT80">
		<xsl:with-param name="mauTKhai"   select="'03/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Áp dụng đối với phương pháp doanh thu - chi phí)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		 <div class="content">
		   <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">
						 <tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Chỉ tiêu</b></td>
						   <td class="align-c"><b>Mã chỉ tiêu</b></td>
						   <td class="align-c"><b>Số tiền</b></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>(1)</i></td>
						   <td class="align-c"><i>(2)</i></td>
						   <td class="align-c"><i>(3)</i></td>
						   <td class="align-c"><i>(4)</i></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>A</b></td>
						   <td class="align-l"><b>Kết quả kinh doanh ghi nhận theo báo cáo tài chính</b></td>
						   <td class="align-c"><b>A</b></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td  class="align-l">Tổng lợi nhuận kế toán trước thuế thu nhập doanh nghiệp</td>
						   <td class="align-c">A1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctA1)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>B</b></td>
						   <td  class="align-l"><b>Xác định thu nhập chịu thuế theo Luật thuế thu nhập doanh nghiệp</b></td>
						   <td class="align-c"><b>B</b></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l"><b>Điều chỉnh tăng tổng lợi nhuận trước thuế thu nhập doanh nghiệp (B1= B2+B3+B4+B5+B6+B7)</b></td>
						   <td class="align-c"><b>B1</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB1)"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.1</td>
						   <td class="align-l">Các khoản điều chỉnh tăng doanh thu</td>
						   <td class="align-c">B2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB2)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.2</td>
						   <td class="align-l">Chi phí của phần doanh thu điều chỉnh giảm</td>
						   <td class="align-c">B3</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB3)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.3</td>
						   <td class="align-l">Các khoản chi không được trừ khi xác định thu nhập chịu thuế</td>
						   <td class="align-c">B4</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB4)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.4</td>
						   <td class="align-l">Thuế thu nhập đã nộp cho phần thu nhập nhận được ở nước ngoài</td>
						   <td class="align-c">B5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB5)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.5</td>
						   <td class="align-l">Điều chỉnh tăng lợi nhuận do xác định giá thị trường đối với giao dịch liên kết</td>
						   <td class="align-c">B6</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB6)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.6</td>
						   <td class="align-l">Các khoản điều chỉnh làm tăng lợi nhuận trước thuế khác</td>
						   <td class="align-c">B7</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB7)"/></td>
  					    </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l"><b>Điều chỉnh giảm tổng lợi nhuận trước thuế thu nhập doanh nghiệp (B8=B9+B10+B11+B12)</b></td>
						   <td class="align-c"><b>B8</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB8)"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">Giảm trừ các khoản doanh thu đã tính thuế năm trước</td>
						   <td class="align-c">B9</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB9)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">Chi phí của phần doanh thu điều chỉnh tăng </td>
						   <td class="align-c">B10</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB10)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">Chi phí lãi vay không được trừ kỳ trước được chuyển sang kỳ này của doanh nghiệp có giao dịch liên kết</td>
						   <td class="align-c">B11</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB11)"/></td>
						 </tr> 
						<tr>
						   <td class="align-c">2.4</td>
						   <td class="align-l">Các khoản điều chỉnh làm giảm lợi nhuận trước thuế khác</td>
						   <td class="align-c">B12</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB12)"/></td>
						 </tr>						 
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l"><b>Tổng thu nhập chịu thuế (B13=A1+B1-B8)</b></td>
						   <td class="align-c"><b>B13</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB13)"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.1</td>
						   <td class="align-l">Thu nhập chịu thuế từ hoạt động sản xuất kinh doanh</td>
						   <td class="align-c">B14</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB14)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3.2</td>
						   <td class="align-l">Thu nhập chịu thuế từ hoạt động chuyển nhượng BĐS</td>
						   <td class="align-c">B15</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctB15)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c"><b>C</b></td>
						   <td class="align-l"><b>Thuế thu nhập doanh nghiệp (TNDN) phải nộp từ hoạt động sản xuất kinh doanh</b></td>
						   <td></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thu nhập chịu thuế (C1 = B14)</td>
						   <td class="align-c">C1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC1)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Thu nhập miễn thuế</td>
						   <td class="align-c">C2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC2)"/></td>
						 </tr>
						 <xsl:for-each select="$tkchinh/dsThMienThue/thMienThue">														
						<tr>						
							<td class="align-j"></td>
							<td class="align-l"><xsl:value-of select="ten_loaiMien"/></td>
							<td class="align-c"></td>
							<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(ctC2_soThuNhap)"/></td>
						</tr>														 
						</xsl:for-each>
						<tr>
						   <td class="align-c"></td>
						   <td class="align-l">Loại thu nhập miễn thuế <xsl:value-of select="ihtkk:formatNumber($tkchinh/ten_loaiMien)"/></td>
						   <td class="align-c"></td>
						   <td class="align-c"></td>
						 </tr>
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Chuyển lỗ và bù trừ lãi, lỗ (C3=C3a+C3b)</td>
						   <td class="align-c">C3</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC3)"/></td>
						 </tr> 
						<tr>
						   <td class="align-c"></td>
						   <td class="align-l">Trong đó:</td>
						   <td class="align-c"></td>
						   <td class="align-c"></td>
						 </tr>
						 <tr>
						   <td class="align-c">3.1</td>
						   <td class="align-l"><i>+ Lỗ từ hoạt động SXKD được chuyển trong kỳ</i></td>
						   <td class="align-c"><i>C3a</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC3a)"/></i></td>
						 </tr>  
						 	<tr>
						   <td class="align-c">3.2</td>
						   <td class="align-l"><i>+ Lỗ từ chuyển nhượng BĐS được bù trừ với lãi của hoạt động SXKD</i></td>
						   <td class="align-c"><i>C3b</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC3b)"/></i></td>
						 </tr>  					 
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Thu nhập tính thuế (TNTT) (C4=C1-C2-C3)</td>
						   <td class="align-c">C4</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC4)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Trích lập quỹ khoa học công nghệ (nếu có)</td>
						   <td class="align-c">C5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC5)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6</td>
						   <td class="align-l">TNTT sau khi đã trích lập quỹ khoa học công nghệ (C6=C4-C5=C7+C8)</td>
						   <td class="align-c">C6</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC6)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">Trong đó:</td>
						   <td class="align-c"></td>
						   <td class="align-c"></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>6.1</i></td>
						   <td class="align-l"><i>
								<xsl:if test="$tkchinh/ctC7_thueSuat= '15'">+ Thu nhập tính thuế áp dụng thuế suất 15%</xsl:if>
								<xsl:if test="$tkchinh/ctC7_thueSuat= '17'">+ Thu nhập tính thuế áp dụng thuế suất 17%</xsl:if>
								<xsl:if test="$tkchinh/ctC7_thueSuat= '20'">+ Thu nhập tính thuế áp dụng thuế suất 20%</xsl:if>
						   </i></td>
						   <td class="align-c"><i>C7</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC7_thuNhap)"/></i></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><i>6.2</i></td>
						   <td class="align-l"><i>+ Thu nhập tính thuế tính theo thuế suất không ưu đãi khác</i></td>
						   <td class="align-c"><i>C8</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC8)"/></i></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><i>6.3</i></td>
						   <td class="align-l"><i>+ Thuế suất không ưu đãi khác (%)</i></td>
						   <td class="align-c"><i>C8a</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC8a)"/></i></td>
						 </tr>  
						 <tr>
						   <td class="align-c">7</td>
						   <td class="align-l">
								<xsl:if test="$tkchinh/ctC7_thueSuat= '15'">Thuế TNDN từ hoạt động SXKD tính theo thuế suất không ưu đãi(C9 =(C7 x 15%) + (C8 x C8a))</xsl:if>
								<xsl:if test="$tkchinh/ctC7_thueSuat= '17'">Thuế TNDN từ hoạt động SXKD tính theo thuế suất không ưu đãi(C9 =(C7 x 17%) + (C8 x C8a))</xsl:if>
								<xsl:if test="$tkchinh/ctC7_thueSuat= '20'">Thuế TNDN từ hoạt động SXKD tính theo thuế suất không ưu đãi(C9 =(C7 x 20%) + (C8 x C8a))</xsl:if>
						   </td>
						   <td class="align-c">C9</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC9)"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">8</td>
						   <td class="align-l">Thuế TNDN được ưu đãi theo Luật thuế TNDN(C10 = C11 + C12 + C13)</td>
						   <td class="align-c">C10</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC10)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c"></td>
						   <td class="align-l">Trong đó:</td>
						   <td class="align-c"></td>
						   <td class="align-c"></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>8.1</i></td>
						   <td class="align-l"><i>+ Thuế TNDN chênh lệch do áp dụng mức thuế suất ưu đãi</i></td>
						   <td class="align-c"><i>C11</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC11)"/></i></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><i>8.2</i></td>
						   <td class="align-l"><i>+ Thuế TNDN được miễn trong kỳ</i></td>
						   <td class="align-c"><i>C12</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC12)"/></i></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><i>8.3</i></td>
						   <td class="align-l"><i>+ Thuế TNDN được giảm trong kỳ</i></td>
						   <td class="align-c"><i>C13</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC13)"/></i></td>
						 </tr> 
						 <tr>
						   <td class="align-c">9</td>
						   <td class="align-l">Thuế TNDN được miễn, giảm theo Hiệp định thuế</td>
						   <td class="align-c">C14</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC14)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">10</td>
						   <td class="align-l">Thuế TNDN được miễn, giảm theo từng thời kỳ</td>
						   <td class="align-c">C15</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC15)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">11</td>
						   <td class="align-l">Thuế thu nhập đã nộp ở nước ngoài được trừ trong kỳ tính thuế</td>
						   <td class="align-c">C16</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC16)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">12</td>
						   <td class="align-l">Thuế TNDN phải nộp của hoạt động sản xuất kinh doanh(C17=C9-C10-C14-C15-C16)</td>
						   <td class="align-c">C17</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctC17)"/></td>
						 </tr> 						  						 						 						 						 						 						  
						 <tr>
						   <td class="align-c"><b>D</b></td>
						   <td class="align-l"><b>Thuế TNDN phải nộp từ hoạt động chuyển nhượng BĐS</b></td>
						   <td class="align-c"><b>D</b></td>
						   <td class="align-r"></td>
						 </tr> 
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thu nhập chịu thuế (D1 = B15)</td>
						   <td class="align-c">D1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD1)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Lỗ từ hoạt động chuyển nhượng BĐS được chuyển trong kỳ </td>
						   <td class="align-c">D2</td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD2)"/></b></td>
						 </tr> 
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thu nhập tính thuế (D3=D1-D2)</td>
						   <td class="align-c">D3</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD3)"/></td>
						 </tr> 
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Trích lập quỹ khoa học công nghệ (nếu có)</td>
						   <td class="align-c">D4</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD4)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">TNTT sau khi đã trích lập quỹ khoa học công nghệ (D5=D3-D4)</td>
						   <td class="align-c">D5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD5)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">6</td>
						   <td class="align-l">Thuế TNDN phải nộp của hoạt động chuyển nhượng BĐS trong kỳ</td>
						   <td class="align-c">D6</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD6)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">7</td>
						   <td class="align-l">Thuế TNDN chênh lệch do áp dụng mức thuế suất ưu đãi đối với thu nhập từ thực hiện dự án đầu tư - kinh doanh nhà ở xã hội để bán, cho thuê, cho thuê mua</td>
						   <td class="align-c">D7</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD7)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">8</td>
						   <td class="align-l">Thuế TNDN của hoạt động chuyển nhượng BĐS còn phải nộp kỳ này (D8=D6-D7)</td>
						   <td class="align-c">D8</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctD8)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>E</b></td>
						   <td class="align-l"><b>Số thuế TNDN phải nộp quyết toán trong kỳ (E=E1+E2+E5)</b></td>
						   <td class="align-c"><b>E</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE)"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thuế TNDN của hoạt động sản xuất kinh doanh </td>
						   <td class="align-c">E1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE1)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Thuế TNDN từ hoạt động chuyển nhượng bất động sản (E2=E3+E4)</td>
						   <td class="align-c">E2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE2)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>2.1</i></td>
						   <td class="align-l"><i>Thuế TNDN từ hoạt động chuyển nhượng bất động sản</i></td>
						   <td class="align-c"><i>E3</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE3)"/></i></td>
						 </tr>
						 <tr>
						   <td class="align-c"><i>2.2</i></td>
						   <td class="align-l"><i>Thuế TNDN từ hoạt động chuyển nhượng cơ sở hạ tầng, nhà có thu tiền theo tiến độ </i></td>
						   <td class="align-c"><i>E4</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE4)"/></i></td>
						 </tr>
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thuế TNDN phải nộp khác (nếu có) </td>
						   <td class="align-c">E5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE5)"/></td>
						 </tr>	
						<tr>
						   <td class="align-c"><i>3.1</i></td>
						   <td class="align-l"><i>Trong đó thuế TNDN từ xử lý Quỹ phát triển khoa học công nghệ</i></td>
						   <td class="align-c"><i>E6</i></td>
						   <td class="align-r"><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctE6)"/></i></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>G</b></td>
						   <td class="align-l"><b>Số thuế TNDN đã tạm nộp (G=G1+G2+G3+G4+G5)</b></td>
						   <td class="align-c"><b>G</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG)"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b><i>1</i></b></td>
						   <td class="align-l"><b><i>Thuế TNDN đã tạm nộp của hoạt động sản xuất kinh doanh</i></b></td>
						   <td class="align-c"></td>
						   <td class="align-r"><b><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/thueTNDN_tamnop_sxkd)"/></i></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.1</td>
						   <td class="align-l">Thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</td>
						   <td class="align-c">G1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG1)"/></td>
						 </tr>  	
						 <tr>
						   <td class="align-c">1.2</td>
						   <td class="align-l">Thuế TNDN đã tạm nộp trong năm</td>
						   <td class="align-c">G2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG2)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b><i>2</i></b></td>
						   <td class="align-l"><b><i>Thuế TNDN đã tạm nộp của hoạt động chuyển nhượng BĐS</i></b></td>
						   <td class="align-c"></td>
						   <td class="align-r"><b><i><xsl:value-of select="ihtkk:formatNumber($tkchinh/thueTNDN_tamnop_cnbds)"/></i></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">Thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này của hoạt động chuyển nhượng BĐS</td>
						   <td class="align-c">G3</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG3)"/></td>
						 </tr>  	
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">Thuế TNDN đã tạm nộp trong năm của hoạt động chuyển nhượng BĐS</td>
						   <td class="align-c">G4</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG4)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">Thuế TNDN đã tạm nộp các kỳ trước và trong năm quyết toán của hoạt động chuyển nhượng cơ sở hạ tầng, nhà có thu tiền theo tiến độ</td>
						   <td class="align-c">G5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctG5)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>H</b></td>
						   <td class="align-l"><b>Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp </b></td>
						   <td class="align-c"><b>H</b></td>
						   <td class="align-r"></td>
						 </tr>
						<tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm của hoạt động sản xuất kinh doanh (H1=E1+E5-G2)</td>
						   <td class="align-c">H1</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctH1)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm của hoạt động chuyển nhượng BĐS (H2=E3-G4)</td>
						   <td class="align-c">H2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctH2)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp của hoạt động chuyển nhượng cơ sở hạ tầng, nhà có thu tiền theo tiến độ (H3=E4-G5)</td>
						   <td class="align-c">H3</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctH3)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c"><b>I</b></td>
						   <td class="align-l"><b>Số thuế TNDN còn phải nộp đến thời hạn nộp hồ sơ khai quyết toán thuế (I=E-G=I1+I2)</b></td>
						   <td class="align-c"><b>I</b></td>
						   <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctI)"/></b></td>
						 </tr>	
						<tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thuế TNDN còn phải nộp của hoạt động sản xuất kinh doanh</td>
						   <td class="align-c">I1=E1+E5-G1-G2</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctI1)"/></td>
						 </tr>
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Thuế TNDN còn phải nộp của hoạt động chuyển nhượng BĐS</td>
						   <td class="align-c">I2=E2-G3-G4-G5</td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ctI2)"/></td>
						 </tr>
					   </table>	 
		 </div>		
      </div>	
   <table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		   	
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u></i></div><br/>
		<div class="align-l"><i>&#160;&#160;1. TNDN: Thu nhập doanh nghiệp; BĐS: Bất động sản;</i></div>
 				<div class="align-l"><i>&#160;&#160;2. Chỉ tiêu G1, G3: NNT kê khai số thuế TNDN nộp thừa kỳ trước chuyển sang bù trừ với số thuế TNDN phải nộp kỳ này</i></div>
				<div class="align-l"><i>&#160;&#160;3. Chỉ tiêu D11, G2, G4, G5: NNT kê khai số thuế TNDN đã tạm nộp vào NSNN tính đến thời hạn nộp hồ sơ khai quyết toán. Ví dụ: NNT có kỳ tính thuế từ 01/01/2021 đến 31/12/2021 thì số thuế TNDN đã tạm nộp trong năm là số thuế TNDN đã nộp cho kỳ tính thuế năm 2021 tính từ ngày 01/01/2021 đến hết ngày 31/3/2022.</i></div>
				<div class="align-l"><i>&#160;&#160;4. Trường hợp NNT là doanh nghiệp xổ số có hoạt động sản xuất kinh doanh khác hoạt động kinh doanh xổ số thì NNT kê khai số thuế TNDN phải nộp của hoạt động kinh doanh xổ số vào chỉ tiêu E1, số thuế TNDN phải nộp của 	hoạt động sản xuất kinh doanh khác vào chỉ tiêu E2, E3.	</i></div>
				<div class="align-l"><i>&#160;&#160;5. Các chỉ tiêu E, G: NNT không kê khai số thuế TNDN phải nộp, đã tạm nộp của hoạt động được hưởng ưu đãi khác tỉnh đã kê khai riêng.	</i></div>
				<div class="align-l"><i>&#160;&#160;6. Chỉ tiêu E4, G5, H3: NNT kê khai số thuế TNDN phải nộp, đã tạm nộp của hoạt động chuyển nhượng cơ sở hạ tầng, nhà được bàn giao kỳ này và có thu tiền ứng trước của khách hàng theo tiến độ (bao gồm số tiền đã thu của các kỳ trước và kỳ này).</i></div>
				<div class="align-l"><i>&#160;&#160;7. Hạch toán số tiền <xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuThue/tong1052)"/>  vào tiểu mục 1052: Thuế thu nhập doanh nghiệp  từ hoạt động sản xuất kinh doanh (gồm cả dịch vụ trong lĩnh vực dầu khí)</i></div>
				<div class="align-l"><i>&#160;&#160;8. Hạch toán số tiền <xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuThue/tong1056)"/>  vào tiểu mục 1056: Thuế thu nhập doanh nghiệp từ hoạt động thăm dò, phát triển mỏ và khai thác dầu, khí thiên nhiên (không kể thuế thu nhập doanh nghiệp thu theo hiệp định, hợp đồng thăm dò, khai thác dầu khí)</i></div>
				<div class="align-l"><i>&#160;&#160;9. Hạch toán số tiền <xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuThue/tong1057)"/>  vào tiểu mục 1057: Thuế thu nhập doanh nghiệp từ hoạt động xổ số kiến thiết</i></div>
				<div class="align-l"><i>&#160;&#160;10. Hạch toán số tiền <xsl:value-of select="ihtkk:formatNumber($tkchinh/NghiaVuThue/tong1053)"/>  vào tiểu mục 1053: Thuế thu nhập doanh nghiệp từ chuyển nhượng bất động sản</i></div>
	 <div id="sigDiv"></div>
</td>
</tr>
</table>		
	      	</xsl:template>		
</xsl:stylesheet>