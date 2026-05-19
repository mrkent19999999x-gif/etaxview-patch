<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/tbaoheader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'"/>
		<xsl:call-template name="tbaoHeader_01_1TDT_19_DS_TNCN">
			<xsl:with-param name="mauTBao" select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao" select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao" select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao" select="$tbThue/tenTBao" />
			<xsl:with-param name="moTaBieuMau"  select="$moTaBieuMau"/>
		</xsl:call-template>
		
		<br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ quy định tại Thông tư số 19/2021/TT- BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Danh sách chi tiết số tiền nộp thuế TNCN đã nộp thay cho từng cá nhân do  <xsl:value-of select="$ndungTBao/tenNNT" />&#160;(MST: <xsl:value-of select="$ndungTBao/mst" />) gửi tới cơ quan thuế <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cụ thể như sau:</div><br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Ngày gửi: <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui, 'dd/mm/yyyy')"/></div> <br/>
				<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Kỳ gửi:  <xsl:value-of select="$ndungTBao/kyGui"/></div> <br/>-->
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Lần gửi:  <xsl:value-of select="$ndungTBao/lanGui"/></div> <br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - Mã giao dịch điện tử:  <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; “Danh sách chi tiết số tiền nộp thuế TNCN đã nộp thay cho từng cá nhân” đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>.</div><br/>
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;“Danh sách chi tiết số tiền nộp thuế TNCN đã nộp thay cho từng cá nhân” sẽ được cơ quan thuế tiếp tục kiểm tra, trường hợp thông tin có sai sót cơ quan thuế sẽ gửi thông báo không chấp nhận cụ thể về thông tin lỗi và lý do lỗi để <xsl:value-of select="$ndungTBao/tenNNT" />&#160;(MST: <xsl:value-of select="$ndungTBao/mst" />) cung cấp lại thông tin.</div><br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng liên hệ với Nhóm hỗ trợ ứng dụng của CỤC THUẾ ((024) 37689679, số máy lẻ 2180) để được hỗ trợ.</div><br/>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo để người nộp thuế biết và thực hiện./.</div>
				
				
					<!--<tr>
					    <td>Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</td>
					    <td>Căn cứ quy định tại Thông tư số 19/2021/TT- BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</td>
						<td>Căn cứ Danh sách số hiệu tài khoản thanh toán của người nộp thuế do <xsl:value-of select="$ndungTBao/tenNHTM" />,<xsl:value-of select="$ndungTBao/mst" /> <i>gửi tới cơ quan thuế </i>lúc "ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayGui,'yyyy')"/>, cụ thể như sau:</td>
					</tr>
					<tr>
						<td></td>
						<td>- Ngày gửi:<xsl:value-of select="$ndungTBao/ngayGui" /></td>
						<td>- Kỳ gửi:<xsl:value-of select="$ndungTBao/kyGui" /></td>
						<td>- Lần gửi: <xsl:value-of select="$ndungTBao/lanGui" /></td>
						<td>- Mã giao dịch điện tử:<xsl:value-of select="$ndungTBao/maGiaoDichDTu" /></td>
					</tr>
					<tr>
					    <td>“Danh sách số hiệu tài khoản thanh toán của người nộp thuế” đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="$ndungTBao/ngayHoSo" /></td>
					    <td>“Danh sách số hiệu tài khoản thanh toán của người nộp thuế” sẽ được cơ quan thuế tiếp tục kiểm tra và trả Thông báo chấp nhận hoặc không chấp nhận trong thời gian 01 (một) ngày làm việc kể từ  ngày cơ quan thuế tiếp nhận ghi trên Thông báo này.</td>
					    <td>Nếu có vướng mắc, xin vui lòng liên hệ với Nhóm hỗ trợ ứng dụng của Tổng cục Thuế ((024) 37689679, số máy lẻ 2180) để được hỗ trợ.</td>
					    <td>Cơ quan thuế thông báo để ngân hàng biết và thực hiện./.</td>
					</tr>-->
	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>