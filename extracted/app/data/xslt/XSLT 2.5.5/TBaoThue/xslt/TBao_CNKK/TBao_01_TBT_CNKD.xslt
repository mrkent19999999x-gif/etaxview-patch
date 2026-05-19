<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="cqtTBao" select='TBaoThueDTu/TBaoThue/TTinChung/CQT' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:call-template name="tbaoHeader_01_TBT_CNKD">
			<xsl:with-param name="mauTBao"   select="'01/TBT-CNKD'"/>
			<xsl:with-param name="thongtuTBao"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />
			<xsl:with-param name="thongtuTBao"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
		</xsl:call-template>
		<div>Căn cứ quy định tại Luật Quản lý thuế số 78/2006/QH11; Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế số 21/2012/QH13 ngày 20/11/2012; Luật sửa đổi, bổ sung một số điều của các Luật về thuế số 71/2014/QH13 và các văn bản hướng dẫn thi hành;</div><br/>
		<div>Căn cứ Tờ khai thuế của Ông/Bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> và biên bản họp Hội đồng tư vấn thuế xã (phường, thị trấn)  <xsl:value-of select="$ndungTBao/xa_Phuong"/>; Xét đề nghị của Đội thuế <xsl:value-of select="$ndungTBao/doiThue"/>, Đội Tổng hợp - Nghiệp vụ - Dự toán, Đội Kê khai và Kế toán thuế;</div><br/>
		<div>Chi cục Thuế <xsl:value-of select="$cqtTBao/tenCQT"/> thông báo số tiền thuế Ông/Bà phải nộp như sau: </div>
		<div>1. Cá nhân kinh doanh thuộc diện không phải nộp thuế Giá trị gia tăng, thuế Thu nhập cá nhân: [<xsl:if test="$ndungTBao/CT1/cnKhongPhaiNThue='true'">x</xsl:if>]</div>			<div>2. Số thuế môn bài phải nộp trong năm: <xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT2/thueMBaiPNop)"/> Tiểu mục <xsl:value-of select="$ndungTBao/CT2/tieuMuc"/> </div>	
		<div>3. Tổng số thuế khoán phải nộp trong năm: <xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/thueKhoanPNop)"/> đồng.</div>	
		<div>Cụ thể như sau:</div>
		<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		<div>
		<table class="tkhai_table" width="100%">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
				<td class="align-c" rowspan="2"><b>Loại thuế/phí</b></td>
				<td class="align-c" rowspan="2"><b>Tiểu mục</b></td>
				<td class="align-c" colspan="4"><b>Số thuế/phí phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Quý I</b></td>
				<td class="align-c"><b>Quý II</b></td>
				<td class="align-c"><b>Quý III</b></td>
				<td class="align-c"><b>Quý IV</b></td>
			</tr>
			<tr>
				<td class="align-c">1</td>
				<td>Thuế Giá trị gia tăng</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/ThueGTGT/tieuMuc" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy4)" /></td>
			</tr>
			
<tr>
				<td class="align-c">2</td>
				<td>Thuế Thu nhập cá nhân</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/ThueTNCN/tieuMuc"  /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNCN/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNCN/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNCN/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNCN/quy4)" /></td>
			</tr>
			<tr>
				<td class="align-c">3</td>
				<td>Thuế Tiêu thụ đặc biệt</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/ThueTTDB/tieuMuc" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTTDB/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTTDB/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTTDB/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTTDB/quy4)" /></td>
			</tr>
			<tr>
				<td class="align-c">4</td>
				<td>Thuế Tài nguyên</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/ThueTNguyen/tieuMuc" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNguyen/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNguyen/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNguyen/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueTNguyen/quy4)" /></td>
			</tr>
<tr>
				<td class="align-c">5</td>
				<td>Phí Bảo vệ môi trường</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/PhiBVMT/tieuMuc" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/PhiBVMT/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/PhiBVMT/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/PhiBVMT/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/PhiBVMT/quy4)" /></td>
			</tr>
<tr>
				<td class="align-c">6</td>
				<td>Thuế Bảo vệ môi trường</td>
				<td class="align-l"><xsl:value-of select="$ndungTBao/CT3/ThueGTGT/tieuMuc" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy1)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy2)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy3)" /></td>
				<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($ndungTBao/CT3/ThueGTGT/quy4)" /></td>
			</tr>
		</table> </div><br/>
		
		<div>4.Nơi nộp thuế:</div>
		<div>[<xsl:if test="$ndungTBao/CT4/nopChoUNT='true'">x</xsl:if>] Nộp cho uỷ nhiệm thu: <xsl:value-of select="$ndungTBao/CT4/tenUNT"/>, địa chỉ  <xsl:value-of select="$ndungTBao/CT4/diaChiUNT"/> </div>
		<div>[<xsl:if test="$ndungTBao/CT4/nopTaiCQT='true'">x</xsl:if>] Nộp tại trụ sở cơ quan Thuế: <xsl:value-of select="$ndungTBao/CT4/tenCQT"/>, địa chỉ <xsl:value-of select="$ndungTBao/CT4/diaChiCQT"/></div>
		<div>[<xsl:if test="$ndungTBao/CT4/nopTaiKBac='true'">x</xsl:if>] Nộp tại kho bạc: <xsl:value-of select="$ndungTBao/CT4/tenKBac"/>, địa chỉ <xsl:value-of select="$ndungTBao/CT4/diaChiKBac"/></div>
		<div>[<xsl:if test="$ndungTBao/CT4/nopTaiNHang='true'">x</xsl:if>] Nộp tại ngân hàng: <xsl:value-of select="$ndungTBao/CT4/tenNHang"/>, địa chỉ <xsl:value-of select="$ndungTBao/CT4/diaChiNHang"/></div><br/>
		
		<div>5. Thời hạn nộp thuế</div>
		<div>5.1. Thuế môn bài nộp chậm nhất là ngày  <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/CT5/hanNopThueMBai,'dd/mm/yyyy')"/></div>
		<div>5.2 Đối với các loại thuế nộp theo quý thì thời hạn nộp tiền chậm nhất là ngày cuối cùng của quý.</div>
		<div>Quá thời hạn nộp thuế nêu trên mà chưa nộp đủ số tiền thuế theo Thông báo này vào ngân sách nhà nước thì Ông/Bà phải chịu nộp tiền chậm nộp theo quy định của Luật Quản lý thuế, Luật sửa đổi, bổ sung một số điều của Luật Quản lý thuế, Luật sửa đổi, bổ sung một số điều của các Luật về thuế và các văn bản hướng dẫn thi hành.</div> <br/>
		<div>Cơ quan thuế gửi kèm theo Thông báo lần đầu trong năm Bảng công khai thông tin cá nhân kinh doanh nộp thuế theo phương pháp khoán.</div>
		<div>Cơ quan thuế công khai thông tin cá nhân nộp thuế khoán trên trang thông tin điện tử ngành thuế (http://gdt.gov.vn) và tại <xsl:value-of select="$ndungTBao/diaDiemNiemYet"/>  từ ngày 30 tháng 01 hàng năm. </div><br/>
		<div> Nếu có ý kiến phản hồi, đề nghị Ông/Bà liên hệ với  <xsl:value-of select="$cqtTBao/tenCQT"/> địa chỉ:  <xsl:value-of select="$ndungTBao/diaChi"/> để được hướng dẫn cụ thể. </div>
		<div>Chi cục Thuế <xsl:value-of select="$cqtTBao/tenCQT"/> thông báo để Ông/bà được biết và thực hiện./.</div>
		<br/>
		<xsl:call-template name="tbaoFooter"/>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>