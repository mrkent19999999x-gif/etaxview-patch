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
		
	<!--start phu luc PL_GDLK2_02-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-02">	
		<xsl:variable name="PL02_ND132" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-02'/>
			
		<xsl:call-template name="tkhaiHeader-pluc02-132">
		<xsl:with-param name="mauTKhai"   select="'02'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'DANH MỤC CÁC THÔNG TIN, TÀI LIỆU CẦN CUNG CẤP TẠI HỒ SƠ QUỐC GIA'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập doanh nghiệp)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
		<div>Công ty báo cáo các thông tin, tài liệu đã chuẩn bị và lưu trữ theo quy định tại Mẫu số 02, như sau:</div>
		    <table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tài liệu</b></td>
							   <td class="align-c"><b>Đã lập và lưu</b></td>
							   <td class="align-c"><b>Ghi chú</b></td>
							 </tr>
							
						<tr>
							 <td class="align-c">1</td>
							 <td>Thông tin về người nộp thuế:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">1.1</td>
							 <td>Thông tin cơ cấu quản lý và tổ chức, bao gồm sơ đồ tổ chức, danh sách, thông tin tóm lược các chức danh quản lý của tập đoàn mà người nộp thuế phải báo cáo trực tiếp và địa chỉ văn phòng, trụ sở chính của các chức danh này</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_1.1/daLapVaLuu = 'true' or $PL02_ND132/Dong_1.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_1.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">1.2</td>
							 <td>Thông tin chi tiết về hoạt động kinh doanh, chiến lược kinh doanh của người nộp thuế, bao gồm thông tin về việc người nộp thuế có tham gia hoặc chịu tác động vào quá trình, quyết định tái cơ cấu hay chuyển nhượng vốn, chuyển nhượng tài sản của tập đoàn trong năm kê khai</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_1.2/daLapVaLuu = 'true' or $PL02_ND132/Dong_1.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_1.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">1.3</td>
							 <td>Thông tin các doanh nghiệp có các sản phẩm, dịch vụ tương đồng trên thị trường trong nước và quốc tế (các đối thủ cạnh tranh chính):</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_1.3/daLapVaLuu = 'true' or $PL02_ND132/Dong_1.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_1.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2</td>
							 <td>Các giao dịch liên kết: với mỗi loại/dòng giao dịch liên kết trọng yếu mà người nộp thuế có liên quan, cung cấp các thông tin sau:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">2.1</td>
							 <td>Mô tả về các giao dịch liên kết trọng yếu (ví dụ cung cấp dịch vụ sản xuất, mua hàng hóa, cung cấp dịch vụ, khoản vay, các bảo lãnh thực hiện và tài chính, nhượng quyền TSVH, v.v...) và bối cảnh mà các giao dịch này được thực hiện</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.1/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.2</td>
							 <td>Giá trị và hóa đơn các khoản thanh toán và được thanh toán trong nội bộ tập đoàn đối với mỗi loại giao dịch liên quan đến công ty con (ví dụ thanh toán và được trả đối với sản phẩm, dịch vụ, bản quyền, lãi vay, v.v...) bị Cơ quan thuế nước ngoài điều chỉnh</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.2/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.3</td>
							 <td>Xác định các bên liên kết liên quan đến các giao dịch liên kết và quan hệ giữa các bên liên kết này</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.3/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.4</td>
							 <td>Bản sao các thỏa thuận, hợp đồng giao dịch liên kết</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.4/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.4/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.4/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.5</td>
							 <td>Phân tích chức năng và phân tích so sánh chi tiết đối với người nộp thuế và các bên liên kết đối với mỗi loại giao dịch liên kết, bao gồm bất kỳ thay đổi nào so với năm trước đó</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.5/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.5/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.5/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.6</td>
							 <td>Thuyết minh phương pháp xác định giá phù hợp nhất liên quan đến các dòng giao dịch liên kết và lý do lựa chọn phương pháp xác định giá đề xuất</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.6/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.6/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.6/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.7</td>
							 <td>Xác định bên liên kết được lựa chọn xác định giá giao dịch liên kết, và giải trình lý do lựa chọn</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.7/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.7/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.7/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.8</td>
							 <td>Tóm tắt các giả định trọng yếu khi áp dụng phương pháp xác định giá đề xuất</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.8/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.8/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.8/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.9</td>
							 <td>Giải trình các lý do thực hiện phân tích dữ liệu nhiều năm (nếu có)</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.9/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.9/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.9/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.10</td>
							 <td>Danh mục và mô tả các đối tượng so sánh độc lập (đối tượng nội bộ và đối tượng bên ngoài) và thông tin, chỉ số tài chính cần thiết phục vụ phân tích giá chuyển nhượng, bao gồm mô tả về phương pháp tìm kiếm dữ liệu so sánh và nguồn thông tin tìm kiếm</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.10/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.10/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.10/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.11</td>
							 <td>Mô tả các khoản điều chỉnh so sánh đã thực hiện, lý do, tài liệu về kết quả điều chỉnh</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.11/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.11/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.11/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.12</td>
							 <td>Mô tả lý do và diễn giải việc áp dụng phương pháp xác định giá đề xuất đã tuân thủ nguyên tắc giao dịch độc lập</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.12/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.12/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.12/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.13</td>
							 <td>Tóm tắt thông tin về các chỉ số, chỉ tiêu, tiêu chí tài chính định lượng và lý do, diễn giải về việc các chỉ tiêu này được sử dụng trong quá trình áp dụng phương pháp xác định giá đề xuất</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.13/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.13/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.13/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">2.14</td>
							 <td>Bản sao các Thỏa thuận APA đơn phương và song phương, đa phương và các thỏa thuận khác về thuế liên quan đến các giao dịch liên kết của người nộp thuế mà Cơ quan thuế Việt Nam không phải là một bên tham gia thỏa thuận, ký kết</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_2.14/daLapVaLuu = 'true' or $PL02_ND132/Dong_2.14/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_2.14/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3</td>
							 <td>Thông tin tài chính:</td>
							 <td class="align-c"></td>
							 <td class="align-l"></td>
						</tr>
						<tr>
							 <td class="align-c">3.1</td>
							 <td>Báo cáo tài chính của năm kê khai của người nộp thuế</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_3.1/daLapVaLuu = 'true' or $PL02_ND132/Dong_3.1/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_3.1/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.2</td>
							 <td>Thông tin và kế hoạch phân bổ và cách thức sử dụng các dữ liệu tài chính khi áp dụng phương pháp xác định giá đề xuất</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_3.2/daLapVaLuu = 'true' or $PL02_ND132/Dong_3.2/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_3.2/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.3</td>
							 <td>Mô tả tóm tắt về các dữ liệu tài chính có liên quan trong quá trình phân tích so sánh và nguồn dữ liệu</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_3.3/daLapVaLuu = 'true' or $PL02_ND132/Dong_3.3/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_3.3/ghiChu"/></td>
						</tr>
						<tr>
							 <td class="align-c">3.4</td>
							 <td>Tóm tắt lý do và giải trình nguyên nhân, kế hoạch kinh doanh, đầu tư và chiến lược phát triển đối với các doanh nghiệp có kết quả kinh doanh thua lỗ từ 03 năm trở lên</td>
							 <td class="align-c">[<xsl:if test="$PL02_ND132/Dong_3.4/daLapVaLuu = 'true' or $PL02_ND132/Dong_3.4/daLapVaLuu = '1'" >x</xsl:if>]</td>
							 <td class="align-l"><xsl:value-of select="$PL02_ND132/Dong_3.4/ghiChu"/></td>
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
