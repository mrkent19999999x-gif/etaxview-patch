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
	
</xsl:stylesheet>