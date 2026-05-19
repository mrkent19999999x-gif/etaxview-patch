<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">		
		<xsl:include href="../common/common.xls"/>
		<xsl:include href="../include/TBaoHeader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:call-template name="tbaoHeader">
			<xsl:with-param name="mauTBao"   select="'07/QLN'"/>
			<xsl:with-param name="soTBao"   select="$ttinChung/TTinTBaoThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$ttinChung/TTinTBaoThue/ngayTBao" />
			<xsl:with-param name="kieuTBao"   select="'THÔNG BÁO'" />
			<xsl:with-param name="motaTBao"   select="'Tiền thuế nợ, tiền phạt và tiền chậm nộp'" />
			<xsl:with-param name="motaTBao_1"   select="''" />
			<xsl:with-param name="motaTBao_2"   select="''" />
			<xsl:with-param name="coquanthuecaptren"   select="$ndungTBao/coQuanCapTren" />
			<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
			<xsl:with-param name="diaDanh"   select="$ndungTBao/diaDanh" />
			</xsl:call-template>
			<xsl:variable name="PLuc" select="TBaoThue/PLuc" />
			<html>
				<body>
					<div class="content">
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo đến:
						<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
							<span>
								<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
							</span>
						</xsl:if>
						</div>	
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:
						<xsl:if test="$ttinChung/NNhanTBaoThue/maNNhan !=''">
							<span>
								<xsl:value-of select="$ttinChung/NNhanTBaoThue/maNNhan" />
							</span>
						</xsl:if>
						</div>	
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
						Địa chỉ nhận thông báo:
						<xsl:if test="$ttinChung/NNhanTBaoThue/diaChiNNhan !=''">
							<span>
								<xsl:value-of select="$ttinChung/NNhanTBaoThue/diaChiNNhan" />
							</span>
						</xsl:if>
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ dữ liệu tại cơ quan thuế về tình hình kê khai và nộp thuế vào ngân sách nhà nước,
						<xsl:if test="$ttinChung/NNhanTBaoThue/tenNNhan !=''">
							<span>
								<xsl:value-of select="$ttinChung/NNhanTBaoThue/tenNNhan" />
							</span>
						</xsl:if>
						chưa nộp đủ số tiền thuế, tiền phạt và tiền chậm nộp (sau đây gọi chung là số tiền) như sau:
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tổng số tiền chưa nộp NSNN tính đến 
							ngày
							<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/ngayADinhSTienChuaNop,9,2)" />
							tháng
							<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/ngayADinhSTienChuaNop,6,2)" />
							năm
							<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/ngayADinhSTienChuaNop,1,4)" />
							là:
							<xsl:if test="$ndungTBao/SoTienChuaNop/tongSoTienChuaNop !=''">
								<span>
									<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/tongSoTienChuaNop)" />
								</span>
							</xsl:if>
							đồng. Trong đó:
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.1. Số tiền chưa nộp NSNN tính đến 
						ngày
						<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,9,2)" />
						tháng
						<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,6,2)" />
						năm
						<xsl:value-of select="substring($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/ngayADinhNoThangDonDoc-2,1,4)" />
						là:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/tongTienNoThangDonDoc-2 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/tongTienNoThangDonDoc-2)" />
							</span>
						</xsl:if>
						đồng, trong đó:
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền thuế, tiền phạt:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/soTienThuePhatThangDonDoc-2 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/soTienThuePhatThangDonDoc-2)" />
							</span>
						</xsl:if>
						đồng.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền chậm nộp:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/soTienChamNopThangDonDoc-3 !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc-2/soTienChamNopThangDonDoc-3)" />
							</span>
						</xsl:if>
						đồng.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1.2. Số tiền phát sinh từ
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/tuNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/tuNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						đến
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/denNgayADinhNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/denNgayADinhNoThangDonDoc" />
							</span>
						</xsl:if>
						chưa nộp NSNN là:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/tongTienNoThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/tongTienNoThangDonDoc)" />
							</span>
						</xsl:if>
						đồng, trong đó:
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền thuế, tiền phạt:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/soTienThuePhatThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/soTienThuePhatThangDonDoc)" />
							</span>
						</xsl:if>
						đồng.
						<br />
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền chậm nộp:
						<xsl:if test="$ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/soTienChamNopThangDonDoc !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/SoTienChuaNop/KhoanNoThangDonDoc/soTienChamNopThangDonDoc)" />
							</span>
						</xsl:if>
						đồng.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Số tiền quá hạn nộp phải thực hiện cưỡng chế nợ thuế là:
						<xsl:if test="$ndungTBao/soTienQuaHanCChe !=''">
							<span>
								<xsl:value-of select="ihtkk:formatNumber($ndungTBao/soTienQuaHanCChe)" />
							</span>
						</xsl:if>
						đồng.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị người nộp thuế nộp ngay số tiền nêu tại điểm 1 vào NSNN.
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với cơ quan thuế theo địa chỉ:
						<xsl:if test="$ndungTBao/ThongTinCQT/diaChi !=''">
							<span>
								<xsl:value-of select="$ndungTBao/ThongTinCQT/diaChi" />
							</span>
						</xsl:if>
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Bộ phận liên hệ:
						<xsl:if test="$ndungTBao/ThongTinCQT/boPhanLienHe !=''">
							<span>
								<xsl:value-of select="$ndungTBao/ThongTinCQT/boPhanLienHe" />
							</span>
						</xsl:if>
						</div>
						<div>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Số điện thoại:
						<xsl:if test="$ndungTBao/ThongTinCQT/soDienThoai !=''">
							<span>
								<xsl:value-of select="$ndungTBao/ThongTinCQT/soDienThoai" />
							</span>
						</xsl:if>
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
				</body>
			</html>
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