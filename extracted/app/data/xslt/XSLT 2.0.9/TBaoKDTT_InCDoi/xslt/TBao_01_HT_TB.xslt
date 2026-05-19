<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:include href="../include/TBaoHeader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'01/HT-TB'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="'THÔNG BÁO'" />
			<xsl:with-param name="motaTBao"   select="'Về việc chuyển hồ sơ sang diện kiểm tra trước, hoàn thuế sau'" />
			<xsl:with-param name="motaTBao_1"   select="''" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
					<div  class="content">
					<br/>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan Thuế nhận được Giấy đề nghị hoàn trả khoản thu NSNN số
								<xsl:if test="$ndungTBao/soGiayDNHT !=''">
									<span>
										<xsl:value-of select="$ndungTBao/soGiayDNHT" />
									</span>
								</xsl:if>						
								ngày
								<xsl:value-of select="substring($ndungTBao/ngayGiayDNHT,9,2)" />
								tháng
								<xsl:value-of select="substring($ndungTBao/ngayGiayDNHT,6,2)" />
								năm
								<xsl:value-of select="substring($ndungTBao/ngayGiayDNHT,1,4)" />
								của
								<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan"/>
									</span>
								</xsl:if>, mã số thuế
								<xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" />
									</span>
								</xsl:if>
								và hồ sơ gửi kèm theo.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế nhận được hồ sơ hoàn thuế: 
								<xsl:value-of select="concat(substring($ndungTBao/ngayNhanHSoHoan, 9,2),'/',substring($ndungTBao/ngayNhanHSoHoan, 6,2),'/',substring($ndungTBao/ngayNhanHSoHoan, 1,4))" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế thông báo hồ sơ hoàn thuế chưa đầy đủ thủ tục: 
								<xsl:value-of select="concat(substring($ndungTBao/ngayTBaoChuaDuTTuc, 9,2),'/',substring($ndungTBao/ngayTBaoChuaDuTTuc, 6,2),'/',substring($ndungTBao/ngayTBaoChuaDuTTuc, 1,4))" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Ngày cơ quan Thuế nhận được đủ hồ sơ hoàn thuế theo quy định: 
								<xsl:value-of select="concat(substring($ndungTBao/ngayNhanDuHSo, 9,2),'/',substring($ndungTBao/ngayNhanDuHSo, 6,2),'/',substring($ndungTBao/ngayNhanDuHSo, 1,4))" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế, Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế và các văn bản hướng dẫn thi hành, cơ quan Thuế thông báo hồ sơ đề nghị hoàn thuế của 
								<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
									<span>
										<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
									</span>
								</xsl:if>
								 thuộc diện kiểm tra trước, hoàn thuế sau.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do: 
								<xsl:value-of select="$ndungTBao/lyDo" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thời hạn giải quyết hồ sơ hoàn thuế là 40 ngày kể từ ngày cơ quan Thuế nhận được đủ hồ sơ theo quy định.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin liên hệ với cơ quan Thuế để được giải đáp.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại: 
								<xsl:value-of select="$ndungTBao/soDienThoai" />
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: 
								<xsl:value-of select="$ndungTBao/diaChi" />
							</p>
							<table style="page-break-inside: avoid;width:100%">
								<tr>
								<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
								<xsl:for-each select="$ndungTBao/NoiNhan/CTietNoiNhan">
								-&#160;<xsl:value-of select="tenNoiNhan" /><br/>
								</xsl:for-each>
								-&#160;Lưu VT,
								<xsl:for-each select="$ndungTBao/NoiNhan/CTietLuu">
								&#160;<xsl:value-of select="luu" /><br/>
								</xsl:for-each>
								</td>
								<td style="width:60%;text-align:center;">
									<xsl:if test="$ndungTBao/TTinKy/hThucKy !=''">
									<xsl:if test="$ndungTBao/TTinKy/hThucKy = '01'">
									<span style="font-weight:bold;text-transform:uppercase;">KT: <xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTUyQuyen" /></span><br/>
									</xsl:if>
									</xsl:if>
									<xsl:if test="$ndungTBao/TTinKy/chucDanhCBTKy !=''">
									<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$ndungTBao/TTinKy/chucDanhCBTKy" /></span><br/>
									(Ký, ghi rõ họ tên và đóng dấu)
									</xsl:if> 
									<br/>
									<br/>
									<xsl:value-of select="$ndungTBao/TTinKy/tenCBTKy" />
								</td>
								</tr>
							</table>
								<br/>
								<br/>
								<br/>
					</div>
		</xsl:for-each>
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>