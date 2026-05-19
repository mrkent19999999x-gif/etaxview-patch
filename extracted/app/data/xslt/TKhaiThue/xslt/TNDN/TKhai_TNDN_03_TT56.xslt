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
		 <xsl:call-template name="tkhaiHeader-03TNDN_TT56">
		<xsl:with-param name="mauTKhai"   select="'03/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
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
						   <td class="align-c">(1)</td>
						   <td class="align-c">(2)</td>
						   <td class="align-c">(3)</td>
						   <td class="align-c">(4)</td>
						 </tr>
						 <tr >
						   <td class="align-c"><b>A</b></td>
						   <td class="align-l"><b>Kết  quả  kinh doanh ghi nhận theo báo cáo tài chính </b></td>
						   <td class="align-c"><b>A</b></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td  class="align-l">Tổng lợi nhuận kế toán trước thuế thu nhập doanh nghiệp</td>
						   <td class="align-c">A1</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctA1"/></td>
						 </tr>  
						 <tr >
						   <td class="align-c"><b>B</b></td>
						   <td  class="align-l"><b>Xác định thu nhập chịu thuế theo Luật thuế thu nhập doanh nghiệp </b></td>
						   <td class="align-c"><b>B</b></td>
						   <td></td>
						 </tr>  
						 <tr >
						   <td class="align-c">1</td>
						   <td class="align-l">Điều chỉnh tăng tổng lợi nhuận trước thuế thu nhập doanh nghiệp (B1= B2+B3+B4+B5+B6)</td>
						   <td class="align-c">B1</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB1"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.1</td>
						   <td class="align-l">Các khoản điều chỉnh tăng doanh thu</td>
						   <td class="align-c">B2</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB2"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.2</td>
						   <td class="align-l">Chi phí của phần doanh thu điều chỉnh giảm  </td>
						   <td class="align-c">B3</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB3"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.3</td>
						   <td class="align-l">Các khoản chi không được trừ khi xác định thu nhập chịu thuế</td>
						   <td class="align-c">B4</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB4"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.4</td>
						   <td class="align-l">Thuế thu nhập đã nộp cho phần thu nhập nhận được ở nước ngoài</td>
						   <td class="align-c">B5</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB5"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.5</td>
						   <td class="align-l">Điều chỉnh tăng lợi nhuận do xác định giá thị trường đối với giao dịch liên kết</td>
						   <td class="align-c">B6</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB6"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1.6</td>
						   <td class="align-l">Các khoản điều chỉnh làm tăng lợi nhuận trước thuế khác</td>
						   <td class="align-c">B7</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB7"/></td>
  					    </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Điều chỉnh giảm tổng lợi nhuận trước thuế thu nhập doanh nghiệp (B8=B9+B10+B11+B12) </td>
						   <td class="align-c">B8</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB8"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.1</td>
						   <td class="align-l">Giảm trừ các khoản doanh thu đã tính thuế năm trước</td>
						   <td class="align-c">B9</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB9"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.2</td>
						   <td class="align-l">Chi phí của phần doanh thu điều chỉnh tăng </td>
						   <td class="align-c">B10</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB10"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2.3</td>
						   <td class="align-l">Các khoản điều chỉnh làm giảm lợi nhuận trước thuế khác</td>
						   <td class="align-c">B11</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB11"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Tổng thu nhập chịu thuế (B12=A1+B1-B8)</td>
						   <td class="align-c">B12</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB12"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.1</td>
						   <td class="align-l">Thu nhập chịu thuế từ hoạt động sản xuất kinh doanh</td>
						   <td class="align-c">B13</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB13"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3.2</td>
						   <td class="align-l">Thu nhập chịu thuế từ hoạt động chuyển nhượng bất động sản (B14=B12-B13)</td>
						   <td class="align-c">B14</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctB14"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>C</b></td>
						   <td class="align-l"><b>Xác định thuế thu nhập doanh nghiệp (TNDN) phải nộp từ hoạt động sản xuất kinh doanh</b></td>
						   <td></td>
						   <td></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thu nhập chịu thuế (C1 = B13)</td>
						   <td class="align-c">C1</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC1"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Thu nhập miễn thuế</td>
						   <td class="align-c">C2</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC2"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Lỗ được chuyển trong kỳ </td>
						   <td class="align-c">C3</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC3"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">4</td>
						   <td class="align-l">Thu nhập tính thuế (TNTT) (C4=C1-C2-C3)</td>
						   <td class="align-c">C4</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC4"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">5</td>
						   <td class="align-l">Trích lập quỹ khoa học công nghệ (nếu có)</td>
						   <td class="align-c">C5</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC5"/></td>
						 </tr>  
						 <tr >
						   <td class="align-c">6</td>
						   <td class="align-l">TNTT sau khi đã trích lập quỹ khoa học công nghệ (C6=C4-C5=C7+C8+C9)</td>
						   <td class="align-c">C6</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC6"/></td>
						 </tr>  
						 <tr >
						   <td class="align-c">6.1</td>
						   <td class="align-l">Trong đó: + Thu nhập tính thuế tính theo thuế suất 22% (bao gồm cả thu nhập được áp dụng thuế suất ưu đãi)</td>
						   <td class="align-c">C7</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC7"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">6.2</td>
						   <td class="align-l">  + Thu nhập tính thuế tính theo thuế suất 20% (bao gồm cả thu nhập được áp dụng thuế suất ưu đãi)</td>
						   <td class="align-c">C8</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC8"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c" rowspan="2">6.3</td>
						   <td class="align-l"> + Thu nhập tính thuế tính theo thuế suất không ưu đãi khác</td>
						   <td class="align-c">C9</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC9"/></td>
						 </tr>  
						 <tr>
						   <td class="align-l">+ Thuế suất không ưu đãi khác</td>
						   <td class="align-c">C9a</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC9a"/></td>
						 </tr>  
						 <tr >
						   <td class="align-c">7</td>
						   <td class="align-l">Thuế TNDN từ hoạt động SXKD tính theo thuế suất không ưu đãi (C10 =(C7 x 22%) + (C8 x 20%) + (C9 x C9a))</td>
						   <td class="align-c">C10</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC10"/></td>
						 </tr> 
						 <tr >
						   <td class="align-c">8</td>
						   <td class="align-l">Thuế TNDN chênh lệch do áp dụng mức thuế suất ưu đãi</td>
						   <td class="align-c">C11</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC11"/></td>
						 </tr> 
						 <tr >
						   <td class="align-c">9</td>
						   <td class="align-l">Thuế TNDN được miễn, giảm trong kỳ</td>
						   <td class="align-c">C12</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC12"/></td>
						 </tr> 
						 <tr >
						   <td class="align-c">9.1</td>
						   <td class="align-l">Trong đó: + Số thuế TNDN được miễn, giảm theo Hiệp định</td>
						   <td class="align-c">C13</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC13"/></td>
						 </tr> 
						 <tr >
						   <td class="align-c">9.2</td>
						   <td class="align-l"> + Số thuế được miễn, giảm không theo Luật Thuế TNDN </td>
						   <td class="align-c">C14</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC14"/></td>
						 </tr>
						 <tr >
						   <td class="align-c">11</td>
						   <td class="align-l">Số thuế thu nhập đã nộp ở nước ngoài được trừ trong kỳ tính thuế</td>
						   <td class="align-c">C15</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC15"/></td>
						 </tr> 
						 <tr >
						   <td class="align-c">12</td>
						   <td class="align-l">Thuế TNDN của hoạt động sản xuất kinh doanh (C16=C10-C11-C12-C15)</td>
						   <td class="align-c">C16</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctC16"/></td>
						 </tr> 						  						 						 						 						 						 						  
						 <tr>
						   <td class="align-c"><b>D</b></td>
						   <td class="align-l"><b>Số thuế TNDN từ hoạt động chuyển nhượng bất động sản đã nộp ở địa phương khác</b></td>
						   <td></td>
						   <td class="number align-r"><b><xsl:value-of select="$tkchinh/ctD"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>E</b></td>
						   <td class="align-l"><b>Tổng số thuế TNDN phải nộp trong kỳ</b></td>
						   <td class="align-c"><b>E</b></td>
						   <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/ctE"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c">1</td>
						   <td class="align-l">Thuế TNDN của hoạt động sản xuất kinh doanh (E1=C16)</td>
						   <td class="align-c">E1</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctE1"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">2</td>
						   <td class="align-l">Thuế TNDN từ hoạt động chuyển nhượng bất động sản</td>
						   <td class="align-c">E2</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctE2"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c">3</td>
						   <td class="align-l">Thuế TNDN phải nộp khác (nếu có) </td>
						   <td class="align-c">E3</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ctE3"/></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>F</b></td>
						   <td class="align-l"><b>Số thuế TNDN tạm tính đã kê khai trong năm của hoạt động sản xuất kinh doanh</b></td>
						   <td class="align-c"><b>F</b></td>
						   <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/ctF"/></b></td>
						 </tr>  
						 <tr>
						   <td class="align-c"><b>G</b></td>
						   <td class="align-l"><b>Chênh lệch giữa số thuế TNDN phải nộp theo quyết toán với số thuế đã kê khai trong năm của hoạt động sản xuất kinh doanh</b></td>
						   <td class="align-c"><b>G</b></td>
						   <td class="align-r"><b class="number"><xsl:value-of select="$tkchinh/ctG"/></b></td>
						 </tr>  
					   </table>
			    <div></div>
			    <div class="align-l"><b>H. Gia hạn nộp thuế (nếu có)</b></div>
 				<div class="align-l">[H1] Đối tượng được gia hạn [<xsl:if test="$tkchinh/GiaHanNopThue/ctH1 = 'true'"> x </xsl:if>]</div>	 
 				<div class="align-l">[H2] Trường hợp được gia hạn nộp thuế TNDN theo:   <xsl:value-of select="$tkchinh/GiaHanNopThue/ctH2"/></div>	 
 				<div class="align-l">[H3] Thời hạn được gia hạn: <xsl:value-of select="$tkchinh/GiaHanNopThue/ctH3"/></div>	 
 				<div class="align-l">[H4] Số thuế TNDN được gia hạn:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaHanNopThue/ctH4)"/></div>	 
 				<div class="align-l">[H5] Số thuế TNDN không được gia hạn:  <xsl:value-of select="ihtkk:formatNumber($tkchinh/GiaHanNopThue/ctH5)"/></div>	  
		        <div></div>
 		        <div class="align-l"><b>I. Ngoài các Phụ lục của  tờ khai này, chúng tôi gửi kèm theo các tài liệu sau:</b></div>
 		          <table>
 		           <tr>
 		             <td class="align-c"><b>STT</b></td>
 		             <td class="align-l"><b>Tên tài liệu</b></td>
 				   </tr>
 		           <xsl:for-each select="$tkchinh/TaiLieu_Guikem/Tailieuguikem">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
							</tr>
 				  </xsl:for-each>
				</table>					   
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/>
		<div><i><u><b>Ghi chú:</b></u> - TNDN: Thu nhập doanh nghiệp </i></div><br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
		
	      	</xsl:template>		
</xsl:stylesheet>