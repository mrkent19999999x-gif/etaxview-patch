<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Kèm theo Nghị định số 132/2020/NĐ-CP ngày 05 tháng 11 năm 2020 của Chính phủ'" />
		<xsl:variable name="ghiChuPL1"   select="''"/>
		
	<!--start phu luc PL_GDLK2_01-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-01">	
		<xsl:variable name="PL01_ND132" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_GDLK2-01'/>
			
		<xsl:call-template name="tkhaiHeader-pluc01-132">
		<xsl:with-param name="mauTKhai"   select="'01'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THÔNG TIN VỀ QUAN HỆ LIÊN KẾT VÀ GIAO DỊCH LIÊN KẾT'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai quyết toán thuế thu nhập doanh nghiệp)'"/>
	  </xsl:call-template>
	  
	<div class="ndungtkhai_div">
	<div class="content">
		<div><b>MỤC I. THÔNG TIN VỀ CÁC BÊN LIÊN KẾT</b></div>
		    <table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên bên liên kết</b></td>
							   <td class="align-c"><b>Quốc gia</b></td>
							   <td class="align-c"><b>Mã số thuế</b></td>
							   <td class="align-c" colspan="11"><b>Hình thức quan hệ liên kết1</b></td>
							 </tr>
							 <tr>
							   <td class="align-c" rowspan="2">(1)</td>
							   <td class="align-c" rowspan="2">(2)</td>
							   <td class="align-c" rowspan="2">(3)</td>
							   <td class="align-c" rowspan="2">(4)</td>
							   <td class="align-c" colspan="11">(5)</td>
							 </tr>
							 <tr>
							   <td class="align-c">A</td>
							   <td class="align-c">B</td>
							   <td class="align-c">C</td>
							   <td class="align-c">D</td>
							   <td class="align-c">Đ</td>
							   <td class="align-c">E</td>
							   <td class="align-c">G</td>
							   <td class="align-c">H</td>
							   <td class="align-c">I</td>
							   <td class="align-c">K</td>
							   <td class="align-c">L</td>
							 </tr>
							 
							<xsl:for-each select="$PL01_ND132/Muc_I/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="tenLKet"/></td>
							 <td class="align-l"><xsl:value-of select="ten_quocGia"/></td>
							 <td class="align-c"><xsl:value-of select="mstLKet"/></td>
							 <td class="align-c">[<xsl:if test="ctA_GCN = 'true' or ctA_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctB_GCN = 'true' or ctB_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctC_GCN = 'true' or ctC_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctD_GCN = 'true' or ctD_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctDD_GCN = 'true' or ctDD_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctE_GCN = 'true' or ctE_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctG_GCN = 'true' or ctG_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctH_GCN = 'true' or ctH_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctI_GCN = 'true' or ctI_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctK_GCN = 'true' or ctK_GCN = '1'" >x</xsl:if>]</td>
							 <td class="align-c">[<xsl:if test="ctL_GCN = 'true' or ctL_GCN = '1'" >x</xsl:if>]</td>
						</tr>
					</xsl:for-each>
				</table>
	    <div><b>MỤC II. CÁC TRƯỜNG HỢP ĐƯỢC MIỄN NGHĨA VỤ KÊ KHAI, MIỄN TRỪ VIỆC NỘP HỒ SƠ XÁC ĐỊNH GIÁ GIAO DỊCH LIÊN KẾT</b></div>
			<table class="tkhai_table">
							 <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Trường hợp miễn trừ</b></td>
							   <td class="align-c"><b>Thuộc diện miễn trừ</b></td>
							 </tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							</tr>
							<tr>
							   <td class="align-c">1</td>
							   <td class="align-l">Miễn kê khai xác định giá giao dịch liên kết tại mục III, mục IV và được miễn lập Hồ sơ xác định giá giao dịch liên kết</td>
							   <td class="align-c"></td>
							</tr>
							<tr>
							   <td class="align-c"></td>
							   <td class="align-l">Người nộp thuế chỉ phát sinh giao dịch với các bên liên kết là đối tượng nộp thuế thu nhập doanh nghiệp tại Việt Nam, áp dụng cùng mức thuế suất thuế thu nhập doanh nghiệp với người nộp thuế và không bên nào được hưởng ưu đãi thuế thu nhập doanh nghiệp trong kỳ tính thuế</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct1 = 'true' or $PL01_ND132/Muc_II/ct1 = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c">2</td>
							   <td class="align-l">Miễn lập Hồ sơ xác định giá giao dịch liên kết</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2 = 'true' or $PL01_ND132/Muc_II/ct2 = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c">a</td>
							   <td class="align-l">Người nộp thuế có phát sinh giao dịch liên kết nhưng tổng doanh thu phát sinh của kỳ tính thuế dưới 50 tỷ đồng và tổng giá trị tất cả các giao dịch liên kết phát sinh trong kỳ tính thuế dưới 30 tỷ đồng</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2a = 'true' or $PL01_ND132/Muc_II/ct2a = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c">b</td>
							   <td class="align-l">Người nộp thuế đã ký kết Thỏa thuận trước về phương pháp xác định giá thực hiện nộp Báo cáo thường niên theo quy định pháp luật về Thỏa thuận trước về phương pháp xác định giá</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2b = 'true' or $PL01_ND132/Muc_II/ct2b = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c">c</td>
							   <td class="align-l">Người nộp thuế thực hiện kinh doanh với chức năng đơn giản, không phát sinh doanh thu, chi phí từ hoạt động khai thác, sử dụng tài sản vô hình, có doanh thu dưới 200 tỷ đồng, áp dụng tỷ suất lợi nhuận thuần trước lãi vay và thuế thu nhập doanh nghiệp trên doanh thu, bao gồm các lĩnh vực như sau:</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2c = 'true' or $PL01_ND132/Muc_II/ct2c = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c"></td>
							   <td class="align-l">- Phân phối: Từ 5% trở lên</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2c_1 = 'true' or $PL01_ND132/Muc_II/ct2c_1 = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c"></td>
							   <td class="align-l">- Sản xuất: Từ 10% trở lên</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2c_2 = 'true' or $PL01_ND132/Muc_II/ct2c_2 = '1'" >x</xsl:if>]</td>
							</tr>
							<tr>
							   <td class="align-c"></td>
							   <td class="align-l">- Gia công: Từ 15% trở lên</td>
							   <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_II/ct2c_3 = 'true' or $PL01_ND132/Muc_II/ct2c_3 = '1'" >x</xsl:if>]</td>
							</tr>
						</table>
		<div><b>MỤC III. THÔNG TIN XÁC ĐỊNH GIÁ GIAO DỊCH LIÊN KẾT</b></div>
			<table class="tkhai_table">
							 <tr>
							   <td class="align-c" rowspan="2" ><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Nội dung</b></td>
							   <td class="align-c" colspan="4"><b>Giá trị bán ra cho bên liên kết</b></td>
							   <td class="align-c" colspan="4"><b>Giá trị mua vào từ bên liên kết</b></td>
							   <td class="align-c" rowspan="2"><b>Lợi nhuận tăng do xác định lại theo giá giao dịch độc lập</b></td>
							   <td class="align-c" colspan="4"><b>Thu hộ, chi hộ, phân bổ cơ sở thường trú</b></td>
							   <td class="align-c" rowspan="2"><b>Giao dịch thuộc phạm vi áp dụng APA4</b></td>
							 </tr>
							 <tr>
							   <td class="align-c"><b>Giá trị ghi nhận của giao dịch liên kết</b></td>
							   <td class="align-c"><b>Giá trị xác định lại theo giá giao dịch độc lập</b></td>
							   <td class="align-c"><b>Chênh lệch</b></td>
							   <td class="align-c"><b>Phương pháp xác định giá</b></td>
							   <td class="align-c"><b>Giá trị ghi nhận của giao dịch liênkết</b></td>
							   <td class="align-c"><b>Giá trị xác định lại theo giá giao dịch độc lập</b></td>
							   <td class="align-c"><b>Chênh lệch</b></td>
							   <td class="align-c"><b>Phương pháp xác định giá</b></td>
							   <td class="align-c"><b>Tổng giá trị thu hộ</b></td>
							   <td class="align-c"><b>Tổng giá trị chi hộ</b></td>
							   <td class="align-c"><b>Tổng giá trị doanh thu phân bổ cho cơ sở thường trú</b></td>
							   <td class="align-c"><b>Tổng giá trị chi phí phân bổ cho cơ sở thường trú</b></td>
							 </tr>

							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)=(4)-(3)</td>
							   <td class="align-c">(6)</td>
							   <td class="align-c">(7)</td>
							   <td class="align-c">(8)</td>
							   <td class="align-c">(9)=(8)-(7)</td>
							   <td class="align-c">(10)</td>
							   <td class="align-c">(11)=(5)+(9)</td>
							   <td class="align-c">(12a)</td>
							   <td class="align-c">(12b)</td>
							   <td class="align-c">(12c)</td>
							   <td class="align-c">(12d)</td>
							   <td class="align-c">(13)</td>
							 </tr>
						<tr>
							 <td class="align-c"><b>I</b></td>
							 <td><b>Tổng giá trị giao dịch phát sinh từ hoạt động kinh doanh</b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_I/ct3"/></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_I/ct7"/></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"></b></td>
                             <td class="align-r"><b class="number"></b></td>
						</tr>
						<tr>
							 <td class="align-c"><b>II</b></td>
							 <td><b>Tổng giá trị giao dịch phát sinh từ hoạt động liên kết</b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct3"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct4"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct5"/></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct7"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct8"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct9"/></b></td>
							 <td class="align-r"><b class="number"></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct11"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct12a"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct12b"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct12c"/></b></td>
							 <td class="align-r"><b class="number"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II/ct12d"/></b></td>
                             <td class="align-r"><b class="number"></b></td>
						</tr>
						<tr>
							 <td class="align-c">1</td>
							 <td>Hàng hóa</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<tr>
							 <td class="align-c">1.1</td>
							 <td>Hàng hóa hình thành tài sản cố định</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.1/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_1_1.1_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_1_1.1_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_1_1.1_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					    <tr>
							 <td class="align-c">1.2</td>
							 <td>Hàng hóa không hình thành tài sản cố định</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_1_1.2/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
					    <xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_1_1.2_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_1_1.2_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_1_1.2_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					    <tr>
							 <td class="align-c">2</td>
							 <td>Dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
					    <tr>
							 <td class="align-c">2.1</td>
							 <td>Nghiên cứu, phát triển</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.1/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.1_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.1_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.1_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
						<tr>
							 <td class="align-c">2.2</td>
							 <td>Quảng cáo, tiếp thị</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.2/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.2_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.2_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.2_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					    <tr>
							 <td class="align-c">2.3</td>
							 <td>Quản lý kinh doanh và tư vấn, đào tạo</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.3/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.3_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.3_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.3_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					    <tr>
							 <td class="align-c">2.4</td>
							 <td>Hoạt động tài chính</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<tr>
							 <td class="align-c">2.4.1</td>
							 <td>Phí bản quyền và các khoản tương tự</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <!--<td class="number align-l"><xsl:value-of select="ct6_ten"/></td>-->
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.1_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					    <tr>
							 <td class="align-c">2.4.2</td>
							 <td>Lãi vay</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.4_2.4.2_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
						<tr>
							 <td class="align-c">2.5</td>
							 <td>Dịch vụ khác</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct5"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct9"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_II_2_2.5/ct12d"/></td>
                             <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_III/Dong_II_2_2.5_CTiet/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2"/></td>
							 <td class="number align-r"><xsl:value-of select="ct3"/></td>
							 <td class="number align-r"><xsl:value-of select="ct4"/></td>
							 <td class="number align-r"><xsl:value-of select="ct5"/></td>
							 <td class="align-l"><xsl:value-of select="ct6_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct7"/></td>
							 <td class="number align-r"><xsl:value-of select="ct8"/></td>
							 <td class="number align-r"><xsl:value-of select="ct9"/></td>
							 <td class="align-l"><xsl:value-of select="ct10_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct11"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12a"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12b"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12c"/></td>
							 <td class="number align-r"><xsl:value-of select="ct12d"/></td>
							 <td class="align-c">[<xsl:if test="$PL01_ND132/Muc_III/Dong_II_2_2.5_CTiet/CTiet/ct13 = 'true' or $PL01_ND132/Muc_III/Dong_II_2_2.5_CTiet/CTiet/ct13 = '1'" >x</xsl:if>]</td>
						</tr>	 
					    </xsl:for-each>	
					</table>
	    <div><b>MỤC IV. KẾT QUẢ SẢN XUẤT KINH DOANH SAU KHI XÁC ĐỊNH GIÁ GIAO DỊCH LIÊN KẾT</b></div>
	    <div><b>1. Dành cho người nộp thuế thuộc các ngành sản xuất, thương mại, dịch vụ</b></div>
	        <table class="tkhai_table">
							 <tr>
							   <td class="align-c">Người nộp thuế đã ký thỏa thuận trước về phương pháp xác định giá tính thuế (APA)</td>
							   <td class="align-c">Có [<xsl:if test="$PL01_ND132/Muc_IV/IV_1/co = 'true' or $PL01_ND132/Muc_IV/IV_1/co = '1'" >x</xsl:if>]</td>
							   <td class="align-c">Không [<xsl:if test="$PL01_ND132/Muc_IV/IV_1/khong = 'true' or $PL01_ND132/Muc_IV/IV_1/khong = '1'" >x</xsl:if>]</td>
							 </tr>
			</table>
			<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
			<table class="tkhai_table">
							 <tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" colspan="2"><b>Giá trị giao dịch liên kết</b></td>
							   <td class="align-c" rowspan="2"><b>Giá trị giao dịch với các bên độc lập</b></td>
							   <td class="align-c" rowspan="2"><b>Tổng giá trị phát sinh từ hoạt động kinh doanh trong kỳ</b></td>
							 </tr>
							 <tr>
							   <td class="align-c">Giá trị xác định theo Hồ sơ xác định giá giao dịch liên kết</td>
							   <td class="align-c">Giá trị xác định giá theo APA</td>
							 </tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)=(3)+(4)+(5)</td>
							  </tr>
						<tr>
						     <td class="align-c">1</td>
							 <td class="align-l">Doanh thu bán hàng và cung cấp dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c"></td>
							 <td class="align-l">Trong đó: - Doanh thu bán hàng hóa, dịch vụ xuất khẩu</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1a/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1a/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1a/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_1a/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2</td>
							 <td class="align-l">Các khoản giảm trừ doanh thu</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_2/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_2/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_2/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3</td>
							 <td class="align-l">Doanh thu thuần về bán hàng và cung cấp dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_3/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_3/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_3/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4</td>
							 <td class="align-l">Giá vốn hàng bán</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_4/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_4/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_4/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">5</td>
							 <td class="align-l">Lợi nhuận gộp về bán hàng và cung cấp dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_5/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_5/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_5/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">6</td>
							 <td class="align-l">Chi phí bán hàng</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_6/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_6/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_6/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_6/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">7</td>
							 <td class="align-l">Chi phí quản lý doanh nghiệp</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_7/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_7/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_7/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_7/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">8</td>
							 <td class="align-l">Doanh thu hoạt động tài chính</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_8/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">8.1</td>
							 <td class="align-l">Trong đó: - Lãi tiền gửi và lãi cho vay</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_8.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9</td>
							 <td class="align-l">Chi phí tài chính</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_9/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9.1</td>
							 <td class="align-l">Trong đó: - Chi phí lãi tiền vay</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_9.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9.1a</td>
							 <td class="align-l">Chi phí lãi vay được trừ trong kỳ</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_9.1a/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9.1b</td>
							 <td class="align-l">Phần chi phí lãi vay trong kỳ không được trừ chuyển sang kỳ sau theo quy định tại điểm b khoản 3 Điều 16</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_9.1b/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">10</td>
							 <td class="align-l">Chi phí khấu hao phát sinh trong kỳ</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_10/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">11</td>
							 <td class="align-l">Lợi nhuận thuần từ hoạt động sản xuất kinh doanh trong kỳ (11)=(5)-(6)-(7)+(8)-(9)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_11/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">12</td>
							 <td class="align-l">Lợi nhuận thuần từ hoạt động  sản xuất kinh doanh trong kỳ  không bao gồm chênh lệch doanh thu và chi phí của hoạt động tài chính (12)=(11)-(8)+(9)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_12/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_12/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_12/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_12/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">13</td>
							 <td class="align-l">Tổng lợi nhuận thuần từ hoạt động kinh doanh cộng chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay trong kỳ cộng chi phí khấu hao trong kỳ (13)=(11)+(9.1)-(8.1)+10)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_13/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">14</td>
							 <td class="align-l">Tỷ lệ chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay phát sinh trong kỳ trên tổng lợi nhuận thuần từ hoạt động kinh doanh cộng chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay trong kỳ cộng chi phí khấu hao trong kỳ (14)=[(9.1)-(8.1)]/(13)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_14/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15</td>
							 <td class="align-l">Chi phí lãi vay của các kỳ trước chuyển sang, trong đó: (15)=(15.1)+(15.2)+(15.3)+(15.4)+(15.5)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15.1</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-1) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.1/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.1/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.1/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15.2</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-2) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.2/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.2/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.2/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15.3</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-3) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.3/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.3/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.3/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15.4</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-4) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.4/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.4/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.4/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15.5</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-5) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.5/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.5/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.5/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_15.5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">16</td>
							 <td class="align-l">Tỷ lệ chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay phát sinh cộng chi phí lãi vay của các kỳ trước chuyển sang trên tổng lợi nhuận thuần từ hoạt động kinh doanh cộng chi phí lãi vay( sau khi trừ lãi tiền gửi và lãi cho vay) trong kỳ cộng chi phí khấu hao trong kỳ (16) =[(9.1)-(8.1)+(15)]/(13)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_16/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_16/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_16/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_1/Dong_16/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">17</td>
							 <td class="align-l">Tỷ suất lợi nhuận sử dụng xác định giá giao dịch liên kết</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_IV/IV_1/Dong_17.1/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="ct04"/></td>
							 <td class="align-r"></td>
							 <td class="number align-r"><xsl:value-of select="ct06"/></td>							
						</tr>	 
					    </xsl:for-each>	
				   </table>

         <div><b>2. Dành cho người nộp thuế thuộc các ngành ngân hàng, tín dụng</b></div>
            <table class="tkhai_table">
							 <tr>
							   <td class="align-c">Người nộp thuế đã ký thỏa thuận trước về phương pháp xác định giá tính thuế (APA)</td>
							   <td class="align-c">Có [<xsl:if test="$PL01_ND132/Muc_IV/IV_2/co = 'true' or $PL01_ND132/Muc_IV/IV_2/co = '1'" >x</xsl:if>]</td>
							   <td class="align-c">Không [<xsl:if test="$PL01_ND132/Muc_IV/IV_2/khong = 'true' or $PL01_ND132/Muc_IV/IV_2/khong = '1'" >x</xsl:if>]</td>
							 </tr>
			</table>
			<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
			<table class="tkhai_table">
							 <tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" colspan="2"><b>Giá trị giao dịch liên kết</b></td>
							   <td class="align-c" rowspan="2"><b>Giá trị giao dịch với các bên độc lập</b></td>
							   <td class="align-c" rowspan="2"><b>Tổng giá trị phát sinh từ hoạt động kinh doanh trong kỳ</b></td>
							 </tr>
							 <tr>
							   <td class="align-c">Giá trị xác định theo Hồ sơ xác định giá giao dịch liên kết</td>
							   <td class="align-c">Giá trị xác định giá theo APA</td>
							 </tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)=(3)+(4)+(5)</td>
							  </tr>
						<tr>
						     <td class="align-c">1</td>
							 <td class="align-l">Thu nhập lãi và các khoản thu nhập tương tự</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_1/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_1/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_1/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2</td>
							 <td class="align-l">Chi trả lãi và các chi phí tương tự</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_2/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_2/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_2/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3</td>
							 <td class="align-l">Thu nhập lãi thuần (3)= (1)-(2)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_3/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_3/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_3/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4</td>
							 <td class="align-l">Thu nhập từ hoạt động dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_4/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_4/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_4/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">5</td>
							 <td class="align-l">Chi phí hoạt động dịch vụ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_5/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_5/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_5/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">6</td>
							 <td class="align-l">Lãi/lỗ thuần từ hoạt động dịch vụ (6)=(4)-(5)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_6/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_6/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_6/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_6/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">7</td>
							 <td class="align-l">Lãi/lỗ thuần từ hoạt động kinh doanh ngoại hối</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_7/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_7/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_7/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_7/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">8</td>
							 <td class="align-l">Lãi/lỗ thuần từ mua bán chứng khoán kinh doanh</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_8/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_8/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_8/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_8/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9</td>
							 <td class="align-l">Lãi/lỗ thuần từ mua bán chứng khoán đầu tư</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_9/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_9/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_9/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_9/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">10</td>
							 <td class="align-l">Thu nhập từ hoạt động khác</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_10/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_10/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_10/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_10/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">11</td>
							 <td class="align-l">Chi phí hoạt động khác</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_11/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_11/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_11/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_11/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">12</td>
							 <td class="align-l">Lãi/lỗ thuần từ hoạt động khác (12) = (10)-(11)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_12/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_12/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_12/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_12/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">13</td>
							 <td class="align-l">Thu nhập từ góp vốn, mua cổ phần</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_13/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_13/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_13/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_13/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">14</td>
							 <td class="align-l">Chi phí hoạt động</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_14/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_14/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_14/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_14/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15</td>
							 <td class="align-l">Chi phí dự phòng rủi ro tín dụng</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_15/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_15/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_15/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_15/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">16</td>
							 <td class="align-l">Tổng lợi nhuận trước thuế (16) = (3)+(6)+(7)+(8)+(9)+(12)+(13)-(14)-(15)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_16/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_16/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_16/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_16/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">17</td>
							 <td class="align-l">Lợi nhuận thuần từ hoạt động sản xuất kinh doanh (17=16-12)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_17/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_17/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_17/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_2/Dong_17/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">18</td>
							 <td class="align-l">Tỷ suất lợi nhuận sử dụng xác định giá giao dịch liên kết (%)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_IV/IV_2/Dong_18/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ct2_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="ct04"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>							
						</tr>	 
					    </xsl:for-each>	
				   </table>
	
	     <div><b>3. Dành cho người nộp thuế là các Công ty chứng khoán</b></div>
	         <table class="tkhai_table">
							 <tr>
							   <td class="align-c">Người nộp thuế đã ký thỏa thuận trước về phương pháp xác định giá tính thuế (APA)</td>
							   <td class="align-c">Có [<xsl:if test="$PL01_ND132/Muc_IV/IV_3/co = 'true' or $PL01_ND132/Muc_IV/IV_3/co = '1'" >x</xsl:if>]</td>
							   <td class="align-c">Không [<xsl:if test="$PL01_ND132/Muc_IV/IV_3/khong = 'true' or $PL01_ND132/Muc_IV/IV_3/khong = '1'" >x</xsl:if>]</td>
							 </tr>
			</table>
			<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div><br/>
			<table class="tkhai_table">
							 <tr>
							   <td class="align-c" rowspan="2"><b>STT</b></td>
							   <td class="align-c" rowspan="2"><b>Chỉ tiêu</b></td>
							   <td class="align-c" colspan="2"><b>Giá trị giao dịch liên kết</b></td>
							   <td class="align-c" rowspan="2"><b>Giá trị giao dịch với các bên độc lập</b></td>
							   <td class="align-c" rowspan="2"><b>Tổng giá trị phát sinh từ hoạt động kinh doanh trong kỳ</b></td>
							 </tr>
							 <tr>
							   <td class="align-c">Giá trị xác định theo Hồ sơ xác định giá giao dịch liên kết</td>
							   <td class="align-c">Giá trị xác định giá theo APA</td>
							 </tr>
							 <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
							   <td class="align-c">(5)</td>
							   <td class="align-c">(6)=(3)+(4)+(5)</td>
							  </tr>
						<tr>
						     <td class="align-c">1</td>
							 <td class="align-l">Doanh thu hoạt động (1)= (1.1)+(1.2)+(1.3)+(1.4)+(1.5)+(1.6)+(1.7)+(1.8)+(1.9)+(1.10)+(1.11)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.1</td>
							 <td class="align-l">Lãi từ các tài sản tài chính ghi nhận thông qua lãi/ lỗ (FVTPL)
(1.1)= (1.1.a)+(1.1.b)+(1.1.c)
</td>
							<td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.1a</td>
							 <td class="align-l">Lãi bán các tài sản tài chính FVTPL</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.1a/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.1b</td>
							 <td class="align-l">Chênh lệch tăng về đánh giá lại các TSTC FVTPL</td>
							<td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							<td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.1b/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.1c</td>
							 <td class="align-l">Cổ tức, tiền lãi phát sinh từ tài sản tài chính FVTPL</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.1c/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.2</td>
							 <td class="align-l">Lãi từ các khoản đầu tư nắm giữ đến ngày đáo hạn ( HTM)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.3</td>
							 <td class="align-l">Lãi từ các khoản cho vay và phải thu</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.4</td>
							 <td class="align-l">Lãi từ tài sản tài chính sẵn sàng để bán (AFS)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.5</td>
							 <td class="align-l">Lãi từ các công cụ phái sinh phòng ngừa rủi ro</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.6</td>
							 <td class="align-l">Doanh thu nghiệp vụ môi giới chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.6/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.7</td>
							 <td class="align-l">Doanh thu nghiệp vụ bảo lãnh , đại lý phát hành chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.7/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.8</td>
							 <td class="align-l">Doanh thu nghiệp vụ tư vấn đầu tư chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.8/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.9</td>
							 <td class="align-l">Doanh thu nghiệp vụ lưu ký chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.9/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.10</td>
							 <td class="align-l">Doanh thu hoạt động tư vấn tài chính</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.10/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">1.11</td>
							 <td class="align-l">Thu nhập hoạt động khác</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_1.11/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2</td>
							 <td class="align-l">Chi phí hoạt động (2)= (2.1)+(2.2)+(2.3)+(2.4)+(2.5)+(2.6)+(2.7)+(2.8)+(2.9)+(2.10)+(2.11) +(2.12)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.1</td>
							 <td class="align-l">Lỗ các tài sản tài chính ghi nhận thông qua lãi/ lỗ (FVTPL)
(2.1) = (2.1.a)+(2.1.b) +(2.1.c)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.1.a</td>
							 <td class="align-l">Lỗ bán các tài sản tài chính FVTPL</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.1a/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.1.b</td>
							 <td class="align-l">Chênh lệch giảm đánh giá lại các TSTC FVTPL</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.1b/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.1.c</td>
							 <td class="align-l">Chi phí giao dịch mua các tài sản tài chính FVTPL</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.1c/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.2</td>
							 <td class="align-l">Lỗ các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.3</td>
							 <td class="align-l">Lỗ và ghi nhận chênh lệch đánh giá theo giá trị hợp lý tài sản tài chính sẵn sàng để bán (AFS) khi phân loại lại</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.4</td>
							 <td class="align-l">Chi phí dự phòng tài sản tài chính, xử lý tổn thất các khoản phải thu khó đòi và lỗ suy giảm tài sản tài chính và chi phí đi vay của các khoản cho vay</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.5</td>
							 <td class="align-l">Lỗ từ các tài sản tài chính phái sinh phòng ngừa rủi ro</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.6</td>
							 <td class="align-l">Chi phí hoạt động tự doanh</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.6/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.7</td>
							 <td class="align-l">Chi phí nghiệp vụ môi giới chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.7/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.8</td>
							 <td class="align-l">Chi phí nghiệp vụ bảo lãnh, đại lý phát hành chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.8/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.9</td>
							 <td class="align-l">Chi phí nghiệp vụ tư vấn đầu tư chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.9/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.10</td>
							 <td class="align-l">Chi phí nghiệp vụ lưu ký chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.10/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.11</td>
							 <td class="align-l">Chi phí hoạt động tư vấn tài chính</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.11/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">2.12</td>
							 <td class="align-l">Chi phí các dịch vụ khác</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_2.12/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3</td>
							 <td class="align-l">Doanh thu hoạt động tài chính (3) = (3.1)+(3.2)+(3.3)+(3.4)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3.1</td>
							 <td class="align-l">Chênh lệch lãi tỷ giá hối đoái đã và chưa thực hiện</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_3.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3.2</td>
							 <td class="align-l">Doanh thu, dự thu cổ tức, lãi tiền gửi ngân hàng không cố định</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_3.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3.3</td>
							 <td class="align-l">Lãi bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_3.3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">3.4</td>
							 <td class="align-l">Doanh thu khác về đầu tư</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_3.4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4</td>
							 <td class="align-l">Chi phí tài chính (4) = (4.1)+(4.2)+(4.3)+(4.4)+(4.5)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4.1</td>
							 <td class="align-l">Chênh lệch lỗ tỷ giá hối đoái đã và chưa thực hiện</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4.2</td>
							 <td class="align-l">Chi phí lãi vay</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4.3</td>
							 <td class="align-l">Lỗi bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4.3/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4.4</td>
							 <td class="align-l">Chi phí dự phòng suy giảm giá trị các khoản đầu tư tài chính dài hạn</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4.4/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">4.5</td>
							 <td class="align-l">Chi phí dự phòng suy giảm giá trị các khoản đầu tư tài chính dài hạn</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_4.5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">5</td>
							 <td class="align-l">Chi phí bán hàng</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_5/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">6</td>
							 <td class="align-l">Chi phí quản lý công ty chứng khoán</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_6/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">7</td>
							 <td class="align-l">Kết quả hoạt động (7)= (1)-(2)+(3)-(4)-(5)-(6)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_7/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">8</td>
							 <td class="align-l">Tổng lãi tiền gửi và lãi cho vay phát sinh trong kỳ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_8/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_8/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_8/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_8/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9</td>
							 <td class="align-l">Tổng chi phí lãi vay phát sinh trong kỳ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3//Dong_9/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9.1</td>
							 <td class="align-l">Chi phí lãi vay được trừ trong kỳ</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.1/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3//Dong_9.1/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.1/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.1/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">9.2</td>
							 <td class="align-l">Phần chi phí lãi vay trong kỳ không được trừ chuyển sang kỳ sau theo quy định tại điểm b khoản 3 Điều 16</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.2/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3//Dong_9.2/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.2/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_9.2/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">10</td>
							 <td class="align-l">Chi phí khấu hao phát sinh trong kỳ</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_10/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">11</td>
							 <td class="align-l">Tổng lợi nhuận thuần từ hoạt động kinh doanh trong kỳ cộng chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay phát sinh trong kỳ cộng chi phí khấu hao phát sinh trong kỳ (11)= (7)+(9)-(8)+(10)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_thu_11/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">12</td>
							 <td class="align-l">Tỷ lệ chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay phát sinh trong kỳ trên tổng lợi nhuận thuần từ hoạt động kinh doanh cộng chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay trong kỳ cộng chi phí khấu hao phát sinh trong kỳ (12) =[(9)-(8)]/(11)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_IV/IV_3/Dong_thu_12/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">13</td>
							 <td class="align-l">Chi phí lãi vay của các kỳ trước chuyển sang (13)=(13.1)+(13.2)+(13.3)+(13.4)+(13.5)
Trong đó:</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">13.1</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-1) chuyển sang kỳ tính thuế(n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.1/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.1/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.1/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.1/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">13.2</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-2) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.2/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.2/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.2/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.2/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">13.3</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-3) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.3/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.3/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.3/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.3/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">13.4</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-4) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.4/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.4/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.4/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.4/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">13.5</td>
							 <td class="align-l">- Phần chi phí lãi vay không được trừ từ năm( n-5) chuyển sang kỳ tính thuế( n)</td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.5/ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.5/ct04"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.5/ct05"/></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_13.5/ct06"/></td>
						</tr>
						<tr>
						<td class="align-c">14</td>
							 <td class="align-l">Tỷ lệ chi phí lãi vay sau khi trừ lãi tiền gửi và lãi cho vay phát sinh được trừ trong kỳ cộng chi phí lãi vay của các kỳ trước chuyển sang kỳ tính thuế(n) trên tổng lợi nhuận thuần từ hoạt động kinh doanh cộng chi phí lãi vay thuần phát sinh trong kỳ cộng chi phí khấu hao phát sinh trong kỳ của người nộp thuế (14) = [(9)-(8)+(13)]/(11)</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"><xsl:value-of select="$PL01_ND132/Muc_III/Dong_thu_14/ct06"/></td>
						</tr>
						<tr>
						     <td class="align-c">15</td>
							 <td class="align-l">Tỷ suất lợi nhuận sử dụng xác định giá giao dịch liên kết</td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>
						</tr>
						<xsl:for-each select="$PL01_ND132/Muc_IV/IV_3/Dong_thu_15/CTiet">
									<xsl:variable name="currentRows" select='position()' />
						<tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l">Tỷ suất <xsl:value-of select="ct2_ten"/></td>
							 <td class="number align-r"><xsl:value-of select="ct03"/></td>
							 <td class="number align-r"><xsl:value-of select="ct04"/></td>
							 <td class="number align-r"></td>
							 <td class="number align-r"></td>							
						</tr>	 
					    </xsl:for-each>	
				   </table>
	</div>	
   </div>
	 <br/><br/>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  
<xsl:call-template name="tkhaiFooter-03TNDN-TT80">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>
<br/><br/><br/>
</xsl:if>
	</xsl:template>		
</xsl:stylesheet>
