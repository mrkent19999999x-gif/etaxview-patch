<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
	<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<xsl:variable name="ttchungtb" select="TBaoThue/TTinChung"/>
	<xsl:variable name="ttchungdk" select="DKyThue/TTinChung"/>
	<xsl:param name="smallcase" select="'abcdefghijklmnopqrstuvwxyzàèìòùáéíóúýâêîôûãñõäëïöüÿåæœçđøặằắậầấụờớợựừứệềếọộồốịỳủơổ'"/>
	<xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÈÌÒÙÁÉÍÓÚÝÂÊÎÔÛÃÑÕÄËÏÖÜŸÅÆŒÇÐØẶẰẮẬẦẤỤỜỚỢỰỪỨỆỀẾỌỘỒỐỊỲỦƠỔ'"/>
	
	<!-- start header 30/ĐK-TCT (TT86/2024)-->
	<xsl:template name="tkhaiHeader_30_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center"></td>
					<td style="width:25%;vertical-align:top;" align="top">
						<div class="bieu_mau_div">
							<div>
				  Mẫu số: 
								<b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">
									<xsl:value-of select="$moTaBieuMau"/>
								</span>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
						<b>
							<xsl:value-of select="$ttkthue/tenNNT"/>
						</b>
						<br/>────────────
						<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/so">
				Số: 
							<xsl:value-of select="$tkchinh/so"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
						<i>
						Ngày <xsl:value-of select="substring($ttkthue/ngayKy, 9, 2)" />
						tháng <xsl:value-of select="substring($ttkthue/ngayKy, 6, 2)" />
						năm <xsl:value-of select="substring($ttkthue/ngayKy, 1, 4)" />
						</i>
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>
	
	
	<!-- start header 31/ĐK-TCT (TT86/2024)-->
	<xsl:template name="tkhaiHeader_31_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center"></td>
					<td style="width:25%;vertical-align:top;" align="top">
						<div class="bieu_mau_div">
							<div>
				  Mẫu số: 
								<b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">
									<xsl:value-of select="$moTaBieuMau"/>
								</span>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
						<b>
							<xsl:value-of select="$ttkthue/tenNNT"/>
						</b>
						<br/>────────────
						<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/so">
				Số: 
							<xsl:value-of select="$tkchinh/so"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
						<i>
						Ngày <xsl:value-of select="substring($ttkthue/ngayKy, 9, 2)" />
						tháng <xsl:value-of select="substring($ttkthue/ngayKy, 6, 2)" />
						năm <xsl:value-of select="substring($ttkthue/ngayKy, 1, 4)" />
						</i>
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>

	

	<!-- start header 01/APA-ĐN-->
	<xsl:template name="tkhaiHeader_01_APA_DN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table style="width:100%; border:0; border-collapse:collapse;">
			  <tr>
				<td style="width:75%;"></td>
				<td style="width:25%; text-align:right; vertical-align:top;">
				  <div class="bieu_mau_div">
					<div>
					  <b>
						<xsl:value-of select="$mauTKhai"/>
					  </b>
					  <br/>
					  <span class="mtatentkhai" style="font-size:9pt">
						<xsl:value-of select="$moTaBieuMau"/>
					  </span>
					</div>
				  </div>
				</td>
			  </tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:100%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						
					</td>
					<td style="width:50%;text-align:center">
						
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>
	
	<!-- start header 01-DKTD-DVHT-->
	<xsl:template name="tkhaiHeader_01_DKTD_DVHT">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>

		</div><br/>

	</xsl:template>
	
	<!--To khai_dangkythue_HKD 01_TB_DDKD-->
<xsl:template name="tkhaiHeader_dangkythue_HKD">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%" >
				<tr>
					<td style="width:73%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>---------------------------
						<br/>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau"/>
                            ) </span>
							</div>
						</div>
					</td>
					</tr>
					<tr>
					<td class="align-c"><b>THÔNG BÁO<br/>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='1'">
					Về việc thành lập đối với địa điểm kinh doanh
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='1'">
					Về việc thay đổi thông tin đối với địa điểm kinh doanh
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='1'">
					Về việc tạm ngừng đối với địa điểm kinh doanh
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='1'">
					Về việc khôi phục tạm ngừng kinh doanh trước thời hạn đối với địa điểm kinh doanh
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='1'">
					Về việc khôi phục tạm ngừng đối với địa điểm kinh doanh
					</xsl:if>
					</b> 
					<br/>
					<br/>
					</td>
					</tr>
				
				<tr>
				<td class="align-c">
				Kính gửi: <xsl:value-of select="$ttkthue/tenCQTQuanLy"/>
				</td>
				</tr>
			</table>
			<br/>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>1. Người nộp thuế: </b> <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>2. Mã số thuế: </b><xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>3. Thông tin đại lý thuế (nếu có): </b>
					</td>
				</tr>
				<tr>
					<td colspan="3">3a. Tên: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">3b. Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
					</td>
				</tr>
				<tr>
				<td colspan="3">Thông báo về việc 
				<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/dangKyMoi='1'">
					thành lập địa điểm kinh doanh như sau:
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/thayDoiThongTin='1'">
					thay đổi thông tin địa điểm kinh doanh như sau:
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tamNgung='1'">
					tạm ngừng địa điểm kinh doanh như sau:
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/khoiPhucTamNgung='1'">
					khôi phục tạm ngừng kinh doanh trước thời hạn địa điểm kinh doanh như sau:
					</xsl:if>
					<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/chamDutHoatDong='1'">
					chấm dứt địa điểm kinh doanh như sau:
					</xsl:if>
				
					</td>
				</tr>
				
				
				
				
				
			</table>
			
		</div>
	</xsl:template>	
	
</xsl:stylesheet>