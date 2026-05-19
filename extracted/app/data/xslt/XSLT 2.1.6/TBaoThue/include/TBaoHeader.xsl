<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    
<xsl:template name="tbaoHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="thongtuTBao"/>
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
						<div><xsl:value-of select="$thongtuTBao"/></div>
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

<!-- Header Thông báo 02/MST_NPT --> 
<xsl:template name="tbaoHeader_02MST_NPT">	
	<xsl:param name="mauTBao" />
	<xsl:param name="thongtuTBao"/>
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
	<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
			<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
			<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b><br/>
							<xsl:value-of select="$thongtuTBao"/></div>
					</div>	
				</td>
			</tr> 
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						CỤC THUẾ: <xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						<b>(CHI CỤC THUẾ): </b><xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />/TB-CCT
					</div>
				</td> <br/> 
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
			<tr>
				<td class="align-c">Kính gửi: Ông/ Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Địa chỉ: <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/> </td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<!-- Header Thông báo 01/TBTDK-CNKD --> 
<xsl:template name="tbaoHeader_01_TBTDK_CNKD">	
	<xsl:param name="mauTBao" />
	<xsl:param name="thongtuTBao"/>
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
	<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
			<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
			<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b><br/>
							<xsl:value-of select="$thongtuTBao"/></div>
					</div>	
				</td>
			</tr> 
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						CỤC THUẾ: <xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						<b>(CHI CỤC THUẾ): </b><xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />/TB-CCT
					</div>
				</td> <br/> 
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
			<tr>
				<td class="align-c">Kính gửi: Ông/ Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Địa chỉ: <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/> </td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<!-- Header Thông báo 01/TBT_CNKD--> 
<xsl:template name="tbaoHeader_01_TBT_CNKD">	
<xsl:param name="mauTBao" />
	<xsl:param name="thongtuTBao"/>
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
	<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
			<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
			<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b><br/>
							<xsl:value-of select="$thongtuTBao"/></div>
					</div>	
				</td>
			</tr> 
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						CỤC THUẾ: <xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						<b>(CHI CỤC THUẾ): </b><xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />/TB-CCT
					</div>
				</td> <br/> 
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
			<tr>
				<td class="align-c">Kính gửi: Ông/ Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Địa chỉ: <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/> </td>
			</tr>
		</tbody>
	</table>
</xsl:template>

<!-- Header Thông báo 01/CKTT-CNKD --> 
<xsl:template name="tbaoHeader_01_CKTT_CNKD">	
	<xsl:param name="mauTBao" />
	<xsl:param name="thongtuTBao"/>
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
	<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
			<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
			<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b><br/>
							<xsl:value-of select="$thongtuTBao"/></div>
					</div>	
				</td>
			</tr> 
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						CỤC THUẾ: <xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						<b>(CHI CỤC THUẾ): </b><xsl:value-of select="$cqtTBao/tenCQT"/> <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />/TB-CCT
					</div>
				</td> <br/> 
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
			<tr>
				<td class="align-c">Kính gửi: Ông/ Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></td>
			</tr>
			<tr>
				<td class="align-c">Địa chỉ: <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/> </td>
			</tr>
		</tbody>
	</table>
</xsl:template>
</xsl:stylesheet>