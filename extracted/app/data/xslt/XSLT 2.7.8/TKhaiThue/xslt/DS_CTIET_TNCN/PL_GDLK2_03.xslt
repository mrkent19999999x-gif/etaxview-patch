<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue'/>		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Nghị định số 132/2020/NĐ-CP ngày 05 tháng 11 năm 2020 của Chính phủ'"/>
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_GDLK2_03-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-03">	
		<xsl:variable name="PL03_ND132" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-03'/>
			
		<xsl:call-template name="tkhaiHeader-pluc03-132">
		<xsl:with-param name="mauTKhai"   select="'03'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'DANH MỤC CÁC THÔNG TIN, TÀI LIỆU CẦN CUNG CẤP TẠI HỒ SƠ TOÀN CẦU'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập doanh nghiệp)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
		<div>Công ty báo cáo các thông tin, tài liệu đã chuẩn bị và lưu trữ theo quy định tại Mẫu số 03, như sau:</div>
		    <table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tài liệu</b></td>
							   <td class="align-c"><b>Đã lập và lưu</b></td>
							   <td class="align-c"><b>Ghi chú</b></td>
							 </tr>
							
						<tr>
							 <td class="align-c">1</td>
							 <td>Cơ cấu tổ chức:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">1.1</td>
							 <td>Sơ đồ minh họa cơ cấu sở hữu; cơ cấu pháp lý của tập đoàn và vị trí địa lý của các công ty con thuộc tập đoàn đang hoạt động.</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_1.1/daLapVaLuu = 'true' or $PL03_ND132/Dong_1.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_1.1/ghiChu"/></td>
						</tr>
						
						<tr>
							 <td class="align-c">2</td>
							 <td>Thông tin về hoạt động kinh doanh của tập đoàn gồm:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">2.1</td>
							 <td>Các yếu tố chính và kênh quan trọng tạo lợi nhuận kinh doanh.</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.1/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.2</td>
							 <td>Mô tả về chuỗi cung ứng của 05 sản phẩm và/hoặc dịch vụ lớn nhất của Tập đoàn tính theo doanh thu và bất kỳ hàng hóa và/hoặc dịch vụ nào chiếm hơn 5% doanh thu Tập đoàn, bao gồm thông tin về thị trường địa lý chính của các hàng hóa, dịch vụ này. Mô tả có thể dưới hình thức sơ đồ hoặc biểu đồ</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.2/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.3</td>
							 <td>Danh sách và mô tả ngắn gọn các thỏa thuận dịch vụ trọng yếu giữa các thành viên của tập đoàn, không gồm các dịch vụ nghiên cứu phát triển (R$D), bao gồm mô tả năng lực của các trụ sở chính (cấp toàn cầu và cấp vùng) cung cấp các dịch vụ quan trọng và các chính sách giá chuyển nhượng để phân bổ chi phí dịch vụ và xác định giá phải trả cho các dịch vụ nội bộ tập đoàn. Tóm tắt và giải trình lý do chính trong trường hợp Tập đoàn tiến hành hoạt động mua sắm và quảng cáo, tiếp thị thông qua các trung tâm mua sắm và trung tâm tiếp thị tập trung.</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.3/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.4</td>
							 <td>Mô tả các thị trường địa lý chính của các sản phẩm của tập đoàn nêu tại mục 2.2</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.4/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.4/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.4/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.5</td>
							 <td>Mô tả bằng văn bản về phân tích chức năng đưa ra các đóng góp của trụ sở chính đối với các giá trị do các cơ sở kinh doanh bản địa trong tập đoàn tạo ra, ví dụ các chức năng trọng yếu được thực hiện, các rủi ro trọng yếu phải gánh chịu và các tài sản trọng yếu được sử dụng.</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.5/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.5/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.5/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.6</td>
							 <td>Mô tả về các giao dịch tái cơ cấu kinh doanh trọng yếu, các hoạt động mua bán, sáp nhập phát sinh trong năm tài chính</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_2.6/daLapVaLuu = 'true' or $PL03_ND132/Dong_2.6/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_2.6/ghiChu"/></td>
						</tr>
						
						<tr>
							 <td class="align-c">3</td>
							 <td>Thông tin về tài sản vô hình (TSVH) của tập đoàn:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">3.1</td>
							 <td>Mô tả tổng quan về chiến lược chung của MNE với việc phát triển, sở hữu và khai thác TSVH, bao gồm vị trí của các cơ sở nghiên cứu phát triển (R$D) trụ sở chính và vị trí của nơi quản lý R$D</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_3.1/daLapVaLuu = 'true' or $PL03_ND132/Dong_3.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_3.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.2</td>
							 <td>Danh mục các TSVH hoặc nhóm các TSVH của tập đoàn có tác động trọng yếu đối với chính sách giá chuyển nhượng và các công ty sở hữu về mặt pháp lý đối với TSVH hoặc nhóm TSVH đó</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_3.2/daLapVaLuu = 'true' or $PL03_ND132/Dong_3.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_3.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.3</td>
							 <td>Danh sách các thỏa thuận quan trọng giữa các bên liên kết liên quan đến TSVH, thỏa thuận đóng góp chi phí, thỏa thuận dịch vụ nghiên cứu và các thỏa thuận cấp giấy phép, nhượng quyền</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_3.3/daLapVaLuu = 'true' or $PL03_ND132/Dong_3.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_3.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.4</td>
							 <td>Mô tả chung về các chính sách giá chuyển nhượng của tập đoàn đối với các hoạt động R$D và TSVH</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_3.4/daLapVaLuu = 'true' or $PL03_ND132/Dong_3.4/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_3.4/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.5</td>
							 <td>Mô tả chung về bất kỳ chuyển nhượng lợi ích quan trọng đối với TSVH giữa các bên liên kết trong năm tài chính liên quan, bao gồm thông tin các công ty con, các quốc gia tham gia chuyển nhượng và các khoản thanh toán liên quan</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_3.5/daLapVaLuu = 'true' or $PL03_ND132/Dong_3.5/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_3.5/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">4</td>
							 <td>Các hoạt động tài chính nội bộ tập đoàn:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">4.1</td>
							 <td>Mô tả chung về cơ chế phân bổ tài chính của tập đoàn, bao gồm các thỏa thuận tài chính, thỏa thuận cấp vốn quan trọng với các bên cho vay độc lập</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_4.1/daLapVaLuu = 'true' or $PL03_ND132/Dong_4.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_4.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">4.2</td>
							 <td>Thông tin xác định bất kỳ thành viên nào của tập đoàn cung cấp chức năng tài chính, vốn tập trung cho tập đoàn, bao gồm các quốc gia nơi thành lập công ty con và nơi đặt trụ sở điều hành thực tế của công ty con</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_4.2/daLapVaLuu = 'true' or $PL03_ND132/Dong_4.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_4.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">4.3</td>
							 <td>Mô tả chung về chính sách giá chuyển nhượng của tập đoàn đối với các thỏa thuận tài chính, cấp vốn giữa các bên liên kết</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_4.3/daLapVaLuu = 'true' or $PL03_ND132/Dong_4.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_4.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">5</td>
							 <td>Kết quả kinh doanh và nghĩa vụ thuế của tập đoàn:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">5.1</td>
							 <td>Báo cáo tài chính hợp nhất năm kê khai của tập đoàn và các báo cáo, cơ chế tài chính, quản lý nội bộ phục vụ mục đích tính thuế của tập đoàn; thuế suất áp dụng xác định nghĩa vụ thuế tương ứng lợi nhuận thu được từ hoạt động sản xuất kinh doanh của các bên liên kết có giao dịch liên kết với người nộp thuế</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_5.1/daLapVaLuu = 'true' or $PL03_ND132/Dong_5.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_5.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">5.2</td>
							 <td>Danh sách mô tả ngắn gọn về các thỏa thuận trước về phương pháp xác định giá (APA) đơn phương và các chính sách thuế khác liên quan đến việc phân bổ thu nhập giữa các quốc gia</td>
							 <td class="align-c">[<xsl:if test="$PL03_ND132/Dong_5.2/daLapVaLuu = 'true' or $PL03_ND132/Dong_5.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL03_ND132/Dong_5.2/ghiChu"/></td>
						</tr>
						
				   </table>
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
