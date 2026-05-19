<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo TTLT số 12/2010/TTLT-BKHĐT-BTC ngày 28 tháng 5 năm 2010 của Bộ Kế hoạch và Đầu tư và Bộ Tài chính)'" />
		<xsl:call-template name="tkhaiHeader_CV_DNMT">
			<xsl:with-param name="mauTKhai"   select="'1'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		<div style="padding-top: 5pt"><b>I. PHẦN DÀNH CHO CHỦ DỰ ÁN</b></div>
		<div style="padding-top: 5pt"><b>1. Tên chương trình, dự án ODA: </b><xsl:value-of select="$tkchinh/ct1_ten_ChuongTrinhDuAn"/></div>
		<div style="padding-top: 5pt"><b>2. Tên nhà tài trợ: </b><xsl:value-of select="$tkchinh/ct2_ten_NhaTaiTro"/></div>
		
		<div style="padding-top: 5pt"><b>3. Chủ dự án:</b></div>
		<div style="padding-top: 5pt">Tên: <xsl:value-of select="$tkchinh/CT3/ct3_ten"/></div>
		<div style="padding-top: 5pt">Địa chỉ: <xsl:value-of select="$tkchinh/CT3/ct3_diaChi"/>, <xsl:value-of select="$tkchinh/CT3/ct3_tenXa"/>, <xsl:value-of select="$tkchinh/CT3/ct3_tenTinh"/></div>
		<div style="padding-top: 5pt">Điện thoại: <xsl:value-of select="$tkchinh/CT3/ct3_dienThoai"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Fax: <xsl:value-of select="$tkchinh/CT3/ct3_fax"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Email: <xsl:value-of select="$tkchinh/CT3/ct3_email"/></div>
		<div style="padding-top: 5pt">Mã số đơn vị sử dụng NSNN: <xsl:value-of select="$tkchinh/CT3/ct3_maSoDonVi"/></div>
		
		<div style="padding-top: 5pt"><b>4. Cơ quan chủ quản:</b></div>
		<div style="padding-top: 5pt">Tên: <xsl:value-of select="$tkchinh/CT4/ct4_ten"/></div>
		<div style="padding-top: 5pt">Địa chỉ: <xsl:value-of select="$tkchinh/CT4/ct4_diaChi"/>, <xsl:value-of select="$tkchinh/CT4/ct4_tenXa"/>, <xsl:value-of select="$tkchinh/CT4/ct4_tenTinh"/></div>
		<div style="padding-top: 5pt">Điện thoại: <xsl:value-of select="$tkchinh/CT4/ct4_dienThoai"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Fax: <xsl:value-of select="$tkchinh/CT4/ct4_fax"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Email: <xsl:value-of select="$tkchinh/CT4/ct4_email"/></div>
		<div style="padding-top: 5pt">Mã số đơn vị sử dụng NSNN: <xsl:value-of select="$tkchinh/CT4/ct4_maSoDonVi"/></div>
		
		<div style="padding-top: 5pt"><b>5. Ban quản lý dự án:</b></div>
		<div style="padding-top: 5pt">Tên: <xsl:value-of select="$tkchinh/CT5/ct5_ten"/></div>
		<div style="padding-top: 5pt">Địa chỉ: <xsl:value-of select="$tkchinh/CT5/ct5_diaChi"/>, <xsl:value-of select="$tkchinh/CT5/ct5_tenXa"/>, <xsl:value-of select="$tkchinh/CT5/ct5_tenTinh"/></div>
		<div style="padding-top: 5pt">Điện thoại: <xsl:value-of select="$tkchinh/CT5/ct5_dienThoai"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Fax: <xsl:value-of select="$tkchinh/CT5/ct5_fax"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Email: <xsl:value-of select="$tkchinh/CT5/ct5_email"/></div>
		
		<div style="padding-top: 5pt"><b>6. Địa điểm thực hiện dự án: </b><xsl:value-of select="$tkchinh/CT6/ct6_diaChi"/>, <xsl:value-of select="$tkchinh/CT6/ct6_tenXa"/>, <xsl:value-of select="$tkchinh/CT6/ct6_tenTinh"/></div>
		
		<div style="padding-top: 5pt"><b>7. Thời gian thực hiện dự án: </b></div>
		<div style="padding-top: 5pt">Từ ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/tuNgay,'dd/mm/yyyy')"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; đến ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/denNgay,'dd/mm/yyyy')"/></div>
		
		<div style="padding-top: 5pt"><b>8. Tổng vốn ODA: </b></div>
		<div style="padding-top: 5pt">- Nguyên tệ: <xsl:value-of select="$tkchinh/CT8/nguyenTe"/></div>
		<div style="padding-top: 5pt">- Quy ra USD: <xsl:value-of select="$tkchinh/CT8/quyraUSD"/></div>

		<div style="padding-top: 5pt"><b>9. Loại hình viện trợ: </b></div>
		<div style="padding-top: 5pt">- ODA không hoàn lại: <xsl:value-of select="$tkchinh/CT9/ct01"/></div>
		<div style="padding-top: 5pt">- ODA vay ưu đãi: <xsl:value-of select="$tkchinh/CT9/ct02"/></div>
		<div style="padding-top: 5pt">- ODA vay hỗn hợp: <xsl:value-of select="$tkchinh/CT9/ct03"/></div>
		
		<div style="padding-top: 5pt"><b>10. Văn bản phê duyệt văn kiện dự án của cấp có thẩm quyền:</b></div>
		<div style="padding-top: 5pt">Số: <xsl:value-of select="$tkchinh/CT10/ct10_so"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT10/ct10_ngay,'dd/mm/yyyy')"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; của: <xsl:value-of select="$tkchinh/CT10/ct10_ten"/></div>
		
		<div style="padding-top: 5pt"><b>11. Những hoạt động có sử dụng chuyên gia nước ngoài theo văn kiện dự án:</b></div> 
		<div style="padding-top: 5pt"><xsl:value-of select="$tkchinh/ct11"/></div>
		
		<div style="padding-top: 5pt"><b>12. Chuyên gia nước ngoài đề nghị xác nhận: </b></div>
		<div style="padding-top: 5pt">- Tên chuyên gia nước ngoài: <xsl:value-of select="$tkchinh/CT12/ct12_ten"/></div>
		<div style="padding-top: 5pt">- Quốc tịch: <xsl:value-of select="$tkchinh/CT12/ct12_tenQuocTich"/></div>
		<div style="padding-top: 5pt">- Số hộ chiếu: <xsl:value-of select="$tkchinh/CT12/ct12_soHoChieu"/></div>
		<div style="padding-top: 5pt">- Số visa (nếu có): <xsl:value-of select="$tkchinh/CT12/ct12_soVisa"/></div>
		<div style="padding-top: 5pt">- Công việc thực hiện theo Hợp đồng ký với Bên Việt Nam hoặc Bên nước ngoài: <xsl:value-of select="$tkchinh/CT12/ct12_congViec"/></div>
		<div style="padding-top: 5pt">- Thời gian làm việc tại Việt Nam: Từ ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/ct12_tuNgay,'dd/mm/yyyy')"/> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; đến ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/ct12_denNgay,'dd/mm/yyyy')"/></div>
		
		<div style="padding-top: 5pt"><b>13. Hồ sơ gửi kèm theo gồm: (Quy định tại Khoản 1, Điều 3 của Thông tư):</b></div>		
		<div><xsl:for-each select="$tkchinh/HoSoDinhKem/ChiTiet">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 5pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="ten_HSo"/></div>													 
			</xsl:for-each>
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị <xsl:value-of select="$tkchinh/CT4/ct4_ten"/> xác nhận <xsl:value-of select="$tkchinh/CT12/ct12_ten"/> đáp ứng các điều kiện về ưu đãi và miễn trừ theo Quyết định số 119/2009/QĐ-TTg ngày 01 tháng 10 năm 2009 của Thủ tướng Chính phủ về việc ban hành Quy chế chuyên gia nước ngoài thực hiện các chương trình, dự án ODA.</div>
		
	<div class="footer_div">
		<table>
			<tr>
				<td width="60%"></td>
				<td width="40%" class="align-c">
					Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/><br/>
					(Người có thẩm quyền ký, ghi rõ họ tên và đóng dấu)<br/><br/><br/><br/>
					<xsl:value-of select="$ttkthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>	
		</table>
		<br/>
		</div>
		
	<div style="padding-top: 5pt">II. XÁC NHẬN CỦA CƠ QUAN CHỦ QUẢN:</div>
	<div><b>14. Trên cơ sở thẩm tra thông tin và hồ sơ xác nhận chuyên gia nước ngoài đính kèm của Chủ dự án nêu tại Mục I của Tờ khai <xsl:value-of select="$tkchinh/CT4/ct4_ten"/> xác nhận:</b></div>
	<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$tkchinh/CT12/ct12_ten"/> đáp ứng đủ các điều kiện về ưu đãi và miễn trừ theo Quyết định số119/2009/QĐ-TTg ngày 01 tháng 10 năm 2009 của Thủ tướng Chính phủ về việc ban hành Quy chế chuyên gia nước ngoài thực hiện các chương trình, dự án ODA.</div>
	
	<div class="footer_div">
		<table>
			<tr>
				<td width="60%"></td>
				<td width="40%" class="align-c">
					Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/><br/>
					(Người có thẩm quyền ký, ghi rõ họ tên và đóng dấu)<br/><br/><br/><br/>
					<xsl:value-of select="$ttkthue/TKhaiThue/nguoiKy"/>
				</td>
			</tr>	
		</table>
		<br/>
		</div>
	
	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		

	
</xsl:stylesheet>
