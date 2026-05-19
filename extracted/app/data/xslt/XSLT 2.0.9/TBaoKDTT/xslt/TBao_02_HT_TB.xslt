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
			<xsl:with-param name="mauTBao"   select="'02/HT-TB'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="'THÔNG BÁO'" />
			<xsl:with-param name="motaTBao"   select="'Về việc không được hoàn thuế'" />
			<xsl:with-param name="motaTBao_1"   select="''" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
					<div class="content">
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan Thuế nhận được Giấy đề nghị hoàn trả khoản thu Ngân sách Nhà nước số
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
					</xsl:if>, mã số thuế:
					<xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''">
						<span>
							<xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" />
						</span>
					</xsl:if>
					và hồ sơ gửi kèm theo.
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ các Luật thuế, Pháp lệnh phí, lệ phí và các văn bản hướng dẫn thi hành; 
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế, Luật sửa đổi bổ sung một số điều của Luật Quản lý thuế và các văn bản hướng dẫn thi hành; 
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan Thuế thông báo:
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ hoàn thuế của 
					<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
						<span>
							<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
						</span>
					</xsl:if>
					không thuộc đối tượng, trường hợp được hoàn thuế hoặc có số tiền thuế không được hoàn là
					<xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienKhongDuocHoan)" />
					đồng.
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cụ thể các trường hợp không được hoàn thuế như sau:
					</div>
					<div>
					<table class="tkhai_table fz14px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
					<tr class="align-c">
						<td  id="td_table">
							STT
						</td>
						<td  id="td_table">
							Khoản thu đề nghị hoàn trả (loại thuế)
						</td>
						<td  id="td_table">
							Thời gian phát sinh khoản đề nghị hoàn (Kỳ tính thuế)
						</td>
						<td  id="td_table">
							Lý do đề nghị hoàn trả
						</td>
						<td  id="td_table">
							Số tiền NNT đề nghị hoàn
						</td>
						<td  id="td_table">
							Số tiền không được hoàn
						</td>
						<td  id="td_table">
							Lý do không được hoàn
						</td>
						<td  id="td_table">
							Xử lý chuyển khấu trừ tiếp
						</td>
						<td  id="td_table">
							Số còn lại
						</td>
						<td  id="td_table">
							Xử lý số còn lại
						</td>
					</tr>
					<tr class="align-c">
						<td  id="td_table">
							(1)
						</td>
						<td  id="td_table">
							(2)
						</td>
						<td  id="td_table">
							(3)
						</td>
						<td  id="td_table">
							(4)
						</td>
						<td  id="td_table">
							(5)
						</td>
						<td  id="td_table">
							(6)
						</td>
						<td  id="td_table">
							(7)
						</td>
						<td  id="td_table">
							(8)
						</td>
						<td  id="td_table">
							(9)=(6)-(8)
						</td>
						<td  id="td_table">
							(10)
						</td>
					</tr>
					<xsl:for-each select="$ndungTBao/TrongDo/ChiTiet">
						<tr>
							<td  id="td_table" class="align-c">
								<countNo>
									<xsl:value-of select="position()" />
								</countNo>
							</td>
							<td  id="td_table" class="align-l">
								<xsl:if test="loaiThue !=''">
									<xsl:value-of select="loaiThue" />
								</xsl:if>
							</td>
							<td  id="td_table" class="align-l">
								<xsl:if test="kyTinhThue !=''">
									<xsl:value-of select="kyTinhThue" />
								</xsl:if>
							</td>
							<td  id="td_table" class="align-l">
								<xsl:if test="lyDoHoanTra !=''">
									<xsl:value-of select="lyDoHoanTra" />
								</xsl:if>
							</td>
							<td  id="td_table" class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(soTienDNHoan)" />
							</td>
							<td  id="td_table" class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(soTienKoDuocHoan)" />
							</td>
							<td  id="td_table" class="align-l">
								<xsl:if test="lyDoKhongDuocHoan !=''">
									<xsl:value-of select="lyDoKhongDuocHoan" />
								</xsl:if>
							</td>
							<td  id="td_table" class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(chuyenKhauTru)" />
							</td>
							<td  id="td_table" class="align-r">
								<xsl:value-of select="ihtkk:formatNumber(soConLai)" />
							</td>
							<td  id="td_table" class="align-l">
								<xsl:if test="xuLySoConLai !=''">
									<xsl:value-of select="xuLySoConLai" />
								</xsl:if>
							</td>
						</tr>
							</xsl:for-each>
							<tr>
								<td  colspan="4" id="td_table" class="align-l">
									Cộng theo loại thuế, kỳ tính thuế và lý do đề nghị hoàn
								</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: left;">
									<b>TỔNG CỘNG</b>
								</td>
								<td  id="td_table" class="align-r">
									<xsl:if test="tongCongCot5 !=''">
										<xsl:value-of select="tongCongCot5" />
									</xsl:if>
								</td>
								<td  id="td_table" class="align-r">
									<xsl:if test="tongCongCot6 !=''">
										<xsl:value-of select="tongCongCot6" />
									</xsl:if>
								</td>
								<td>
								</td>
								<td  id="td_table" class="align-r">
									<xsl:if test="tongCongCot8 !=''">
										<xsl:value-of select="tongCongCot8" />
									</xsl:if>
								</td>
								<td  id="td_table" class="align-r">
									<xsl:if test="tongCongCot9 !=''">
										<xsl:value-of select="tongCongCot9" />
									</xsl:if>
								</td>	
								<td>
								</td>
							</tr>
							</table>
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin liên hệ với cơ quan Thuế để được giải đáp.
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại: 
					<xsl:value-of select="$ndungTBao/soDienThoai" />
					</div>
					<div>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ: 
					<xsl:value-of select="$ndungTBao/diaChi" />
					</div>
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