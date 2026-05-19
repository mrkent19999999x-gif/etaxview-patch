<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:include href="../include/TBaoHeader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TBaoThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<xsl:variable name="ttinVBanCDoi" select="./TTinVBanCDoi" />
			<html>
				<body>
				<div class="content">
				<table cellpadding="0" cellspacing="0" width="100%">
						<tr style="float:right">
						<td style="float:right">
						<div class="box_mau_so">
										Mẫu số: <b>07/QLN</b>
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
				<td width="40%">
					<div align="center" style="margin:0; padding:0;">
						<span style="text-transform:uppercase"><xsl:value-of select="$TTinChung/CQT/coQuanCapTren"/></span> <br/>
						<span style="font-weight:bold;text-transform:uppercase;font-size:14px;"><xsl:value-of select="$TTinChung/CQT/coQuanCapDuoi"/></span><br/>
						 Số: <xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
					</div>
				</td>
				<td width="60%">
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
					<p style="font-weight:bold;font-size:14px;">THÔNG BÁO</p>
					<div style="font-weight:bold;">
					Tiền thuế nợ, tiền phạt và tiền chậm nộp
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<br/>
	<br/>
					<div style="text-align: justify;">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo đến:
						<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
							<span>
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
							</span>
						</xsl:if>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
						<xsl:if test="$TTinChung/NNhanTBaoThue/maNNhan !=''">
							<span>
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
							</span>
						</xsl:if>
						<br/>	
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
						Địa chỉ nhận thông báo:
						<xsl:if test="$TTinChung/NNhanTBaoThue/diaChiNNhan !=''">
							<span>
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/diaChiNNhan" />
							</span>
						</xsl:if>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ dữ liệu tại cơ quan thuế về tình hình kê khai và nộp thuế vào ngân sách nhà nước,
						<xsl:if test="$TTinChung/NNhanTBaoThue/tenNNhan !=''">
							<span>
								<xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />
							</span>
						</xsl:if>
						chưa nộp đủ số tiền thuế, tiền phạt và tiền chậm nộp (sau đây gọi chung là số tiền) như sau:
						<br/>
						<xsl:for-each select="$NDungTBao/SoTienChuaNop">
						<xsl:variable name="pos2" select="position()"/>
						
						<b><xsl:if test="$pos2 = 1">
						&#160;&#160;&#160;&#160;&#160;&#160;I. 
						</xsl:if>
						
						<xsl:if test="$pos2 = 2">
						&#160;&#160;&#160;&#160;&#160;&#160;II. 
						</xsl:if>
						Số tiền thuế nợ theo <xsl:value-of select="loaiTien" /></b>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tổng số tiền chưa nộp NSNN tính đến 
						ngày <xsl:value-of select="ihtkk:stringDatetime(ngayADinhSTienChuaNop,'dd')"/> 
						tháng <xsl:value-of select="ihtkk:stringDatetime(ngayADinhSTienChuaNop,'mm')"/>
						năm <xsl:value-of select="ihtkk:stringDatetime(ngayADinhSTienChuaNop,'yyyy')"/>

	
							là:
							<xsl:if test="tongSoTienChuaNop !=''">
								<span>
									<xsl:value-of select="ihtkk:formatNumber(tongSoTienChuaNop)" />
								</span>
							</xsl:if>
							đồng. Trong đó:
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.1. Số tiền chưa nộp NSNN tính đến 
						ngày <xsl:value-of select="ihtkk:stringDatetime(KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,'dd')"/> 
						tháng <xsl:value-of select="ihtkk:stringDatetime(KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,'mm')"/>
						năm <xsl:value-of select="ihtkk:stringDatetime(KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,'yyyy')"/>
						
						là:
						<xsl:if test="KhoanNoThangDonDoc-2/tongTienNoThangDonDoc-2 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc-2/tongTienNoThangDonDoc-2)" />
							</span>
						</xsl:if>
						đồng, trong đó:
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền thuế, tiền phạt:
						<xsl:if test="KhoanNoThangDonDoc-2/soTienThuePhatThangDonDoc-2 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc-2/soTienThuePhatThangDonDoc-2)" />
							</span>
						</xsl:if>
						đồng.
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền chậm nộp đến ngày <xsl:if test="$NDungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-3 !=''">
								<span>
									<xsl:value-of select="KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-3" />
								</span>
							</xsl:if>:
						<xsl:if test="KhoanNoThangDonDoc-2/soTienChamNopThangDonDoc-3 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc-2/soTienChamNopThangDonDoc-3)" />
							</span>
						</xsl:if>
						đồng.
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền chậm nộp từ ngày
						<xsl:if test="KhoanNoThangDonDoc-2/tuNgayADinhNoThangDonDocChamNop-2 !=''">
								<span>
									<xsl:value-of select="KhoanNoThangDonDoc-2/tuNgayADinhNoThangDonDocChamNop-2" />
								</span>
							</xsl:if>
							đến ngày
							<xsl:if test="KhoanNoThangDonDoc-2/denNgayADinhNoThangDonDocChamNop-2 !=''">
								<span>
									<xsl:value-of select="KhoanNoThangDonDoc-2/denNgayADinhNoThangDonDocChamNop-2" />
								</span>
							</xsl:if>:
						<xsl:if test="KhoanNoThangDonDoc-2/soTienChamNopThangDonDocChamNop-2 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc-2/soTienChamNopThangDonDocChamNop-2)" />
							</span>
						</xsl:if>
						đồng.
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.2. Số tiền phát sinh từ
						<xsl:if test="KhoanNoThangDonDoc/tuNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="KhoanNoThangDonDoc/tuNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						đến
						<xsl:if test="KhoanNoThangDonDoc/denNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="KhoanNoThangDonDoc/denNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						chưa nộp NSNN là:
						<xsl:if test="KhoanNoThangDonDoc/tongTienNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc/tongTienNoThangDonDoc)" />
							</span>
						</xsl:if>
						đồng, trong đó:
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền thuế, tiền phạt:
						<xsl:if test="KhoanNoThangDonDoc/soTienThuePhatThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc/soTienThuePhatThangDonDoc)" />
							</span>
						</xsl:if>
						đồng.
						<br />
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền chậm nộp:
						<xsl:if test="KhoanNoThangDonDoc/soTienChamNopThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(KhoanNoThangDonDoc/soTienChamNopThangDonDoc)" />
							</span>
						</xsl:if>
						đồng.<xsl:if test="GhiChu_SoTienChamNop !=''">
							<span>
								<xsl:value-of select="GhiChu_SoTienChamNop" />
							</span>
						</xsl:if>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Số tiền quá hạn nộp phải thực hiện cưỡng chế nợ thuế là:
						<xsl:if test="soTienQuaHanCChe !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber(soTienQuaHanCChe)" />
							</span>
						</xsl:if>
						đồng.
						<br/>
						</xsl:for-each>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị người nộp thuế nộp ngay số tiền nêu tại điểm 1 vào NSNN.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với cơ quan thuế theo địa chỉ:
						<xsl:if test="$NDungTBao/ThongTinCQT/diaChi !=''">
							<span>
								<xsl:value-of select="$NDungTBao/ThongTinCQT/diaChi" />
							</span>
						</xsl:if>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Bộ phận liên hệ:
						<xsl:if test="$NDungTBao/ThongTinCQT/boPhanLienHe !=''">
							<span>
								<xsl:value-of select="$NDungTBao/ThongTinCQT/boPhanLienHe" />
							</span>
						</xsl:if>
						<br/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại:
						<xsl:if test="$NDungTBao/ThongTinCQT/soDienThoai !=''">
							<span>
								<xsl:value-of select="$NDungTBao/ThongTinCQT/soDienThoai" />
							</span>
						</xsl:if>
						<br/>
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
				<span style="font-weight:bold;text-transform:uppercase;">KT. <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKT" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
				
				</xsl:if> (Ký, ghi rõ họ tên và đóng dấu)
				<br/>				
				<br/>
				<br/>
				<br/>
				<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />
				</td>
				</tr>
				</table>
	
					</div>					
					
		</div>
		
		<hr/>
				<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:40%;">
							</td>			
							<td style="width:60%;text-align:center;">
								<div style="font-weight:bold;">Văn bản chuyển đổi từ văn bản điện tử </div>
								<div>Ngày chuyển đổi: <xsl:if test="$ttinVBanCDoi/NgayCDoi !=''"><xsl:value-of select="ihtkk:stringDatetime($ttinVBanCDoi/NgayCDoi,'dd/mm/yyyy')" /></xsl:if></div>
								<br/>
								<div style="font-weight:bold;">Thông tin người chuyển đổi</div>
								<div style="text-align:center;">(Ký tên, đóng dấu)</div>
								<br/><br/><br/>
								<div><xsl:if test="$ttinVBanCDoi/NguoiCDoi !=''"><xsl:value-of select="$ttinVBanCDoi/NguoiCDoi" /></xsl:if></div>	
							</td>	
						</tr>
					</table>
					</div>
				</body>
			</html>
			
			<!--
			<div align="left" style="font-style:italic;">Công chức quản lý nợ: 
				<xsl:if test="$cchucQLyNo/TenCChucQLyNo !=''"><xsl:value-of select="$cchucQLyNo/TenCChucQLyNo" /></xsl:if>
			</div>-->
			
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