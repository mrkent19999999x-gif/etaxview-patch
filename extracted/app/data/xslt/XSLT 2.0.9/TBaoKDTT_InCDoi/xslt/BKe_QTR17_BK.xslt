<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="BangKeDTu">
			<xsl:variable name="BKeThue" select="./BKeThue" />
			<xsl:variable name="TTinChung" select="./BKeThue/TTinChung" />
			<xsl:variable name="NDungBKe" select="./BKeThue/NDungBKe" />
			<html>
				<body>
					<div class="content_bke">
						<table cellpadding="0" cellspacing="0" class="tkhai_table fz17px" width="100%">
							<tr class="align-c">
								<td colspan="8" style="height:45px;">
									<xsl:if test="$TTinChung/TTinBKeThue/tenBKe !=''">
										<b id="upper">
											<xsl:value-of select="$TTinChung/TTinBKeThue/tenBKe" />
										</b>
									</xsl:if>
									<br />
									Cơ quan thuế:
									<xsl:if test="$TTinChung/CQT/tenCQT !=''">
										<b id="upper">
											<xsl:value-of select="$TTinChung/CQT/tenCQT" />
										</b>
									</xsl:if>
								</td>
							</tr>
						</table>
						<br />
						<br />
						<table cellpadding="0" cellspacing="0" class="tkhai_table fz17px" width="100%">
							<tbody >
								<tr class="align-c">
									<td style="height:23px;" rowspan="2">
										<b>Số TT</b>
									</td>
									<td colspan="5">
										<b>THÔNG TIN NGƯỜI NỘP THUẾ</b>
									</td>
									<td colspan="2" height="30px">
										<b>THÔNG TIN CƠ QUAN THUẾ QUẢN LÝ</b>
									</td>
								</tr>
								<tr class="align-c">
									<td style="height:30px;">
										<b>MST</b>
									</td>
									<td style="height:30px;">
										<b>Tên NNT</b>
									</td>
									<td style="height:30px;">
										<b>Địa chỉ</b>
									</td>
									<td style="height:30px;">
										<b>Số điện thoại</b>
									</td>
									<td style="height:30px;">
										<b>Thư điện tử</b>
									</td>
									<td style="height:30px;">
										<b>Cơ quan thuế</b>
									</td>
									<td style="height:30px;">
										<b>Bộ phận liên hệ</b>
									</td>
								</tr>
								<xsl:for-each select="$NDungBKe/TBaoThueDTu">
									<tr>
										<td id="td_table" class="align-c">
											<countNo>
												<xsl:value-of select="position()" />
											</countNo>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/maNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/maNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/tenNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/tenNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/diaChiNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/diaChiNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/dienThoaiNNT !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/dienThoaiNNT" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/emailNNT !=''">
												<xsl:value-of select="concat('&#160;',TBaoThue/NDungTBao/emailNNT,'&#160;') " />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/ThongTinCQT/tenCQT !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/ThongTinCQT/tenCQT" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/ThongTinCQT/boPhanLienHe !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/ThongTinCQT/boPhanLienHe" />
											</xsl:if>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
					</div>
				</body>
			</html>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>