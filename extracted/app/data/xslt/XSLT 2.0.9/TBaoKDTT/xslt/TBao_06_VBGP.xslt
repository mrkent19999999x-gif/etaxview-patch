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
			<xsl:with-param name="mauTBao"   select="'06/VB-GP'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="''" />
			<xsl:with-param name="motaTBao"   select="'V/v: Cưỡng chế bằng biện pháp thu hồi giấy chứng nhận, giấy phép'" />
			<xsl:with-param name="motaTBao_1"   select="''" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
					<div class="content">	
						<div class="align-l">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Kính gửi:
						<xsl:if test="$ndungTBao/TenCQCapGCNhan !=''">
							<span>
								<xsl:value-of select="$ndungTBao/TenCQCapGCNhan" />
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
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							Căn cứ tình hình chấp hành nghĩa vụ nộp thuế của
							<xsl:if test="$ndungTBao/tenNNT !=''">
								&#160;<xsl:value-of select="$ndungTBao/tenNNT" />
							</xsl:if>, MST:  
							<xsl:if test="$ndungTBao/maSoThue !=''">
								<xsl:value-of select="$ndungTBao/maSoThue" />
							</xsl:if>; Địa chỉ: 
							<xsl:if test="$ndungTBao/diaChiNNT !=''">
								<xsl:value-of select="$ndungTBao/diaChiNNT" />;
							</xsl:if>
							</p>
							<p>
							&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$ttinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$ttinChung/CQT/tenCQT" />
								</xsl:if>
								 đề nghị quý cơ quan thực hiện biện pháp thu hồi giấy chứng nhận đăng ký kinh doanh, giấy chứng nhận đăng ký doanh nghiêp, giấy phép thành lập và hoạt động, giấy phép hành nghề của
								<xsl:if test="$ndungTBao/tenDTuongBiCChe !=''">,
									<xsl:value-of select="$ndungTBao/tenDTuongBiCChe" />
								</xsl:if>
							</p>
							<p>								
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;MST: 
								<xsl:if test="$ndungTBao/mstDTuongBiCChe !=''">
									<xsl:value-of select="$ndungTBao/mstDTuongBiCChe" />
								</xsl:if>, 
								 Địa chỉ:
								<xsl:if test="$ndungTBao/diaChiDTuongBiCChe !=''">
									<xsl:value-of select="$ndungTBao/diaChiDTuongBiCChe" />
								</xsl:if>
							</p>
							<p class="align-j fz18_5px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
								<xsl:if test="$ndungTBao/TenCQCapGCNhan !=''">
									<xsl:value-of select="$ndungTBao/TenCQCapGCNhan" />
								</xsl:if>
								 thông báo đến 
								<xsl:if test="$ttinChung/CQT/tenCQT !=''">
									<xsl:value-of select="$ttinChung/CQT/tenCQT" />
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