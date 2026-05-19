<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    

<!-- thông nộp thuế LPTB-->

<xsl:template name="TBaoLPTBHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<!--<xsl:param name="moTaBieuMau" /> -->
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td   colspan="4"  align="right" >
					<div></div>
					<div class="bieu_mau_div" style="width: 30%; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
							<!-- <br/>
                        <span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>) </span> -->
                            
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
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/>
					<b>THÔNG BÁO NỘP TIỀN</b>
					<br/><br/>
					 <b>Về lệ phí trước bạ đối với tài sản khác trừ nhà, đất</b>
					
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<xsl:template name="TBaoHangHeader">	
	<!--<xsl:param name="ngaylapTKhai" /> -->
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td width="50%">
					<br/>
					<br/>
					<br/>
						<div style="padding-bottom:8px">
							<b>Tên doanh nghiệp:&#160;&#160;&#160;&#160; </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/>
						</div>
						<div style="padding-bottom:8px">
							<b>Địa chỉ:&#160;&#160;&#160;&#160; </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/dchiNNT"/>
						</div>
						<div style="padding-bottom:8px">
							<b>Số:&#160;&#160;&#160;&#160; </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/CONG_VAN/SO_CONGVAN"/>
						</div>
						<div style="padding-bottom:8px">
							Về việc thông báo giá bán ô tô, xe máy
						</div>
				</td>
				<td width="50%">
					<div align="center">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập - Tự do - Hạnh phúc</b><br/>
					_______________<br/>
					<div style= "padding-top:5px"></div>
					<i style= "padding-left:145px"> <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/ngayLapTKhai,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/ngayLapTKhai,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/ngayLapTKhai,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			</tbody>
			</table>
					<div style="padding-bottom:5px">
					<br/>
						<b style="padding-left: 95pt"> Kính gửi</b>
					</div >
					<div style="padding-bottom:5px">
					<span style="padding-left: 115pt">- CỤC THUẾ </span> <br/> 
					<span style="padding-left: 115pt">- Cục thuế các tỉnh, thành phố trực thuộc Trung ương </span>
						
					</div>
	
</xsl:template>
</xsl:stylesheet>