<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>  
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'01/KTTT'"/>
				<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
				<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
				<xsl:with-param name="kieuTBao"   select="'THÔNG BÁO'" />
				<xsl:with-param name="motaTBao"   select="'Về việc giải trình, bổ sung thông tin, tài liệu'" />
				<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
			<div class="content" >
			<br/>
			<br/>
				<div style="margin-left:150px;">Kính gửi: <span><xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''"><xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" /></xsl:if></span></div>
				<div style="margin-left:150px;">Mã số thuế: <span><xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''"><xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" /></xsl:if></span></div>
				<div style="margin-left:150px;">Địa chỉ nhận thông báo: <span><xsl:if test="$ttinChung/NNhanTBaoThue/diaChiNNhan !=''"><xsl:value-of select="$ttinChung/NNhanTBaoThue/diaChiNNhan" /></xsl:if></span></div>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Căn cứ qui định của pháp luật thuế hiện hành về trách nhiệm của người nộp thuế trong việc cung cấp thông tin theo yêu cầu của cơ quan thuế;
				</div>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Để làm rõ các nội dung:</div>
				<xsl:for-each select="$ndungTBao/LamRoNoiDung/ChiTiet ">
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<countNo>
						<xsl:value-of select="position()" />
					</countNo>.
					<xsl:if test="noiDung !=''">
						<span>
							<xsl:value-of select="noiDung" />
						</span>
					</xsl:if>
				</div>
				</xsl:for-each>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				trong hồ sơ: 
				<xsl:if test="$ndungTBao/trongHoSo !=''">
					<xsl:value-of select="$ndungTBao/trongHoSo" />
				</xsl:if>;
				</div>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				<xsl:if test="$ttinChung/CQT/tenCQT !=''">
					<xsl:value-of select="$ttinChung/CQT/tenCQT" />
				</xsl:if> đề nghị 
				<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
						<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
				</xsl:if>
				cử đại diện đến làm việc trực tiếp tại cơ quan thuế <span style="font-style: italic;">(hoặc có văn bản)</span> để giải trình và bổ sung thông tin, tài liệu sau đây:
				</div>
				<xsl:for-each select="$ndungTBao/GiaiTrinhBoSung/ChiTiet ">
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<countNo>
						<xsl:value-of select="position()" />
					</countNo>.
					<xsl:if test="taiLieu !=''">
						<span>
							<xsl:value-of select="taiLieu" />
						</span>
					</xsl:if>
				</div>
				</xsl:for-each>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Thời gian làm việc:
				<xsl:value-of select="substring($ndungTBao/thoiGianLamViec,12,5)" /> giờ, ngày
				<xsl:value-of select="substring($ndungTBao/thoiGianLamViec,9,2)" />
				tháng
				<xsl:value-of select="substring($ndungTBao/thoiGianLamViec,6,2)" />
				năm
				<xsl:value-of select="substring($ndungTBao/thoiGianLamViec,1,4)" />
				</div>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Địa điểm làm việc: 
					<xsl:if test="$ndungTBao/diaDiemLamViec !=''">
						<xsl:value-of select="$ndungTBao/diaDiemLamViec" />
					</xsl:if>
				</div>
				<div style="font-style: italic;">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				( Hoặc văn bản giải trình, thông tin, tài liệu bổ sung gửi về 
				<xsl:if test="$ttinChung/CQT/tenCQT !=''">
					<span>
						<xsl:value-of select="$ttinChung/CQT/tenCQT" />
					</span>
				</xsl:if>
				trước ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/hanGiaiTrinh,'dd')"/>, 
				tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/hanGiaiTrinh,'mm')"/>, 
				năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/hanGiaiTrinh,'yyyy')"/>)
				</div>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với cơ quan thuế 
				<xsl:if test="$ttinChung/CQT/tenCQT !=''">
					<span>
						<xsl:value-of select="$ttinChung/CQT/tenCQT" />
					</span>
				</xsl:if>
				theo số điện thoại: 
				<xsl:if test="$ndungTBao/soDienThoai !=''">
					<xsl:value-of select="$ndungTBao/soDienThoai" />
				</xsl:if>, 
				địa chỉ: 
				<xsl:if test="$ndungTBao/diaChi !=''">
					<xsl:value-of select="$ndungTBao/diaChi" />
				</xsl:if>
				</div>
				<br/>
				<div>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				<xsl:if test="$ttinChung/CQT/tenCQT !=''">
					<xsl:value-of select="$ttinChung/CQT/tenCQT" />
				</xsl:if>
				thông báo để 
				<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
					<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
				</xsl:if>
				được biết và thực hiện./.
				</div>
				<br/>
				<table>
				<tr>
				<td style="width:40%;padding-left:50px;"><span style="font-style:italic;font-weight:bold">Nơi nhận:</span><br/>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietNoiNhan/tenNoiNhan">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						<xsl:for-each select="$NDungTBao/NoiNhan/CTietLuu/luu">
						-&#160;<xsl:value-of select="." /><br/>
						</xsl:for-each>
						</td>
				<td style="width:60%;text-align:center;"><span style="font-weight:bold;">Thủ trưởng cơ quan thuế ra thông báo</span><br/>
				(Ký, ghi rõ họ tên và đóng dấu)
				</td>
				</tr>
				</table>
			</div>
			<br/>
		<br/>
		<br/>
		<br/>
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