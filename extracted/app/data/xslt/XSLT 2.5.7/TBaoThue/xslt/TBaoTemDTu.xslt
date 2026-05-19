<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ihtkk="seatechit.ihtkk.tool.FunctionXSLT" exclude-result-prefixes="xsl xsi ihtkk">
	<xsl:template match="/">
		<xsl:variable name="tbThue"
			select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue"
			select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="ndungTBao1"
			select='TBaoThueDTu/TBaoThue/NDungTBao/HoSoThue/CTietHoSoThue' />
		<xsl:variable name="ndungTBao3"
			select='TBaoThueDTu/TBaoThue/NDungTBao/TrangThaiXuLyHoSo' />
		<xsl:variable name="moTaBieuMau"
			select="'(Ban hành kèm theo Thông tư số 66/2019/TT-BTC ngày 20/9/2019 của Bộ Tài chính)'" />
		<xsl:variable name="mauTKhai" select="'01-1/TB-TĐT'" />
		<div>
			
			<table cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr>
						<td width="30%">
							<div align="center" style="margin:0; padding:0;">
								BỘ TÀI CHÍNH
								<br />
								<b>TỔNG CỤC THUẾ</b>
								<br />
								______________
								<br />
								SỐ:
								<xsl:value-of select='$tbThue/soTBao' />

							</div>
						</td>
						<td width="70%">
							<div align="center" style="margin:0; padding:0;">
								CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
								<br />
								ĐỘC LẬP - TỰ DO - HẠNH PHÚC
								<br />
								___________________
								<br />
								<i>
									Ngày
									<xsl:value-of select='substring($ndungTBao/ngayHoSo,9,2)' />
									tháng
									<xsl:value-of
										select='substring-before(substring-after($tbThue/ngayTBao,"-"),"-")' />
									năm
									<xsl:value-of select='substring-before($tbThue/ngayTBao,"-")' />
								</i>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center;">
							<br />
							<b>THÔNG BÁO</b>
							<br />
							<b>
								<xsl:value-of select='$tbThue/tenTBao' />
							</b>
						</td>
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<td>
							<b>
								<i>
									<u>Kính gửi:</u>
								</i>
							</b>
						</td>
						<td>
							<xsl:value-of select="$NNhanTBaoThue/tenNNhan" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							Mã số thuế:
							<xsl:value-of select="$NNhanTBaoThue/maNNhan" />
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<br />
			<p align="justify">
				&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ dữ liệu tem điện tử của người nộp thuế gửi tới Cơ quan thuế lúc
				<xsl:if test="substring($ndungTBao/ngayHoSo,12,2)">
					<xsl:value-of select='substring($ndungTBao/ngayHoSo,12,2)' />
				</xsl:if>
				<xsl:if test="not(substring($ndungTBao/ngayHoSo,12,2))">
					(xs:gio)
				</xsl:if>
				giờ
				<xsl:if test="substring($ndungTBao/ngayHoSo,15,2)">
					<xsl:value-of select='substring($ndungTBao/ngayHoSo,15,2)' />
				</xsl:if>
				<xsl:if test="not(substring($ndungTBao/ngayHoSo,15,2))">
					(xs:phut)
				</xsl:if>
				phút
				<xsl:if test="substring($ndungTBao/ngayHoSo,18,2)">
					<xsl:value-of select='substring($ndungTBao/ngayHoSo,18,2)' />
				</xsl:if>
				<xsl:if test="not(substring($ndungTBao/ngayHoSo,18,2))">
					(xs:giay)
				</xsl:if>
				giây, ngày
				<xsl:value-of select='substring($ndungTBao/ngayHoSo,9,2)' />
				tháng
				<xsl:value-of select='substring($ndungTBao/ngayHoSo,6,2)' />
				năm
				<xsl:value-of select='substring($ndungTBao/ngayHoSo,1,4)' />. Cơ quan thuế thông báo về việc tiếp nhận dữ liệu tem điện tử của người nộp thuế, cụ thể như sau:</p>
			<br />
			<!-- <xsl:value-of select='$tbThue/tenTBao' /> -->
			<br />
			<div class="tbl_member"
				style="border: none !important; width: 900px; overflow-x: hidden;">
				<table border="1" cellspacing="0" cellpadding="3"
					style="border: 1px #BAE0FF solid !important;width:100%">
					<tr>
						<th class="align-c">STT</th>
						<th class="align-c">Hồ sơ/Phụ lục</th>
						<th class="align-c">Loại hồ sơ</th>
						<th class="align-c">Ngày truyền dữ liệu</th>
						<th class="align-c">Lần gửi</th>
						<!-- <th class="align-c">Nơi nộp</th> -->
					</tr>
					<tr>
						<td style="text-align:center;">(1)</td>
						<td style="text-align:center;">(2)</td>
						<td style="text-align:center;">(3)</td>
						<td style="text-align:center;">(4)</td>
						<td style="text-align:center;">(5)</td>
								
					</tr>
					 <xsl:for-each select="$ndungTBao1">
						<tr>
							<td style="text-align:center;"><xsl:number level="any" /></td>
							<td style="text-align:left;">
								<xsl:value-of select='tokhai-phuluc' />
							</td>
							<td style="text-align:center;">
								<xsl:if test="loaiToKhai = 'C'">
									Chính thức
								</xsl:if>
								<xsl:if test="loaiToKhai = 'B'">
									Bổ sung
								</xsl:if>
							</td>
							<td style="text-align:center;">
								<xsl:value-of select='kyTinhThue' />
							</td>
							<td style="text-align:center;">
								<xsl:value-of select='lanNop' />
							</td>
							<!-- <td class="align-c" height="25px"> -->
							<!-- <xsl:value-of select='$ndungTBao1/tenNoiNop' /> -->
							<!-- </td> -->
						</tr>
					</xsl:for-each>
				</table>
			</div>
			&#160;&#160;&#160;&#160;&#160;&#160; Mã giao dịch điện tử:
			<xsl:value-of select="$ndungTBao/maGiaoDichDTu" />
			<br />
			<p align="justify">&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm chi tiết, xin vui lòng liên hệ với cơ quan thuế quản lý trực tiếp để được hỗ trợ. Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</p>
			
		</div>
	</xsl:template>
</xsl:stylesheet>