<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
			<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_03TB_ĐK">
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" /> 
		</xsl:call-template>	
		<table>
		
			<tr>
				<td><tr><td> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></td></tr>
	<tr><td> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/></td></tr>
	<tr><td> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Địa chỉ: <xsl:value-of select="$NNhanTBaoThue/diaChiNNhan"/></td></tr><br/></td>
			</tr>
		</table>
			
	<!-- Trường hợp Thông báo dành cho đăng ký mới  -->		
		<xsl:choose>
		<xsl:when test="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan!=''">
			<table>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ hồ sơ đăng ký giao dịch thuế điện tử  qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế</td></tr>
				<tr><td> &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Mã giao dịch điện tử:  <xsl:value-of select="$ndungTBao/maGDichDTu"/> </td></tr>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Xét điều kiện thực hiện và cam kết của người nộp thuế.</td></tr>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế chấp nhận đề nghị về việc đăng ký giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế kể từ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'hh')"/> Giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'mi')"/>  phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'yyyy')"/>.</td></tr><br/>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên đăng nhập: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan"/></td></tr>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mật khẩu: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/matKhau"/></td></tr>
				<br/>			
			</table>	
		</xsl:when> 
		
	<!-- Trường hợp Thông báo dành cho thay đổi thông tin đăng ký -->		
			<xsl:when test="$ndungTBao/DangKyGDich/ChapNhan/ThayDoiTTin/email!=''">				
			    <table>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ hồ sơ đăng ký thay đổi, bổ sung thông tin giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế</td></tr>
				<tr><td> Mã giao dịch điện tử:  <xsl:value-of select="$ndungTBao/maGDichDTu"/> </td></tr>
				<tr><td>Xét điều kiện thực hiện và cam kết của người nộp thuế.</td></tr>
				<tr><td>Cơ quan thuế chấp nhận đề nghị về việc đăng ký thay đổi, bổ sung thông tin giao dịch thuế điện tử qua Cổng thông tin điện tử của Tổng cục Thuế của người nộp thuế kể từ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'hh')"/> Giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'mi')"/>  phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'ii')"/> giây, ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyGDich/ChapNhan/ngayHoSo,'yyyy')"/>.</td></tr><br/> cụ thể như sau: 
				<tr><td>Thông tin thay đổi:</td></tr>					
				<tr><td>- Địa chỉ thư điện tử: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan"/></td></tr>
				<tr><td>- Điện thoại: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/dienThoai"/></td></tr>
				<tr><td>- Số xê – ri chứng thư số: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan"/></td></tr>
				<tr><td>- Chủ thể chứng thư số: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan"/></td></tr>
				<tr><td>- Tên tổ chức cung cấp chứng thư số: <xsl:value-of select="$ndungTBao/DangKyGDich/ChapNhan/DangKyThue/taiKhoan"/></td></tr>	
			</table>	
        </xsl:when>
                
    <!-- Trường hợp Thông báo dành cho ngừng giao dịch điện tử   -->	
            <xsl:when test="$ndungTBao/DangKyNgungGDich/thoiDiemNgung!=''">
			    <table>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo về việc Cổng thông tin điện tử của Tổng cục Thuế ngừng việc thực hiện các thủ tục hành chính thuế bằng phương thức điện tử của người nộp thuế kể từ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'mi')"/>  phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'ii')"/> giây  ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'dd')"/>  tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/DangKyNgungGDich/thoiDiemNgung,'yyyy')"/></td>
				</tr>
				<tr><td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Lý do: <xsl:value-of select="$ndungTBao/DangKyNgungGDich/lyDoNgung"/></td></tr>
						</table>	
						</xsl:when> 
			</xsl:choose>
						<table>
						<tr><td colspan="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Người nộp thuế cần biết thêm chi tiết, xin vui lòng truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/duongDan"/> hoặc gọi điện tới số hotline: <xsl:value-of select="$ndungTBao/hotline"/>  để được hỗ trợ trực tiếp.</td></tr>
                <tr><td colspan="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế thông báo để người nộp thuế biết, thực hiện./.</td></tr> 

							<tr>
						        <td width="50%"></td>
						        <td width="30%"></td>			
							    <td width="20%" class="align-c" >CƠ QUAN THUẾ</td>
							</tr>
							<tr>
								 <td width="50%"></td>
						        <td width="30%"></td>	
								<td width="20%" class="align-c"><i>(Ký điện tử)</i></td>
							</tr>
							</table>
			<br/>	
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>