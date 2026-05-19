<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    <xsl:param name="smallcase" select="'abcdefghijklmnopqrstuvwxyzẩảàèìòùáéíóúýâêîỉôûãñõäëïöüÿåæœçđøẵặằắậầấụờớợựừứệềếễọộồốịỳủơổỗ'"/>
	<xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZẨẢÀÈÌÒÙÁÉÍÓÚÝÂÊÎỈÔÛÃÑÕÄËÏÖÜŸÅÆŒÇÐØẴẶẰẮẬẦẤỤỜỚỢỰỪỨỆỀẾỄỌỘỒỐỊỲỦƠỔỖ'"/>
<xsl:template name="tbaoHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
				
					<div align="center" style="margin:0; padding:0;">
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>


<xsl:template name="tbaoHeader_capLaiMK">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<xsl:template name="tbaoHeader_koMauSo">	

	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>

			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>   

<xsl:template name="tbaoHeaderTVan_koMauSo">	
	<xsl:param name="ngayTBao" />
	<xsl:param name="tenTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>

			<tr>
				<td width="100%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
		
			<tr>
				<td align="center" style="text-transform: uppercase;">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$tenTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>  
<xsl:template name="tbaoHeaderTVan">	
	<xsl:param name="mauTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="tenTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>

			<tr>
				<td width="100%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
			<td style="vertical-align: top;"  align="left">
					<div class="bieu_mau_div" style="width: auto; float: left;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td align="center" style="text-transform: uppercase;">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$tenTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>  
<xsl:template name="hsoHeaderTVan">	
	<xsl:param name="mauTBao" />
	<xsl:param name="tenTBao" />
	<xsl:param name="tenCQT" />
	<xsl:param name="tIN" />
	<xsl:param name="tenNNT" />
	
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td>
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<!--<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>-->
					</div>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"  align="left" >
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: left;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td align="center" style="text-transform: uppercase;">
					<br/>
					<b>HỒ SƠ</b><br/>
					<b><xsl:value-of select="$tenTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
	<br/>
	<table>
		<tr>
			<td><b><u><i>Kính gửi:</i></u></b></td>
			<td><xsl:value-of select="$tenCQT"/></td>
		</tr>
		<tr>
			<td>Tên người nộp thuế:</td>
			<td><xsl:value-of select="$tenNNT"/></td>
		</tr>
		<tr>
			<td>Mã số thuế:</td>
			<td><xsl:value-of select="$tIN"/></td>
		</tr>
	</table>
</xsl:template>   
<xsl:template name="hsoHeaderTVan_Ngay">	
	<xsl:param name="mauTBao" />
	<xsl:param name="tenTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="noiTBao" />
	
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"  >
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td>
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<xsl:value-of select="$noiTBao"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/>
					</div>
				</td>
			</tr>
			<tr>
				<td align="center" style="text-transform: uppercase;">
					<br/>
					<b><xsl:value-of select="$tenTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>   
<xsl:template name="hsoDkyHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="tenTBao" />
	<xsl:param name="ngayTBao" />
	
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"  >
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td>
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<!--.........., ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/>-->
					</div>
				</td>
			</tr>
			<tr>
				<td align="center" style="text-transform: uppercase;">
					<br/>
					<b><xsl:value-of select="$tenTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>   

<xsl:template name="tbaoHeader_03TB_ĐK">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />

	<table cellpadding="0" cellspacing="0" width="100%">

			
			<tr>
				<td width="20%">
					<div align="center" style="margin:0; padding:0;">
					       BỘ TÀI CHÍNH <br/>
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" /> /TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>

	</table>
</xsl:template>

<xsl:template name="tbao_01_1TB_TDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
					BỘ TÀI CHÍNH  <br/>
						TỔNG CỤC THUẾ <br/>
						 ------------------<br/>
						 Số: <xsl:value-of select="$soTBao" /> /TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo-----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<!-- thông báo bước 1 tờ khai  hoàn 01/ĐNHT-->

<xsl:template name="tbao_01_1TB_HDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/>
                            </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
					BỘ TÀI CHÍNH  <br/>
						TỔNG CỤC THUẾ <br/>
						 ------------------<br/>
						 Số: <xsl:value-of select="$soTBao" /> /TB-HĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
	
					----------oOo-----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 1 tờ khai  hoàn TT80 01/HT-->

<xsl:template name="tbao_01_TB_HT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/>
                            </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;"><xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/ten_cqt_CapTren"/></div>
					<div align="center" style="margin:0; padding:0;"><b><xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/ten_cqt_QuanLy"/></b></div>
					<!--BỘ TÀI CHÍNH  <br/>
						TỔNG CỤC THUẾ <br/>-->
						<div align="center"> ------------------<br/></div>
						 Số: <xsl:value-of select="$soTBao" /> /TB-HĐT
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
	
					----------oOo-----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
					<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/maToKhai='916'"><lable><b>Về việc tiếp nhận hồ sơ đề nghị hoàn thuế </b></lable> </xsl:if>
					<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/maToKhai='384'"><lable><b>Về việc tiếp nhận hồ sơ đề nghị hoàn thuế </b> </lable>  </xsl:if>
					<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/maToKhai='915'"><lable><b>Về việc tiếp nhận hồ sơ đề nghị hủy hồ sơ 
đề nghị hoàn thuế </b></lable> </xsl:if>
					
					<!--<b><xsl:value-of select="$motaTBao" /></b>-->
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 1 tờ khai  TT110-->

<xsl:template name="tbaoHeader_01_1TDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>TỔNG CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>V/v: Tiếp nhận hồ sơ khai thuế điện tử</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<xsl:template name="tbaoHeader_01_TDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>TỔNG CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
				<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='Y'"> 	<b>V/v: Chấp nhận việc nộp hồ sơ khai thuế điện tử</b>
						</xsl:if>
				<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='N'"> 	<b>V/v: Không chấp nhận việc nộp hồ sơ khai thuế điện tử</b>
						</xsl:if>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 1 cho các tờ khai QLAC-->

<xsl:template name="tbaoHeader_01_TDT_QLAC">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
					<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
									TỔNG CỤC THUẾ <br/>
						 ----------------------<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc</b><br/>
					------------------------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>V/v: Tiếp nhận đã nộp hồ sơ thuế qua mạng</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 2 cho các tờ khai Tem điện tử-->
<xsl:template name="tbaoHeader_02_TB_TEM">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						
						<xsl:value-of select="translate(TBaoThueDTu/TBaoThue/NDungTBao/tenCQT_captren,$smallcase,$uppercase)"/><br/>
					<b><xsl:value-of select="translate(TBaoThueDTu/TBaoThue/TTinChung/CQT/tenCQT,$smallcase,$uppercase)"/></b><br/>
						 ------------------------<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBaoThueDTu/soTbao/so"/>/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					-------------------------<br/>
					<i><xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/diaDanh"/>, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/soTbao/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/soTbao/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/soTbao/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<br/>
					<b>THÔNG BÁO</b><br/>
				<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='Y'"> 	<b>Thông báo về việc chấp nhận <xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></b>
						</xsl:if>
				<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='N'"> 	<b>Thông báo về việc không chấp nhận <xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/></b>
						</xsl:if>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<xsl:template name="tbaoHeader_01_TDT_DKT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>TỔNG CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>Về việc tiếp nhận hồ sơ đăng ký thuế điện tử</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 1 tờ khai+ hoàn thuế TT19 cho 02QTT gợi có chỉ tiêu hoàn (13/03/2025)-->

<xsl:template name="tbaoHeader_01_1TDT_02QTT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>V/v: Tiếp nhận hồ sơ khai thuế điện tử; hồ sơ đề nghị hoàn thuế</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>


<!-- thông báo bước 1 cho to 06_PS_PSDT-->

<xsl:template name="tbaoHeader_01_1_06_PS_PSDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />/TB-TĐT
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>V/v: Tiếp nhận Đề nghị cấp hóa đơn điện tử có mã của cơ quan thuế</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>


<!-- thông báo bước 1 cho to 01_TB_SSDT-->
<xsl:template name="tbaoHeader_01_TB_SSDT">	
	<xsl:param name="soTBao" select="TBTNhan/STBao/So"/>
	<xsl:param name="ngayTBao" select="TBTNhan/STBao/NTBao"/>
	
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/TB-SSĐT</b>												
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
		
			<tr>
				<td colspan="2" align="center">
					<br/>
					<b>THÔNG BÁO</b><br/>
				<b> Về việc tiếp nhận và kết quả xử lý về việc hóa đơn điện tử/chứng từ điện tử đã lập sai</b>
				</td>
			</tr>		
		
		<tr>
		 	<td colspan="2" align="center"><br/>Kính gửi: 
			<xsl:value-of select="TBTNhan/DLTBao/TNNT"/> <br/>
			 Mã số thuế: <xsl:value-of select="TBTNhan/DLTBao/MST"/> </td>
		</tr>  
								
		</tbody>
	</table>
</xsl:template>   

<!-- thông báo bước 1 dùng chung cho 2 tờ khai 06ĐNPS và BC26-BLDT theo thông tư 19 -->
<xsl:template name="tbaoHeader_BC26_BLDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>V/v: Tiếp nhận hồ sơ hóa đơn điện tử</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo bước 1 cho to 01_DKTD_HDDT-->

<xsl:template name="tbaoHeader_01_1_TB_NTDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div ><b>Mẫu số: 01/TB-TNĐT</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
	<xsl:if test="TBao/DLTBao/TTKhai='Đăng ký/thay đổi thông tin sử dụng hóa đơn điện tử'"> 
		<xsl:if test="TBao/DLTBao/THop='1'">
			<tr>
				<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>V/v: Về việc tiếp nhận tờ khai đăng ký sử dụng hóa đơn điện tử</b>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="TBao/DLTBao/THop='3'">
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>V/v: Về việc tiếp nhận tờ khai thay đổi thông tin sử dụng hóa đơn điện tử</b>
				</td>
			</tr>
		</xsl:if>
	</xsl:if>
	<xsl:if test="TBao/DLTBao/TTKhai='Đăng ký/thay đổi thông tin sử dụng chứng từ điện tử'"> 
		<xsl:if test="TBao/DLTBao/THop='1'">
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>V/v: Về việc tiếp nhận tờ khai đăng ký sử dụng chứng từ điện tử</b>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="TBao/DLTBao/THop='3'">
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>V/v: Về việc tiếp nhận tờ khai thay đổi thông tin sử dụng chứng từ điện tử</b>
				</td>
			</tr>
		</xsl:if>
	</xsl:if>
		<tr>
			<td colspan="2" align="center"><br/>Kính gửi: 
			 &#160;&#160;<xsl:value-of select="TBao/DLTBao/TNNT"/>
			 (MST: <xsl:value-of select="TBao/DLTBao/MST"/>)</td>
		</tr>
		</tbody>
	</table>
</xsl:template>


<!-- thông báo bước 2 cho to 01_DKTD_HDDT-->

<xsl:template name="tbaoHeader_103_TB_KTDT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/TB-ĐKĐT</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBao/STBao/So" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
		<!--Đối với tờ khai 01/KĐTĐ_HĐĐT-->
		<xsl:if test="TBao/DLTBao/HTDKy='1'">	
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận đăng ký sử dụng hóa đơn điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc chấp nhận đăng ký sử dụng hóa đơn điện tử</b>
					</td>
				</tr>
			</xsl:if>
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận đăng ký sử dụng hóa đơn điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc không chấp nhận đăng ký sử dụng hóa đơn điện tử</b>
					</td>
				</tr>
			</xsl:if>
		</xsl:if>
		<xsl:if test="TBao/DLTBao/HTDKy='2'">	
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử</b>
					</td>
				</tr>
			</xsl:if>
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc không chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử</b>
					</td>
				</tr>
			</xsl:if>
		</xsl:if>
		<!--Đối với tờ khai 01/KĐTĐ_CTĐT-->
		<xsl:if test="TBao/DLTBao/HTDKy='1'">	
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận đăng ký sử dụng chứng từ điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc chấp nhận đăng ký sử dụng chứng từ điện tử</b>
					</td>
				</tr>
			</xsl:if>
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận đăng ký sử dụng chứng từ điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc không chấp nhận đăng ký sử dụng chứng từ điện tử</b>
					</td>
				</tr>
			</xsl:if>
		</xsl:if>
		<xsl:if test="TBao/DLTBao/HTDKy='2'">	
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận thay đổi thông tin sử dụng chứng từ điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc chấp nhận thay đổi thông tin sử dụng chứng từ điện tử</b>
					</td>
				</tr>
			</xsl:if>
			<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận thay đổi thông tin sử dụng chứng từ điện tử'"> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc không chấp nhận thay đổi thông tin sử dụng chứng từ điện tử</b>
					</td>
				</tr>
			</xsl:if>
		</xsl:if>
	<br/>
		<tr>
			<td colspan="2" align="center">Kính gửi: 
			 &#160;&#160;<xsl:value-of select="TBao/DLTBao/TNNT"/>
			 (MST: <xsl:value-of select="TBao/DLTBao/MST"/> )</td>
		</tr>
		</tbody>
	</table>
</xsl:template>


<!-- thông báo 107 Giai trinh, bo sung thong tin cho to 01_DKTD_HDDT-->

<xsl:template name="tbaoHeader_107_TB_BSTT_NNT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/TB-BSTT-NNT</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<b><xsl:value-of select="TBao/DLTBao/TCQTCTren" /></b><br/>
						<b><xsl:value-of select="TBao/DLTBao/TCQT" /></b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBao/STBao/So" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>Về việc giải trình, bổ sung thông tin, tài liệu</b>
				</td>
			</tr>

		<tr>
			<td colspan="2" align="l">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Kính gửi: 
			 &#160;&#160;<xsl:value-of select="TBao/DLTBao/TNNT"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="l">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: 
			 &#160;&#160; <xsl:value-of select="TBao/DLTBao/MST"/></td>
		</tr>

		</tbody>
	</table>
</xsl:template>

<!-- thông báo chủ động 107 Giai trinh, bo sung thong tin GD2-->

<xsl:template name="tbaoHeader_107_TB_BSTT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/TB-BSTT-NNT</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<b><xsl:value-of select="TBao/DLTBao/TCQTCTren" /></b><br/>
						<b><xsl:value-of select="TBao/DLTBao/TCQT" /></b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBao/STBao/So" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO (Lần <xsl:value-of select="TBao/DLTBao/LGTrinh"/>)</b><br/>
				<b>Về việc giải trình, bổ sung thông tin, tài liệu</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!--Phục lục đính kèm thông báo chủ động 107 Giai trinh, bo sung thong tin -->

<xsl:template name="tbaoHeader_107_TB_BSTT_PL">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
				<b>(Ban hành kèm theo Thông báo số <xsl:value-of select="TBao/STBao/So"/> 
				ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd/mm/yyyy')"/> 
				của <xsl:value-of select="TBao/DLTBao/TCQT"/>)</b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- thông báo 108 Ngung su dung cho to 01_DKTD_HDDT-->

<xsl:template name="tbaoHeader_108_TB_NSD">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/TB-NSD</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						BỘ TÀI CHÍNH <br/>
						<b>CỤC THUẾ </b><br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBao/STBao/So" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>

				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b>Về việc ngừng sử dụng hóa đơn</b>
					</td>
				</tr>
	<br/>

		</tbody>
	</table>
</xsl:template>


		<!-- thông báo bước 2 cho to 01_CCTT_DK-->

<xsl:template name="tbaoHeader_01_CCTT_TB">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<xsl:param name="moTaBieuMau" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="2"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 32%; float: right;">
						<div >Mẫu số: <b>01/CCTT-TB</b>
								<!-- <xsl:value-of select="$mauTBao"/> -->
							 <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>
                           ) </span>
                            
						</div>
						<br/>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						CỤC THUẾ<br/>
						 _______________<br/></div>
						 <div class="align-c">Số: <xsl:value-of select="TBao/STBao/So" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<i>Hà Nội, ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr> 
				<tr>
					<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="TBao/DLTBao/Ten"/></b>
					</td>
				</tr>

	<br/>
		<tr>
			<td colspan="2" align="center">Kính gửi: 
			 &#160;&#160;<xsl:value-of select="TBao/DLTBao/TNNT"/>
			 (MST: <xsl:value-of select="TBao/DLTBao/MST"/> )</td>
		</tr>
		</tbody>
	</table>
</xsl:template>

</xsl:stylesheet>