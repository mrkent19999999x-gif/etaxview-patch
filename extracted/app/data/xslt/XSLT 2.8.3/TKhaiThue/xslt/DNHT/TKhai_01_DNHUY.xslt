<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01DNHUY">
		<xsl:with-param name="mauTKhai"   select="'01/ĐNHUY'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>  
		<xsl:with-param name="ghuchuTK"   select="''"/> 
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<br/>
		<div>Đề nghị cơ quan thuế: <xsl:value-of select="$tkchinh/Header/tenCoQuanThue"/> thực hiện huỷ hồ sơ đề nghị hoàn thuế có các thông tin như sau:</div>
		<div><b>1. Tên hồ sơ đề nghị hủy</b></div>
		<div><tr>
					<td class="align-c" colspan="4">[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/nopThua_01_DNXLNT='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/nopThua_01_DNXLNT= '1' "> x</xsl:if>] Văn bản đề nghị xử lý số tiền thuế, tiền chậm nộp, tiền phạt nộp thừa mẫu số 01/ĐNXLNT<br/>  
[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_01_HT='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_01_HT='1' ">x</xsl:if>] Giấy đề nghị hoàn trả khoản thu ngân sách nhà nước mẫu số 01/HT<br/>
[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_01a_DNHT='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_01a_DNHT= '1' ">x</xsl:if>] Giấy đề nghị hoàn trả khoản thu ngân sách nhà nước mẫu số 01a/ĐNHT <br/>
[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_02_HT='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenHosoDeNghiHuy/hoan_02_HT= '1' ">x</xsl:if>] Giấy đề nghị hoàn trả khoản thu ngân sách nhà nước mẫu số 02/HT<br/>
					</td>
				</tr>
				</div>
				<div><b>2. Thông tin hồ sơ đề nghị hủy</b></div>
				<div>Tên người nộp thuế đề nghị hoàn: <xsl:value-of select="$tkchinh/TTHoSo/tenNNT"/> , Mã số thuế: <xsl:value-of select="$tkchinh/TTHoSo/mst"/>  </div>
				<div>Văn bản đề nghị hoàn thuế số: <xsl:value-of select="$tkchinh/TTHoSo/hoanThue_so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTHoSo/hoanThue_ngay,'dd/mm/yyyy')"/> </div>
				<div>Mã giao dịch điện tử (nếu có): <xsl:value-of select="$tkchinh/TTHoSo/maGiaoDich"/></div>
				<div>Được cơ quan thuế tiếp nhận theo Thông báo số  <xsl:value-of select="$tkchinh/TTHoSo/thongBao_so"/>  ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/TTHoSo/thongBao_ngay,'dd/mm/yyyy')"/> về việc tiếp nhận hồ sơ đề nghị hoàn thuế. </div>
		      <div>Lý do đề nghị hủy: <xsl:value-of select="$tkchinh/TTHoSo/lyDo"/></div>
                           

<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01HT"/>
	<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- “Trường hợp đề nghị hoàn thuế”: Ghi rõ đề nghị hoàn trả theo quy định tại điểm, khoản, Điều của văn bản quy phạm pháp luật có liên quan; </i></div>
	 <div>  <i>- “Ghi chú” tại mục bù trừ: Ghi rõ phải nộp theo văn bản của Kiểm toán nhà nước, Thanh tra tài chính, Thanh tra chính phủ, cơ quan có thẩm quyền khác (nếu có);</i></div>
	<!--<div>  <i>- “Quyết định thu/Tờ khai hải quan”: Ghi Quyết định hành chính của cơ quan có thẩm quyền hoặc tờ khai hải quan có nợ thuế chưa nộp NSNN.</i></div>
	<div>  <i>- “Nộp vào tài khoản”: Đánh dấu “V” vào cột tài khoản có liên quan.</i></div>
	<div>  <i>- KBNN: Kho bạc Nhà nước.</i></div>
	<div>  <i>- NSNN: Ngân sách Nhà nước.</i></div>
	<div>  <i>- GTGT: Giá trị gia tăng.</i></div> -->	  	 
	</div>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
			
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
