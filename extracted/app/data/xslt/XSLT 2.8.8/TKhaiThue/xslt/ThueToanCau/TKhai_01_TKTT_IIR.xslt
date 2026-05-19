<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
    <!-- Key: nhóm theo Quốc gia + Nhóm 3.2.4.2 -->
	    <xsl:key name="ByGroup"
	             match="ChiTietCoCheThuHoi[ma_Loai='02']"
	             use="concat(ma_QuocGia, '|', ma_LoaiNhom)" />
	             
	 <!-- Key: nhóm theo Quốc gia + Nhóm 3.3.3.1-->
	    <xsl:key name="ByGroup1"
	             match="ChiTietThuHoi[ma_Loai='02']"
	             use="concat(ma_QuocGia, '|', ma_LoaiNhom)" />
	             
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:call-template name="tkhaiHeader_01_TKTT_IIR">
			<xsl:with-param name="mauTKhai"   select="'01/TKTT-IIR'"/>
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
				<td class="align-c">4. Quốc gia có Hiệp định giữa nhà chức trách có thẩm quyền về trao đổi thông tin theo quy định về thuế tối thiểu toàn cầu có hiệu lực với Việt Nam (nếu có)</td>
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
				<td class="align-c"><xsl:value-of select="$tkchinh/Muc_1/Muc_1.1/ten_QuocGia"/></td>
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
				<td class="align-c">1. Tên Công ty mẹ tối cao</td>
				<td class="align-c">2. Mã số thuế của Công ty mẹ tối cao</td>
				<td class="align-c">3. Loại hình của Công ty mẹ tối cao theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">4. Loại hình của Công ty mẹ tối cao nếu Công ty mẹ tối cao là đơn vị bị loại trừ</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.1/ChiTietCongTyMeTC">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_CongTyMeToiCao"/></td>
				<td class="align-j"><xsl:value-of select="mst_CongTyMeToiCao"/></td>
				<td class="align-c"><xsl:value-of select="ten_CTMeToiCao_toanCau"/></td>
				<td class="align-c"><xsl:value-of select="ten_CTMeToiCao_DVBiLoaiTru"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.2 Các đơn vị của Tập đoàn đa quốc gia tại Việt Nam</b></div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.2.1 Đơn vị hợp thành, liên doanh, công ty con của liên doanh</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/thayDoiBCTC_Co= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/thayDoiBCTC_Khong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
					
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/thayDoiBCTC_Co= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/thayDoiBCTC_Khong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
			</label>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>a. Thông tin về quy định về thuế tối thiểu toàn cầu tại quốc gia</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Quy định về thuế tối thiểu toàn cầu áp dụng tại quốc gia</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2.1/QuyDinhVeThue/ChiTietQuyDinhVeThue">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuyDinh"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>b. Thông tin về đơn vị hợp thành, liên doanh, công ty con của liên doanh và đơn vị nắm giữ quyền sở hữu trong đơn vị hợp thành, liên doanh, công ty con của liên doanh</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:1700px">
			<tr>
				<td rowspan="2" class="align-c">1. Quốc gia</td>
				<td colspan="4" class="align-c">2. Thông tin về đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="4" class="align-c">3. Thông tin về đơn vị nắm giữ quyền sở hữu trong đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
			</tr>	
           <tr>
				<td class="align-c" style="width:300px">2.1. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">2.2. Mã số thuế/Mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c" style="width:200px">2.3. Mã số thuế tại Việt Nam (nếu có)</td>
				<td class="align-c" style="width:400px">2.4. Loại hình theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">3.1. Tên đơn vị nắm giữ quyền sở hữu</td>
				<td class="align-c" style="width:200px">3.2. Loại hình đơn vị nắm giữ quyền sở hữu</td>
				<td class="align-c" style="width:200px">3.3. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c" style="width:200px">3.4. Tỷ lệ sở hữu </td>
			</tr>
			
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinDVHopThanh/ChiTietTTDVHopThanh">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViHopThanh"/></td>
				<td class="align-j"><xsl:value-of select="mst_MaDN"/></td>
				<td class="align-j"><xsl:value-of select="mst_TaiVN"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViSoHuu"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhDVSoHuu"/></td>
				<td class="align-j"><xsl:value-of select="mst_QuocGiaCutru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLeSoHuu)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>c. Thông tin về đơn vị hợp thành là một Công ty mẹ trung gian hoặc Công ty mẹ bị sở hữu một phần</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Tên Công ty mẹ </td>
				<td class="align-c">3. Mã số thuế/mã số doanh nghiệp của Công ty mẹ</td>
				<td class="align-c">4. Loại hình Công ty mẹ</td>
				<td class="align-c">5. Công ty mẹ trung gian/Công ty mẹ bị sở hữu một phần có áp dụng quy định IIR không ?</td>
			</tr>	
          
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinCtyMe/ChiTietTTCTyMe">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_CongTyMe"/></td>
				<td class="align-j"><xsl:value-of select="mst_MaDNCtyMe"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhCtyMe"/></td>
				<td class="align-j"><xsl:value-of select="ten_CtyMeTrungGian"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>d. Thông tin về việc áp dụng quy định lợi nhuận chịu thuế dưới mức tối thiểu UTPR</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinQuyDinhChiuThue/ChiTietQuyDinhChiuThue/giamTruTrachNhiem_Co= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Giảm trừ trách nhiệm về quy định UTPR đối với Tập đoàn đa quốc gia có trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế có được áp dụng không?: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinQuyDinhChiuThue/ChiTietQuyDinhChiuThue/giamTruTrachNhiem_Khong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Giảm trừ trách nhiệm về quy định UTPR đối với Tập đoàn đa quốc gia có trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế có được áp dụng không?: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
					
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinQuyDinhChiuThue/ChiTietQuyDinhChiuThue/giamTruTrachNhiem_Co= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Giảm trừ trách nhiệm về quy định UTPR đối với Tập đoàn đa quốc gia có trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế có được áp dụng không?: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinQuyDinhChiuThue/ChiTietQuyDinhChiuThue/giamTruTrachNhiem_Khong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Giảm trừ trách nhiệm về quy định UTPR đối với Tập đoàn đa quốc gia có trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế có được áp dụng không?: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">3. Mã số thuế/Mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c">4. Tổng tỷ lệ (%) quyền sở hữu tương ứng tỷ lệ phân bổ từ thuế bổ sung của các công ty mẹ được yêu cầu áp dụng quy định IIR đạt chuẩn trong đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">5. Tỷ lệ (%) quyền sở hữu tương ứng tỷ lệ phân bổ từ thuế bổ sung của Công ty mẹ tối cao trong đơn vị hợp thành, liên doanh, công ty con của liên doanh có lớn hơn tỷ lệ (%) quyền sở hữu tương ứng tỷ lệ phân bổ từ thuế bổ sung của các công ty mẹ được yêu cầu áp dụng quy định IIR đạt chuẩn trong đơn vị hợp thành, liên doanh, công ty con của liên doanh đó.</td>
			</tr>	
          
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2.1/ThongTinQuyDinhChiuThue/ChiTietQuyDinhChiuThue/ChiTietTTQuyDinhChiuThue">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViHopThanh"/></td>
				<td class="align-c"><xsl:value-of select="mst_MaDN"/></td>
				<td class="align-c"><xsl:value-of select="tong_TyLe"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiTyLe"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.2.2. Đơn vị bị loại trừ</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.2/thayDoiBCTC_Co= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.2/thayDoiBCTC_Khong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
					
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.2/thayDoiBCTC_Co= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2612; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Không</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.2.2/thayDoiBCTC_Khong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi so với năm tài chính báo cáo trước: &#x2610; Có &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Không</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Tên đơn vị bị loại trừ</td>
				<td class="align-c">3. Mã số thuế/mã số doanh nghiệp đơn vị bị loại trừ</td>
				<td class="align-c">4. Loại hình đơn vị bị loại trừ</td>
			</tr>	
          
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.2.2/ChiTietDVBiLoaiTru">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViBiLoaiTru"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViBiLoaiTru"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhDonViBiLoaiTru"/></td>
				
			</tr>														 
			</xsl:for-each>
		</table>
		</div>

		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.3.3 Thay đổi về cấu trúc Tập đoàn phát sinh trong năm tài chính báo cáo</b></div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_AnhHuong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_AnhHuong= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>	
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_AnhHuong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_AnhHuong= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; a. Thay đổi về cấu trúc Tập đoàn trong năm tài chính ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_KhongAnhHuong= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_KhongAnhHuong= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>	
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_KhongAnhHuong= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
				<xsl:if test="$tkchinh/Muc_1/Muc_1.3.3/thayDoi_KhongAnhHuong= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; b. Thay đổi về cấu trúc Tập đoàn trong năm tài chính không ảnh hưởng tới cách tính thuế suất thực tế, thuế bổ sung hoặc việc tính toán, phân bổ thuế bổ sung.</xsl:if>
			</label>
		</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2100px">
			<tr>
				<td class="align-c" style="width:300px">1. Tên của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">2. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c" style="width:200px">3. Ngày có hiệu lực của sự kiện thay đổi</td>
				<td class="align-c" style="width:400px">4. Loại hình theo quy định về thuế tối thiểu toàn cầu trước thay đổi</td>
				<td class="align-c" style="width:400px">5. Loại hình theo quy định về thuế tối thiểu toàn cầu sau thay đổi</td>
				<td class="align-c" style="width:200px">6. Tên đơn vị nắm giữ quyền sở hữu trong đơn vị hợp thành, liên doanh, công ty con của liên doanh trước hoặc sau thay đổi</td>
				<td class="align-c" style="width:200px">7. Tỷ lệ sở hữu trong đơn vị hợp thành, liên doanh, công ty con của liên doanh trước thay đổi</td>
				<td class="align-c" style="width:200px">8. Tỷ lệ sở hữu trong đơn vị hợp thành, liên doanh, công ty con của liên doanh sau thay đổi</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.3.3/ChiTietThayDoi">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>
				<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_HieuLuc,'dd/mm/yyyy')"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhThueTruocThayDoi"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhThueSauThayDoi"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViNamQuyenSoHuu"/></td>
				<td class="align-c"><xsl:value-of select="tyLe_TruocThayDoi"/></td>
				<td class="align-c"><xsl:value-of select="tyLe_SauThayDoi"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1.4 Tóm tắt tổng quát về việc áp dụng quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2000px">
			<tr>
				<td class="align-c" style="width:100px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Quốc gia có quyền đánh thuế</td>
				<td class="align-c" style="width:300px">5. Quy định giảm trừ trách nhiệm được áp dụng</td>
				<td class="align-c" style="width:200px">6. Khoảng giá trị thuế suất thực tế </td>
				<td class="align-c" style="width:200px">7. Việc áp dụng giảm trừ giá trị tài sản hữu hình và tiền lương làm phát sinh thuế bổ sung</td>
				<td class="align-c" style="width:200px">8. Khoảng giá trị thuế bổ sung theo quy định QDMTT</td>
				<td class="align-c" style="width:200px">9. Khoảng giá trị thuế bổ sung theo quy định IIR</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_1/Muc_1.4/ChiTietTomTat">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_Nhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomNeuCo"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaDanhThue"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuyDinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_KhoangGiaTriThueSuat"/></td>
				<td class="align-j"><xsl:value-of select="ten_ViecApDung"/></td>
				<td class="align-j"><xsl:value-of select="ten_KhoangGiaTriThueQDMTT"/></td>
				<td class="align-j"><xsl:value-of select="ten_KhoangGiaTriThueIIR"/></td>
				
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2 Quy định giảm trừ trách nhiệm áp dụng tại Việt Nam</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1 Quy định giảm trừ trách nhiệm tại Việt Nam</b></div>
		<div style="width:100%; padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Quy định giảm trừ trách nhiệm áp dụng</td>
				
			</tr>

           <xsl:for-each select="$tkchinh/Muc_2/Muc_2.1/ChiTietXacDinhQD">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuyDinh"/></td>
			</tr>														 
			</xsl:for-each>			
		</table>
		</div>
		
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.1 Quy định giảm trừ trách nhiệm - Phương pháp tính toán đơn giản đối với đơn vị hợp thành không trọng yếu</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td rowspan="2" class="align-c">1. Quốc gia</td>
				<td colspan="4" class="align-c">2. Tổng doanh thu của tất cả các đơn vị hợp thành không trọng yếu tại quốc gia</td>
				<td rowspan="2" class="align-c">3. Tổng số thuế được đơn giản hóa của tất cả các đơn vị hợp thành không trọng yếu tại quốc gia</td>
			</tr>	
           <tr>
				<td class="align-c" style="width:200px">a. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">d. Bình quân 3 năm tài chính (nếu áp dụng)</td>
			</tr>
			
		<xsl:for-each select="$tkchinh/Muc_2/Muc_2.1.1/ChiTietXacDinhGiamTru">												
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDT_NamTaiChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDT_NamTaiChinhLienKe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDT_NamTaiChinhThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDT_BinhQuan3Nam)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThue)"/></td>
			</tr>														 
			</xsl:for-each>	
		</table>
		</div>
		
	
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.2 Quy định giảm trừ trách nhiệm trong thời gian chuyển tiếp</b></div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.2.1 Quy định giảm trừ trách nhiệm trên cơ sở báo cáo lợi nhuận liên quốc gia trong thời gian chuyển tiếp</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Nhóm đơn vị áp dụng riêng quy định về giảm trừ trách nhiệm trên cơ sở báo cáo lợi nhuận liên quốc gia trong thời gian chuyển tiếp </td>
				<td class="align-c">3. Tên nhóm đơn vị áp dụng riêng quy định về giảm trừ trách nhiệm trên cơ sở báo cáo lợi nhuận liên quốc gia trong thời gian chuyển tiếp </td>
				<td class="align-c">4. Tổng doanh thu của Tập đoàn đa quốc gia tại quốc gia</td>
				<td class="align-c">5. Lợi nhuận trước thuế thu nhập doanh nghiệp hoặc lỗ của Tập đoàn đa quốc gia tại quốc gia</td>
				<td class="align-c">6. Tổng các khoản thuế thuộc phạm vi áp dụng được đơn giản hóa</td>
				<td class="align-c">7. Thuế suất thực tế được đơn giản hóa (%)</td>
			</tr>
				<xsl:for-each select="$tkchinh/Muc_2/Muc_2.1.2.1/ChiTietQDGiamTru">	
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongDT_TapDoan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(loiNhuan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCacKhoanThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueSuat)"/></td>
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1.2.2 Giảm trừ trách nhiệm đối với Quy định lợi nhuận chịu thuế dưới mức tối thiếu (UTPR)</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Thuế suất danh nghĩa</td>
			</tr>
				<xsl:for-each select="$tkchinh/Muc_2/Muc_2.1.2.2/ChiTietGiamTruTN">	
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="thueSuat"/></td>
				
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
		
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.2 Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn được xác định bằng 0 </b></div>
		
		
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn được xác định bằng 0 </td>
			</tr>
				<xsl:for-each select="$tkchinh/Muc_2/Muc_2.2/Bang1/ChiTietBang1">	
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_Loai"/></td>
				
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
		
		<div style="padding-top: 10pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3400px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td colspan="4" class="align-c">2. Doanh thu tại báo cáo tài chính</td>
				<td colspan="4" class="align-c">3. Doanh thu theo quy định về thuế tối thiểu toàn cầu</td>
				<td colspan="4" class="align-c">4. Thu nhập hoặc lỗ ròng tại báo cáo tài chính</td>
				<td colspan="4" class="align-c">5. Thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>	
           <tr>
				<td class="align-c" style="width:200px">a. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">d. Bình quân 3 năm tài chính</td>
				<td class="align-c" style="width:200px">a. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">d. Bình quân 3 năm tài chính</td>
				<td class="align-c" style="width:200px">a. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">d. Bình quân 3 năm tài chính</td>
				<td class="align-c" style="width:200px">a. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">b. Năm tài chính liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">c. Năm tài chính thứ 2 liền kề trước đó (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">d. Bình quân 3 năm tài chính</td>
			</tr>
			
		<xsl:for-each select="$tkchinh/Muc_2/Muc_2.2/Bang2/ChiTietBang2">												
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu_NamTaiChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu_NamTaiChinhLienKe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu_NamTaiChinhThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu_BinhQuan3Nam)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuQD_NamTaiChinh)"/></td>
				
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuQD_NamTaiChinhLienKe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuQD_NamTaiChinhThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuQD_BinhQuan3Nam)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapBCTC_NamTaiChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapBCTC_NamTaiChinhLienKe)"/></td>
				
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapBCTC_NamTaiChinhThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapBCTC_BinhQuan3Nam)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapQD_NamTaiChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapQD_NamTaiChinhLienKe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapQD_NamTaiChinhThu2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapQD_BinhQuan3Nam)"/></td>
				
			</tr>														 
			</xsl:for-each>	
		</table>
		</div>
		
	
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.3 Giảm trừ trách nhiệm trong giai đoạn đầu thực hiện hoạt động đầu tư quốc tế</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Ngày đầu tiên của năm tài chính đầu tiên mà Tập đoàn đa quốc gia bắt đầu thuộc phạm vi 
		điều chỉnh của quy định về thuế tối thiểu toàn cầu <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Muc_2/Muc_2.3/ngay_DauTien,'dd/mm/yyyy')"/></div>
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
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3 Tính toán theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1 Xác định lợi nhuận tính thuế bổ sung</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1.1 Xác định thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:5000px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Loại nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:400px">4. Tổng thu nhập hoặc lỗ tại báo cáo tài chính sau khi thực hiện phân bổ thu nhập hoặc lỗ giữa một công ty chính và một cơ sở thường trú, phân bổ thu nhập hoặc lỗ của đơn vị trung chuyển</td>
				<td colspan="26" class="align-c">5. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">6. Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">5.1. Chi phí thuế ròng</td>
				<td class="align-c" style="width:200px">5.2. Cổ tức được loại trừ</td>
				<td class="align-c" style="width:200px">5.3. Lãi hoặc lỗ trên vốn chủ sở hữu được loại trừ </td>
				<td class="align-c" style="width:200px">5.4. Lãi hoặc lỗ do đánh giá lại</td>
				<td class="align-c" style="width:200px">5.5. Lãi hoặc lỗ do chuyển nhượng tài sản và nợ phải trả được loại trừ</td>
				<td class="align-c" style="width:200px">5.6.  Lãi hoặc lỗ về chênh lệch tỷ giá do sử dụng đồng tiền kế toán và đồng tiền tính thuế khác nhau</td>
				<td class="align-c" style="width:200px">5.7. Các khoản chi phí không được trừ theo quy định</td>
				<td class="align-c" style="width:200px">5.8. Sai sót của các kỳ trước</td>
				<td class="align-c" style="width:200px">5.9. Những thay đổi về nguyên tắc kế toán</td>
				<td class="align-c" style="width:200px">5.10. Chi phí hưu trí trích trước của Chương trình hưu trí do các quỹ hưu trí cung cấp</td>
				<td class="align-c" style="width:200px">5.11. Xóa nợ</td>
				<td class="align-c" style="width:200px">5.12. Khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu</td>
				<td class="align-c" style="width:200px">5.13. Điều chỉnh theo nguyên tắc giá thị trường</td>
				<td class="align-c" style="width:200px">5.14. Khoản giảm trừ thuế thu nhập có thể được hoàn trả đạt chuẩn và khoản giảm trừ thuế thu nhập có thể chuyển nhượng theo giá thị trường</td>
				<td class="align-c" style="width:200px">5.15. Điều chỉnh do lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm</td>
				<td class="align-c" style="width:200px">5.16. Phân bổ tổng thu nhập từ chuyển nhượng tài sản hữu hình là bất động sản</td>
				<td class="align-c" style="width:200px">5.17. Điều chỉnh đối với thỏa thuận tài chính trong nội bộ tập đoàn</td>
				<td class="align-c" style="width:300px">5.18. Lựa chọn áp dụng nghiệp vụ kế toán hợp nhất để loại bỏ thu nhập, chi phí, lãi và lỗ từ các giao dịch giữa các đơn vị hợp thành cư trú tại cùng một nước trong cùng báo cáo thuế hợp nhất</td>
				<td class="align-c" style="width:200px">5.19. Điều chỉnh khoản thu nhập hoặc lỗ tương ứng phần thuế nộp thay chủ hợp đồng bảo hiểm liên quan đến thu nhập của chủ hợp đồng bảo hiểm</td>
				<td class="align-c" style="width:200px">5.20.  Điều chỉnh thu nhập hoặc lỗ liên quan đến phần vốn cấp một bổ sung, phần vốn cấp một bị hạn chế</td>
				<td class="align-c" style="width:200px">5.21. Điều chỉnh đối với các đơn vị hợp thành tham gia và rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">5.22. Điều chỉnh thu nhập theo quy định về thuế tối thiểu toàn cầu của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">5.23. Điều chỉnh thu nhập theo quy định về thuế tối thiểu toàn cầu của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">5.24. Điều chỉnh khi lựa chọn phương pháp áp dụng Quy định thuế đối với việc phân chia thu nhập</td>
				<td class="align-c" style="width:200px">5.25. Thu nhập từ vận tải quốc tế được loại trừ</td>
				<td class="align-c" style="width:200px">5.26. Điều chỉnh do giao dịch chuyển giao tài sản  giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.1/ChiTietXacDinhTN_Lo">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
					<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.20)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.21)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.22)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.23)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.24)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.25)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.26)"/></td>
		        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct6)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.1.2 Giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.1 Tổng giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:1800px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td colspan="2" class="align-c">4. Giá trị tiền lương được giảm trừ</td>
				<td colspan="2" class="align-c">5. Giá trị tài sản hữu hình được giảm trừ</td>
				<td rowspan="2" class="align-c" style="width:200px">6. Tổng giá trị tài sản hữu hình và tiền lương được giảm trừ theo quy định về thuế tối thiểu toàn cầu </td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">4.1. Chi tiền lương hợp lệ </td>
				<td class="align-c" style="width:200px">4.2. Tỷ lệ giảm trừ</td>
				<td class="align-c" style="width:200px">5.1. Giá trị tài sản hữu hình hợp lệ</td>
				<td class="align-c" style="width:200px">5.2. Tỷ lệ giảm trừ</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.2.1/ChiTietGiaTriTaiSan">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.1)"/></td>
				<td class="align-c"><xsl:value-of select="ct4.2_ten"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5.1)"/></td>
				<td class="align-c"><xsl:value-of select="ct5.2_ten"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
			</tr>	
			  </xsl:for-each>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.2 Phân bổ chi tiền lương và giá trị tài sản hữu hình hợp lệ giữa công ty chính và cơ sở thường trú </div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2200px">
			<tr>
				<td class="align-c" style="width:200px">1. Quốc gia công ty chính cư trú</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Chi tiền lương hợp lệ của công ty chính</td>
				<td class="align-c" style="width:200px">5. Giá trị tài sản hữu hình hợp lệ của công ty chính</td>
				<td class="align-c" style="width:200px">6. Quốc gia cơ sở thường trú cư trú</td>
				<td class="align-c" style="width:200px">7. Chi tiền lương hợp lệ được phân bổ cho cơ sở thường trú</td>
				<td class="align-c" style="width:200px">8. Giá trị tài sản hữu hình hợp lệ được phân bổ cho cơ sở thường trú</td>
				<td class="align-c" style="width:200px">9. Chi tiền lương hợp lệ sau khi phân bổ của công ty chính</td>
				<td class="align-c" style="width:200px">10. Giá trị tài sản hữu hình hợp lệ sau khi phân bổ của công ty chính</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.2.2/ChiTietPhanBoCSTT">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_CtyChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_CTyChinh)"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGiaThuongTru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_DuocPhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_SauPhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.1.2.3 Phân bổ chi tiền lương và giá trị tài sản hữu hình của đơn vị trung chuyển</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2200px">
			<tr>
				<td class="align-c" style="width:200px">1. Quốc gia đơn vị trung chuyển cư trú</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Chi tiền lương hợp lệ của đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">5. Giá trị tài sản hữu hình hợp lệ của đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">6. Quốc gia chủ sở hữu đơn vị trung chuyển cư trú</td>
				<td class="align-c" style="width:200px">7. Chi tiền lương hợp lệ được phân bổ cho chủ sở hữu của đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">8. Giá trị tài sản hữu hình hợp lệ được phân bổ cho chủ sở hữu đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">9. Chi tiền lương hợp lệ sau phân bổ của đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">10. Giá trị tài sản hữu hình hợp lệ sau phân bổ của đơn vị trung chuyển</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.1.2.3/ChiTietPhanBoDVTC">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_TrungChuyen)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan)"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGiaCuTru"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_DuocPhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiTienLuong_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriTaiSan_SauPhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2 Xác định thuế thuộc phạm vi áp dụng đã được điều chỉnh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.1 Tổng số thuế thuộc phạm vi áp dụng đã được điều chỉnh</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:5800px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3.Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:400px">4. Tổng khoản thuế thuộc phạm vi áp dụng sau khi thực hiện phân bổ từ một đơn vị hợp thành này sang đơn vị hợp thành khác </td>
				<td colspan="20" class="align-c">5. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">6. Thuế thuộc phạm vi áp dụng đã được điều chỉnh</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">5.1. Khoản thuế thuộc phạm vi áp dụng được hạch toán là chi phí khi tính lợi nhuận trước thuế trong sổ kế toán</td>
				<td class="align-c" style="width:200px">5.2.  Khoản tài sản thuế hoãn lại do lỗ theo Quy định về thuế tối thiểu toàn cầu được sử dụng theo quy định </td>
				<td class="align-c" style="width:250px">5.3.  Khoản thuế thuộc phạm vi áp dụng được nộp trong năm tài chính và liên quan đến nghiệp vụ thuế không chắc chắn (chờ điều chỉnh) mà khoản đó nằm trong phần điều chỉnh trừ khỏi thuế thuộc phạm vi áp dụng trong một năm tài chính trước đó theo quy định</td>
				<td class="align-c" style="width:250px">5.4. Khoản khấu trừ hoặc hoàn thuế liên quan đến khoản giảm trừ thuế thu nhập có thể được hoàn trả đạt chuẩn và khoản giảm trừ thuế thu nhập có thể chuyển nhượng trên thị trường mà được ghi nhận là khoản giảm trừ chi phí thuế hiện hành</td>
				<td class="align-c" style="width:200px">5.5. Lợi ích thuế đạt chuẩn thông qua một đơn vị không chịu thuế</td>
				<td class="align-c" style="width:200px">5.6. Khoản chi phí thuế hiện hành liên quan đến thu nhập không được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu theo quy định</td>
				<td class="align-c" style="width:250px">5.7. Khoản giảm trừ hoặc khoản hoàn trả thuế mà theo quy định các khoản này được coi là một khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn và chưa được ghi nhận là một khoản giảm chi phí thuế hiện hành</td>
				<td class="align-c" style="width:200px">5.8.  Khoản thuế thuộc phạm vi áp dụng được hoàn trả hoặc giảm trừ của một đơn vị hợp thành mà đã không được ghi nhận là khoản điều chỉnh chi phí thuế hiện hành trong sổ kế toán</td>
				<td class="align-c" style="width:200px">5.9. Khoản chi phí thuế hiện hành liên quan đến một nghiệp vụ thuế không chắc chắn (chờ điều chỉnh)</td>
				<td class="align-c" style="width:200px">5.10. Khoản chi phí thuế hiện hành dự kiến không được thanh toán trong vòng ba năm kể từ ngày cuối cùng của năm tài chính</td>
				<td class="align-c" style="width:200px">5.11. Những điều chỉnh phát sinh sau khi kê khai và thay đổi thuế suất</td>
				<td class="align-c" style="width:200px">5.12. Thuế thuộc phạm vi áp dụng liên quan đến việc phân bổ tổng thu nhập từ chuyển nhượng tài sản hữu hình là bất động sản</td>
				<td class="align-c" style="width:200px">5.13. Điều chỉnh thuế thuộc phạm vi áp dụng của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">5.14. Điều chỉnh thuế thuộc phạm vi áp dụng của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">5.15. Khoản thuế đối với khoản được xác định là lợi nhuận đã phân chia</td>
				<td class="align-c" style="width:200px">5.16. Điều chỉnh khi lựa chọn phương pháp áp dụng Quy định thuế đối với việc phân chia thu nhập</td>
				<td class="align-c" style="width:200px">5.17. Tổng các khoản điều chỉnh thuế hoãn lại</td>
				<td class="align-c" style="width:450px">5.18. Tăng hoặc giảm đối với các khoản thuế thuộc phạm vi áp dụng chưa được ghi nhận vào chi phí thuế hiện hành hoặc chi phí thuế hoãn lại, nhưng được ghi nhận trong phần vốn chủ sở hữu hoặc phần thu nhập toàn diện khác liên quan đến các khoản được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu mà các khoản này sẽ phải chịu thuế theo quy định của thuế nội địa. </td>
				<td class="align-c" style="width:200px">5.19. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">5.20. Chi phí thuế nhỏ hơn 0 chưa được bù trừ hết được sử dụng trong năm tài chính báo cáo</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.1/ChiTietTongSoThueDC">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
					<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct5.20)"/></td>
		        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ct6)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.2 Chi phí thuế nhỏ hơn 0 chưa bù trừ hết</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia </td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Số dư từ năm tài chính báo cáo trước chuyển sang</td>
				<td class="align-c">5. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c">6. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết được sử dụng trong năm tài chính báo cáo</td>
				<td class="align-c">7. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết còn lại cho các năm tài chính báo cáo kế tiếp</td>
			</tr>
				<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.2/ChiTietChiPhiThue">	
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soDu_ChuyenSang)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhi_PhatSinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhi_SuDung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhi_ConLai)"/></td>
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.3 Quy định tổng hợp thuế đối với công ty nước ngoài bị kiểm soát (CFC) trong thời gian chuyển tiếp</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia của công ty nước ngoài bị kiểm soát (CFC)</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Số thuế được phân bổ cho nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia theo quy định tổng hợp thuế đối với công ty nước ngoài bị kiểm soát (CFC)</td>
			</tr>
				<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.3/ChiTietQuyDinhTongHop">	
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThue_PhanBo)"/></td>
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
	
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.2.4 Tính toán theo quốc gia liên quan đến kế toán thuế hoãn lại</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.4.1 Các khoản điều chỉnh thuế hoãn lại</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a. Tóm tắt tổng quát</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2200px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia </td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Chi phí thuế hoãn lại [A]</td>
				<td class="align-c" style="width:200px">5. Chi phí thuế hoãn lại tính lại theo mức thuế suất tối thiểu [B] = [C]+[D]</td>
				<td class="align-c" style="width:400px">6. Tài sản thuế hoãn lại đã được ghi nhận ở mức thuế suất thấp hơn thuế suất tối thiểu tính lại ở mức thuế suất tối thiểu trong năm tài chính mà khoản lỗ liên quan đến tài sản thuế hoãn lại đó trở thành một khoản lỗ theo Quy định về thuế tối thiểu toàn cầu [C]</td>
				<td class="align-c" style="width:200px">7. Chi phí thuế hoãn lại được ghi nhận ở mức thuế suất cao hơn thuế suất tối thiểu và được tính lại ở mức thuế suất tối thiểu [D]</td>
				<td class="align-c" style="width:200px">8. Tổng các khoản điều chỉnh [E]</td>
				<td class="align-c" style="width:200px">9. Tổng thuế hoãn lại sau khi tính lại theo mức thuế suất tối thiểu đã điều chỉnh [F] = [B] +/- [E]</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.1/TomTatTongQuat/ChiTietTomTatTongQuat">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhiThueA)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhiThueB)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSanThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhiThueD)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_DieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongThue)"/></td>
			</tr>	
			</xsl:for-each>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b. Phân tích các điều chỉnh</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:4200px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td colspan="16" class="align-c">4. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Tổng các khoản điều chỉnh</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">4.1. Chi phí thuế hoãn lại đối với các khoản không được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">4.2. Chi phí thuế hoãn lại đối với các khoản trích trước không được chấp nhận </td>
				<td class="align-c" style="width:200px">4.3. Chi phí thuế hoãn lại đối với các khoản trích trước chưa được tính</td>
				<td class="align-c" style="width:200px">4.4. Kết quả từ các điều chỉnh cách thức xác định giá trị hoặc điều chỉnh việc ghi nhận kế toán liên quan đến tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">4.5. Chi phí thuế hoãn lại phát sinh từ việc tính toán lại do thay đổi thuế suất áp dụng tại một nước</td>
				<td class="align-c" style="width:200px">4.6. Chi phí thuế hoãn lại từ việc tạo lập và sử dụng các khoản giảm trừ nghĩa vụ thuế</td>
				<td class="align-c" style="width:200px">4.7. Khoản lỗ thay thế từ tài sản thuế hoãn lại được chuyển kỳ sau</td>
				<td class="align-c" style="width:200px">4.8. Các khoản trích trước chưa được tính đã được thanh toán trong năm tài chính</td>
				<td class="align-c" style="width:200px">4.9. Các khoản thuế hoãn lại phải trả được thu hồi được xác định trong năm tài chính trước đó và đã được nộp trong năm tài chính hiện hành</td>
				<td class="align-c" style="width:400px">4.10. Tài sản thuế hoãn lại do lỗ của năm tài chính hiện hành phát sinh lỗ, nhưng tài sản thuế hoãn lại do lỗ đó không được ghi trên báo cáo tài chính vì không đáp ứng tiêu chuẩn được kế toán ghi nhận là tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">4.11. Khoản điều chỉnh chi phí thuế hoãn lại do giảm thuế suất</td>
				<td class="align-c" style="width:200px">4.12. Khoản điều chỉnh chi phí thuế hoãn lại do tăng thuế suất</td>
				<td class="align-c" style="width:200px">4.13. Điều chỉnh đối với đơn vị hợp thành gia nhập hoặc rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">4.14. Điều chỉnh chi phí thuế hoãn lại của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">4.15. Điều chỉnh chi phí thuế hoãn lại của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">4.16. Điều chỉnh do giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.1/PhanTichDieuChinh/ChiTietPhanTichDieuChinh">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
					<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4.16)"/></td>
		        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;c. Chuyển lỗ về các năm tài chính trước</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:5200px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td colspan="11" class="align-c">4. Tài sản thuế hoãn lại từ khoản chuyển lỗ về năm tài chính trước</td>
				<td colspan="11" class="align-c">5. Khoản hoàn trả thuế thuộc phạm vi áp dụng liên quan đến khoản chuyển lỗ về trước</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">a. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)"/></td>
				<td class="align-c" style="width:200px">b. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-1"/></td>
				<td class="align-c" style="width:200px">c. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-2"/></td>
				<td class="align-c" style="width:200px">d. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-3"/></td>
				<td class="align-c" style="width:200px">e. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-4"/></td>
				<td class="align-c" style="width:200px">f. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-5"/></td>
				<td class="align-c" style="width:200px">g. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-6"/></td>
				<td class="align-c" style="width:200px">h. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-7"/></td>
				<td class="align-c" style="width:200px">i. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-8"/></td>
				<td class="align-c" style="width:200px">k. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-9"/></td>
				<td class="align-c" style="width:200px">c. Tổng giá trị</td>
				<td class="align-c" style="width:200px">a. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)"/></td>
				<td class="align-c" style="width:200px">b. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-1"/></td>
				<td class="align-c" style="width:200px">c. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-2"/></td>
				<td class="align-c" style="width:200px">d. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-3"/></td>
				<td class="align-c" style="width:200px">e. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-4"/></td>
				<td class="align-c" style="width:200px">f. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-5"/></td>
				<td class="align-c" style="width:200px">g. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-6"/></td>
				<td class="align-c" style="width:200px">h. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-7"/></td>
				<td class="align-c" style="width:200px">i. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-8"/></td>
				<td class="align-c" style="width:200px">k. Giá trị được phân bổ cho năm tài chính <xsl:value-of select="number($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai)-9"/></td>
				<td class="align-c" style="width:200px">c. Tổng giá trị</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.1/ChuyenLoNamTaiChinh/ChiTietChuyenLoNamTaiChinh">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Nam10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(taiSan_Tong)"/></td>
				
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Nam10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanHoanTra_Tong)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		</div>
		
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.4.2 Cơ chế thu hồi</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2500px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				  <td rowspan="2" class="align-c" style="width:300px">4. Năm tài chính</td>
				   <td rowspan="2" class="align-c" style="width:200px">5. Khoản thuế hoãn lại phải trả được ghi nhận theo Cơ chế xử lý các khoản chênh lệch tạm thời</td>
				<td colspan="6" class="align-c">6. Khoản thuế hoãn lại phải trả được thu hồi</td>
				 <td rowspan="2" class="align-c" style="width:200px">7. Khoản thuế hoãn lại phải trả không được thu hồi</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">6.1. Năm tài chính liền trước thứ 4</td>
				<td class="align-c" style="width:200px">6.2. Năm tài chính liền trước thứ 3</td>
				<td class="align-c" style="width:200px">6.3. Năm tài chính liền trước thứ 2</td>
				<td class="align-c" style="width:200px">6.4. Năm tài chính liền trước thứ nhất</td>
				<td class="align-c" style="width:200px">6.5. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">6.6. Tổng cộng</td>
			</tr>
           <!-- Lặp theo Quốc gia cha -->
            <xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.2/ChiTietCoCheThuHoi[ma_Loai='01']">
                <xsl:variable name="qg" select="ma_QuocGia" />
                <!-- Hàng cha (Quốc gia) -->
                <tr style="background:#eee;font-weight:bold;">
                    <td><xsl:value-of select="ten_QuocGia" /></td>
                    <!-- colspan còn lại -->
                    <td colspan="13"></td>
                </tr>                     
                <!-- Duyệt các nhóm trong quốc gia -->
                <xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.2/ChiTietCoCheThuHoi[ma_Loai='02' and ma_QuocGia=$qg]
                    [generate-id()= generate-id(key('ByGroup',concat(ma_QuocGia,'|',ma_LoaiNhom))[1])]">
                    <xsl:variable name="groupKey" select="concat(ma_QuocGia,'|',ma_LoaiNhom)" />
                    <!-- Xác định nhóm đầu tiên trong quốc gia -->
					<xsl:variable name="isFirstGroup"
					    select="generate-id(.) = generate-id(
					        $tkchinh/Muc_3/Muc_3.2.4.2/ChiTietCoCheThuHoi
					        [ma_Loai='02' and ma_QuocGia=$qg]
					        [generate-id()= generate-id(key('ByGroup',concat(ma_QuocGia,'|',ma_LoaiNhom))[1])]
					        [1]
					    )" />
					
					<!-- Tổng số dòng con thuộc quốc gia này -->
					<xsl:variable name="allChildRows"
					    select="count($tkchinh/Muc_3/Muc_3.2.4.2/ChiTietCoCheThuHoi[ma_Loai='02' and ma_QuocGia=$qg])" />
					                                     
                    <!-- row đầu tiên của nhóm -->
                    <xsl:for-each select="key('ByGroup', $groupKey)">
                        <xsl:choose>
                            <!-- Dòng đầu tiên trong nhóm -->
                            <xsl:when test="position() = 1">
                                <tr>     
                                <!-- Chỉ in trong nhóm đầu tiên -->
									<xsl:if test="$isFirstGroup">
									    <td rowspan="{$allChildRows}">
									     <!-- <xsl:value-of select="ten_QuocGia"/> -->
									    </td>
									</xsl:if>                             							       
                                    <!-- rowspan (cho nhóm) -->
                                    <td rowspan="{count(key('ByGroup', $groupKey))}">
                                        <xsl:value-of select="ten_LoaiNhom"/>
                                    </td>
                                    <td rowspan="{count(key('ByGroup', $groupKey))}">
                                        <xsl:value-of select="ten_NhomDonVi"/>
                                    </td>
                                    <!-- phần còn lại -->
                                    <td><xsl:value-of select="nam_TaiChinh"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_GhiNhan)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu4)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu3)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu2)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu1)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TC)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_Cong)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_KhongThuHoi)"/></td>
                                </tr>
                            </xsl:when>

                            <!-- Các dòng còn lại của nhóm -->
                            <xsl:otherwise>
                                <tr>                                
                                    <!-- Không in loại nhóm → đã rowspan -->
                                    <td><xsl:value-of select="nam_TaiChinh"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_GhiNhan)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu4)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu3)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu2)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu1)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TC)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_Cong)"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_KhongThuHoi)"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>	

		</table>
		
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.2.4.3 Quy tắc chuyển tiếp</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Năm chuyển tiếp: <xsl:value-of select="$tkchinh/Muc_3/Muc_3.2.4.3/nam_ChuyenTiep"/></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a. Xử lý các khoản thuế hoãn lại phải trả và tài sản thuế hoãn lại trong thời gian chuyển tiếp </div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a.1. Xử lý khoản thuế hoãn lại phải trả</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td rowspan="2" class="align-c">1. Quốc gia</td>
				<td rowspan="2" class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td colspan="2" class="align-c">4. Khoản thuế hoãn lại phải trả</td>
			</tr>
			<tr>
				<td class="align-c">4.1. Khoản thuế hoãn lại phải trả tại đầu năm chuyển tiếp</td>
				<td class="align-c">4.2. Khoản thuế hoãn lại phải trả được tính lại ở mức thuế suất tối thiểu (nếu áp dụng)</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.3/Muc_a.1/ChiTietKTHoanLai">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_ChuyenTiep)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_TinhLai)"/></td>
			</tr>
			 </xsl:for-each>	
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a.2. Xử lý khoản tài sản thuế hoãn lại</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2600px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td colspan="4" class="align-c">4. Khoản thuế hoãn lại phải trả</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">4.1. Khoản thuế hoãn lại phải trả tại đầu năm chuyển tiếp</td>
				<td class="align-c" style="width:200px">4.2. Khoản thuế hoãn lại phải trả được tính lại ở mức thuế suất tối thiểu (nếu áp dụng)</td>
				<td class="align-c" style="width:200px">4.3. Tài sản thuế hoãn lại phát sinh từ những khoản mục bị loại trừ</td>
				<td class="align-c" style="width:200px">4.4. Tài sản thuế hoãn lại được ghi nhận theo quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.3/Muc_a.2/ChiTietTSHoanLai">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_TaiSanChuyenTiep)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_TaiSanTinhLai)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_TaiSanPhatSinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_TaiSanGhiNhan)"/></td>
			</tr>
			 </xsl:for-each>	
		</table>
		
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b. Xử lý các khoản thuế hoãn lại phải trả và tài sản thuế hoãn lại đối với giao dịch chuyển nhượng tài sản giữa các đơn vị hợp thành sau ngày 30 tháng 11 năm 2021 và trước khi bắt đầu năm chuyển tiếp</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia các đơn vị hợp thành chuyển nhượng tài sản cư trú</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Số thuế bên chuyển nhượng tài sản đã nộp  đối với giao dịch chuyển nhượng</td>
				<td class="align-c">5. Tài sản thuế hoãn lại hoặc thuế hoãn lại phải trả ròng ghi nhận trên sổ kế toán của đơn vị hợp thành chuyển nhượng tài sản</td>
				<td class="align-c">6. Giá trị tài sản chuyển nhượng theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">7. Tài sản thuế hoãn lại hoặc thuế hoãn lại phải trả ròng được xác định đối với tài sản được chuyển nhượng theo quy định về thuế tối thiểu toàn cầu của các đơn vị hợp thành nhận chuyển nhượng</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.2.4.3/Muc_b/ChiTietPhaiTra">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
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
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Lựa chọn điều chỉnh thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu tại một nước đối với mỗi năm tài chính trong giai đoạn chuyển lãi về các năm tài chính trước đó khi phát sinh tổng thu nhập từ chuyển nhượng tài sản hữu hình là bất động sản tại một nước </td>
				<td class="align-c">3.  Lựa chọn xác định khoản giảm không trọng yếu đối với thuế thuộc phạm vi áp dụng là một khoản điều chỉnh đối với các khoản thuế thuộc phạm vi áp dụng trong năm tài chính thực hiện việc điều chỉnh</td>
				<td class="align-c">4. Lựa chọn không áp dụng giảm trừ tài sản hữu hình và tiền lương được giảm trừ</td>
				<td class="align-c">5. Lựa chọn quy trình quản lý đối với chi phí thuế nhỏ hơn 0 chưa bù trừ hết</td>
			</tr>						
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.1/Muc_3.3.1.1/ChiTietLuaChonHangNam1">														
			<tr>						
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:if test="chon_XacDinhThuNhap= 'true'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_XacDinhThuNhap= 'false'">
				&#x2610;</xsl:if>	
				<xsl:if test="chon_XacDinhThuNhap= '1'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_XacDinhThuNhap= '0'">
				&#x2610;</xsl:if>
				</td>
				<td class="align-c"><xsl:if test="chon_XacDinhKhoanGiam= 'true'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_XacDinhKhoanGiam= 'false'">
				&#x2610;</xsl:if>	
				<xsl:if test="chon_XacDinhKhoanGiam= '1'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_XacDinhKhoanGiam= '0'">
				&#x2610;</xsl:if>
				</td>
				<td class="align-c"><xsl:if test="chon_KhongApDungGiamTru= 'true'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_KhongApDungGiamTru= 'false'">
				&#x2610;</xsl:if>	
				<xsl:if test="chon_KhongApDungGiamTru= '1'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_KhongApDungGiamTru= '0'">
				&#x2610;</xsl:if>
				</td>
				<td class="align-c"><xsl:if test="chon_QuyTrinhQuanLy= 'true'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_QuyTrinhQuanLy= 'false'">
				&#x2610;</xsl:if>	
				<xsl:if test="chon_QuyTrinhQuanLy= '1'">
				&#x2612;</xsl:if>
				<xsl:if test="chon_QuyTrinhQuanLy= '0'">
				&#x2610;</xsl:if>
				</td>
				
			</tr>														 
			</xsl:for-each>
		</table>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.1.2 Lựa chọn năm năm</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td rowspan="2" class="align-c" style="width:100px">1. Quốc gia</td>
				<td colspan="2" class="align-c">2. Lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</td>
				<td colspan="2" class="align-c">3. Lựa chọn thay thế các khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu được ghi nhận theo sổ kế toán bằng khoản chi phí được trừ theo quy định tính thuế thu nhập</td>
				<td colspan="2" class="align-c">4. Lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm trong Báo cáo tài chính hợp nhất</td>
				<td colspan="2" class="align-c">5. Lựa chọn  áp dụng nghiệp vụ kế toán hợp nhất để loại bỏ thu nhập, chi phí, lãi và lỗ từ các giao dịch giữa các đơn vị hợp thành cư trú tại cùng một nước trong cùng báo cáo thuế hợp nhất của tập đoàn </td>
			</tr>
			<tr>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.1/Muc_3.3.1.2/ChiTietLuaChonHangNam2">		
			<tr>
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ChonKhongApDung/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonKhongApDung/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonThayThe/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonThayThe/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonNguyenTac/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonNguyenTac/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonNghiepVu/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonNghiepVu/nam_ChamDutLuaChon"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.1.3 Lựa chọn lỗ theo quy định về tối thiểu toàn cầu</div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
			<tr>
				<td rowspan="2" class="align-c" style="width:100px">1. Quốc gia</td>
				<td colspan="2" class="align-c">2. Lựa chọn lỗ theo Quy định về thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c">Năm lựa chọn</td>
				<td class="align-c">Năm chấm dứt lựa chọn</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.1/Muc_3.3.1.3/ChiTietLuaChonHangNam3">		
			<tr>
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ChonLoTheoQuyDinh/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonLoTheoQuyDinh/nam_ChamDutLuaChon"/></td>
			</tr>
			</xsl:for-each>
		</table>

		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3.2 Thông tin liên quan đến lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:1800px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Lãi hoặc lỗ vốn chủ sở hữu đối với Lựa chọn không áp dụng điều chỉnh lãi hoặc lỗ trên vốn chủ sở hữu</td>
				<td class="align-c" style="width:200px">5. Số dư khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn từ những năm tài chính trước</td>
				<td class="align-c" style="width:200px">6. Phần bổ sung vào khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
				<td class="align-c" style="width:200px">7. Phần giảm trừ vào khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
				<td class="align-c" style="width:200px">8.  Số dư còn lại của khoản đầu tư của chủ sở hữu trong quyền sở hữu đạt chuẩn</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.2/ChiTietThongTinLQ">	
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_LaiHoacLo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_SoDuDauTu)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_GiamTru)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_SoDuConLai)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3.3 Quy định thuế đối với việc phân chia thu nhập hợp lệ</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.Các quốc gia lựa chọn cộng thêm một khoản thuế đối với các khoản được 
		xác định là lợi nhuận đã phân chia vào thuế thuộc phạm vi áp dụng đã được điều chỉnh trong năm tài chính: <xsl:value-of select="$tkchinh/Muc_3/Muc_3.3.3/ten_QuocGia"/></div>

		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.3.3.1 Cơ chế thu hồi</div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2500px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				  <td rowspan="2" class="align-c" style="width:300px">4. Năm tài chính</td>
				   <td rowspan="2" class="align-c" style="width:200px">5. Khoản thuế đối với các khoản được xác định là lợi nhuận đã phân chia</td>
				<td colspan="5" class="align-c">6. Khoản thuế đối với các khoản được xác định là lợi nhuận đã phân chia đã được trả hoặc đã được sử dụng</td>
				 <td rowspan="2" class="align-c" style="width:200px">7. Số dư còn lại của tài khoản thu hồi khoản thuế đối với các khoản được xác định là lợi nhuận đã phân chia đã trả hoặc đã được sử dụng</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">6.1. Năm tài chính liền trước thứ 3</td>
				<td class="align-c" style="width:200px">6.2. Năm tài chính liền trước thứ 2</td>
				<td class="align-c" style="width:200px">6.3. Năm tài chính liền trước thứ nhất</td>
				<td class="align-c" style="width:200px">6.4. Năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">6.5. Tổng cộng</td>
			</tr>	
           <!-- Lặp theo Quốc gia cha -->
            <xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.3/Muc_3.3.3.1/ChiTietThuHoi[ma_Loai='01']">
                <xsl:variable name="qg" select="ma_QuocGia" />
                <!-- Hàng cha (Quốc gia) -->
                <tr style="background:#eee;font-weight:bold;">
                    <td><xsl:value-of select="ten_QuocGia" /></td>
                    <!-- colspan còn lại -->
                    <td colspan="10"></td>
                </tr>                     
                <!-- Duyệt các nhóm trong quốc gia -->
                <xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.3/Muc_3.3.3.1/ChiTietThuHoi[ma_Loai='02' and ma_QuocGia=$qg]
                    [generate-id()= generate-id(key('ByGroup1',concat(ma_QuocGia,'|',ma_LoaiNhom))[1])]">
                    <xsl:variable name="groupKey" select="concat(ma_QuocGia,'|',ma_LoaiNhom)" />
                    <!-- Xác định nhóm đầu tiên trong quốc gia -->
					<xsl:variable name="isFirstGroup"
					    select="generate-id(.) = generate-id(
					        $tkchinh/Muc_3/Muc_3.3.3/Muc_3.3.3.1/ChiTietThuHoi
					        [ma_Loai='02' and ma_QuocGia=$qg]
					        [generate-id()= generate-id(key('ByGroup1',concat(ma_QuocGia,'|',ma_LoaiNhom))[1])]
					        [1]
					    )" />			
					<!-- Tổng số dòng con thuộc quốc gia này -->
					<xsl:variable name="allChildRows"
					    select="count($tkchinh/Muc_3/Muc_3.3.3/Muc_3.3.3.1/ChiTietThuHoi[ma_Loai='02' and ma_QuocGia=$qg])" />
					                                     
                    <!-- row đầu tiên của nhóm -->
                    <xsl:for-each select="key('ByGroup1', $groupKey)">
                        <xsl:choose>
                            <!-- Dòng đầu tiên trong nhóm -->
                            <xsl:when test="position() = 1">
                                <tr>     
                                <!-- Chỉ in trong nhóm đầu tiên -->
									<xsl:if test="$isFirstGroup">
									    <td rowspan="{$allChildRows}">
									     <!-- <xsl:value-of select="ten_QuocGia"/> -->
									    </td>
									</xsl:if>                             							       
                                    <!-- rowspan (cho nhóm) -->
                                    <td rowspan="{count(key('ByGroup1', $groupKey))}">
                                        <xsl:value-of select="ten_LoaiNhom"/>
                                    </td>
                                    <td rowspan="{count(key('ByGroup1', $groupKey))}">
                                        <xsl:value-of select="ten_NhomDonVi"/>
                                    </td>
                                    <!-- phần còn lại -->
                                    <td><xsl:value-of select="nam_TaiChinh"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_XacNhan)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu3)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu2)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu1)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TC)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_DuConLai)"/></td>
                                </tr>
                            </xsl:when>

                            <!-- Các dòng còn lại của nhóm -->
                            <xsl:otherwise>
                                <tr>                                
                                    <!-- Không in loại nhóm → đã rowspan -->
                                    <td><xsl:value-of select="nam_TaiChinh"/></td>
                                    <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_XacNhan)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu3)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu2)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TCLienTruocThu1)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nam_TC)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongCong)"/></td>
									<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_DuConLai)"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>			
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.3.3.2 Áp dụng Quy định thuế đối với việc phân chia thu nhập hợp lệ khi một đơn vị không còn là thành viên của Tập đoàn đa quốc gia </b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Giảm trừ vào khoản thuế thuộc phạm vi áp dụng đã được điều chỉnh đã được xác định cho từng năm tài chính liên quan</td>
				<td class="align-c">5. Số tiền thuế bổ sung tăng thêm do tính lại</td>
				<td class="align-c">6. Tỷ lệ thanh lý thu hồi</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.3.3/Muc_3.3.3.2/ChiTietApDung">	
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giamTruThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLe)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.4 Xác định thuế suất thực tế</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Thu nhập hoặc lỗ ròng trên báo cáo tài chính</td>
				<td class="align-c">5. Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c">6. Chi phí thuế thu nhập doanh nghiệp trên báo cáo tài chính</td>
				<td class="align-c">7. Thuế thuộc phạm vi áp dụng đã được điều chỉnh </td>
				<td class="align-c">8. Thuế suất thực tế</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.4/ChiTietApDung">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapHoacLo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapRong)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_ChiPhi)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_DieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_ThucTe)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5 Thuế bổ sung được điều chỉnh cho năm hiện hành</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5.1 Số thuế bổ sung được điều chỉnh cho năm hiện hành phát sinh trong trường hợp thuế suất thực tế và thuế bổ sung của năm tài chính trước đó phải tính toán lại</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3800px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:200px">4. Cơ sở của sự điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Năm liên quan</td>
				<td colspan="2" class="align-c">6. Thu nhập ròng theo quy định về thuế tối thiểu toàn cầu</td>
				<td colspan="2" class="align-c">7. Thuế thuộc phạm vi áp dụng được điều chỉnh</td>
				<td colspan="2" class="align-c">8. Thuế suất thực tế</td>
				<td colspan="2" class="align-c">9. Lợi nhuận tính thuế bổ sung</td>
				<td colspan="2" class="align-c">10. Tỷ lệ thuế bổ sung</td>
				<td colspan="2" class="align-c">11. Thuế bổ sung</td>
				<td rowspan="2" class="align-c" style="width:200px">12. Thuế bổ sung được điều chỉnh cho năm hiện hành</td>
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
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.5.1/ChiTietSoThueBS">														
			<tr>
                <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>			
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
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.5.2 Số thuế bổ sung được điều chỉnh cho năm hiện hành phát sinh trong trường hợp năm tài chính không có thu nhập ròng theo quy định về thuế tối thiểu toàn cầu tại một nước, nếu thuế thuộc phạm vi áp dụng đã điều chỉnh tại một nước nhỏ hơn 0 và thấp hơn thuế thuộc phạm vi áp dụng đã điều chỉnh theo dự kiến</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Thuế thuộc phạm vi áp dụng được điều chỉnh đối với quốc gia (nếu nhỏ hơn 0)</td>
				<td class="align-c">5. Lỗ theo quy định về thuế tối thiểu toàn cầu đối với quốc gia</td>
				<td class="align-c">6. Thuế thuộc phạm vi áp dụng được điều chỉnh dự kiến</td>
				<td class="align-c">7. Thuế bổ sung được điều chỉnh cho năm hiện hành</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.5.2/ChiTietSoThueBSDC">
			<tr>
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>	
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_ApDung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_Lo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_ApDungDuKien)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_boSung)"/></td>
			</tr>	
				</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.6 Thuế bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Chuẩn mực kế toán tài chính áp dụng</td>
				<td class="align-c">5. Thuế bổ sung tối thiểu nội địa đạt chuẩn phải nộp</td>
				<td class="align-c">6. Thuế suất tối thiểu nội địa đạt chuẩn (nếu cao hơn 15%)</td>
				<td class="align-c">7. Cơ sở cho việc kết hợp thu nhập với thuế (nếu khác với quy định về thuế tối thiểu toàn cầu)</td>
				<td class="align-c">8. Đồng tiền sử dụng (nếu khác với đồng tiền chức năng kế toán)</td>
				<td class="align-c">9. Có áp dụng quy định giảm trừ giá trị tài sản hữu hình và tiền lương?</td>
				<td class="align-c">10. Có số thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn được xác định bằng 0?</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.6/ChiTietSoThueBoSungTT">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>	
				<td class="align-c"><xsl:value-of select="chuanMucKeToan"/></td>	
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueBSPhaiNop)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueSuat)"/></td>
				<td class="align-c"><xsl:value-of select="coSoKetHop"/></td>	
				<td class="align-c"><xsl:value-of select="ten_DongTien"/></td>
				<td class="align-c"><xsl:value-of select="ten_ApDung"/></td>
				<td class="align-c"><xsl:value-of select="ten_SoThueTNDN"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.7 Tính toán thuế bổ sung</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2000px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:200px">4. Tỷ lệ thuế bổ sung</td>
				<td class="align-c" style="width:200px">5. Giá trị tài sản hữu hình và tiền lương được giảm trừ</td>
				<td class="align-c" style="width:200px">6. Lợi nhuận tính thuế bổ sung</td>
				<td class="align-c" style="width:200px">7. Thuế bổ sung được điều chỉnh cho năm hiện hành</td>
				<td class="align-c" style="width:200px">8. Thuế bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)</td>
				<td class="align-c" style="width:200px">9. Thuế bổ sung </td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.7/ChiTietTinhToanThueBs">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>		
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLeBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTri_TSHH)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(loiNhuan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_BSDieuChinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_BSToiThieu)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_BoSung)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.8 Phân bổ thuế bổ sung</b></div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.8.1 Tổng số thuế bổ sung theo quy định IIR</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2700px">
			<tr>
				<td colspan="2" class="align-c">1. Công ty mẹ áp dụng quy định IIR</td>
				<td colspan="7" class="align-c">2. Đơn vị hợp thành chịu thuế suất thấp</td>
				<td colspan="2" class="align-c">3. Tỷ lệ phân bổ cho công ty mẹ áp dụng quy định IIR</td>
				<td rowspan="2" class="align-c" style="width:200px">4. Số thuế phân bổ cho công ty mẹ từ số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp</td>
			</tr>
			<tr>
			    <td class="align-c" style="width:200px">1.1. Tên</td>
				<td class="align-c" style="width:200px">1.2. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c" style="width:200px">2.1. Quốc gia</td>
				<td class="align-c" style="width:300px">2.2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">2.3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">2.4. Tên đơn vị hợp thành</td>
				<td class="align-c" style="width:200px">2.5. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú của đơn vị hợp thành</td>
				<td class="align-c" style="width:200px">2.6. Thu nhập theo quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">2.7. Số thuế bổ sung </td>
				<td class="align-c" style="width:200px">3.1. Thu nhập phân bổ theo quyền sở hữu do các chủ sở hữu khác nắm giữ của đơn vị hợp thành chịu thuế suất thấp</td>
				<td class="align-c" style="width:200px">3.2. Tỷ lệ phân bổ cho công ty mẹ từ thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.8.1/Bang1/ChiTietBang1">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_CongTyMe"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-c"><xsl:value-of select="ten_Nhom"/></td>	
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonViHopThanh"/></td>	
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_QuyDinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLe_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThue_PhanBo)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">
		<table class="tkhai_table">
			<tr>
				<td colspan="2" class="align-c">1. Công ty mẹ áp dụng quy định IIR</td>
				<td colspan="4" class="align-c">5. Bù trừ nghĩa vụ thuế theo quy định IIR</td>
				<td rowspan="2" class="align-c">6. Số thuế phân bổ cho công ty mẹ từ số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp cuối cùng phải nộp[6] = [4] - [5.4]</td>
			</tr>
			<tr>
			    <td class="align-c">1.1. Tên</td>
				<td class="align-c">1.2. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c">5.1. Tên công ty mẹ trung gian hoặc công ty mẹ sở hữu một phần</td>
				<td class="align-c">5.2. Mã số thuế/mã số doanh nghiệp của công ty mẹ trung gian hoặc công ty mẹ sở hữu một phần</td>
				<td class="align-c">5.3. Quốc gia cư trú</td>
				<td class="align-c">5.4. Số thuế phân bổ từ số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp mà công ty mẹ trung gian hoặc công ty mẹ sở hữu một phần đã tính được giảm trừ</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.8.1/Bang2/ChiTietBang2">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_CongTyMe"/></td>
				<td class="align-c"><xsl:value-of select="maSoThue_CuTru"/></td>
				<td class="align-c"><xsl:value-of select="ten_CongTyMeTrungGian"/></td>	
				<td class="align-c"><xsl:value-of select="maSoThue"/></td>	
				<td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThue_PhanBoBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThue_PhanBo)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.8.2 Tổng số thuế bổ sung theo quy định UTPR</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">5. Mã số thuế/mã số doanh nghiệp tại quốc gia cư trú</td>
				<td class="align-c">6. Thuế bổ sung theo quy định UTPR</td>
				<td class="align-c">7. Tổng mức thuế bổ sung lợi nhuận chịu thuế dưới mức tối thiểu</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.8.2/ChiTietSoThueUTPR">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>	
				<td class="align-c"><xsl:value-of select="ten_DonViHopThanh"/></td>	
				<td class="align-c"><xsl:value-of select="maSoThue_CuTru"/></td>	
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThue_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThue_BoSung)"/></td>
			</tr>	
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3.8.3 Khấu trừ thuế bổ sung theo quy định UTPR</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
			    <td class="align-c">1. Các quốc gia có áp dụng quy định UTPR</td>
				<td class="align-c">2. Kết chuyển thuế bổ sung quy định UTPR</td>
				<td class="align-c">3. Số lượng nhân viên</td>
				<td class="align-c">4. Giá trị còn lại của tài sản hữu hình</td>
				<td class="align-c">5. Thuế suất theo quy định UTPR</td>
				<td class="align-c">6. Khoản thuế bổ sung theo quy định UTPR cho năm tài chính báo cáo</td>
				<td class="align-c">7. Chi phí thuế tiền mặt bổ sung do đơn vị hợp thành phát sinh trong quốc gia áp dụng quy định UTPR</td>
				<td class="align-c">8. Thuế bổ sung theo quy định UTPR còn lại để kết chuyển</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_3/Muc_3.8.3/ChiTietKhauTruThue">
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ketChuyen_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLuongNhanVien)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTri_ConLai)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueSuat)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoanThue_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhi_BoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thue_BoSung)"/></td>
			</tr>	
			</xsl:for-each>
			<td class="align-c"><b>Tổng cộng</b></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongKetChuyen_BoSung)"/></b></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongSoLuongNhanVien)"/></b></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongGiaTri_ConLai)"/></b></td>
			<td></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongKhoanThue_BoSung)"/></b></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongChiPhi_BoSung)"/></b></td>
			<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/Muc_3/Muc_3.8.3/tongThue_BoSung)"/></b></td>
		</table>
		</div>
	
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4 Số liệu tính toán của từng đơn vị hợp thành, liên doanh, công ty con của liên doanh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1 Thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.1 Điều chỉnh thu nhập hoặc lỗ ròng tại Báo cáo tài chính</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:7300px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:400px">6. Thu nhập hoặc lỗ ròng tại báo cáo tài chính sau khi thực hiện phân bổ thu nhập hoặc lỗ giữa công ty chính và cơ sở thường trú, phân bổ thu nhập hoặc lỗ trong đơn vị trung chuyển</td>
				<td colspan="26" class="align-c">7. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">8. Thu nhập hoặc lỗ theo quy định thuế tối thiểu toàn cầu</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">7.1. Chi phí thuế ròng</td>
				<td class="align-c" style="width:200px">7.2. Cổ tức được loại trừ</td>
				<td class="align-c" style="width:200px">7.3. Lãi hoặc lỗ trên vốn chủ sở hữu được loại trừ </td>
				<td class="align-c" style="width:200px">7.4. Lãi hoặc lỗ do đánh giá lại</td>
				<td class="align-c" style="width:200px">7.5. Lãi hoặc lỗ do chuyển nhượng tài sản và nợ phải trả được loại trừ</td>
				<td class="align-c" style="width:200px">7.6.  Lãi hoặc lỗ về chênh lệch tỷ giá do sử dụng đồng tiền kế toán và đồng tiền tính thuế khác nhau</td>
				<td class="align-c" style="width:200px">7.7. Các khoản chi phí không được trừ theo quy định</td>
				<td class="align-c" style="width:200px">7.8. Sai sót của các kỳ trước</td>
				<td class="align-c" style="width:200px">7.9. Những thay đổi về nguyên tắc kế toán</td>
				<td class="align-c" style="width:200px">7.10. Chi phí hưu trí trích trước của Chương trình hưu trí do các quỹ hưu trí cung cấp</td>
				<td class="align-c" style="width:200px">7.11. Xóa nợ</td>
				<td class="align-c" style="width:200px">7.12. Khoản chi phí phát sinh chi trả cho người làm công dựa trên cổ phiếu </td>
				<td class="align-c" style="width:200px">7.13. Điều chỉnh theo nguyên tắc giá thị trường</td>
				<td class="align-c" style="width:200px">7.14. Khoản giảm trừ thuế thu nhập có thể được hoàn trả đạt chuẩn và khoản giảm trừ thuế thu nhập có thể chuyển nhượng theo giá thị trường</td>
				<td class="align-c" style="width:200px">7.15. Điều chỉnh do lựa chọn nguyên tắc thực tế phát sinh đối với các tài sản và nợ phải trả đang được hạch toán theo giá trị hợp lý hoặc giá trị suy giảm</td>
				<td class="align-c" style="width:200px">7.16. Phân bổ tổng thu nhập từ chuyển nhượng tài sản hữu hình là bất động sản</td>
				<td class="align-c" style="width:200px">7.17. Điều chỉnh đối với thỏa thuận tài chính trong nội bộ tập đoàn</td>
				<td class="align-c" style="width:400px">7.18. Lựa chọn áp dụng nghiệp vụ kế toán hợp nhất để loại bỏ thu nhập, chi phí, lãi và lỗ từ các giao dịch giữa các đơn vị hợp thành cư trú tại cùng một nước trong cùng báo cáo thuế hợp nhất </td>
				<td class="align-c" style="width:200px">7.19. Điều chỉnh khoản thu nhập hoặc lỗ tương ứng phần thuế nộp thay chủ hợp đồng bảo hiểm liên quan đến thu nhập của chủ hợp đồng bảo hiểm</td>
				<td class="align-c" style="width:200px">7.20.  Điều chỉnh thu nhập hoặc lỗ liên quan đến phần vốn cấp một bổ sung, phần vốn cấp một bị hạn chế</td>
				<td class="align-c" style="width:200px">7.21. Điều chỉnh đối với các đơn vị hợp thành tham gia và rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">7.22. Điều chỉnh thu nhập theo quy định về thuế tối thiểu toàn cầu của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">7.23. Điều chỉnh thu nhập theo quy định về thuế tối thiểu toàn cầu của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">7.24. Điều chỉnh khi lựa chọn phương pháp áp dụng Quy định thuế đối với việc phân chia thu nhập</td>
				<td class="align-c" style="width:200px">7.25. Thu nhập từ vận tải quốc tế được loại trừ</td>
				<td class="align-c" style="width:200px">7.26. Điều chỉnh do giao dịch chuyển giao tài sản  giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.1/ChiTietDanhSach">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ct_4"/></td>
				<td class="align-j"><xsl:value-of select="ct_5"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.20)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.21)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.22)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.23)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.24)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.25)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.26)"/></td>
		        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_8)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.2 Phân bổ thu nhập hoặc lỗ giữa một công ty chính và cơ sở thường trú</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2650px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">4. Tên công ty chính</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp công ty chính</td>
				<td class="align-c" style="width:200px">6. Thu nhập hoặc lỗ ròng tại Báo cáo tài chính của công ty chính trước khi phân bổ</td>
				<td class="align-c" style="width:300px">7. Tên cơ sở thường trú</td>
				<td class="align-c" style="width:200px">8. Mã số thuế/mã số doanh nghiệp cơ sở thường trú</td>
				<td class="align-c" style="width:200px">9. Quốc gia cơ sở thường trú cư trú</td>
				<td class="align-c" style="width:200px">10. Thu nhập hoặc lỗ ròng tại báo cáo tài chính của công ty chính phân bổ cho cơ sở thường trú</td>
				<td class="align-c" style="width:250px">11. Thu nhập hoặc lỗ ròng tại báo cáo tài chính của công ty chính sau khi phân bổ </td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.2/ChiTietPhanBoCSTT">														
			<tr>	
                <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_CongTyChinh"/></td>
				<td class="align-c"><xsl:value-of select="mst_CongTyChinh"/></td>
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
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.3 Phân bổ thu nhập hoặc lỗ trong đơn vị trung chuyển</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2600px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">4. Tên đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">6. Thu nhập hoặc lỗ ròng tại Báo cáo tài chính của đơn vị trung chuyển trước khi phân bổ</td>
				<td class="align-c" style="width:300px">7. Tên chủ sở hữu đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">8. Mã số thuế/mã số doanh nghiệp của chủ sở hữu đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">9. Quốc gia chủ sở hữu đơn vị trung chuyển cư trú</td>
				<td class="align-c" style="width:250px">10. Thu nhập hoặc lỗ ròng tại báo cáo tài chính của đơn vị trung chuyển phân bổ cho chủ sở hữu đơn vị trung chuyển</td>
				<td class="align-c" style="width:250px">11. Thu nhập hoặc lỗ ròng tại báo cáo tài chính của đơn vị trung chuyển sau khi phân bổ </td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.3/ChiTietPhanBoDVTC">														
			<tr>	
                <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViTrungChuyen"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViTrungChuyen"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_TruocPhanBo)"/></td>
				<td class="align-j"><xsl:value-of select="ten_ChuSoHuu"/></td>
				<td class="align-c"><xsl:value-of select="mst_ChuSoHuu"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGiaChuSoHuu"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_PhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhap_SauPhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.4 Điều chỉnh thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu đối với các giao dịch xuyên quốc gia</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:2800px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">6. Cơ sở của sự điều chỉnh</td>
				<td class="align-c" style="width:300px">7. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan </td>
				<td class="align-c" style="width:200px">8. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">9. Quốc gia đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan cư trú</td>
				<td class="align-c" style="width:300px">10. Giá trị điều chỉnh tăng thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:300px">11. Giá trị điều chỉnh giảm thu nhập hoặc lỗ  theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.4/ChiTietDieuChinhTN">														
			<tr>	
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
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
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1.5 Điều chỉnh thu nhập theo quy định về thuế tối thiểu toàn cầu của Công ty mẹ tối cao trong trường hợp Công ty mẹ tối cao là đơn vị trung chuyển hoặc Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3100px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">6. Cơ sở của sự điều chỉnh</td>
				<td class="align-c" style="width:300px">7. Tên đối tượng nắm giữ quyền sở hữu hoặc đối tượng nhận cổ tức</td>
				<td class="align-c" style="width:200px">8. Mã số thuế/mã số doanh nghiệp của đối tượng nắm giữ quyền sở hữu hoặc đối tượng nhận cổ tức</td>
				<td class="align-c" style="width:200px">9. Quốc gia đối tượng nắm giữ quyền sở hữu hoặc đối tượng nhận cổ tức cư trú</td>
				<td class="align-c" style="width:200px">10. Thuế suất danh nghĩa</td>
				<td class="align-c" style="width:200px">11. Loại hình đơn vị</td>
				<td class="align-c" style="width:200px">12. Tỷ lệ nắm giữ quyền sở hữu trực tiếp</td>
				<td class="align-c" style="width:300px">13. Giá trị điều chỉnh giảm thu nhập hoặc lỗ theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.1.5/ChiTietDieuChinhTNQD">														
			<tr>	
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>	
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViLienDoanh"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViLienDoanh"/></td>
				<td class="align-j"><xsl:value-of select="ten_CoSoDieuChinh"/></td>
				<td class="align-j"><xsl:value-of select="ten_DoiTuong"/></td>
				<td class="align-c"><xsl:value-of select="mst_DoiTuong"/></td>
				<td class="align-c"><xsl:value-of select="ten_QuocGiaDoiTuong"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueSuat)"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiHinhDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLe)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTriDieuChinh)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2 Thuế thuộc phạm vi áp dụng được điều chỉnh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2.1 Điều chỉnh đối với chi phí thuế hiện hành trong sổ kế toán</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:6200px">
			<tr>
			    <td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				 <td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">6. Tổng khoản thuế thuộc phạm vi áp dụng sau khi thực hiện phân bổ từ một đơn vị hợp thành này sang đơn vị hợp thành khác</td>
				<td colspan="20" class="align-c">7. Các khoản điều chỉnh</td>
				<td rowspan="2" class="align-c" style="width:200px">8. Thuế thuộc phạm vi áp dụng được điều chỉnh</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">7.1. Khoản thuế thuộc phạm vi áp dụng được hạch toán là chi phí khi tính lợi nhuận trước thuế trong sổ kế toán</td>
				<td class="align-c" style="width:200px">7.2.  Khoản tài sản thuế hoãn lại do lỗ theo Quy định về thuế tối thiểu toàn cầu được sử dụng theo quy định </td>
				<td class="align-c" style="width:400px">7.3.  Khoản thuế thuộc phạm vi áp dụng được nộp trong năm tài chính và liên quan đến nghiệp vụ thuế không chắc chắn (chờ điều chỉnh) mà khoản đó nằm trong phần điều chỉnh trừ khỏi thuế thuộc phạm vi áp dụng trong một năm tài chính trước đó theo quy định</td>
				<td class="align-c" style="width:300px">7.4. Khoản khấu trừ hoặc hoàn thuế liên quan đến khoản giảm trừ thuế thu nhập có thể được hoàn trả đạt chuẩn và khoản giảm trừ thuế thu nhập có thể chuyển nhượng trên thị trường mà được ghi nhận là khoản giảm trừ chi phí thuế hiện hành</td>
				<td class="align-c" style="width:200px">7.5. Lợi ích thuế đạt chuẩn thông qua một đơn vị không chịu thuế</td>
				<td class="align-c" style="width:200px">7.6. Khoản chi phí thuế hiện hành liên quan đến thu nhập không được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu theo quy định</td>
				<td class="align-c" style="width:300px">7.7. Khoản giảm trừ hoặc khoản hoàn trả thuế mà theo quy định các khoản này được coi là một khoản giảm trừ thuế thu nhập có thể được hoàn trả không đạt chuẩn và chưa được ghi nhận là một khoản giảm chi phí thuế hiện hành</td>
				<td class="align-c" style="width:300px">7.8.  Khoản thuế thuộc phạm vi áp dụng được hoàn trả hoặc giảm trừ của một đơn vị hợp thành mà đã không được ghi nhận là khoản điều chỉnh chi phí thuế hiện hành trong sổ kế toán</td>
				<td class="align-c" style="width:200px">7.9. Khoản chi phí thuế hiện hành liên quan đến một nghiệp vụ thuế không chắc chắn (chờ điều chỉnh)</td>
				<td class="align-c" style="width:200px">7.10. Khoản chi phí thuế hiện hành dự kiến không được thanh toán trong vòng ba năm kể từ ngày cuối cùng của năm tài chính</td>
				<td class="align-c" style="width:200px">7.11. Những điều chỉnh phát sinh sau khi kê khai và thay đổi thuế suất</td>
				<td class="align-c" style="width:200px">7.12. Thuế thuộc phạm vi áp dụng liên quan đến việc phân bổ tổng thu nhập từ chuyển nhượng tài sản hữu hình là bất động sản</td>
				<td class="align-c" style="width:200px">7.13. Điều chỉnh thuế thuộc phạm vi áp dụng của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">7.14. Điều chỉnh thuế thuộc phạm vi áp dụng của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">7.15. Khoản thuế đối với khoản được xác định là lợi nhuận đã phân chia</td>
				<td class="align-c" style="width:200px">7.16. Điều chỉnh khi lựa chọn phương pháp áp dụng Quy định thuế đối với việc phân chia thu nhập</td>
				<td class="align-c" style="width:200px">7.17. Tổng các khoản điều chỉnh thuế hoãn lại</td>
				<td class="align-c" style="width:500px">7.18. Tăng hoặc giảm đối với các khoản thuế thuộc phạm vi áp dụng chưa được ghi nhận vào chi phí thuế hiện hành hoặc chi phí thuế hoãn lại, nhưng được ghi nhận trong phần vốn chủ sở hữu hoặc phần thu nhập toàn diện khác liên quan đến các khoản được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu mà các khoản này sẽ phải chịu thuế theo quy định của thuế nội địa. </td>
				<td class="align-c" style="width:200px">7.19. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết phát sinh trong năm tài chính báo cáo</td>
				<td class="align-c" style="width:200px">7.20. Chi phí thuế nhỏ hơn 0 chưa bù trừ hết được sử dụng trong năm tài chính báo cáo</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.1/ChiTietDieuChinhCP">
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonViHopThanh"/></td>
				<td class="align-j"><xsl:value-of select="maSoThue"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_KhoanThue)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.17)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.18)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.19)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7.20)"/></td>
		        <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_8)"/></td>
			</tr>
           </xsl:for-each>			
		</table>
		
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2.2 Phân bổ thuế thuộc phạm vi áp dụng từ một đơn vị hợp thành sang một đơn vị hợp thành khác</b></div>
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3400px">
			<tr>
			    <td class="align-c" style="width:200px">1. Quốc gia</td>
				<td class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:200px">6. Thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh trước điều chỉnh</td>
				<td class="align-c" style="width:200px">7. Cơ sở của sự điều chỉnh</td>
				<td class="align-c" style="width:300px">8. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:200px">9. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan</td>
				<td class="align-c" style="width:300px">10. Quốc gia đơn vị hợp thành, liên doanh, công ty con của liên doanh liên quan cư trú</td>
				<td class="align-c" style="width:300px">11. Giá trị khoản điều chỉnh tăng khoản thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:300px">12. Giá trị khoản điều chỉnh giảm khoản thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c" style="width:300px">13. Thuế thuộc phạm vi áp dụng của đơn vị hợp thành, liên doanh, công ty con của liên doanh sau khi điều chỉnh</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.2/ChiTietApDung">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
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
		<table class="tkhai_table" style="width:5100px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="16" class="align-c">6. Điều chỉnh chi phí thuế hoãn lại</td>
				<td rowspan="2" class="align-c" style="width:200px">7. Tổng các khoản điều chỉnh thuế hoãn lại</td>
			</tr>
			<tr>
				<td class="align-c" style="width:300px">6.1. Chi phí thuế hoãn lại đối với các khoản không được đưa vào khi tính thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu</td>
				<td class="align-c" style="width:200px">6.2. Chi phí thuế hoãn lại đối với các khoản trích trước không được chấp nhận </td>
				<td class="align-c" style="width:200px">6.3. Chi phí thuế hoãn lại đối với các khoản trích trước chưa được tính</td>
				<td class="align-c" style="width:200px">6.4. Kết quả từ các điều chỉnh cách thức xác định giá trị hoặc điều chỉnh việc ghi nhận kế toán liên quan đến tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">6.5. Chi phí thuế hoãn lại phát sinh từ việc tính toán lại do thay đổi thuế suất áp dụng tại một nướcc</td>
				<td class="align-c" style="width:200px">6.6. Chi phí thuế hoãn lại từ việc tạo lập và sử dụng các khoản giảm trừ nghĩa vụ thuế</td>
				<td class="align-c" style="width:200px">6.7. Khoản lỗ thay thế từ tài sản thuế hoãn lại được chuyển kỳ sau</td>
				<td class="align-c" style="width:200px">6.8. Các khoản trích trước chưa được tính đã được thanh toán trong năm tài chính</td>
				<td class="align-c" style="width:300px">6.9. Các khoản thuế hoãn lại phải trả được thu hồi được xác định trong năm tài chính trước đó và đã được nộp trong năm tài chính hiện hành</td>
				<td class="align-c" style="width:400px">6.10. Tài sản thuế hoãn lại do lỗ của năm tài chính hiện hành phát sinh lỗ, nhưng tài sản thuế hoãn lại do lỗ đó không được ghi trên báo cáo tài chính vì không đáp ứng tiêu chuẩn được kế toán ghi nhận là tài sản thuế hoãn lại</td>
				<td class="align-c" style="width:200px">6.11. Khoản điều chỉnh chi phí thuế hoãn lại do giảm thuế suất</td>
				<td class="align-c" style="width:200px">6.12. Khoản điều chỉnh chi phí thuế hoãn lại do tăng thuế suất</td>
				<td class="align-c" style="width:200px">6.13. Điều chỉnh đối với đơn vị hợp thành gia nhập hoặc rời khỏi Tập đoàn đa quốc gia</td>
				<td class="align-c" style="width:200px">6.14. Điều chỉnh chi phí thuế hoãn lại của Công ty mẹ tối cao là đơn vị trung chuyển</td>
				<td class="align-c" style="width:200px">6.15. Điều chỉnh chi phí thuế hoãn lại của Công ty mẹ tối cao thực hiện cơ chế cho khấu trừ cổ tức</td>
				<td class="align-c" style="width:200px">6.16. Điều chỉnh trong giao dịch chuyển giao tài sản giữa các đơn vị hợp thành sau ngày 30/11/2021 và trước khi bắt đầu năm chuyển tiếp</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.2.3/ChiTietDieuChinhHoanLai">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonViLienDoanh"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonViLienDoanh"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.1)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.2)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.3)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.4)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.5)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.6)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.7)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.8)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.9)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.10)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.11)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.12)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.13)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.14)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.15)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_6.16)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct_7)"/></td>
			</tr>														 
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3 Các lựa chọn của đơn vị hợp thành, liên doanh, công ty con của liên doanh</b></div>
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3.1 Lựa chọn hằng năm</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">6. Lựa chọn xóa nợ</td>
				<td class="align-c">7.  Lựa chọn không tính vào tổng các khoản điều chỉnh thuế hoãn lại khoản trích trước chưa được tính trong năm tài chính</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.1/ChiTietLuaChonHangNam">					
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonVi"/></td>
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
		<div style="padding-top: 6pt;overflow-x: scroll">
		<table class="tkhai_table" style="width:3300px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="2" class="align-c">6. Lựa chọn đơn vị không phải là đơn vị loại trừ</td>
				<td colspan="2" class="align-c">7. Lựa chọn tính tất cả các khoản cổ tức liên quan đến quyền sở hữu đầu tư gián tiếp khi xác định thu nhập hoặc lỗ theo Quy định về thuế tối thiểu toàn cầu</td>
				<td colspan="2" class="align-c">8. Lựa chọn điều chỉnh lãi hoặc lỗ chênh lệch tỷ giá liên quan đến công cụ tài chính dự phòng rủi ro đối với khoản đầu tư ròng được ghi nhận trong thu nhập hoặc lỗ ròng báo cáo tài chính</td>
			    <td colspan="2" class="align-c">9. Lựa chọn xác định một đơn vị hợp thành là đơn vị đầu tư là đơn vị không chịu thuế thu nhập </td>
				<td colspan="2" class="align-c">10. Lựa chọn phương pháp áp dụng quy định thuế đối với việc phân chia thu nhập</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">Năm lựa chọn</td>
				<td class="align-c" style="width:200px">Năm chấm dứt lựa chọn</td>
				<td class="align-c" style="width:200px">Năm lựa chọn</td>
				<td class="align-c" style="width:200px">Năm chấm dứt lựa chọn</td>
				<td class="align-c" style="width:200px">Năm lựa chọn</td>
				<td class="align-c" style="width:200px">Năm chấm dứt lựa chọn</td>
				<td class="align-c" style="width:200px">Năm lựa chọn</td>
				<td class="align-c" style="width:200px">Năm chấm dứt lựa chọn</td>
				<td class="align-c" style="width:200px">Năm lựa chọn</td>
				<td class="align-c" style="width:200px">Năm chấm dứt lựa chọn</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.2/ChiTietLuaChonNamNam">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViLoaiTru/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViLoaiTru/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonCoTucLienQuan/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonCoTucLienQuan/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDieuChinhLoLai/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDieuChinhLoLai/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViHopThanh/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonDonViHopThanh/nam_ChamDutLuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonPPApDung/nam_LuaChon"/></td>
				<td class="align-c"><xsl:value-of select="ChonPPApDung/nam_ChamDutLuaChon"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3.3 Lựa chọn điều chỉnh giá trị ghi sổ tài sản và khoản nợ phải trả theo giá trị hợp lý trong trường hợp chuyển nhượng tài sản và nợ phải trả</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td rowspan="2" class="align-c">1. Quốc gia</td>
				<td rowspan="2" class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c">6. Năm lựa chọn</td>
				<td colspan="2" class="align-c">7.  Lựa chọn điều chỉnh giá trị ghi sổ tài sản và khoản nợ phải trả theo giá trị hợp lý trong trường hợp chuyển nhượng tài sản và nợ phải trả</td>
			</tr>
			<tr>
				<td class="align-c">7.1. Tính vào năm tài chính có phát sinh sự kiện điều chỉnh </td>
				<td class="align-c">7.2. Phân bổ trong năm (05) năm bao gồm năm tài chính phát sinh sự kiện điều chỉnh và bốn (04) năm tài chính liền kề tiếp theo</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.3.3/ChiTietLuaChonDieuChinh">														
			<tr>						
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonVi"/></td>
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
		<table class="tkhai_table" style="width:3500px">
			<tr>
				<td rowspan="2" class="align-c" style="width:200px">1. Quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td rowspan="2" class="align-c" style="width:300px">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td rowspan="2" class="align-c" style="width:300px">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td rowspan="2" class="align-c" style="width:200px">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td colspan="4" class="align-c">6. Thu nhập vận tải quốc tế</td>
				<td colspan="4" class="align-c">7. Thu nhập vận tải quốc tế phụ trợ đạt chuẩn</td>
				<td colspan="2" class="align-c">8. Ảnh hưởng tới giá trị tài sản hữu hình và tiền lương được giảm trừ</td>
				<td rowspan="2" class="align-c" style="width:200px">9. Thuế thuộc phạm vi áp dụng đối với thu nhập vận tải quốc tế hoặc thu nhập vận tải quốc tế phụ trợ đạt chuẩn được loại trừ</td>
			</tr>
			<tr>
				<td class="align-c" style="width:200px">6.1. Danh mục hoạt động</td>
				<td class="align-c" style="width:200px">6.2. Doanh thu</td>
				<td class="align-c" style="width:200px">6.3. Chi phí</td>
				<td class="align-c" style="width:200px">6.4. Thu nhập vận tải quốc tế</td>
				<td class="align-c" style="width:200px">7.1. Danh mục hoạt động</td>
				<td class="align-c" style="width:200px">7.2. Doanh thu</td>
				<td class="align-c" style="width:200px">7.3. Chi phí</td>
				<td class="align-c" style="width:200px">7.4. Thu nhập vận tải quốc tế phụ trợ đạt chuẩn</td>
				<td class="align-c" style="width:200px">8.1. Chi  tiền lương hợp lệ được sử dụng để tạo ra thu nhập vận tải quốc tế hoặc thu nhập vận tải quốc tế phụ trợ đạt chuẩn được loại trừ</td>
				<td class="align-c" style="width:200px">8.2. Giá trị  tài sản hữu hình hợp lệ được sử dụng để tạo ra thu nhập vận tải quốc tế  hoặc thu nhập vận tải quốc tế đạt chuẩn được loại trừ</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.4.1/ChiTietLoaiTruTN">														
			<tr>
			    <td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="ten_LoaiNhom"/></td>
				<td class="align-j"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-c"><xsl:value-of select="ten_DonVi"/></td>
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
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Tổng thu nhập vận tải quốc tế </td>
				<td class="align-c">5. Giới hạn 50% đối với tổng thu nhập vận tải quốc tế [5] = 50% x [4]</td>
				<td class="align-c">6. Tổng thu nhập vận tải quốc tế phụ trợ đạt chuẩn </td>
				<td class="align-c">7. Phần vượt mức giới hạn [7] = [6]-[5]</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.4.2/ChiTietGioiHanQuocGia">	
			<tr>
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				 <td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ThuNhap)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(gioiHan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_ThuNhapDatChuan)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phan_VuotMuc)"/></td>
			</tr>
            </xsl:for-each>			
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.5 Thông tin cho việc lựa chọn phương pháp áp dụng quy định thuế đối với việc phân chia thu nhập </b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Tên đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
				<td class="align-c">6. Các khoản phân chia và các khoản được xác định là đã phân chia từ thu nhập theo quy định về thuế tối thiểu toàn cầu của đơn vị đầu tư được tính vào thu nhập theo quy định về thuế tối thiểu toàn cầu của chủ sở hữu đơn vị hợp thành đã thực nhận khoản phân chia đó </td>
			    <td class="align-c">7. Tổng số thuế gộp được khấu trừ nội địa phát sinh bởi đơn vị đầu tư</td>
				<td class="align-c">8. Phần thu nhập theo tỷ lệ của chủ sở hữu đơn vị hợp thành trong thu nhập ròng theo quy định về thuế tối thiểu toàn cầu chưa phân chia của đơn vị đầu tư</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.5/ChiTietLuaChonPP">														
			<tr>	
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				 <td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
				<td class="align-j"><xsl:value-of select="ten_DonVi"/></td>
				<td class="align-c"><xsl:value-of select="mst_DonVi"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(khoan_PhanChia)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tong_SoThueGop)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(phan_ThuNhap)"/></td>
			</tr>
			</xsl:for-each>
		</table>
		</div>
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.6 Chuẩn mực kế toán khác chuẩn mực kế toán lập báo cáo tài chính hợp nhất của Công ty mẹ tối cao</b></div>
		<div style="padding-top: 6pt">
		<table class="tkhai_table">
			<tr>
				<td class="align-c">1. Quốc gia</td>
				<td class="align-c">2. Nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia</td>
				<td class="align-c">3. Tên nhóm đơn vị được yêu cầu tính toán thuế suất thực tế, thuế bổ sung riêng tại quốc gia (nếu có)</td>
				<td class="align-c">4. Tên đơn vị hợp thành có thu nhập hoặc lỗ ròng trên báo cáo tài chính được xác định bằng một chuẩn mực kế toán khác chuẩn mực kế toán lập báo cáo tài chính hợp nhất của Công ty mẹ tối cao</td>
				<td class="align-c">5. Mã số thuế/mã số doanh nghiệp của đơn vị hợp thành, liên doanh, công ty con của liên doanh</td>
			    <td class="align-c">6. Chuẩn mực kế toán tài chính được chấp nhận hoặc được phép áp dụng</td>
			</tr>
			<xsl:for-each select="$tkchinh/Muc_4/Muc_4.6/ChiTietChuanMucKT">														
			<tr>	
			    <td class="align-c"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-c"><xsl:value-of select="ten_LoaiNhom"/></td>
				 <td class="align-c"><xsl:value-of select="ten_NhomDonVi"/></td>
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
