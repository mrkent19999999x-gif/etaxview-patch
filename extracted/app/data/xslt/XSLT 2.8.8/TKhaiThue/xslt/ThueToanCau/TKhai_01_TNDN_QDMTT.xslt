<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TNDN_QDMTT"/>	
		<xsl:variable name="pl01_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/TKhai_01_TNDN_QDMTT' />
		<xsl:call-template name="tkhaiHeader_01_TNDN_QDMTT">
			<xsl:with-param name="mauTKhai"   select="'01/TNDN-QDMTT'"/>
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
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[11] Tỷ giá quy đổi trong trường hợp khai Tờ khai thông tin bằng đồng ngoại tệ và lựa chọn khai Tờ khai thuế TNDN bổ sung, nộp thuế TNDN 
		bổ sung bằng đồng Việt Nam: </b> <xsl:value-of select="ihtkk:formatNumber($pl01_tndn/ty_GiaQuyDoi)"/> tại Ngân hàng <xsl:value-of select="$pl01_tndn/ten_NganHang"/></div>
		
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
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>I. XÁC ĐỊNH SỐ THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG THEO QUY ĐỊNH VỀ THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG TỐI THIỂU NỘI ĐỊA ĐẠT CHUẨN TẠI VIỆT NAM</b></div><br/>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>STT</b></td>
				<td class="align-c"><b>Chỉ tiêu</b></td>
				<td class="align-c"><b>Mã số</b></td>
				<td class="align-c"><b>Đơn vị</b></td>
				<td class="align-c"><b>Giá trị</b></td>
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
				<td class="align-l">Lợi nhuận tính thuế bổ sung (A =A1-A4)</td>
				<td class="align-c">A</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A)"/></td>
			</tr>
			<tr>
				<td class="align-c">1.1</td>							
				<td class="align-l">Thu nhập ròng tại Việt Nam trong năm tài chính theo Quy định về thuế tối thiểu toàn cầu (A1=A2 - A3)</td>
				<td class="align-c">A1</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A1)"/></td>
			</tr>
			<tr>
				<td class="align-c">1.1.1</td>							
				<td class="align-l">Thu nhập theo Quy định về thuế tối thiểu toàn cầu của tất cả các đơn vị hợp thành</td>
				<td class="align-c">A2</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A2)"/></td>
			</tr>
			<tr>
				<td class="align-c">1.1.2</td>							
				<td class="align-l">Lỗ theo Quy định về thuế tối thiểu toàn cầu của tất cả các đơn vị hợp thành</td>
				<td class="align-c">A3</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A3)"/></td>
			</tr>
			<tr>
				<td class="align-c">2</td>							
				<td class="align-l">Giá trị tài sản hữu hình và tiền lương được giảm trừ theo Quy định về thuế tối thiểu toàn cầu (A4=A5+A8)</td>
				<td class="align-c">A4</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A4)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.1</td>							
				<td class="align-l">Giá trị tài sản hữu hình được giảm trừ (A5=A6 x A7)</td>
				<td class="align-c">A5</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A5)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.1.1</td>							
				<td class="align-l">Giá trị tài sản hữu hình hợp lệ</td>
				<td class="align-c">A6</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A6)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.1.2</td>							
				<td class="align-l">Tỷ lệ giảm trừ</td>
				<td class="align-c">A7</td>
				<td class="align-c">%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A7)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.2</td>							
				<td class="align-l">Giá trị tiền lương được giảm trừ (A8=A9 x A10)</td>
				<td class="align-c">A8</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A8)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.2.1</td>							
				<td class="align-l">Chi tiền lương hợp lệ</td>
				<td class="align-c">A9</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A9)"/></td>
			</tr>
			<tr>
				<td class="align-c">2.2.2</td>							
				<td class="align-l">Tỷ lệ giảm trừ</td>
				<td class="align-c">A10</td>
				<td class="align-c">%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_A10)"/></td>
			</tr>
			<tr>
				<td class="align-c">3</td>							
				<td class="align-l">Tỷ lệ thuế bổ sung (B = 15% - B2)</td>
				<td class="align-c">B</td>
				<td class="align-c">%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_B)"/></td>
			</tr>
			<tr>
				<td class="align-c">3.1</td>							
				<td class="align-l">Tổng số thuế thu nhập doanh nghiệp tại Việt Nam thuộc phạm vi áp dụng đã được điều chỉnh trong năm tài chính của các đơn vị hợp thành tại Việt Nam</td>
				<td class="align-c">B1</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_B1)"/></td>
			</tr>
			<tr>
				<td class="align-c">3.2</td>							
				<td class="align-l">Thuế suất thực tế (B2=B1/A1)</td>
				<td class="align-c">B2</td>
				<td class="align-c">%</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_B2)"/></td>
			</tr>
			<tr>
				<td class="align-c">4</td>							
				<td class="align-l">Số thuế bổ sung được điều chỉnh trong năm hiện hành (nếu có)</td>
				<td class="align-c">C</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_C)"/></td>
			</tr>
			<tr>
				<td class="align-c">5</td>							
				<td class="align-l">Tổng số thuế bổ sung của đơn vị hợp thành tại Việt Nam (D = A x B + C)</td>
				<td class="align-c">D</td>
				<td class="align-c"><xsl:value-of select="$tkchinh/ma_DonViTien"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_D)"/></td>
			</tr>
			<tr>
				<td class="align-c">6</td>							
				<td class="align-l">Tổng số thuế bổ sung của đơn vị hợp thành theo đồng Việt Nam trong trường hợp khai Tờ khai thông tin bằng đồng ngoại tệ và lựa chọn khai Tờ khai thuế TNDN bổ sung, nộp thuế TNDN bổ sung bằng đồng Việt Nam (nếu có)</td>
				<td class="align-c">E</td>
				<td class="align-c">VND</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_I/ct_E)"/></td>
			</tr>
		</table><br/>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>II. PHÂN BỔ THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG 
		THEO QUY ĐỊNH VỀ THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG TỐI THIỂU NỘI ĐỊA ĐẠT CHUẨN GIỮA CÁC ĐƠN VỊ HỢP THÀNH TẠI VIỆT NAM</b></div>
		
		<div style="width:90%;padding-top: 6pt;text-align: right">Đơn vị tiền: <xsl:value-of select="$pl01_tndn/Muc_II/ma_DonViTien"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tiêu thức phân bổ số thuế TNDN bổ sung phải nộp 
		theo quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn giữa các đơn vị hợp thành tại Việt Nam: <xsl:value-of select="$pl01_tndn/Muc_II/tieu_ThucPhanBo"/></div><br/>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c"><b>TT</b></td>
				<td class="align-c"><b>Tên đơn vị hợp thành</b></td>
				<td class="align-c"><b>Mã số thuế được cấp tại Việt Nam</b></td>
				<td class="align-c"><b>Cơ quan thuế quản lý trực tiếp đơn vị hợp thành</b></td>
				<td class="align-c"><b>Tỷ lệ phân bổ (%)</b></td>
				<td class="align-c"><b>Số thuế TNDN bổ sung phải nộp được phân bổ</b></td>
			</tr>
			<tr>
				<td class="align-c">(1)</td>
				<td class="align-c">(2)</td>
				<td class="align-c">(3)</td>
				<td class="align-c">(4)</td>
				<td class="align-c">(5)</td>
				<td class="align-c">(6)</td>
			</tr>				
			<xsl:for-each select="$pl01_tndn/Muc_II/so_ThueTNDN/ChiTiet">
			<xsl:variable name="currentRows1" select='position()'/>																
			<tr>
				<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
				<td class="align-j"><xsl:value-of select="ten_DVHT"/></td>
				<td class="align-c"><xsl:value-of select="mst_DVHT"/></td>
				<td class="align-j"><xsl:value-of select="ten_CQTQuanLy"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ty_LePhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_ThuePhanBo)"/></td>
			</tr>														 
			</xsl:for-each>
			<tr>
				<td></td>
				<td colspan="3" class="align-l">Tổng</td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_II/so_ThueTNDN/tong_TyLePhanBo)"/></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl01_tndn/Muc_II/so_ThueTNDN/tong_SoThuePhanBo)"/></td>
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
