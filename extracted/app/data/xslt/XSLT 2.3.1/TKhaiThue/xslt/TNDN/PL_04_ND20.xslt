<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Nghị định số 20/2017/NĐ-CP ngày 24 tháng 02 năm 2017 của Chính phủ'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_01_ND20-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_04_ND20">	
		<xsl:variable name="pl04_nd20" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_04_ND20' />
			
		<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'04'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KÊ KHAI THÔNG TIN BÁO CÁO LỢI NHUẬN LIÊN QUỐC GIA'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
		<div><b>MỤC I. TỔNG QUAN VỀ HOẠT ĐỘNG PHÂN BỔ THU NHẬP, THUẾ VÀ HOẠT ĐỘNG KINH DOANH THEO QUỐC GIA CƯ TRÚ</b></div>
		    <table class="tkhai_table">
							 <tr>
							   <td class="align-c" rowspan="2"><b>Quốc gia</b></td>
							   <td class="align-c" colspan="3"><b>Doanh thu</b></td>
							   <td class="align-c" rowspan="2"><b>Lợi nhuận trước thuế</b></td>
							   <td class="align-c" rowspan="2"><b>Tổng số thuế thu nhập doanh nghiệp phải nộp</b></td>
							   <td class="align-c" rowspan="2"><b>Thuế thu nhập đã nộp</b></td>
							   <td class="align-c" rowspan="2"><b>Vốn đăng ký</b></td>
							   <td class="align-c" rowspan="2"><b>Lợi nhuận lũy kế</b></td>
							   <td class="align-c" rowspan="2"><b>Số lượng nhân viên</b></td>
							   <td class="align-c" rowspan="2"><b>Tài sản hữu hình ngoại trừ tiền và các khoản tương đương tiền</b></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>Bên độc lập</b></td>
							   <td class="align-c"><b>Bên liên kết</b></td>
							   <td class="align-c"><b>Tổng</b></td>
							 </tr>
							 
							<xsl:for-each select="$pl04_nd20/Muc_I/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-l"><xsl:value-of select="ct1_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="number align-r"><xsl:value-of select="ct6"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="number align-r"><xsl:value-of select="ct10"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
						</tr>
					</xsl:for-each>
				</table>
	    <div><b>MỤC II. DANH MỤC CÁC CÔNG TY CON CỦA TẬP ĐOÀN THEO QUỐC GIA CƯ TRÚ</b></div>
		 <table class="tkhai_table">
                             <tr>
								<td class="align-c" colspan="16"><b>Tên tập đoàn đa quốc gia:</b></td>
							</tr>							 
							 <tr>
							   <td class="align-c" rowspan="2"><b>Quốc gia</b></td>
							   <td class="align-c" rowspan="2"><b>Các công ty là đối tượng cư trú ở nước sở tại</b></td>
							   <td class="align-c" rowspan="2"><b>Quốc gia hoặc lãnh thổ đăng ký kinh doanh nếu khác với quốc gia hoặc lãnh thổ cư trú thuế</b></td>
							   <td class="align-c" colspan="13"><b>Các hoạt động kinh doanh</b></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>Nghiên cứu và phát triển</b></td>
							   <td class="align-c"><b>Nắm giữ hoặc quản lý tài sản trí tuệ</b></td>
							   <td class="align-c"><b>Mua hàng</b></td>
							   <td class="align-c"><b>Chế tạo hoặc sản xuất</b></td>
							   <td class="align-c"><b>Bán hàng, tiếp thị hoặc phân phối</b></td>
							   <td class="align-c"><b>Điều hành, quản lý và các dịch vụ hỗ trợ</b></td>
							   <td class="align-c"><b>Cung cấp dịch vụ cho các bên không liên quan</b></td>
							   <td class="align-c"><b>Tài chính nội bộtập đoàn</b></td>
							   <td class="align-c"><b>Các dịch vụ tài chính theo quy định</b></td>
							   <td class="align-c"><b>Bảo hiểm</b></td>
							   <td class="align-c"><b>Nắm giữ cổ phần hoặc các công cụ vốn khác</b></td>
							   <td class="align-c"><b>Công ty không hoạt động</b></td>
							   <td class="align-c"><b>Khác</b></td>
							 </tr>
							 
							<xsl:for-each select="$pl04_nd20/Muc_II/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							  <td class="align-l"><xsl:value-of select="ct1_ten"/></td>
							 <td class="align-r"><xsl:value-of select="ct2"/></td>
							 <td class="align-r"><xsl:value-of select="ct3_ten"/></td>
							 <td class="align-r">[<xsl:if test="ct4 = 'true' or ct4 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct5 = 'true' or ct5 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct6 = 'true' or ct6 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct7 = 'true' or ct7 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct8 = 'true' or ct8 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct9 = 'true' or ct9 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct10 = 'true' or ct10 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct11 = 'true' or ct11 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct12 = 'true' or ct12 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct13 = 'true' or ct13 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct14 = 'true' or ct14 = '1'" >x</xsl:if>]</td>
							 <td class="align-r">[<xsl:if test="ct15 = 'true' or ct15 = '1'" >x</xsl:if>]</td>
							 <td class="align-r"><xsl:value-of select="ct16"/></td>
						</tr>
					</xsl:for-each>
				</table>	
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter">   
</xsl:call-template>
<div><b><i>Ghi chú: </i></b>Những cột chỉ tiêu nào không có thông tin thì bỏ trống.</div>
<div>1 Người nộp thuế đánh dấu “x” vào cột hình thức quan hệ liên kết kê khai theo quy định tại khoản 2 Điều 5 Nghị định này. Trường hợp bên liên kết thuộc nhiều hơn một hình thức quan hệ liên kết, người nộp thuế đánh dấu “x” vào các ô tương ứng.</div>
<div>2 Người nộp thuế đánh dấu “x” vào dòng trường hợp miễn trừ áp dụng tương ứng.</div>
<div>3 Giá trị phân bổ cho cơ sở thường trú cần kê khai và chú thích rõ là phân bổ doanh thu hay chi phí cho cơ sở thường trú.</div>
<div>4 Người nộp thuế kê khai “x” đối với giao dịch thuộc phạm vi áp dụng APA và “không” đối với giao dịch không thuộc phạm vi áp dụng APA. </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
