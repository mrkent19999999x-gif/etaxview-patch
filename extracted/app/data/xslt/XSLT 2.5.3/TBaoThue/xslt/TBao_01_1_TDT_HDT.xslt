<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'"/>

		<xsl:call-template name="tbao_01_TB_HT">
			<xsl:with-param name="mauTBao"   select="'01/TB-HT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />


		</xsl:call-template>
		<br/>
	
	
	
		
	<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> </div> <br/>-->
				<!--<xsl:if test="$ndungTBao/trangThai='Y'">-->
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ <xsl:if test="$ndungTBao/maToKhai='916'"><lable>Văn bản đề nghị xử lý khoản nộp thừa</lable> </xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='384'"><lable>Giấy đề nghị hoàn trả khoản thu Ngân sách Nhà nước </lable>  số <xsl:value-of select="$ndungTBao/soDeNghiHoan"/></xsl:if>	
				<xsl:if test="$ndungTBao/maToKhai='915'"><lable>Văn bản đề nghị hủy hồ sơ đề nghị hoàn thuế số </lable><xsl:value-of select="$ndungTBao/soDeNghiHoan"/></xsl:if>
					<xsl:if test="$ndungTBao/maToKhai='1110'"><lable>Giấy đề nghị hoàn trả khoản thu Ngân sách Nhà nước đối với xăng sinh học số </lable><xsl:value-of select="$ndungTBao/soDeNghiHoan"/></xsl:if>
				 ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/> và các tài liệu kèm theo của <xsl:if test="$ndungTBao/maToKhai='916'"><lable>người nộp thuế </lable> </xsl:if>
 <xsl:if test="$ndungTBao/maToKhai='915'"><lable></lable></xsl:if>
  <xsl:if test="$ndungTBao/maToKhai='384'"><lable></lable></xsl:if>
<xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>, mã số thuế <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> gửi đến cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>,cơ quan thuế thông báo về việc tiếp nhận hồ sơ đề nghị hoàn thuế của người nộp thuế như sau: </div>
				<br></br>
				
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ngày cơ quan thuế tiếp nhận hồ sơ:  ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/></div>
					<br></br>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử của hồ sơ (nếu có): <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/>
					</div>
					<br></br>
					
					<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Hồ sơ đề nghị hoàn thuế điện tử: </div><br/>
			<table class="tkhai_table">
				<tr>
					<td rowspan="2" class="align-c"><b>STT</b></td>
					<td rowspan="2" class="align-c"><b>Tên hồ sơ đề nghị hoàn thuế điện tử</b></td>
					<td colspan="2" class="align-c"><b>Kỳ hoàn thuế</b></td>
					<td rowspan="2" class="align-c"><b>Cơ quan thuế xử lý hồ sơ</b></td>
				</tr>
				<tr>
					<td class="align-c"><b>Từ kỳ</b></td>
					<td class="align-c"><b>Đến kỳ</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
				   <td class="align-c">(5)</td>
				</tr>
				 <xsl:for-each select="$ndungTBao/HoSoDNHoan/CTietHoSoDNHoan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenHSoDNHoan"/></td>
							  <td class="align-c"><xsl:value-of select="tuKyDNH"/></td>
							  <td class="align-c"><xsl:value-of select="denKyDNH"/></td>
							  <td class="align-l"><xsl:value-of select="tenNoiNop"/></td>
							</tr>
							</xsl:for-each>
			</table>	<br/>	
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> -->
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- <xsl:if test="$ndungTBao/maToKhai='916'"><lable>Hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='384'"><lable>Hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='1110'"><lable>Hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='915'"><lable>Hồ sơ đề nghị hủy hồ sơ đề nghị hoàn thuế</lable></xsl:if> sẽ được cơ quan thuế tiếp tục kiểm tra và trả Thông báo chấp nhận hay không chấp nhận trong thời gian 03 ngày làm việc kể từ ngày cơ quan thuế tiếp nhận <xsl:if test="$ndungTBao/maToKhai='916'"><lable>hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='384'"><lable>hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='1110'"><lable>hồ sơ đề nghị hoàn thuế </lable></xsl:if>
				<xsl:if test="$ndungTBao/maToKhai='915'"><lable>hồ sơ đề nghị hủy hồ sơ đề nghị hoàn thuế</lable></xsl:if> của người nộp thuế.</div>
						<br></br>
					    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Nếu có vướng mắc, xin vui lòng truy cập theo đường dẫn http://thuedientu.gdt.gov.vn hoặc liên hệ với  <xsl:value-of select="$ndungTBao/ten_cqt_QuanLy"/> để được hỗ trợ.</div>
					    <br></br>
					    <td><xsl:if test="$ndungTBao/soDT_CQT != ''">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số điện thoại: <xsl:value-of select="$ndungTBao/soDT_CQT" /> </xsl:if>
							    <xsl:if test="$ndungTBao/soDT_CQT = ''"></xsl:if> </td>	
							    <br></br>
					   <td><xsl:if test="$ndungTBao/diaChi_CQT != ''">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ: <xsl:value-of select="$ndungTBao/diaChi_CQT" /> </xsl:if>
							    <xsl:if test="$ndungTBao/diaChi_CQT = ''"></xsl:if> </td>	
							 
					    
					    
						
			<!--</xsl:if>	
			
			<xsl:if test="$ndungTBao/trangThai='N'">
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ thuế điện tử của người nộp thuế gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cơ quan thuế thông báo về việc không tiếp nhận hồ sơ đề nghị hoàn thuế điện tử của người nộp thuế, cụ thể như sau:</div>
						
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Tên hồ sơ thuế điện tử:</div> <br/>
						<table class="tkhai_table">
				<tr>
					<td rowspan="2" class="align-c"><b>STT</b></td>
					<td rowspan="2" class="align-c"><b>Tên hồ sơ đề nghị hoàn thuế điện tử</b></td>
					<td colspan="2" class="align-c"><b>Kỳ hoàn thuế</b></td>
					<td rowspan="2" class="align-c"><b>Cơ quan thuế xử lý hồ sơ</b></td>
				</tr>
				<tr>
					<td class="align-c"><b>Từ kỳ</b></td>
					<td class="align-c"><b>Đến kỳ</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
				   <td class="align-c">(5)</td>
				</tr>
				 <xsl:for-each select="$ndungTBao/HoSoDNHoan/CTietHoSoDNHoan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tenHSoDNHoan"/></td>
							  <td class="align-c"><xsl:value-of select="tuKyDNH"/></td>
							  <td class="align-c"><xsl:value-of select="denKyDNH"/></td>
							  <td class="align-l"><xsl:value-of select="tenNoiNop"/></td>
							</tr>
							
							</xsl:for-each>
			</table>	<br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi kiểm tra hồ sơ, Cơ quan thuế sẽ có thông báo cho người nộp thuế về tình trạng xử lý hồ sơ trên.</div>
					
            </xsl:if>-->
	
	<!--<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế cần biết thêm chi tiết, xin vui lòng liên hệ với Cơ quan thuế quản lý để được hỗ trợ trực tiếp. </div> <br/>-->

	    <br></br>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để  <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> biết và thực hiện./.</div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>