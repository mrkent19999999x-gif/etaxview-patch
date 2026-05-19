<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:variable name="ghiChuPL1" select="'(Dành cho trường hợp doanh nghiệp khai thác tàu, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL2" select="'(Dành cho trường hợp hoán đổi/chia chỗ, kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:variable name="ghiChuPL3" select="'(Kèm theo Tờ khai 01/VTNN)'"/>
		<xsl:call-template name="tkhaiHeader-01VTNN_TT80">
			<xsl:with-param name="mauTKhai" select="'01/VTNN'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="ghuchuTK" select="''"/>
		</xsl:call-template>
		<div class="ndungtkhai_div">
			<div class="content">
				<div class="align-r">
					<i>Đơn vị tiền: Đồng Việt Nam </i>
				</div>
				<table class="tkhai_table">
					<thead class="tkhaiheader">
						<tr>
							<td  class="align-c"><b>STT</b></td>
							<td  class="align-c"><b>Chỉ tiêu</b></td>
							<td  class="align-c"><b>Mã chỉ tiêu</b></td>
							<td  class="align-c"><b>Số tiền</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
						</tr>
					</thead>
					<tbody id="tkhaitbody">
						<tr>
							<td  class="align-c">1</td>
							<td class="align-l">Doanh thu tính thuế</td>
							<td  class="align-c"><b>[09]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct09)"/></td>
						</tr>
						<tr>
							<td  class="align-c">2</td>
							<td class="align-l">Tỷ lệ (%) thuế TNDN</td>
							<td  class="align-c"><b>[10]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10)"/></td>
						</tr>
						<tr>
							<td  class="align-c">3</td>
							<td class="align-l">Số thuế TNDN được miễn, giảm theo Hiệp định</td>
							<td  class="align-c"><b>[11]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11)"/></td>
						</tr>
						<tr>
							<td  class="align-c">4</td>
							<td class="align-l">Số thuế TNDN phải nộp</td>
							<td  class="align-c"><b>[12]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12)"/></td>
						</tr>
						<tr>
							<td  class="align-c">5</td>
							<td class="align-l">Số thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</td>
							<td  class="align-c"><b>[13]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13)"/></td>
						</tr>
						<tr>
							<td  class="align-c">6</td>
							<td class="align-l">Số thuế TNDN đã tạm nộp trong năm</td>
							<td  class="align-c"><b>[14]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14)"/></td>
						</tr>
						<tr>
							<td  class="align-c">7</td>
							<td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm [15]=[12] – [14]</td>
							<td  class="align-c"><b>[15]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15)"/></td>
						</tr>
						<tr>
							<td  class="align-c">8</td>
							<td class="align-l">Số thuế TNDN còn phải nộp [16] = [12] – [13] – [14]</td>
							<td  class="align-c"><b>[16]</b></td>
							<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>			
		<xsl:call-template name="tkhaiFooter"/>
		 <div class="ghichu">
             <u><b>Ghi chú:</b></u><br/>
             - <i>1. Chỉ tiêu [13]: NNT kê khai số thuế TNDN nộp thừa kỳ trước chuyển sang bù trừ với số thuế TNDN phải nộp kỳ này.</i><br/>
             - <i>2. Chỉ tiêu [14]: NNT kê khai số thuế TNDN đã tạm nộp vào NSNN tính đến thời hạn nộp hồ sơ khai quyết toán. Ví dụ: NNT có kỳ tính thuế từ 01/01/2021 đến 31/12/2021 thì số thuế TNDN đã tạm nộp trong năm là số thuế TNDN đã nộp cho kỳ tính thuế năm 2021 tính từ ngày 01/01/2021 đến hết ngày 31/3/2022.</i><br/>
         </div>
<div id="sigDiv"></div>
</td>
</tr>
</table>		
	</xsl:template>
</xsl:stylesheet>
