<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:call-template name="tkhaiHeader_01_TKTT_QDMTT">
			<xsl:with-param name="mauTKhai"   select="'01/TKTT-QDMTT'"/>
		</xsl:call-template>
	    <div style="width:1262px">
		<div style="padding-top: 6pt;text-align: right">Đơn vị tiền: <xsl:value-of select="$tkchinh/ma_DonViTien"/></div><br/>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1 Thông tin tập đoàn đa quốc gia</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.1 Thông tin về đơn vị hợp thành chịu trách nhiệm kê khai</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Công ty mẹ tối cao là đơn vị hợp thành chịu trách nhiệm kê khai</td>
				<td class="align-c">2. Tên đơn vị hợp thành chịu trách nhiệm kê khai</td>
				<td class="align-c">3. Mã số thuế của đơn vị hợp thành chịu trách nhiệm kê khai theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">4. Quốc gia có Hiệp định giữa nhà chức trách có thẩm quyền về trao đổi thông tin theo quy định thuế tối thiểu toàn cầu có hiệu lực với Việt Nam (nếu có)</td>
			</tr>
			<tr>
				<td class="align-c">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.1/congTyMeToiCao_Co= 'true'">&#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.1/congTyMeToiCao_Khong= 'true'">&#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
						
				<xsl:if test="$tkchinh/Muc_1/Muc_1.1/congTyMeToiCao_Co= '1'">&#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.1/congTyMeToiCao_Khong= '1'">&#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
				</td>
				<td class="align-j"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.1/ten_DVHT"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.1/mst_DVHT"/></td>
				<td class="align-l"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.1/ten_QuocGia"/></td>
			</tr>						
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.2 Thông tin chung của Tập đoàn đa quốc gia</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.2.1 Thông tin về năm tài chính của Tập đoàn đa quốc gia</b></div>
		<div style="width:100%; padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Tên Tập đoàn đa quốc gia</td>
				<td class="align-c">2. Ngày bắt đầu năm tài chính</td>
				<td class="align-c">3. Ngày kết thúc năm tài chính</td>
			</tr>
			<tr>
				<td class="align-j"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.1/ten_TapDoan"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.1/nam_TaiChinhTu"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.1/nam_TaiChinhDen"/></td>
			</tr>						
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.2.2 Thông tin kế toán chung của Tập đoàn đa quốc gia</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Báo cáo tài chính hợp nhất của Công ty mẹ tối cao</td>
				<td class="align-c">2. Chuẩn mực kế toán tài chính được sử dụng trong báo cáo tài chính hợp nhất của Công ty mẹ tối cao</td>
				<td class="align-c">3. Đơn vị tiền tệ được sử dụng trong báo cáo tài chính hợp nhất của Công ty mẹ tối cao</td>
			</tr>
			<tr>
				<td class="align-j"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.2/ten_BaoCaoTaiChinh"/></td>
				<td class="align-j"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.2/chuan_MucKeToanTC"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.2.2/ma_DonViTien"/></td>
			</tr>						
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3 Cấu trúc Tập đoàn</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.1 Công ty mẹ tối cao</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia Công ty mẹ tối cao cư trú</td>
				<td class="align-c">2. Tên Công ty mẹ tối cao</td>
				<td class="align-c">3. Mã số thuế/Mã số doanh nghiệp của Công ty mẹ tối cao</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_CongTyMeToiCao"/></td>
				<td class="align-c"><xsl:value-of select="mst_CongTyMeToiCao"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.2 Các đơn vị của Tập đoàn đa quốc gia tại Việt Nam</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2/thayDoiBCTC_Co= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2/thayDoiBCTC_Khong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
					
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2/thayDoiBCTC_Co= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2/thayDoiBCTC_Khong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Tên của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">2. Mã số thuế</td>
				<td class="align-c">3. Loại hình theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhThue"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.3 Đơn vị bị loại trừ</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoiBCTC_Co= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoiBCTC_Khong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
					
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoiBCTC_Co= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoiBCTC_Khong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Tên đơn vị bị loại trừ</td>
				<td class="align-c" style="width:200px">2. Mã số thuế</td>
				<td class="align-c">3. Loại hình đơn vị bị loại trừ</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinh"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.4 Thay đổi về cấu trúc Tập đoàn phát sinh trong năm tài chính báo cáo</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_AnhHuong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_AnhHuong= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>	
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_AnhHuong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_AnhHuong= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_KhongAnhHuong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_KhongAnhHuong= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>	
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_KhongAnhHuong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.4/thayDoi_KhongAnhHuong= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tên của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">2. Mã số thuế</td>
				<td class="align-c">3. Ngày có hiệu lực thay đổi</td>
				<td class="align-c">4. Loại hình theo quy định về thuế tối thiểu toàn cầu trước thay đổi</td>
				<td class="align-c">5. Loại hình theo quy định về thuế tối thiểu toàn cầu sau thay đổi</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.4/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>
				<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_HieuLuc,'dd/mm/yyyy')"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhThueTruocThayDoi"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhThueSauThayDoi"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2 Quy định giảm trừ trách nhiệm áp dụng tại Việt Nam</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1 Quy định giảm trừ trách nhiệm tại Việt Nam</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Quy định giảm trừ trách nhiệm áp dụng: <xsl:value-of select="$tkchinh/Muc_2/Muc_2.1/ten_QuyDinhGiamTru"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.1 Quy định giảm trừ trách nhiệm - Phương pháp tính toán đơn giản đối với đơn vị hợp thành không trọng yếu</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c"></td>
				<td class="align-c" style="width:400px">1. Tổng doanh thu của tất cả các đơn vị hợp thành không trọng yếu tại Việt Nam</td>
				<td class="align-c" style="width:400px">2. Tổng số thuế được đơn giản hóa của tất cả các đơn vị hợp thành không trọng yếu tại Việt Nam</td>
			</tr>
			<tr>
				<td class="align-j">a. Năm tài chính báo cáo</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1/TongDoanhThu/nam_TC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1/TongSoThue/nam_TCBC)"/></td>
			</tr>
			<tr>
				<td class="align-j">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1/TongDoanhThu/nam_TCLienTruocThu1)"/></td>
				<td class="align-l">Không áp dụng</td>
			</tr>
			<tr>
				<td class="align-j">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1/TongDoanhThu/nam_TCLienTruocThu2)"/></td>
				<td class="align-l">Không áp dụng</td>
			</tr>
			<tr>
				<td class="align-j">d. Bình quân 3 năm tài chính (nếu áp dụng)</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1/TongDoanhThu/binhQuan_3NamTC)"/></td>
				<td class="align-l">Không áp dụng</td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.2 Quy định giảm trừ trách nhiệm trên cơ sở báo cáo lợi nhuận liên quốc gia trong thời gian chuyển tiếp</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tổng doanh thu của Tập đoàn đa quốc gia tại Việt Nam</td>
				<td class="align-c">2. Lợi nhuận trước thuế thu nhập doanh nghiệp hoặc lỗ của Tập đoàn đa quốc gia tại Việt Nam</td>
				<td class="align-c">3. Tổng các khoản thuế thuộc phạm vi áp dụng được đơn giản hóa</td>
				<td class="align-c">4. Thuế suất thực tế được đơn giản hóa</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1.2/tongDoanhThu)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1.2/loiNhuan_TruocThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1.2/tongThue_DonGianHoa)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.1.2/thueSuatThucTe_DonGianHoa)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.2 Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn được xác định bằng 0</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_2/Muc_2.2/thueSuatThucTe= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn tại Việt Nam được xác định bằng 0</xsl:if>
				<xsl:if test="$tkchinh/Muc_2/Muc_2.2/thueSuatThucTe= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn tại Việt Nam được xác định bằng 0</xsl:if>
				
				<xsl:if test="$tkchinh/Muc_2/Muc_2.2/thueSuatThucTe= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn tại Việt Nam được xác định bằng 0</xsl:if>
				<xsl:if test="$tkchinh/Muc_2/Muc_2.2/thueSuatThucTe= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn tại Việt Nam được xác định bằng 0</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c"></td>
				<td class="align-c">1. Doanh thu tại báo cáo tài chính</td>
				<td class="align-c">2. Doanh thu theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">3. Thu nhập hoặc lỗ ròng tại báo cáo tài chính</td>
				<td class="align-c">4. Thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-j">a. Năm tài chính báo cáo</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_BCTC/nam_TC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_ThueTTTC/nam_TC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_BCTC/nam_TC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_ThueTTTC/nam_TC)"/></td>
			</tr>
			<tr>
				<td class="align-j">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_BCTC/nam_TCLienTruoc)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_ThueTTTC/nam_TCLienTruocThu1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_BCTC/nam_TCLienTruocThu1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_ThueTTTC/nam_TCLienTruocThu1)"/></td>
			</tr>
			<tr>
				<td class="align-j">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_BCTC/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_ThueTTTC/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_BCTC/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_ThueTTTC/nam_TCLienTruocThu2)"/></td>
			</tr>
			<tr>
				<td class="align-j">d. Bình quân 3 năm tài chính</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_BCTC/binhQuan_3NamTC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/DoanhThu_ThueTTTC/binhQuan_3NamTC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_BCTC/binhQuan_3NamTC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.2/ThuNhap_ThueTTTC/binhQuan_3NamTC)"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.3 Giảm trừ trách nhiệm trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Ngày đầu tiên của năm tài chính đầu tiên mà Tập đoàn đa quốc gia bắt đầu thuộc phạm vi 
		điều chỉnh của quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Muc_2/Muc_2.3/ngay_DauTien,'dd/mm/yyyy')"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Nước tham chiếu: <xsl:value-of select="$tkchinh/Muc_2/Muc_2.3/ten_Nuoc"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Giá trị ghi sổ của tài sản hữu hình của tất cả các đơn vị hợp thành tại nước tham chiếu 
		trong năm tài chính đầu tiên mà Tập đoàn đa quốc gia bắt đầu thuộc phạm vi điều chỉnh của quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.3/giaTriGhiSo)"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Số quốc gia mà Tập đoàn đa quốc gia có đơn vị hợp thành cư trú trong năm tài chính mà 
		Tập đoàn đa quốc gia bắt đầu nằm trong phạm vi điều chỉnh của quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.3/soQuocGia_ThueTTTC)"/></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">5. Giá trị ghi sổ của tài sản hữu hình của các đơn vị hợp thành cư trú ngoài nước tham chiếu trong năm tài chính mà Tập đoàn đa quốc gia bắt đầu thuộc phạm vi điều chỉnh của quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">Giá trị ghi sổ của tài sản hữu hình của tất cả các đơn vị hợp thành cư trú tại từng quốc gia</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_2/Muc_2.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriGhiSo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;6. Số quốc gia mà Tập đoàn đa quốc gia có đơn vị hợp thành cư trú trong năm tài chính 
		báo cáo: <xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.3/soQuocGia)"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;7. Tổng giá trị ghi sổ của tài sản hữu hình của tất cả các đơn vị hợp thành cư trú 
		tại các nước khác nước tham chiếu trong năm tài chính báo cáo: <xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_2/Muc_2.3/tongGiaTriGhiSo)"/></div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3 Tính toán theo quy định thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1 Xác định lợi nhuận tính thuế bổ sung</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1.1 Xác định thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:4800px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Tổng thu nhập hoặc lỗ ròng tại báo cáo tài chính sau khi thực hiện phân bổ thu nhập hoặc lỗ giữa một công ty chính và một cơ sở thường trú, phân bổ thu nhập hoặc lỗ của một cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td colspan="21" class="align-c">2. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">3. Thu nhập ròng theo Quy định thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">2.1. Chi phí thuế ròng</td>
				<td class="align-c" style="width:200px">2.2. Cổ tức được loại trừ</td>
				<td class="align-c" style="width:200px">2.3. Lãi hoặc lỗ trên vốn chủ sở hữu được loại trừ</td>
				<td class="align-c" style="width:200px">2.4. Lãi hoặc lỗ do đánh giá lại</td>
				<td class="align-c" style="width:200px">2.5. Lãi hoặc lỗ về chênh lệch tỷ giá do sử dụng đồng tiền kế toán và đồng tiền tính thuế khác nhau</td>
				<td class="align-c" style="width:200px">2.6. Các khoản chi phí không được trừ theo quy định</td>
				<td class="align-c" style="width:200px">2.7. Sai sót của các kỳ trước</td>
				<td class="align-c" style="width:200px">2.8. Những thay đổi về nguyên tắc kế toán</td>
				<td class="align-c" style="width:200px">2.9. Chi phí hưu trí trích trước của Chương trình hưu trí do các quỹ hưu trí cung cấp</td>
				<td class="align-c" style="width:200px">2.10. Xóa nợ</td>
				<td class="align-c" style="width:200px">2.11. Khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu</td>
				<td class="align-c" style="width:200px">2.12. Điều chỉnh theo nguyên tắc giá thị trường</td>
				<td class="align-c" style="width:200px">2.13. Khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn</td>
				<td class="align-c" style="width:200px">2.14. Điều chỉnh do lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm</td>
				<td class="align-c" style="width:200px">2.15. Điều chỉnh đối với thỏa thuận tài chính trong nội bộ tập đoàn</td>
				<td class="align-c" style="width:200px">2.16. Điều chỉnh khoản thu nhập hoặc lỗ tương ứng phần thuế nộp thay chủ hợp đồng bảo hiểm liên quan đến thu nhập của chủ hợp đồng bảo hiểm</td>
				<td class="align-c" style="width:200px">2.17. Điều chỉnh liên quan đến phần vốn cấp một bổ sung, phần vốn cấp một bị hạn chế</td>
				<td class="align-c" style="width:200px">2.18. Điều chỉnh đối với các đơn vị hợp thành tham gia và rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">2.19. Điều chỉnh thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">2.20. Thu nhập vận tải quốc tế được loại trừ</td>
				<td class="align-c" style="width:200px">2.21. Điều chỉnh do giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.20)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct2.21)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.1/tong_ct3)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1.2 Giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.1 Tổng giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td colspan="2" class="align-c">1. Giá trị tiền lương được giảm trừ</td>
				<td colspan="2" class="align-c">2. Giá trị tài sản hữu hình được giảm trừ</td>
				<td rowspan="2" class="align-c">3. Tổng giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c">1.1. Chi tiền lương hợp lệ</td>
				<td class="align-c">1.2. Tỷ lệ giảm trừ</td>
				<td class="align-c">2.1. Giá trị tài sản hữu hình hợp lệ</td>
				<td class="align-c">2.2. Tỷ lệ giảm trừ</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.2.1/chiTienLuong)"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.1.2.1/ten_TyLeGiamTruTienLuong"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.2.1/giaTriTaiSan)"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.1.2.1/ten_TyLeGiamTruTaiSan"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.1.2.1/tong_GiaTriTaiSan)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.2 Phân bổ chi tiền lương và giá trị tài sản hữu hình hợp lệ giữa công ty chính và cơ sở thường trú</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia công ty chính cư trú</td>
				<td class="align-c">2. Chi tiền lương hợp lệ của công ty chính</td>
				<td class="align-c">3. Giá trị tài sản hữu hình hợp lệ của công ty chính</td>
				<td class="align-c">4. Quốc gia cơ sở thường trú cư trú</td>
				<td class="align-c">5. Chi tiền lương hợp lệ được phân bổ cho cơ sở thường trú</td>
				<td class="align-c">6. Giá trị tài sản hữu hình hợp lệ được phân bổ cho cơ sở thường trú</td>
				<td class="align-c">7. Chi tiền lương hợp lệ sau phân bổ của công ty chính</td>
				<td class="align-c">8. Giá trị tài sản hữu hình hợp lệ sau phân bổ của công ty chính</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.2.2/ChiTietDanhSach">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGiaCongTyChinh"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_CongTyChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_CongTyChinh)"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGiaCoSoThuongTru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_CoSoThuongTru)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_CoSoThuongTru)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_PhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.3 Phân bổ chi tiền lương và giá trị tài sản hữu hình hợp lệ của các cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Chi tiền lương hợp lệ của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c">2. Giá trị tài sản hữu hình hợp lệ của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c">3. Quốc gia đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao cư trú</td>
				<td class="align-c">4. Chi tiền lương hợp lệ được phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c">5. Giá trị tài sản hữu hình hợp lệ được phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c">6. Chi tiền lương hợp lệ của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển sau khi phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c">7. Giá trị tài sản hữu hình hợp lệ của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển sau khi phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.2.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_dvTrungChuyen)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_dvTrungChuyen)"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGiaCongTyMe"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_CongTyMe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_CongTyMe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_PhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2 Xác định thuế thuộc phạm vi áp dụng đã được điều chỉnh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.1 Tổng số thuế thuộc phạm vi áp dụng đã được điều chỉnh</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3400px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Tổng khoản thuế thuộc phạm vi áp dụng sau khi thực hiện phân bổ từ một đơn vị hợp thành này sang đơn vị hợp thành khác</td>
				<td colspan="14" class="align-c">2. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">3. Thuế thuộc phạm vi áp dụng đã được điều chỉnh</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">2.1. Khoản thuế thuộc phạm vi áp dụng được hạch toán là chi phí khi tính lợi nhuận trước thuế trong sổ kế toán</td>
				<td class="align-c" style="width:200px">2.2. Khoản tài sản thuế hoãn lại do lỗ theo quy định về thuế tối thiểu toàn cầu được sử dụng theo quy định</td>
				<td class="align-c" style="width:400px">2.3. Khoản thuế thuộc phạm vi áp dụng được nộp trong năm tài chính và liên quan đến nghiệp vụ thuế không chắc chắn (chờ điều chỉnh) mà khoản đó nằm trong phần điều chỉnh trừ khỏi thuế thuộc phạm vi áp dụng trong một năm tài chính trước đó theo quy định</td>
				<td class="align-c" style="width:200px">2.4. Khoản chi phí thuế hiện hành liên quan đến thu nhập không được đưa vào khi tính thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu theo quy định</td>
				<td class="align-c" style="width:300px">2.5. Khoản giảm trừ hoặc khoản hoàn trả thuế mà theo quy định các khoản này được coi là một khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn và chưa được ghi nhận là một khoản giảm chi phí thuế hiện hành</td>
				<td class="align-c" style="width:200px">2.6. Khoản thuế thuộc phạm vi áp dụng được hoàn trả hoặc giảm trừ của một đơn vị hợp thành mà đã không được ghi nhận là khoản điều chỉnh chi phí thuế hiện hành trong sổ kế toán</td>
				<td class="align-c" style="width:200px">2.7. Khoản chi phí thuế hiện hành liên quan đến một nghiệp vụ thuế không chắc chắn (chờ điều chỉnh)</td>
				<td class="align-c" style="width:200px">2.8. Khoản chi phí thuế hiện hành dự kiến không được thanh toán trong vòng ba năm kể từ ngày cuối cùng của năm tài chính</td>
				<td class="align-c" style="width:200px">2.9. Những điều chỉnh phát sinh sau khi kê khai và thay đổi thuế suất</td>
				<td class="align-c" style="width:200px">2.10. Điều chỉnh thuế thuộc phạm vi áp dụng của cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">2.11.  Tổng các khoản điều chỉnh thuế hoãn lại</td>
				<td class="align-c" style="width:400px">2.12. Tăng hoặc giảm đối với các khoản thuế thuộc phạm vi áp dụng chưa được ghi nhận vào chi phí thuế hiện hành hoặc chi phí thuế hoãn lại, nhưng được ghi nhận trong phần vốn chủ sở hữu 
				hoặc phần thu nhập toàn diện khác liên quan đến các khoản được đưa vào khi tính thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu mà các khoản này sẽ phải chịu thuế theo quy định của thuế nội địa</td>
				<td class="align-c" style="width:200px">2.13. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết  phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">2.14. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết  được sử dụng trong năm tài chính báo cáo</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct2.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.1/tong_ct3)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.2 Chi phí thuế nhỏ hơn 0 chưa bù trừ hết</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Số dư từ năm tài chính báo cáo trước chuyển sang</td>
				<td class="align-c">2. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c">3. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết được sử dụng trong năm tài chính báo cáo</td>
				<td class="align-c">4. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết còn lại cho các năm tài chính báo cáo kế tiếp</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.2/soDu_ChuyenSang)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.2/chiPhi_PhatSinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.2/chiPhi_SuDung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.2/chiPhi_ConLai)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.3 Tính toán theo quốc gia liên quan đến kế toán thuế hoãn lại</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.3.1 Các điều chỉnh thuế hoãn lại</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a. Tóm tắt tổng quát</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Chi phí thuế hoãn lại [A]</td>
				<td class="align-c">2. Chi phí thuế hoãn lại tính lại theo mức thuế suất tối thiểu [B] = [C] + [D]</td>
				<td class="align-c">3. Tài sản thuế hoãn lại đã được ghi nhận ở mức thuế suất thấp hơn thuế suất tối thiểu được tính lại ở mức thuế suất tối thiểu trong năm tài chính mà khoản lỗ liên quan đến tài sản thuế hoãn lại đó trở thành một khoản lỗ theo quy định về thuế tối thiểu toàn cầu [C]</td>
				<td class="align-c">4. Chi phí thuế hoãn lại được ghi nhận ở mức thuế suất cao hơn thuế suất tối thiểu và được tính lại ở mức thuế suất tối thiểu [D]</td>
				<td class="align-c">5. Tổng các khoản điều chỉnh [E]</td>
				<td class="align-c">6. Tổng thuế hoãn lại sau khi tính lại theo mức thuế suất tối thiểu và đã được điều chỉnh [F] = [B] + [E]</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_A)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_B)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_C)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_D)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_E)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_F)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b. Phân tích các điều chỉnh</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3200px">
			<tr>
				<td class="align-c" style="width:200px">1.1. Chi phí thuế hoãn lại đối với các khoản không được đưa vào khi tính thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">1.2. Chi phí thuế hoãn lại đối với các khoản trích trước không được chấp nhận</td>
				<td class="align-c" style="width:200px">1.3. Chi phí thuế hoãn lại đối với các khoản trích trước chưa được tính</td>
				<td class="align-c" style="width:200px">1.4. Điều chỉnh cách thức xác định giá trị hoặc điều chỉnh việc ghi nhận kế toán liên quan đến tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">1.5. Chi phí thuế hoãn lại phát sinh từ việc tính toán lại do thay đổi thuế suất áp dụng tại một nước</td>
				<td class="align-c" style="width:200px">1.6. Chi phí thuế hoãn lại từ việc tạo lập và sử dụng các khoản giảm trừ nghĩa vụ thuế</td>
				<td class="align-c" style="width:200px">1.7. Khoản lỗ thay thế từ tài sản thuế hoãn lại được chuyển kỳ sau</td>
				<td class="align-c" style="width:200px">1.8. Các khoản trích trước chưa được tính đã được thanh toán trong năm tài chính</td>
				<td class="align-c" style="width:300px">1.9. Các khoản thuế hoãn lại phải trả được thu hồi được xác định trong năm tài chính trước đó và đã được nộp trong năm tài chính hiện hành</td>
				<td class="align-c" style="width:400px">1.10. Tài sản thuế hoãn lại do lỗ của năm tài chính hiện hành phát sinh lỗ, nhưng tài sản thuế hoãn lại do lỗ đó không được ghi trên báo cáo tài chính vì không đáp ứng tiêu chuẩn được kế toán ghi nhận là tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">1.11. Khoản điều chỉnh chi phí thuế hoãn lại do giảm thuế suất</td>
				<td class="align-c" style="width:200px">1.12. Khoản điều chỉnh chi phí thuế hoãn lại do tăng thuế suất</td>
				<td class="align-c" style="width:200px">1.13. Điều chỉnh đối với đơn vị hợp thành tham gia hoặc rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">1.14. Điều chỉnh chi phí thuế hoãn lại của cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:300px">1.15. Điều chỉnh do giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
				<td class="align-c" style="width:200px">2. Tổng các khoản điều chỉnh </td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/ct_1.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.1/tong_DieuChinh)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.3.2 Cơ chế thu hồi</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:1800px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Năm tài chính</td>
				<td rowspan="2" class="align-c" style="width:200px">2. Khoản thuế hoãn lại phải trả được ghi nhận theo cơ chế xử lý các khoản chênh lệch tạm thời</td>
				<td colspan="6" class="align-c">3. Khoản thuế hoãn lại phải trả được thu hồi</td>
				<td rowspan="2" class="align-c" style="width:200px">4. Khoản thuế hoãn lại phải trả không được thu hồi</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">Năm tài chính liền trước thứ 4</td>
				<td class="align-c" style="width:200px">Năm tài chính liền trước thứ 3</td>
				<td class="align-c" style="width:200px">Năm tài chính liền trước thứ 2</td>
				<td class="align-c" style="width:200px">Năm tài chính liền trước thứ nhất</td>
				<td class="align-c" style="width:200px">Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">Tổng cộng</td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính liền trước thứ 5</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu4/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu3/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu2/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu1/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTC/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/TongCong/nam_TCLienTruocThu5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TCLienTruocThu5)"/></td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính liền trước thứ 4</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TCLienTruocThu4)"/></td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu3/nam_TCLienTruocThu4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu2/nam_TCLienTruocThu4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu1/nam_TCLienTruocThu4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTC/nam_TCLienTruocThu4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/TongCong/nam_TCLienTruocThu4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TCLienTruocThu4)"/></td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính liền trước thứ 3</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TCLienTruocThu3)"/></td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu2/nam_TCLienTruocThu3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu1/nam_TCLienTruocThu3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTC/nam_TCLienTruocThu3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/TongCong/nam_TCLienTruocThu3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TCLienTruocThu3)"/></td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính liền trước thứ 2</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TCLienTruocThu2)"/></td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTCLienTruocThu1/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTC/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/TongCong/nam_TCLienTruocThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TCLienTruocThu2)"/></td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính liền trước thứ nhất</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TCLienTruocThu1)"/></td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/NamTC/nam_TCLienTruocThu1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/KhoanThuHoi/TongCong/nam_TCLienTruocThu1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TCLienTruocThu1)"/></td>
			</tr>
			<tr>
				<td class="align-j">Năm tài chính báo cáo</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_GhiNhan/nam_TC)"/></td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-j">Không áp dụng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.2/khoan_KhongThuHoi/nam_TC)"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.3.3 Quy tắc chuyển tiếp</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Năm chuyển tiếp: <xsl:value-of select="$tkchinh/Muc_3/Muc_3.2.3.3/nam_ChuyenTiep"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a. Xử lý khoản thuế hoãn lại phải trả và khoản tài sản thuế hoãn lại trong thời gian chuyển tiếp</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a.1. Xử lý khoản thuế hoãn lại phải trả</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td colspan="2" class="align-c">1. Khoản thuế hoãn lại phải trả</td>
			</tr>
			<tr>
				<td class="align-c">1.1. Khoản thuế hoãn lại phải trả tại đầu năm chuyển tiếp</td>
				<td class="align-c">1.2. Khoản thuế hoãn lại phải trả được tính lại ở mức thuế suất tối thiểu (nếu áp dụng)</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_ChuyenTiep)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_TinhLai)"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a.2. Xử lý khoản tài sản thuế hoãn lại</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td colspan="4" class="align-c">1. Tài sản thuế hoãn lại</td>
			</tr>
			<tr>
				<td class="align-c">1.1. Tài sản thuế hoãn lại tại đầu năm chuyển tiếp</td>
				<td class="align-c">1.2. Tài sản thuế hoãn lại được tính lại ở mức thuế suất tối thiểu (nếu áp dụng)</td>
				<td class="align-c">1.3. Tài sản thuế hoãn lại phát sinh từ những khoản mục được loại trừ</td>
				<td class="align-c">1.4. Tài sản thuế hoãn lại được ghi nhận theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_TaiSanChuyenTiep)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_TaiSanTinhLai)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_TaiSanPhatSinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.2.3.3/Muc_a/khoan_TaiSanGhiNhan)"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b. Chuyển nhượng tài sản giữa các đơn vị hợp thành sau ngày 30 tháng 11 năm 2021 và trước khi bắt đầu năm chuyển tiếp</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia các đơn vị hợp thành chuyển nhượng cư trú</td>
				<td class="align-c">2. Số thuế bên chuyển nhượng tài sản đã nộp đối với giao dịch chuyển nhượng</td>
				<td class="align-c">3. Tài sản thuế hoãn lại hoặc thuế hoãn lại phải trả ròng ghi nhận trên sổ kế toán của đơn vị hợp thành chuyển nhượng tài sản</td>
				<td class="align-c">4. Giá trị tài sản chuyển nhượng theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">5. Tài sản thuế hoãn lại hoặc thuế hoãn lại phải trả ròng được xác định đối với tài sản được chuyển nhượng theo quy định về thuế tối thiểu toàn cầu của các đơn vị hợp thành nhận chuyển nhượng</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.3.3/Muc_b/ChiTietDanhSach">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSanChuyenNhuong_DaNop)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSanChuyenNhuong_PhaiTra)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSanChuyenNhuong_TTTC)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSanChuyenNhuongDVHT_TTTC)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3 Lựa chọn quốc gia</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3.1 Các lựa chọn</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.1.1 Lựa chọn hàng năm</div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_XacDinhKhoanGiam= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 1.  Lựa chọn xác định khoản giảm không trọng yếu của các khoản  thuế thuộc phạm vi áp dụng là một khoản điều chỉnh đối với các khoản thuế thuộc phạm vi áp dụng trong năm tài chính thực hiện việc điều chỉnh</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_XacDinhKhoanGiam= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 1.  Lựa chọn xác định khoản giảm không trọng yếu của các khoản  thuế thuộc phạm vi áp dụng là một khoản điều chỉnh đối với các khoản thuế thuộc phạm vi áp dụng trong năm tài chính thực hiện việc điều chỉnh</xsl:if>	
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_XacDinhKhoanGiam= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 1.  Lựa chọn xác định khoản giảm không trọng yếu của các khoản  thuế thuộc phạm vi áp dụng là một khoản điều chỉnh đối với các khoản thuế thuộc phạm vi áp dụng trong năm tài chính thực hiện việc điều chỉnh</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_XacDinhKhoanGiam= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 1.  Lựa chọn xác định khoản giảm không trọng yếu của các khoản  thuế thuộc phạm vi áp dụng là một khoản điều chỉnh đối với các khoản thuế thuộc phạm vi áp dụng trong năm tài chính thực hiện việc điều chỉnh</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_KhongApDungQuyDinh= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 2.  Lựa chọn không áp dụng quy định về giảm trừ giá trị tài sản hữu hình và tiền lương</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_KhongApDungQuyDinh= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 2.  Lựa chọn không áp dụng quy định về giảm trừ giá trị tài sản hữu hình và tiền lương</xsl:if>	
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_KhongApDungQuyDinh= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 2.  Lựa chọn không áp dụng quy định về giảm trừ giá trị tài sản hữu hình và tiền lương</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_KhongApDungQuyDinh= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 2.  Lựa chọn không áp dụng quy định về giảm trừ giá trị tài sản hữu hình và tiền lương</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_QuyTrinhQuanLy= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 3. Lựa chọn quy trình quản lý đối với chi phí thuế nhỏ hơn 0 chưa bù trừ hết</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_QuyTrinhQuanLy= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 3. Lựa chọn quy trình quản lý đối với chi phí thuế nhỏ hơn 0 chưa bù trừ hết</xsl:if>	
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_QuyTrinhQuanLy= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; 3. Lựa chọn quy trình quản lý đối với chi phí thuế nhỏ hơn 0 chưa bù trừ hết</xsl:if>
				<xsl:if test="$tkchinh/Muc_3/Muc_3.3.1/chon_QuyTrinhQuanLy= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; 3. Lựa chọn quy trình quản lý đối với chi phí thuế nhỏ hơn 0 chưa bù trừ hết</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.1.2 Lựa chọn năm năm</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td colspan="2" class="align-c">1. Lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</td>
				<td colspan="2" class="align-c">2. Lựa chọn thay thế các khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu được ghi nhận theo sổ kế toán bằng khoản chi phí được trừ theo quy định tính thuế thu nhập</td>
				<td colspan="2" class="align-c">3. Lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm trong Báo cáo tài chính hợp nhất</td>
			</tr>
			<tr>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
			</tr>
			<tr>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonKhongApDung/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonKhongApDung/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonThayThe/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonThayThe/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonNguyenTac/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonNguyenTac/nam_ChamDutLuaChon"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.1.3 Lựa chọn lỗ theo quy định về tối thiểu toàn cầu</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td colspan="2" class="align-c">1. Lựa chọn lỗ theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
			</tr>
			<tr>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonLoTheoQuyDinh/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.1/ChonLoTheoQuyDinh/nam_ChamDutLuaChon"/></td>
			</tr>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3.2 Thông tin liên quan đến lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Lãi hoặc lỗ vốn chủ sở hữu đối với lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</td>
				<td class="align-c">2. Số dư khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn từ những năm tài chính trước</td>
				<td class="align-c">3. Phần bổ sung vào khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
				<td class="align-c">4. Phần giảm trừ vào khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
				<td class="align-c">5. Số dư còn lại của khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.3.2/khoan_LaiHoacLo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.3.2/khoan_SoDuDauTu)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.3.2/khoan_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.3.2/khoan_GiamTru)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.3.2/khoan_SoDuConLai)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.4 Xác định thuế suất thực tế</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Thu nhập hoặc lỗ ròng trên báo cáo tài chính</td>
				<td class="align-c">2. Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">3. Chi phí thuế thu nhập doanh nghiệp trên báo cáo tài chính</td>
				<td class="align-c">4. Thuế thuộc phạm vi áp dụng được điều chỉnh</td>
				<td class="align-c">5. Thuế suất thực tế</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.4/thue_ThuNhapHoacLo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.4/thue_ThuNhapRong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.4/thue_ChiPhi)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.4/thue_DieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.4/thue_ThucTe)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5 Thuế bổ sung được điều chỉnh cho năm hiện hành</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5.1 Số thuế bổ sung được điều chỉnh cho năm hiện hành phát sinh trong trường hợp thuế suất thực tế và thuế bổ sung của năm tài chính trước đó phải tính toán lại</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3100px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Cơ sở điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:100px">2. Năm liên quan</td>
				<td colspan="2" class="align-c">3. Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu</td>
				<td colspan="2" class="align-c">4. Thuế thuộc phạm vi áp dụng đã được điều chỉnh</td>
				<td colspan="2" class="align-c">5. Thuế suất thực tế (%)</td>
				<td colspan="2" class="align-c">6. Lợi nhuận tính thuế bổ sung</td>
				<td colspan="2" class="align-c">7. Tỷ lệ thuế bổ sung (%)</td>
				<td colspan="2" class="align-c">8. Thuế bổ sung</td>
				<td rowspan="2" class="align-c" style="width:200px">9. Thuế bổ sung được điều chỉnh cho năm hiện hành</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
				<td class="align-c" style="width:200px">a. Đã báo cáo</td>
				<td class="align-c" style="width:200px">b. Tính lại</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.5.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_CoSoDieuChinh"/></td>
				<td class="align-c"><xsl:value-of select="nam_LienQuan"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_ThuNhapRong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_ThuNhapRong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_ApDung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_ApDung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_ThucTe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_ThucTe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_LoiNhuanBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_LoiNhuanBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_TyLeBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_TyLeBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(daBaoCao_ThueBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tinhLai_ThueBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueBoSung_DieuChinh)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5.2 Số tiền thuế bổ sung 
		được điều chỉnh cho năm hiện hành phát sinh trong trường hợp năm tài chính không có thu nhập ròng theo quy định về thuế 
		tối thiểu toàn cầu tại một nước, nếu thuế thuộc phạm vi áp dụng đã điều chỉnh tại một nước nhỏ hơn 0 và thấp hơn thuế thuộc phạm vi áp dụng đã điều chỉnh theo dự kiến</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Thuế thuộc phạm vi áp dụng được điều chỉnh (nếu nhỏ hơn 0) [1]</td>
				<td class="align-c">2. Lỗ theo quy định về thuế tối thiểu toàn cầu [2]</td>
				<td class="align-c">3. Thuế thuộc phạm vi áp dụng được điều chỉnh dự kiến [3] = 15% x [2]</td>
				<td class="align-c">4. Thuế bổ sung được điều chỉnh cho năm hiện hành [4] = [3] - [1]</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.5.2/thue_DieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.5.2/thue_DieuChinhLo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.5.2/thue_DieuChinhDuKien)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.5.2/thue_DieuChinhBoSung)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.6 Tính toán thuế bổ sung</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tỷ lệ thuế bổ sung [1] = 15% - ETR</td>
				<td class="align-c">2. Giá trị tài sản hữu hình và tiền lương được giảm trừ [2]</td>
				<td class="align-c">3. Lợi nhuận tính thuế bổ sung [3] = Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu - [2]</td>
				<td class="align-c">4. Thuế bổ sung được điều chỉnh cho năm hiện hành [4]</td>
				<td class="align-c">5. Thuế bổ sung [5] = [1] x [3] + [4]</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.6/thueBoSung_TyLe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.6/thueBoSung_TaiSan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.6/thueBoSung_LoiNhuan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.6/thueBoSung_DieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.6/thueBoSung)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4 Số liệu tính toán của các đơn vị hợp thành, liên doanh, công ty con của liên doanh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1 Thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.1 Điều chỉnh thu nhập hoặc lỗ ròng tại Báo cáo tài chính</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:5400px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">2. Mã số thuế</td>
				<td rowspan="2" class="align-c" style="width:400px">3. Tổng thu nhập hoặc lỗ ròng tại báo cáo tài chính sau khi thực hiện phân bổ thu nhập hoặc lỗ giữa một công ty chính và một cơ sở thường trú, phân bổ thu nhập hoặc lỗ của  của một cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td colspan="21" class="align-c">4. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Thu nhập ròng theo Quy định thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">4.1. Chi phí thuế ròng</td>
				<td class="align-c" style="width:200px">4.2. Cổ tức được loại trừ</td>
				<td class="align-c" style="width:200px">4.3. Lãi hoặc lỗ trên vốn chủ sở hữu được loại trừ</td>
				<td class="align-c" style="width:200px">4.4. Lãi hoặc lỗ do đánh giá lại</td>
				<td class="align-c" style="width:200px">4.5. Lãi hoặc lỗ về chênh lệch tỷ giá do sử dụng đồng tiền kế toán và đồng tiền tính thuế khác nhau</td>
				<td class="align-c" style="width:200px">4.6. Các khoản chi phí không được trừ theo quy định</td>
				<td class="align-c" style="width:200px">4.7. Sai sót của các kỳ trước</td>
				<td class="align-c" style="width:200px">4.8. Những thay đổi về nguyên tắc kế toán</td>
				<td class="align-c" style="width:200px">4.9. Chi phí hưu trí trích trước của Chương trình hưu trí do các quỹ hưu trí cung cấp</td>
				<td class="align-c" style="width:200px">4.10. Xóa nợ</td>
				<td class="align-c" style="width:200px">4.11. Khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu</td>
				<td class="align-c" style="width:200px">4.12. Điều chỉnh theo nguyên tắc giá thị trường</td>
				<td class="align-c" style="width:200px">4.13. Khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn</td>
				<td class="align-c" style="width:200px">4.14. Điều chỉnh do lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm</td>
				<td class="align-c" style="width:200px">4.15. Điều chỉnh đối với thỏa thuận tài chính trong nội bộ tập đoàn</td>
				<td class="align-c" style="width:200px">4.16. Điều chỉnh khoản thu nhập hoặc lỗ tương ứng phần thuế nộp thay chủ hợp đồng bảo hiểm liên quan đến thu nhập của chủ hợp đồng bảo hiểm</td>
				<td class="align-c" style="width:200px">4.17. Điều chỉnh liên quan đến phần vốn cấp một bổ sung, phần vốn cấp một bị hạn chế</td>
				<td class="align-c" style="width:200px">4.18. Điều chỉnh đối với các đơn vị hợp thành tham gia và rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">4.19. Điều chỉnh thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của cơ sở thường trú có công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">4.20. Thu nhập vận tải quốc tế được loại trừ</td>
				<td class="align-c" style="width:200px">4.21. Điều chỉnh do giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ct_1"/></td>
				<td class="align-c"><xsl:value-of select="ct_2"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.20)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.21)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_5)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.2 Phân bổ thu nhập hoặc lỗ giữa một công ty chính và một cơ sở thường trú</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2200px">
			<tr>
				<td class="align-c" style="width:400px">1. Tên công ty chính</td>
				<td class="align-c" style="width:200px">2. Mã số thuế/Mã số doanh nghiệp công ty chính</td>
				<td class="align-c" style="width:200px">3. Quốc gia công ty chính cư trú</td>
				<td class="align-c" style="width:200px">4. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của công ty chính trước khi điều chỉnh</td>
				<td class="align-c" style="width:200px">5. Tên cơ sở thường trú</td>
				<td class="align-c" style="width:200px">6. Mã số thuế/Mã số doanh nghiệp cơ sở thường trú</td>
				<td class="align-c" style="width:200px">7. Quốc gia cơ sở thường trú cư trú</td>
				<td class="align-c" style="width:300px">8. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của công ty chính phân bổ cho cơ sở thường trú</td>
				<td class="align-c" style="width:300px">9. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của công ty chính sau khi phân bổ cho cơ sở thường trú</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.2/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_CongTyChinh"/></td>
				<td class="align-c"><xsl:value-of select="mst_CongTyChinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaCongTyChinh"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_CongTyChinh)"/></td>
				<td class="align-j"><xsl:value-of select="ten_CoSoThuongTru"/></td>
				<td class="align-c"><xsl:value-of select="mst_CoSoThuongTru"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaCoSoThuongTru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_SauPhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.3 Phân bổ thu nhập hoặc lỗ của cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2100px">
			<tr>
				<td class="align-c" style="width:400px">1. Tên cơ sở thường trú</td>
				<td class="align-c" style="width:200px">2. Mã số thuế/Mã số doanh nghiệp cơ sở thường trú</td>
				<td class="align-c" style="width:200px">3. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của cơ sở thường trú trước khi điều chỉnh</td>
				<td class="align-c" style="width:200px">4. Tên đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/Mã số doanh nghiệp của đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c" style="width:200px">6. Quốc gia đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao cư trú</td>
				<td class="align-c" style="width:300px">7. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của cơ sở thường trú phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
				<td class="align-c" style="width:400px">8. Thu nhập hoặc lỗ ròng trên báo cáo tài chính của cơ sở thường trú sau khi phân bổ cho đối tượng nắm giữ quyền sở hữu trong Công ty mẹ tối cao</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_CoSoThuongTru"/></td>
				<td class="align-c"><xsl:value-of select="mst_CoSoThuongTru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_CoSoThuongTru)"/></td>
				<td class="align-j"><xsl:value-of select="ten_DoiTuong"/></td>
				<td class="align-c"><xsl:value-of select="mst_DoiTuong"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaDoiTuong"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_SauPhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.4 Điều chỉnh thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu đối với các giao dịch xuyên quốc gia</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2200px">
			<tr>
				<td class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">2. Mã số thuế/Mã số doanh nghiệp của  đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">3. Cơ sở của sự điều chỉnh</td>
				<td class="align-c" style="width:400px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/Mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">6. Quốc gia  đơn vị hợp thành,  liên doanh, công ty con của liên doanh liên quan cư trú</td>
				<td class="align-c" style="width:300px">7. Giá trị điều chỉnh tăng thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:300px">8. Giá trị điều chỉnh giảm thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.4/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_CoSoDieuChinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViLienQuan"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViLienQuan"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_DieuChinhTang)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_DieuChinhGiam)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2 Thuế thuộc phạm vi áp dụng được điều chỉnh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2.1 Điều chỉnh đối với chi phí thuế hiện hành trong sổ kế toán</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:4500px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">3. Thuế thuộc phạm vi áp dụng sau khi thực hiện phân bổ từ một đơn vị hợp thành này sang đơn vị hợp thành khác</td>
				<td colspan="14" class="align-c">4. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Thuế thuộc phạm vi áp dụng đã được điều chỉnh</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">4.1. Khoản thuế thuộc phạm vi áp dụng được hạch toán là chi phí khi tính lợi nhuận trước thuế trong sổ kế toán</td>
				<td class="align-c" style="width:200px">4.2. Khoản tài sản thuế hoãn lại do lỗ theo Quy định về thuế tối thiểu toàn cầu được sử dụng theo quy định</td>
				<td class="align-c" style="width:400px">4.3. Khoản thuế thuộc phạm vi áp dụng được nộp trong năm tài chính và liên quan đến nghiệp vụ thuế không chắc chắn (chờ điều chỉnh) mà khoản đó nằm trong phần điều chỉnh trừ khỏi thuế thuộc phạm vi áp dụng trong một năm tài chính trước đó theo quy định</td>
				<td class="align-c" style="width:200px">4.4. Khoản chi phí thuế hiện hành liên quan đến thu nhập không được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu theo quy định</td>
				<td class="align-c" style="width:400px">4.5. Khoản giảm trừ hoặc khoản hoàn trả thuế mà theo quy định các khoản này được coi là một khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn và chưa được ghi nhận là một khoản giảm chi phí thuế hiện hành</td>
				<td class="align-c" style="width:250px">4.6. Khoản thuế thuộc phạm vi áp dụng được hoàn trả hoặc giảm trừ của một đơn vị hợp thành mà đã không được ghi nhận là khoản điều chỉnh chi phí thuế hiện hành trong sổ kế toán</td>
				<td class="align-c" style="width:200px">4.7. Khoản chi phí thuế hiện hành liên quan đến một nghiệp vụ thuế không chắc chắn (chờ điều chỉnh)</td>
				<td class="align-c" style="width:200px">4.8. Khoản chi phí thuế hiện hành dự kiến không được thanh toán trong vòng ba năm kể từ ngày cuối cùng của năm tài chính</td>
				<td class="align-c" style="width:200px">4.9. Những điều chỉnh phát sinh sau khi kê khai</td>
				<td class="align-c" style="width:200px">4.10. Điều chỉnh thuế thuộc phạm vi áp dụng của cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">4.11.  Tổng các khoản điều chỉnh thuế hoãn lại</td>
				<td class="align-c" style="width:450px">4.12. Tăng hoặc giảm nào đối với các khoản thuế thuộc phạm vi áp dụng chưa được ghi nhận vào chi phí thuế hiện hành hoặc chi phí thuế hoãn lại, nhưng được ghi nhận trong phần vốn chủ sở hữu hoặc phần thu nhập toàn diện khác liên quan đến các khoản được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu mà các khoản này sẽ phải chịu thuế theo quy định của thuế nội địa</td>
				<td class="align-c" style="width:200px">4.13. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết  phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">4.14. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết được sử dụng trong năm tài chính báo cáo</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ct_1"/></td>
				<td class="align-c"><xsl:value-of select="ct_2"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_5)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2.2 Phân bổ thuế thuộc phạm vi áp dụng từ một đơn vị hợp thành sang một đơn vị hợp thành khác</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2800px">
			<tr>
				<td class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">3. Thuế thuộc phạm vi áp dụng của đơn vị hợp thành trước điều chỉnh</td>
				<td class="align-c" style="width:400px">4. Cơ sở của sự điều chỉnh</td>
				<td class="align-c" style="width:400px">5. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">6. Mã số thuế/Mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">7. Quốc gia cư trú của đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:300px">8. Giá trị khoản điều chỉnh tăng khoản thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:300px">9. Giá trị khoản điều chỉnh giảm khoản thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">10. Thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh sau khi điều chỉnh</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.2/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_TruocDieuChinh)"/></td>
				<td class="align-j"><xsl:value-of select="ten_CoSoDieuChinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViLienQuan"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViLienQuan"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_DieuChinhTang)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_DieuChinhGiam)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_SauDieuChinh)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2.3 Điều chỉnh thuế hoãn lại</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:4000px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="15" class="align-c">3. Các điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">4. Tổng các khoản điều chỉnh thuế hoãn lại</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">3.1. Chi phí thuế hoãn lại đối với các khoản không được đưa vào khi tính thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">3.2. Chi phí thuế hoãn lại đối với các khoản trích trước không được chấp nhận</td>
				<td class="align-c" style="width:200px">3.3. Chi phí thuế hoãn lại đối với các khoản trích trước chưa được tính</td>
				<td class="align-c" style="width:200px">3.4. Điều chỉnh cách thức xác định giá trị hoặc điều chỉnh việc ghi nhận kế toán liên quan đến tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">3.5. Chi phí thuế hoãn lại phát sinh từ việc tính toán lại do thay đổi thuế suất áp dụng tại một nước</td>
				<td class="align-c" style="width:200px">3.6. Chi phí thuế hoãn lại từ việc tạo lập và sử dụng các khoản giảm trừ nghĩa vụ thuế</td>
				<td class="align-c" style="width:200px">3.7. Khoản lỗ thay thế từ tài sản thuế hoãn lại được chuyển kỳ sau</td>
				<td class="align-c" style="width:200px">3.8. Các khoản trích trước chưa được tính đã được thanh toán trong năm tài chính</td>
				<td class="align-c" style="width:200px">3.9. Các khoản thuế hoãn lại phải trả được thu hồi được xác định trong năm tài chính trước đó và đã được nộp trong năm tài chính hiện hành</td>
				<td class="align-c" style="width:400px">3.10. Tài sản thuế hoãn lại do lỗ của năm tài chính hiện hành phát sinh lỗ, nhưng tài sản thuế hoãn lại do lỗ đó không được ghi trên báo cáo tài chính vì không đáp ứng tiêu chuẩn được kế toán ghi nhận là tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">3.11. Khoản điều chỉnh chi phí thuế hoãn lại do giảm thuế suất</td>
				<td class="align-c" style="width:200px">3.12. Khoản điều chỉnh chi phí thuế hoãn lại do tăng thuế suất</td>
				<td class="align-c" style="width:200px">3.13. Đơn vị hợp thành tham gia hoặc rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">3.14. Chi phí thuế hoãn lại của cơ sở thường trú có Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">3.15. Điều chỉnh do giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ct_1"/></td>
				<td class="align-c"><xsl:value-of select="ct_2"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_3.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_4)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3 Các lựa chọn của đơn vị hợp thành</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3.1 Lựa chọn hằng năm</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh lựa chọn</td>
				<td class="align-c">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">3. Lựa chọn xóa nợ</td>
				<td class="align-c">4. Lựa chọn không tính vào tổng các khoản điều chỉnh thuế hoãn lại khoản trích trước chưa được tính trong năm tài chính</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-c">
					<xsl:if test="chon_XoaNo= 'true'">&#x2612;</xsl:if>
					<xsl:if test="chon_XoaNo= 'false'">&#x2610;</xsl:if>	
					<xsl:if test="chon_XoaNo= '1'">&#x2612;</xsl:if>
					<xsl:if test="chon_XoaNo= '0'">&#x2610;</xsl:if>
				</td>
				<td class="align-c">
					<xsl:if test="chon_KhongTinh= 'true'">&#x2612;</xsl:if>
					<xsl:if test="chon_KhongTinh= 'false'">&#x2610;</xsl:if>	
					<xsl:if test="chon_KhongTinh= '1'">&#x2612;</xsl:if>
					<xsl:if test="chon_KhongTinh= '0'">&#x2610;</xsl:if>
				</td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3.2 Lựa chọn năm năm</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td rowspan="2" class="align-c">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh lựa chọn</td>
				<td rowspan="2" class="align-c">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="2" class="align-c">3. Lựa chọn đơn vị hợp thành không phải là đơn vị bị loại trừ</td>
				<td colspan="2" class="align-c">4. Lựa chọn tính tất cả các khoản cổ tức liên quan đến quyền sở hữu đầu tư gián tiếp để xác định thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu, không phụ thuộc vào việc các quyền sở hữu đầu tư gián tiếp là ngắn hạn</td>
				<td colspan="2" class="align-c">5. Lựa chọn điều chỉnh lãi hoặc lỗ chênh lệch tỷ giá liên quan đến công cụ tài chính dự phòng rủi ro đối với khoản đầu tư ròng được ghi nhận trong thu nhâp hoặc lỗ ròng báo cáo tài chính của đơn vị hợp thành theo cùng nguyên tắc điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu được loại trừ</td>
			</tr>
			<tr>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.2/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViLoaiTru/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViLoaiTru/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonCoTucLienQuan/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonCoTucLienQuan/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDieuChinhLoLai/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDieuChinhLoLai/nam_ChamDutLuaChon"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3.3 Lựa chọn điều chỉnh giá trị ghi sổ tài sản và khoản nợ phải trả theo giá trị hợp lý trong trường hợp chuyển nhượng tài sản và nợ phải trả</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td rowspan="2" class="align-c">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh lựa chọn</td>
				<td rowspan="2" class="align-c">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c">3. Năm lựa chọn</td>
				<td colspan="2" class="align-c">4. Lựa chọn điều chỉnh giá trị ghi sổ tài sản và khoản nợ phải trả theo giá trị hợp lý trong trường hợp chuyển nhượng tài sản và nợ phải trả</td>
			</tr>
			<tr>
				<td class="align-c">4.1. Tính vào năm tài chính có phát sinh sự kiện điều chỉnh </td>
				<td class="align-c">4.2. Phân bổ trong năm (05) năm bao gồm năm tài chính phát sinh sự kiện điều chỉnh và bốn (04) năm tài chính liền kề tiếp theo</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.3/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="nam_LuaChon"/></td>
				<td class="align-c">
					<xsl:if test="chon_PhatSinhDieuChinh= 'true'">&#x2612;</xsl:if>
					<xsl:if test="chon_PhatSinhDieuChinh= 'false'">&#x2610;</xsl:if>	
					<xsl:if test="chon_PhatSinhDieuChinh= '1'">&#x2612;</xsl:if>
					<xsl:if test="chon_PhatSinhDieuChinh= '0'">&#x2610;</xsl:if>
				</td>
				<td class="align-c">
					<xsl:if test="chon_PhanBo= 'true'">&#x2612;</xsl:if>
					<xsl:if test="chon_PhanBo= 'false'">&#x2610;</xsl:if>	
					<xsl:if test="chon_PhanBo= '1'">&#x2612;</xsl:if>
					<xsl:if test="chon_PhanBo= '0'">&#x2610;</xsl:if>
				</td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.4 Loại trừ thu nhập vận tải quốc tế</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.4.1 Loại trừ thu nhập vận tải quốc tế</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3400px">
			<tr>
				<td rowspan="2" class="align-c" style="width:400px">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">2. Mã số thuế đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="4" class="align-c">3. Thu nhập vận tải quốc tế</td>
				<td colspan="4" class="align-c">4. Thu nhập vận tải quốc tế phụ trợ đạt chuẩn</td>
				<td colspan="2" class="align-c">5. Ảnh hưởng tới giá trị tài sản hữu hình và tiền lương được giảm trừ</td>
				<td rowspan="2" class="align-c" style="width:200px">6. Thuế thuộc phạm vi áp dụng đối với thu nhập vận tải quốc tế hoặc thu nhập quốc tế phụ trợ đạt chuẩn được loại trừ</td>
			</tr>
			<tr>
				<td class="align-c" style="width:500px">3.1. Danh mục hoạt động</td>
				<td class="align-c" style="width:200px">3.2. Doanh thu</td>
				<td class="align-c" style="width:200px">3.3. Chi phí</td>
				<td class="align-c" style="width:200px">3.4. Thu nhập vận tải quốc tế</td>
				<td class="align-c" style="width:500px">4.1. Danh mục hoạt động</td>
				<td class="align-c" style="width:200px">4.2. Doanh thu</td>
				<td class="align-c" style="width:200px">4.3. Chi phí</td>
				<td class="align-c" style="width:200px">4.4. Thu nhập vận tải quốc tế phụ trợ đạt chuẩn</td>
				<td class="align-c" style="width:200px">5.1. Chi tiền lương được sử dụng để tạo ra thu nhập vận tải quốc tế hoặc thu nhập vận tải quốc tế phụ trợ đạt chuẩn được loại trừ</td>
				<td class="align-c" style="width:200px">5.2. Giá trị tài sản hữu hình hợp lệ được sử dụng để tạo ra thu nhập vận tải quốc tế hoặc thu nhập vận tải quốc tế phụ trợ đạt chuẩn được loại trừ</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.4.1/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_VanTaiHoatDong"/></td>
				<td class="align-c"><xsl:value-of select="doanhThu_VanTai"/></td>
				<td class="align-c"><xsl:value-of select="chiPhi_VanTai"/></td>
				<td class="align-c"><xsl:value-of select="thuNhap_VanTai"/></td>
				<td class="align-j"><xsl:value-of select="ten_VanTaiPhuTro"/></td>
				<td class="align-c"><xsl:value-of select="doanhThu_VanTaiPhuTro"/></td>
				<td class="align-c"><xsl:value-of select="chiPhi_VanTaiPhuTro"/></td>
				<td class="align-c"><xsl:value-of select="thuNhap_VanTaiPhuTro"/></td>
				<td class="align-c"><xsl:value-of select="chi_TienLuong"/></td>
				<td class="align-c"><xsl:value-of select="giaTri_TaiSan"/></td>
				<td class="align-c"><xsl:value-of select="thue_ApDung"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.4.2 Giới hạn quốc gia đối với loại trừ thu nhập vận tải quốc tế đạt chuẩn</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tổng thu nhập vận tải quốc tế [1]</td>
				<td class="align-c">2. Giới hạn 50% của tổng thu nhập vận tải quốc tế [2] = 50% x [1]</td>
				<td class="align-c">3. Tổng thu nhập vận tải quốc tế phụ trợ đạt chuẩn [3]</td>
				<td class="align-c">4. Phần vượt mức giới hạn [4] = [3] - [2]</td>
			</tr>
			<tr>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_4/Muc_4.4.2/tong_ThuNhap)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_4/Muc_4.4.2/tong_ThuNhapGioiHan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_4/Muc_4.4.2/tong_ThuNhapPhuTro)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_4/Muc_4.4.2/vuot_GioiHan)"/></td>
			</tr>	
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.5 Chuẩn mực kế toán khác chuẩn mực kế toán lập báo cáo tài chính hợp nhất của Công ty mẹ tối cao</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh có thu nhập hoặc lỗ ròng trên báo cáo tài chính được xác định bằng một chuẩn mực kế toán khác chuẩn mực kế toán lập báo cáo tài chính hợp nhất của Công ty mẹ tối cao</td>
				<td class="align-c">2. Mã số thuế  đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">3. Chuẩn mực kế toán tài chính được chấp nhận hoặc được phép áp dụng</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.5/ChiTietDanhSach">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="chuan_KeToan"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		</div>
		<xsl:call-template name="tkhaiFooter_01_TKTT_QDMTT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>
