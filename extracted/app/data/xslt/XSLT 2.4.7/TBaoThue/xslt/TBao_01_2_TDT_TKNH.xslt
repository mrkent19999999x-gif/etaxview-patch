<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../include/tbaoheader.xsl"/>
	<xsl:include href="../include/TBaoFooter.xsl"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue'/>
		<xsl:variable name="NNhanTBaoThue" select='TTBaoThueDTu/TBaoThue/NNhanTBaoThue'/>
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao'/>
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tbaoHeader_01_2TDT_19">
			<xsl:with-param name="mauTBao" select="'01-02/TB-TĐT'"/>
			<xsl:with-param name="soTBao" select="$tbThue/soTBao"/>
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao"/>
		</xsl:call-template>
		<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ quy định tại Thông tư số 19/2021/TT- BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
		<br/>
		<xsl:if test="$ndungTBao/trangThai='N'">
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Danh sách số hiệu tài khoản thanh toán của người nộp thuế do
				<xsl:value-of select="$ndungTBao/tenNHTM"/>&#160;(MST: <xsl:value-of select="$ndungTBao/mst"/>)
				<i> gửi tới cơ quan thuế </i>
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>. Cơ quan thuế thông báo về việc không chấp nhận Danh sách số hiệu tài khoản thanh toán của người nộp thuế của
				<xsl:value-of select="$ndungTBao/tenNHTM"/>
				<i> gửi tới cơ quan thuế</i>, cụ thể như sau:
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Ngày gửi:
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui, 'dd/mm/yyyy')"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Kỳ gửi:
				<xsl:value-of select="$ndungTBao/kyGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Lần gửi:
				<xsl:value-of select="$ndungTBao/lanGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Lý do không chấp nhận cụ thể như sau:</div>
			<br/>
			<table class="tkhai_table">
				<tr>
					<td class="align-c">
						<b>STT</b>
					</td>
					<td class="align-l">
						<b>Thông tin có sai sót</b>
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
				<xsl:for-each select="$ndungTBao/LyDo/CTietLyDo">
					<xsl:variable name="currentRows" select='position()'/>
					<tr>
						<td class="align-c">
							<xsl:value-of select="$currentRows"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="tenNhomLoi"/>
							(<xsl:value-of select="tenLoi"/>)
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
		<xsl:if test="$ndungTBao/trangThai='Y'and $ndungTBao/DulieuPsinhLoi/CTietDuLieuPSinh/dLieuLoi = ''">
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Danh sách số hiệu tài khoản thanh toán của người nộp thuế do
				<xsl:value-of select="$ndungTBao/tenNHTM"/>
				(MST: <xsl:value-of select="$ndungTBao/mst"/>)
				<i> gửi tới cơ quan thuế </i>
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>. Cơ quan thuế thông báo về việc chấp nhận Danh sách số hiệu tài khoản thanh toán của người nộp thuế của
				<xsl:value-of select="$ndungTBao/tenNHTM"/>
				<i> gửi tới cơ quan thuế</i>, cụ thể như sau:
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Ngày gửi:
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui, 'dd/mm/yyyy')"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Kỳ gửi:
				<xsl:value-of select="$ndungTBao/kyGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Lần gửi:
				<xsl:value-of select="$ndungTBao/lanGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; “Danh sách số hiệu tài khoản thanh toán của người nộp thuế” do ngân hàng gửi được cơ quan thuế chấp nhận vào lúc
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>.
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế sẽ thực hiện trả kết quả chấp nhận “Danh sách số hiệu tài khoản thanh toán của người nộp thuế” cho ngân hàng qua Cổng thông tin điện tử của CỤC THUẾ.</div>
			<br/>
		</xsl:if>
		<xsl:if test="$ndungTBao/trangThai='Y' and $ndungTBao/DulieuPsinhLoi/CTietDuLieuPSinh/dLieuLoi != ''">
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Danh sách số hiệu tài khoản thanh toán của người nộp thuế do
				<xsl:value-of select="$ndungTBao/tenNHTM"/>
				(MST: <xsl:value-of select="$ndungTBao/mst"/>)
				<i> gửi tới cơ quan thuế </i>
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>. Cơ quan thuế thông báo về việc chấp nhận Danh sách số hiệu tài khoản thanh toán của người nộp thuế của
				<xsl:value-of select="$ndungTBao/tenNHTM"/>
				<i> gửi tới cơ quan thuế</i>, cụ thể như sau:
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Ngày gửi:
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui, 'dd/mm/yyyy')"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Kỳ gửi:
				<xsl:value-of select="$ndungTBao/kyGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Lần gửi:
				<xsl:value-of select="$ndungTBao/lanGui"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Mã giao dịch điện tử:
				<xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; “Danh sách số hiệu tài khoản thanh toán của người nộp thuế” do ngân hàng gửi được cơ quan thuế chấp nhận vào lúc
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/>
				giờ
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/>
				phút ngày
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/>
				tháng
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/>
				năm
				<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>.
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				<i>Tuy nhiên, qua rà soát dữ liệu cung cấp, cơ quan thuế phát hiện một số dòng dữ liệu chi tiết NHTM cung cấp phát sinh lỗi cụ thể:</i>
			</div>
			<br/>
			<table class="tkhai_table">
		
				<tr>
					<td class="align-c">
						<b>STT</b>
					</td>
					<td class="align-c">
						<b>Dữ liệu có sai sót</b>
					</td>
					<td class="align-c">
						<b>Tên lỗi</b>
					</td>
					<td class="align-c">
						<b>Hướng dẫn xử lý</b>
					</td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class="align-c">(3)</td>
					<td class="align-c">(4)</td>
				</tr>
					<xsl:for-each select="$ndungTBao/DulieuPsinhLoi/CTietDuLieuPSinh">
						<xsl:variable name="currentRows" select='position()'/>
					<tr>
						<td class="align-c">
							<xsl:value-of select="$currentRows"/>
						</td>
						<td class="align-c">
							<xsl:value-of select="dLieuLoi"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="tenLoi"/>
						</td>
						<td class="align-l">
							<xsl:value-of select="huongDanXuLy"/>
						</td>
					</tr>
						</xsl:for-each>
					
			</table>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				<i>Đề nghị ngân hàng rà soát thông tin cung cấp và gửi lại vào kỳ cung cấp dữ liệu tiếp theo.</i>
			</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Trường hợp cần giải trình, bổ sung thông tin, tài liệu, cơ quan thuế sẽ có thông báo gửi ngân hàng.</div>
			<br/>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế sẽ thực hiện trả kết quả chấp nhận “Danh sách số hiệu tài khoản thanh toán của người nộp thuế” cho ngân hàng qua Cổng thông tin điện tử của CỤC THUẾ.
			</div>
			<br/>
		</xsl:if>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Nếu có vướng mắc, xin vui lòng liên hệ với Nhóm hỗ trợ ứng dụng của CỤC THUẾ ((024) 37689679, số máy lẻ 2180) để được hỗ trợ.</div>
		<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để ngân hàng biết và thực hiện./.</div>
		<table style="page-break-inside: avoid;">
			<tr>
				<td>
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
