<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/tbaoheader.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue'/>
		<xsl:variable name="NNhanTBaoThue" select='TTBaoThueDTu/TBaoThue/NNhanTBaoThue'/>
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao'/>
		<xsl:variable name="moTaBieuMau" select="''"/>
		<xsl:call-template name="tbaoHeader_01TB_KTDL">
			<xsl:with-param name="mauTBao" select="'01/TB-KTDL'"/>
			<xsl:with-param name="soTBao" select="$tbThue/soTBao"/>
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao"/>
		</xsl:call-template>
		<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Căn cứ Thông điệp chuyển dữ liệu hóa đơn điện tử không mã đến CQT của người nộp thuế (NNT)/Tổ chức cung cấp dịch vụ hóa đơn điện tử gửi tới cơ quan thuế lúc
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cơ quan thuế đã tiếp nhận gói dữ liệu hóa đơn điện tử:
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Mã giao dịch điện tử: 
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Mã số thuế: 
				<xsl:value-of select="TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue/maNNhan"/>
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Số lượng dữ liệu trong gói: 1
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Cơ quan thuế thông báo kết quả kiểm tra sơ bộ tính hợp lệ của gói dữ liệu HDDT như sau: 
			</div>

			
		<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='Y'">
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Kết quả kiểm tra sơ bộ gói dữ liệu của NNT/Tổ chức cung cấp dịch vụ HDDT gửi đến cơ quan thuế là hợp lệ. 
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Trong trường hợp cơ quan thuế kiểm tra và phát hiện dữ liệu chi tiết có sai sót, cơ quan thuế sẽ có thông báo đến người nộp thuế.
			</div>
		</xsl:if>
		<xsl:if test="TBaoThueDTu/TBaoThue/NDungTBao/trangThai='N'">

			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Kết quả kiểm tra sơ bộ tính gói dữ liệu của người nộp thuế (NNT)/ Tổ chức cung cấp dịch vụ hóa đơn điện tử gửi tới cơ quan thuế là không hợp lệ.
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Lý do:</div>
			<br/>
			<table class="tkhai_table">
				<tr>
					<td class="align-c">
						<b>STT</b>
					</td>
					<td class="align-l">
						<b>Mô tả lỗi</b>
					</td>
					<td class="align-l">
						<b>Hướng dẫn xử lý</b>
					</td>
					<td class="align-l">
						<b>Ghi chú</b>
					</td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class="align-c">(3)</td>
					<td class="align-c">(4)</td>
				</tr>
				<xsl:for-each select="TBaoThueDTu/TBaoThue/NDungTBao/LyDo/CTietLyDo">
					<xsl:variable name="currentRows" select='position()'/>
					<tr>
						<td class="align-c">
							<xsl:value-of select="$currentRows"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="moTaLoi"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="huongDanXuLy"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="ghiChu"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<br/>
		</xsl:if>

		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Trường hợp NNT/Quý đơn vị cần biết thêm thông tin chi tiết xin vui lòng truy cập đường dẫn <xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/duongDan"/> hoặc liên hệ với Cơ quan thuế để được hỗ trợ.</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Cơ quan thuế thông báo để người nộp thuế biết và thực hiện./.</div>
		<table style="page-break-inside: avoid;">
			<tr>
				<td>
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
