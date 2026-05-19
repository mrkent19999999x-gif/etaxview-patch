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
			<xsl:variable name="TTinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="$tbThue/NDungTBao" />
			<xsl:variable name="ttinVBanCDoi" select="./TTinVBanCDoi" />
			<table cellpadding="0" cellspacing="0" width="100%">
						<tr style="float:right">
						<td style="float:right">
						<div class="box_mau_so">
										Mẫu số: <b>06/VB-GP</b>
										<br />
										<i>(Ban hành kèm theo Thông tư
										<br />
										87/2018/TT-BTC ngày 27/9/2018
										<br />
										của Bộ Tài chính)</i>
									</div>
						</td>
						</tr>
						</table>
						<br></br>
						<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<span style="text-transform:uppercase"><xsl:value-of select="$TTinChung/CQT/coQuanCapTren"/></span> <br/>
						<span style="font-weight:bold;text-transform:uppercase;font-size:14px;"><xsl:value-of select="$TTinChung/CQT/coQuanCapDuoi"/></span><br/>
						 Số: <xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" /> <br/>
						 V/v: Cưỡng chế bằng biện pháp thu hồi giấy chứng nhận, giấy phép
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0; ">
					<span style="font-weight:bold;font-size:14px;">CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</span><br/>
					<span style="font-weight:bold;font-size:14px;">Độc lập-Tự do-Hạnh phúc</span><br/>
					----------oOo----------<br/>
					<i><xsl:value-of select="$TTinChung/CQT/diaDanh" />, Ngày <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($TTinChung/TTinTBaoThue/ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/>
					<p style="font-weight:bold;font-size:14px;alignCenter;">QUYẾT ĐỊNH</p>
					<div style="font-weight:bold;alignCenter;">Về việc cưỡng chế thi hành quyết định hành chính thuế <br/>
				bằng biện pháp thu tiền, tài sản khác của đối tượng bị cưỡng chế <br/>
				do tổ chức, cá nhân khác đang giữ
					</div>
				</td>
			</tr>
		</tbody>
	</table>
			
					<div class="content">	
						<div class="align-l">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Kính gửi:
						<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenCQCapGCNhan !=''">
							<span>
								<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenCQCapGCNhan" />
							</span>
						</xsl:if>
						</div>	
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								Căn cứ Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế số 21/2012/QH13 ngày 20 tháng 11 năm 2012;
							</p>
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								Căn cứ Nghị định số 129/2013/NĐ-CP ngày 16 tháng 10 năm 2013 của Chính phủ quy định về xử phạt vi phạm hành chính về thuế và cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								Căn cứ Thông tư số 215/2013/TT-BTC ngày 31/12/2013 của Bộ Tài chính hướng dẫn cưỡng chế thi hành quyết định hành chính thuế;
							</p>
							<p class="align-j fz18_5px">
								<xsl:if test="$NDungTBao/TTinCanCuQD/ccQDinh !=''">
									<span>
										&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Quyết định  <xsl:value-of select="$NDungTBao/TTinCanCuQD/ccQDinh" />quy định về chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của cơ quan ban hành quyết định cưỡng chế
									</span>
								</xsl:if>
							</p>
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Căn cứ tình hình chấp hành nghĩa vụ nộp thuế của
							<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
								&#160;<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
							</xsl:if>, MST:  
							<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan!=''">
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
							</xsl:if>; Địa chỉ: 
							<xsl:if test="$TTinChung/NNhanTBaoThue/diaChiNNhan!=''">
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/diaChiNNhan" />;
							</xsl:if>
							</p>
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								</xsl:if>
								 đề nghị quý cơ quan thực hiện biện pháp thu hồi giấy chứng nhận đăng ký kinh doanh, giấy chứng nhận đăng ký doanh nghiêp, giấy phép thành lập và hoạt động, giấy phép hành nghề của
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenDTuongBiCChe" />
								</xsl:if>
							</p>
							<p>								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;MST: 
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/mstDTuongBiCChe" />
								</xsl:if> 
								<br/>
								 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ:
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/diaChiDTuongBiCChe" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$NDungTBao/QuyetDinh/Dieu1/tenCQCapGCNhan !=''">
									<xsl:value-of select="$NDungTBao/QuyetDinh/Dieu1/tenCQCapGCNhan" />
								</xsl:if>
								 thông báo đến 
								<xsl:if test="$TTinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								</xsl:if>
								 được biết.
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								Trong thời hạn 10 (mười) ngày, kể từ ngày nhận được văn bản đề nghị cưỡng chế của cơ quan thuế, cơ quan quản lý nhà nước có thẩm quyền cấp giấy chứng nhận đăng ký kinh doanh, giấy chứng nhận đăng ký doanh nghiêp, giấy phép thành lập và hoạt động, giấy phép hành nghề phải ban hành quyết định thu hồi giấy chứng nhận đăng ký kinh doanh, giấy chứng nhận đăng ký doanh nghiêp, giấy phép thành lập và hoạt động, giấy phép hành nghề hoặc thông báo cho cơ quan thuế về lý do không thu hồi./.								
							</p>
							<table style="page-break-inside: avoid;width:100%">
				<tr>
				<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietNoiNhan/tenNoiNhan">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietLuu/luu">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						</td>
				<td style="width:60%;text-align:center;">
				<xsl:if test="$TTinChung/TTinKy/hThucTL !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/hThucTL" />: <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTTL" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/hThucKT !=''">
				<span style="font-weight:bold;text-transform:uppercase;">KT: <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKT" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
				(Ký, ghi rõ họ tên và đóng dấu)
				</xsl:if> 
				<br/>
				<br/>
				<br/>
				<br/>
				<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />
				</td>
				</tr>
				</table>
				<br/>
				<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:40%;">

							</td>			
							<td style="width:60%;text-align:center;">
								<div style="font-weight:bold;">Văn bản chuyển đổi từ văn bản điện tử </div>
								<div>Ngày chuyển đổi: <xsl:if test="$TTinVBanCDoi/NgayCDoi !=''"><xsl:value-of select="ihtkk:stringDatetime($TTinVBanCDoi/NgayCDoi,'dd/mm/yyyy')" /></xsl:if></div>
								<div style="font-weight:bold;">Thông tin người chuyển đổi</div>
								<div style="text-align:center;">(Ký tên, đóng dấu)</div>
								<br/><br/><br/>
								<div><xsl:if test="$TTinVBanCDoi/NguoiCDoi !=''"><xsl:value-of select="$TTinVBanCDoi/NguoiCDoi" /></xsl:if></div>	
							</td>							
						</tr>
					</table>
				</div>
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