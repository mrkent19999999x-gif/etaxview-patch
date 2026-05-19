<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:call-template name="tkhaiHeader_01_DKTD_DVHT">
		<xsl:with-param name="mauTKhai"   select="'01-ĐKTD-ĐVHT'"/>
	  </xsl:call-template>
	  
		<div style="width:100%;padding-top: 6pt;text-align:center"><b>TỜ KHAI<br/> 
		ĐĂNG KÝ/THAY ĐỔI THÔNG TIN ĐĂNG KÝ THUẾ</b><br/>
		<i>(Dành cho đơn vị hợp thành chịu trách nhiệm kê khai<br/>
		theo quy định về thuế tối thiểu toàn cầu)</i>
		</div><br/>
		
		<div>
			<div style="padding-top: 6pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/LoaiDangKy/dang_KyLanDau= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiDangKy/dang_KyLanDau= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiDangKy/dang_KyThayDoi= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiDangKy/thay_DoiLanThu"/></xsl:if>
					<xsl:if test="$tkchinh/LoaiDangKy/dang_KyThayDoi= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiDangKy/thay_DoiLanThu"/></xsl:if>              
				</label>
			</div>
			<div style="padding-top: 15pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
				</label>
			</div>
		</div><br/>
		
		
		<div style="padding-top: 6pt;padding-bottom: 6pt"><b>1. Thông tin Tập đoàn đa quốc gia:</b></div>
		
		<table class="tkhai_table" width="100%">
					<tr>
						<td class="align-c"><b>TT</b></td>
						<td class="align-c"><b>1a. Tên Công ty mẹ tối cao</b></td>
						<td class="align-c"><b>1b. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) của Công ty mẹ tối cao</b></td>
					</tr>					
					<xsl:for-each select="$tkchinh/DS_CongTyMeToiCao/ChiTietDanhSach">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-j"><xsl:value-of select="ten_CongTyMeToiCao"/></td>
							<td class="align-c"><xsl:value-of select="mst_CongTyMeToiCao"/></td>
						</tr>														 
					</xsl:for-each>
		</table>
		
		<div style="padding-top: 6pt">1c. Tên Liên doanh, 
		Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/ten_LienDoanh"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">1d. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) của Liên doanh, 
		Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/mst_LienDoanh"/></div>
		
		<div style="padding-top: 6pt"><b>2. Thông tin đơn vị hợp thành chịu trách nhiệm kê khai:</b></div>
		
		<div style="padding-top: 6pt">2a. Tên đơn vị hợp thành chịu trách nhiệm 
		kê khai: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/ten_DVHTKeKhai"/></div>
		
		<div style="padding-top: 6pt">2b. Mã số thuế đã được cấp 
		tại Việt Nam: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/mst_DVHTKeKhai"/></div>
		
		<div style="padding-top: 6pt"><b>3. Thông tin đại lý thuế (nếu có):</b></div>
		
		<div style="padding-top: 6pt">3a. Tên: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
		
		<div style="padding-top: 6pt">3b. Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
		
		<div style="padding-top: 6pt;padding-bottom: 6pt">3c. Hợp đồng đại lý thuế: Số: <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày: <xsl:value-of select="ihtkk:stringDatetime($ttkthue/DLyThue/ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		
		<div class="ndungtkhai_div">
            <div class="content">
				<table>
					<tr>
						<td class="align-j" width="49%"> <b> 4. Địa chỉ trụ sở của đơn vị hợp thành chịu trách nhiệm kê khai</b></td>
						<td class="align-j"></td>
						<td class="align-j" width="49%"><b>5. Địa chỉ nhận thông báo của cơ quan thuế của đơn vị hợp thành chịu trách nhiệm kê khai</b></td>
					</tr>				
					<tr>
						<td class="align-j">4a. Số nhà, đường phố, thôn, xóm: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/diaChi_DVHTKeKhai"/></td>
						<td class="align-j"></td>						
						<td class="align-j">5a. Số nhà, đường phố, thôn, xóm: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/diaChi_DVHTKeKhai"/></td>
					</tr>				
					<tr>
						<td class="align-j">4b. Xã/ phường/đặc khu: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/ten_XaDVHTKeKhai"/></td>
						<td class="align-j"></td>
						<td class="align-j">5b. Xã/ phường/đặc khu: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/ten_XaDVHTKeKhai"/></td>
					</tr>
					<tr>
						<td class="align-j">4c. Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/ten_TinhDVHTKeKhai"/></td>
						<td class="align-j"></td>
						<td class="align-j">5c. Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/ten_TinhDVHTKeKhai"/></td>
					</tr>				
					<tr>
						<td class="align-j">4d. Điện thoại: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/sdt_DVHTKeKhai"/>
						/Fax:<xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/fax_DVHTKeKhai"/></td>
						<td class="align-j"></td>
						<td class="align-j">5d. Điện thoại: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/sdt_DVHTKeKhai"/>
						/Fax:<xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/fax_DVHTKeKhai"/></td>
					</tr>
					<tr>
						<td class="align-j">&#160;&#160;&#160;&#160;&#160;&#160;Email: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiTruSo/email_DVHTKeKhai"/></td>
						<td class="align-j"></td>
						<td class="align-j">&#160;&#160;&#160;&#160;&#160;&#160;Email: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/DiaChiNhanTB/email_DVHTKeKhai"/></td>
					</tr>
				</table>
			</div>
		</div>	
		
		<div style="padding-top: 6pt"><b>6. Năm tài chính của Công ty mẹ tối cao, 
		Liên doanh, Công ty mẹ có sở hữu thiểu số:</b> Từ  <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhTu"/> 
		đến <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhDen"/></div>
		
		<div style="padding-top: 6pt"><b>7. Thông tin người đại diện theo pháp luật 
		của đơn vị hợp thành chịu trách nhiệm kê khai:</b></div>
		
		<div style="padding-top: 6pt">7a. Tên: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/NguoiDaiDienPhapLuat/ten_NguoiDaiDien"/></div>
		
		<div style="padding-top: 6pt">7b. Số định danh cá nhân: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/NguoiDaiDienPhapLuat/so_DinhDanhCaNhan"/></div>
		
		<div style="padding-top: 6pt">7c. Địa chỉ nơi thường trú: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/NguoiDaiDienPhapLuat/dia_ChiThuongTru"/></div>
		
		<div style="padding-top: 6pt">7d. Thông tin khác</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/NguoiDaiDienPhapLuat/sdt_NguoiDaiDien"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Email: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/NguoiDaiDienPhapLuat/email_NguoiDaiDien"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi xin cam đoan những nội dung trong bản kê khai này là đúng và chịu trách nhiệm trước pháp luật 
		về những nội dung đã kê khai.</div>
		
		<xsl:call-template name="tkhaiFooter_01_DKTD_DVHT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>
