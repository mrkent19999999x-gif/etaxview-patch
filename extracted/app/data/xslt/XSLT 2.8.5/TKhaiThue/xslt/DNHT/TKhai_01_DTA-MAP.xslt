<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>
 <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh'/>		
		<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		<!--<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />-->
		<!--<xsl:variable name="ghichuTK"   select="'Đề nghị đánh dấu (x) vào ô trống thích hợp:'"/>-->
		<xsl:call-template name="tkhaiHeader_01DTA">
			<xsl:with-param name="mauTKhai"   select="'01/DTA-MAP'"/>
			<xsl:with-param name="moTaBMau"   select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/moTaBMau"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">

		<table class="ttinnnt_table">

				<tr>					
					<td><div style="width:100%;text-align:center"><b>ĐỀ NGHỊ THỦ TỤC THỎA THUẬN SONG PHƯƠNG (MAP) </b></div></td>						
				</tr>
				<tr>
					<td><div style="width:100%;text-align:center"><b>Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></b></div></td>
				</tr>
		</table>
		
		<table class="ttinnnt_table">
				<tr>
					<td class="align-L" colspan="3" style="width:80%">
						<br></br><b>Thông tin về đối tượng đề nghị MAP:</b>
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						[01] Tên người nộp thuế:
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
			
				</tr>
				<tr>
					<td class="align-l">
						[02] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[03] Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[04] Tỉnh: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
							[05] Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							[06] Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							[07] Email: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
						
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[08] Giấy phép đăng ký kinh doanh: <xsl:value-of select="$tkchinh/TTinNNT/ct08_GP_DKKD"/>
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>	
		
				<tr>
					<td class="align-L" colspan="3" style="width:80%">
						<br></br><b>Đối tượng nước ngoài liên quan:</b>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[09] Tên đối tượng nước ngoài liên quan:
						<xsl:value-of select="$tkchinh/DoiTuongNN/ct09_tenDT"/>
					</td>
			
				</tr>
				<tr>
					<td class="align-l">
						[10] Nước/Vùng lãnh thổ nơi cư trú: <xsl:value-of select="$tkchinh/DoiTuongNN/ct10_ten_nuoc"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[11] Mã số thuế: <xsl:value-of select="$tkchinh/DoiTuongNN/ct11_mst"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[12] Địa chỉ: <xsl:value-of select="$tkchinh/DoiTuongNN/CT12_Dia_Chi"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
							[13] Điện thoại: <xsl:value-of select="$tkchinh/DoiTuongNN/ct13_dienThoai"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							[14] Fax: <xsl:value-of select="$tkchinh/DoiTuongNN/ct14_fax"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
							[15] Email: <xsl:value-of select="$tkchinh/DoiTuongNN/ct15_Email"/>
						
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[16] Giấy phép đăng ký kinh doanh: <xsl:value-of select="$tkchinh/DoiTuongNN/ct16_GPDKKD"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						[17] Mối quan hệ với đối tượng đề nghị MAP:
							<div style='padding-left:20px'>									
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/DoiTuongNN/ct17_MoiQH/congTyLienKet = 'true' or $tkchinh/DoiTuongNN/ct17_MoiQH/congTyLienKet = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160;Công ty liên kết 
									</input>

							<br></br><input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/DoiTuongNN/ct17_MoiQH/truSoChinh_CN = 'true' or $tkchinh/DoiTuongNN/ct17_MoiQH/truSoChinh_CN = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160;Trụ sở chính - Văn phòng chi nhánh
								</input>								

								<br></br>															
								
								<input type="checkbox" disabled="true"
									style="transform: scale(1.5); margin-left: 10px;margin-bottom:10px">
									<xsl:if test="$tkchinh/DoiTuongNN/ct17_MoiQH/khac = 'true' or $tkchinh/DoiTuongNN/ct17_MoiQH/khac = '1'">
									<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:if> &#160;&#160;Khác
								</input>

								<!-- Chỉ hiển thị "Nêu rõ" khi Khác được chọn -->
								<xsl:if test="$tkchinh/DoiTuongNN/ct17_MoiQH/khac = 'true' or $tkchinh/DoiTuongNN/ct17_MoiQH/khac = '1'">
								  &#160;&#160;&#160;Nêu rõ: <xsl:value-of select="$tkchinh/DoiTuongNN/ct17_MoiQH/neuRo"/>							
								</xsl:if>
																
							</div>
						
					</td>
				</tr>
				
				<tr>
					<td>
						<br></br><div>Căn cứ quy định tại Hiệp định thuế giữa Việt Nam và <xsl:value-of select="$tkchinh/TTinThoaThuan/nuocKyKet"/> 
						đề nghị Tổng cục Thuế tiến hành thủ tục Thỏa thuận song phương (MAP), cụ thể như sau: </div> <br></br>
					</td>				
				</tr>
				
				<tr>
					<td class="align-l">
						[18] Thông tin về thu nhập chịu thuế và số thuế đề nghị MAP:
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						<div style='padding-left:20px'>[18.1] Thông báo của cơ quan thuế về số thuế đề nghị MAP: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/ct18_1_tb_CQT"/> </div>
					</td>
				</tr>
				
				<tr>
					
				<td class="align-l">
						<div style='padding-left:20px'>[18.2] Năm tài chính có liên quan: </div>
												
						<div style='padding-left:20px'>									

						  <!-- Chỉ hiển thị khi checkbox Năm được chọn -->
						  <xsl:if test="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/nam = 'true' or 
										 $tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/nam = '1'">
							<input type="checkbox" disabled="true"
								   style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px" checked="checked"/>
							&#160;&#160; Năm: 
							<xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/nhapNam"/>
							<br/>
						  </xsl:if>

						  <!-- Chỉ hiển thị khi checkbox Ngày được chọn -->
						  <xsl:if test="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/ngay = 'true' or 
										 $tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/ngay = '1'">
							<input type="checkbox" disabled="true"
								   style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px" checked="checked"/>
							&#160;&#160; Ngày: từ ngày 
							<xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/tuNgay"/> 
							&#160;&#160;&#160; đến ngày  
							<xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_2_NamTaiChinh/denNgay"/>
						  </xsl:if>

						</div>
							
				</td>	
					
				</tr>
				
				<tr>
					<td class="align-l">
						<div style='padding-left:20px'>[18.3] Khoản thu nhập chịu thuế: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_3_ThuNhapCT/thuNhapCT"/> &#160;&#160;&#160;  Đơn vị tiền tệ: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_3_ThuNhapCT/tenTienTe"/>
						</div>
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						<div style='padding-left:20px'>[18.4] Số thuế đề nghị MAP: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_4_ThueMAP/thueMAP"/> <br></br></div>
						<div style='padding-left:20px'>									
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/daNop = 'true' or $tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/daNop = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160; Đã nộp 
									</input>								

								<br></br>
								<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/chuaNop = 'true' or $tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/chuaNop = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160; Chưa nộp
								</input>
								
								<!-- Chỉ hiển thị "Lý do" khi Chưa nộp được chọn -->
								<xsl:if test="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/chuaNop = 'true' or $tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/chuaNop = '1'">
								 &#160;&#160;&#160;Lý do: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT18_ThuNhapCT/CT18_4_ThueMAP/lyDo"/>							
								</xsl:if>																
							</div>
						
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						[19] Điều khoản Hiệp định thuế có liên quan: <xsl:value-of select="$tkchinh/TTinThoaThuan/ct19_DieuKhoan"/>
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						[20] Quan điểm của người nộp thuế và lý do đề nghị MAP: <xsl:value-of select="$tkchinh/TTinThoaThuan/ct20_QuanDiem"/>
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
						[21] Người nộp thuế đã từng đề nghị quy trình xử lý khiếu nại khác: 
						<div style='padding-left:20px'>									
									<input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/chuaDN = 'true' or $tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/chuaDN = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160; Chưa đề nghị
									</input>
								<br></br><input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/daDN = 'true' or $tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/daDN = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160; Đã đề nghị.
								</input>
								
								<!-- Chỉ hiển thị "Lý do đã đề nghị" khi Đã đề nghị được chọn -->
								<xsl:if test="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/daDN = 'true' or $tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/daDN = '1'">
								&#160;&#160;&#160;Nêu cụ thể: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/daDN_cuThe"/>								
								</xsl:if>
								
								
														

								<br></br><input type="checkbox" disabled="true"
										style="transform: scale(1.5); margin-left: 10px; margin-bottom:10px">
										<xsl:if test="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/duKienDN = 'true' or $tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/duKienDN = '1'">
										  <xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if> &#160;&#160; Dự kiến đề nghị.
								</input>
								
								<!-- Chỉ hiển thị "Lý do dự kiến đề nghị" khi Dự kiến đề nghị được chọn -->
								<xsl:if test="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/duKienDN = 'true' or $tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/duKienDN = '1'">
								&#160;&#160;&#160;Nêu cụ thể: <xsl:value-of select="$tkchinh/TTinThoaThuan/CT21_XuLyKhieuNai/duKienDN_cuThe"/>									
								</xsl:if>
					
							</div>
					</td>
				</tr>
				
				<tr>
					<td>
						<div>[22] Danh sách tài liệu gửi kèm:</div>
						<table class="tkhai_table">
							<xsl:for-each select="$tkchinh/TTinThoaThuan/CT22_TLGuiKem/TaiLieu">
								<xsl:variable name="currentRows" select="position()"/>
								<tr>
									<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
									<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
								</tr>
							</xsl:for-each>
						</table>
					</td>
				</tr>
		</table>
		
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<xsl:call-template name="tkhaiFooter_01DTA"/><br/>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
