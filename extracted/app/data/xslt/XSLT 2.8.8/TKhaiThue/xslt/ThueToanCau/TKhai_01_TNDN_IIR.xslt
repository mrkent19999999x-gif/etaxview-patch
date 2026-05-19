<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TNDN_IIR"/>	
		<xsl:variable name="pl01_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TNDN_IIR' />
		<xsl:call-template name="tkhaiHeader_01_TNDN_IIR">
			<xsl:with-param name="mauTKhai"   select="'01/TNDN-IIR'"/>
		</xsl:call-template>
	    
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[09] Đồng tiền khai Tờ khai thông tin: </b> <xsl:value-of select="$tkchinh/ma_DonViTien"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[10] Lựa chọn đồng tiền kê khai Tờ khai thuế TNDN bổ sung, nộp thuế TNDN bổ sung:</b></div>
		
		<div style="padding-top: 6pt">
			<xsl:if test="$pl01_tndn/LoaiTienTNDN/tien_KhacVND='true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng tiền khai Tờ khai thông tin (khác Đồng Việt Nam): &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng Việt Nam: &#x2610;</xsl:if>
			<xsl:if test="$pl01_tndn/LoaiTienTNDN/tien_VND='true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng tiền khai Tờ khai thông tin (khác Đồng Việt Nam): &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng Việt Nam: &#x2612;</xsl:if>
				
			<xsl:if test="$pl01_tndn/LoaiTienTNDN/tien_KhacVND='1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng tiền khai Tờ khai thông tin (khác Đồng Việt Nam): &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng Việt Nam: &#x2610;</xsl:if>
			<xsl:if test="$pl01_tndn/LoaiTienTNDN/tien_VND='1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng tiền khai Tờ khai thông tin (khác Đồng Việt Nam): &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đồng Việt Nam: &#x2612;</xsl:if>	
		</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[11] Tỷ giá quy đổi trong trường hợp khai Tờ khai thông tin bằng đồng ngoại tệ và lựa chọn khai Tờ khai thuế TNDN bổ sung, nộp thuế TNDN bổ sung bằng đồng Việt Nam: </b> <xsl:value-of select="ihtkk:formatNumber($pl01_tndn/ty_GiaQuyDoi)"/> tại Ngân hàng: <xsl:value-of select="$pl01_tndn/ten_NganHang"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">
			<label class="align-l">
				<xsl:if test="$pl01_tndn/giam_TruTrachNhiem= 'true'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2612;</xsl:if>
				<xsl:if test="$pl01_tndn/giam_TruTrachNhiem= 'false'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2610;</xsl:if>
					
				<xsl:if test="$pl01_tndn/giam_TruTrachNhiem= '1'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2612;</xsl:if>
				<xsl:if test="$pl01_tndn/giam_TruTrachNhiem= '0'">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12] Áp dụng quy định giảm trừ trách nhiệm: </b>&#x2610;</xsl:if>
			</label>
		</div>
		
		<div style="padding-top: 10pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>I. TỔNG SỐ THUẾ BỔ SUNG CỦA TẬP ĐOÀN TẠI MỖI QUỐC GIA</b></div>
		<div style="padding-top: 6pt;text-align: right">Đơn vị tiền: <xsl:value-of select="$pl01_tndn/Muc_I/ma_DonViTien"/></div>
		<div style="width:100%; padding-top: 6pt">
		<table class="tkhai_table" style="width:100%">
		
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Quốc gia</b></td>
				<td class="align-c"><b>Số thuế bổ sung của Tập đoàn tại mỗi quốc gia</b></td>
			</tr>
			<tr>
				<td class="align-c">(1)</td>
				<td class="align-c">(2)</td>
				<td class="align-c">(3)</td>
			</tr>				
			<xsl:for-each select="$pl01_tndn/Muc_I/ChiTiet">
			<xsl:variable name="currentRows1" select='position()'/>																
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_ThueBoSung)"/></td>
			</tr>														 
			</xsl:for-each>
			<tr>
				<td></td>
				<td class="align-l">Tổng cộng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/tongCong_SoThueBoSung)"/></td>
				
			</tr>
		</table><br/>
		</div>
		
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>II. SỐ THUẾ PHÂN BỔ CHO CÔNG TY MẸ TỪ SỐ THUẾ BỔ SUNG CỦA ĐƠN VỊ HỢP THÀNH CHỊU THUẾ SUẤT THẤP </b></div>
		
		<!-- <div style="width:90%;padding-top: 6pt;text-align: right">Đơn vị tiền: <xsl:value-of select="$pl01_tndn/Muc_II/ma_DonViTien"/></div> -->
		<div style="padding-top: 6pt;text-align: right">Đơn vị tiền: <xsl:value-of select="$pl01_tndn/Muc_II/ma_DonViTien"/></div><br/>
		
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>Mã số thuế công ty mẹ được phân bổ thuế bổ sung từ đơn vị hợp thành chịu thuế suất thấp</b></td>
				<td class="align-c"><b>Tên công ty mẹ được phân bổ thuế bổ sung từ đơn vị hợp thành chịu thuế suất thấp</b></td>
				<td class="align-c"><b>Quốc gia có đơn vị hợp thành chịu thuế suất thấp cư trú</b></td>
				
				<td class="align-c"><b>Mã số thuế/mã số doanh nghiệp đơn vị hợp thành chịu thuế suất thấp</b></td>
				<td class="align-c"><b>Tên đơn vị hợp thành chịu thuế suất thấp</b></td>
				<td class="align-c"><b>Số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp</b></td>
				
				<td class="align-c"><b>Thu nhập phân bổ theo quyền sở hữu do các chủ sở hữu khác nắm giữ</b></td>
				<td class="align-c"><b>Thu nhập theo quy định về thuế tối thiểu toàn cầu của đơn vị hợp thành chịu thuế suất thấp trong năm</b></td>
				<td class="align-c"><b>Tỷ lệ phân bổ cho công ty mẹ đối với đơn vị hợp thành chịu thuế suất thấp trong năm tài chính</b></td>
				<td class="align-c"><b>Số thuế phân bổ cho công ty mẹ từ số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp</b></td>
			</tr>
			<tr>
				<td class="align-c">(1)</td>
				<td class="align-c">(2)</td>
				<td class="align-c">(3)</td>
				<td class="align-c">(4)</td>
				<td class="align-c">(5)</td>
				<td class="align-c">(6)</td>
				<td class="align-c">(7)</td>
				<td class="align-c">(8)</td>
				<td class="align-c">(9)</td>
				<td class="align-c">(10)</td>
			</tr>				
			<xsl:for-each select="$pl01_tndn/Muc_II/so_ThueTNDN/ChiTiet">
			<xsl:variable name="currentRows1" select='position()'/>																
			<tr>
										
				<td class="align-j"><xsl:value-of select="mst_CTyMe"/></td>
				<td class="align-j"><xsl:value-of select="ten_CTyMe"/></td>
				<td class="align-j"><xsl:value-of select="ten_QuocGia"/></td>
				<td class="align-j"><xsl:value-of select="mst_MaDoanhNghiep"/></td>
				<td class="align-j"><xsl:value-of select="tenDonViHopThanh"/></td>
				
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_ThueBoSung)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapPhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapTheoQuyDinh)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tyLePhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soThuePhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
			<tr>
				
				<td class="align-l">Tổng cộng</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_II/so_ThueTNDN/tong_SoThuePhanBo)"/></td>
				
			</tr>
		</table><br/>
		
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>III. SỐ THUẾ BỔ SUNG PHẢI NỘP</b></div><br/>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã chỉ tiêu</b></td>
				<td class="align-c"><b>Đơn vị tiền</b></td>
				<td class="align-c"><b>Số tiền</b></td>
			</tr>
			<tr>
				<td class="align-c">(1)</td>
				<td class="align-c">(2)</td>
				<td class="align-c">(3)</td>
				<td class="align-c">(4)</td>
				<td class="align-c">(5)</td>
			</tr>																			
			<tr>
				<td class="align-c">1</td>							
				<td class="align-l">Tổng số thuế phân bổ cho công ty mẹ tại Việt Nam từ số thuế bổ sung của các đơn vị hợp thành chịu thuế suất thấp </td>
				<td class="align-c">[15]</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_III/ct15)"/></td>
			</tr>
			<tr>
				<td class="align-c">2</td>							
				<td class="align-l">Tổng số thuế phân bổ cho công ty mẹ tại Việt Nam từ số thuế bổ sung của đơn vị hợp thành chịu thuế suất thấp được giảm trừ theo quy định IIR (nếu có)</td>
				<td class="align-c">[16]</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_III/ct16)"/></td>
			</tr>
			<tr>
				<td class="align-c">3</td>							
				<td class="align-l">Tổng số thuế phân bổ cho công ty mẹ tại Việt Nam từ số thuế bổ sung của các đơn vị hợp thành chịu thuế suất thấp sau khi bù trừ nghĩa vụ thuế theo quy định IIR </td>
				<td class="align-c">[17]</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_III/ct17)"/></td>
			</tr>
			<tr>
				<td class="align-c">4</td>							
				<td class="align-l">Tổng số thuế phân bổ cho công ty mẹ từ số thuế bổ sung của các đơn vị hợp thành chịu thuế suất thấp sau khi bù trừ nghĩa vụ thuế theo đồng Việt Nam trong trường hợp khai Tờ khai thông tin bằng đồng ngoại tệ và lựa chọn khai Tờ khai thuế TNDN bổ sung, nộp thuế TNDN bổ sung bằng đồng Việt Nam (nếu có)</td>
				<td class="align-c">[18]</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_III/ct18)"/></td>
			</tr>
			
		</table><br/>
		
		
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tôi cam đoan số liệu, tài liệu khai trên là đúng và chịu trách nhiệm 
		trước pháp luật về những số liệu, tài liệu đã khai.</div>
		
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
