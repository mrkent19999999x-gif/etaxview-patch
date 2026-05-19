<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    <xsl:param name="smallcase" select="'abcdefghijklmnopqrstuvwxyzàèìòùáéíóúýâêîỉôûãñõäëïöüÿåæœçđøẵặằắậầấụờớợựừứệềếọộồốịỳủơổ'"/>
	<xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÈÌÒÙÁÉÍÓÚÝÂÊÎỈÔÛÃÑÕÄËÏÖÜŸÅÆŒÇÐØẴẶẰẮẬẦẤỤỜỚỢỰỪỨỆỀẾỌỘỒỐỊỲỦƠỔ'"/>
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
<!-- thông báo bước 1 tờ khai  hoàn TT80 01/HT cho 02/QTT -->

<xsl:template name="tbao_01_TB_HT_02_QTT">	
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
					<div align="center" style="margin:0; padding:0;"><xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/Header/ten_cqt_CapTren"/></div>
					<div align="center" style="margin:0; padding:0;"><b><xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/Header/ten_cqt_QuanLy"/></b></div>
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
					<lable><b>Về việc tiếp nhận hồ sơ đề nghị hoàn thuế </b></lable> 
					
					<!--<b><xsl:value-of select="$motaTBao" /></b>-->
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
</xsl:stylesheet>