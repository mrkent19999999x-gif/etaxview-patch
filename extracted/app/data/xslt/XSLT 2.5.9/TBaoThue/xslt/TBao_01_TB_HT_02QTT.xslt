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

		<xsl:call-template name="tbao_01_TB_HT_02_QTT">
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
				<xsl:if test="$ndungTBao/Header/loaiToKhai='C'">
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ đề nghị hoàn thuế tại hồ sơ quyết toán thuế thu nhập cá nhân năm <xsl:value-of select="$ndungTBao/namQT"/> và các tài liệu kèm theo của ông/bà  <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>, mã số thuế <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> gửi đến cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'yyyy')"/>, cơ quan thuế thông báo về việc tiếp nhận hồ sơ đề nghị hoàn thuế của người nộp thuế như sau: </div>
				</xsl:if>
				<xsl:if test="$ndungTBao/Header/loaiToKhai='B'">
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ đề nghị hoàn thuế tại hồ sơ quyết toán thuế thu nhập cá nhân năm <xsl:value-of select="$ndungTBao/namQT"/> bổ sung lần <xsl:value-of select="$ndungTBao/lanBS"/> và các tài liệu kèm theo của ông/bà  <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/>, mã số thuế <xsl:value-of select="$NNhanTBaoThue/maNNhan"/> gửi đến cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/Header/ngayHoSo,'yyyy')"/>, cơ quan thuế thông báo về việc tiếp nhận hồ sơ đề nghị hoàn thuế của người nộp thuế như sau: </div>
				</xsl:if>
				<br></br>
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ngày cơ quan thuế tiếp nhận hồ sơ:  ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayTiepNhan,'yyyy')"/></div>
					<br></br>
					<xsl:if test="$ndungTBao/Header/loaiToKhai='C'">
					
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử của hồ sơ (nếu có):  <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> </xsl:if>

						<xsl:if test="$ndungTBao/Header/loaiToKhai='B'">
						
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử của hồ sơ khai thuế bổ sung (nếu có):  <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> 
					<br></br>
				
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số thông báo chấp nhận của hồ sơ khai thuế bổ sung:  Số <xsl:value-of select="$ndungTBao/BoSung/soTBao_ChapNhan"/> ngày<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/ngayTB,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/ngayTB,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/ngayTB,'yyyy')"/> </div> 
					<br></br>
					
					<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số tiền đề nghị hoàn theo hồ sơ khai thuế bổ sung:  <xsl:value-of select="$ndungTBao/BoSung/soTien"/> VNĐ</div> 
					<br></br>
	
<xsl:if test="$ndungTBao/BoSung/tiepNhanHoan/soTBao!=''">					
  <xsl:if test="$ndungTBao/BoSung/tiepNhanHoan/khongChapNhan='false'">
                    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thông báo này thay cho Thông báo tiếp nhận số  <xsl:value-of select="$ndungTBao/BoSung/tiepNhanHoan/soTBao"/> ngày<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/tiepNhanHoan/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/tiepNhanHoan/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/tiepNhanHoan/ngayTBao,'yyyy')"/> </div>
  					</xsl:if>
  					</xsl:if>
   <xsl:if test="$ndungTBao/BoSung/tiepNhanHoan/khongChapNhan='true'"> <label></label> 	</xsl:if>				
  					</xsl:if>
	<!--<xsl:if test="$ndungTBao/BoSung/chapNhanHoan/soTBao!=''">	  <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Thông báo này thay cho Thông báo chấp nhận số  <xsl:value-of select="$ndungTBao/BoSung/chapNhanHoan/soTBao"/>ngày<xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/chapNhanHoan/ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/chapNhanHoan/ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/BoSung/chapNhanHoan/ngayTBao,'yyyy')"/> </div>
	</xsl:if>-->
			<br></br>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Hồ sơ đề nghị hoàn thuế sẽ được cơ quan thuế tiếp tục kiểm tra và trả Thông báo chấp nhận hay không chấp nhận trong thời gian 03 ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ đề nghị hoàn thuế của người nộp thuế.</div>
						<br></br>
					    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, xin vui lòng truy cập theo đường dẫn https://thuedientu.gdt.gov.vn hoặc liên hệ với  <xsl:value-of select="$ndungTBao/Header/ten_cqt_QuanLy"/> để được hỗ trợ.</div>
					    <br></br>
					    <td><xsl:if test="$ndungTBao/soDT_CQT != ''">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Số điện thoại: <xsl:value-of select="$ndungTBao/soDT_CQT" /> </xsl:if>
							    <xsl:if test="$ndungTBao/soDT_CQT = ''"></xsl:if> </td> <br></br>
					   <td><xsl:if test="$ndungTBao/diaChi_CQT != ''">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Địa chỉ: <xsl:value-of select="$ndungTBao/diaChi_CQT" /> </xsl:if>
							    <xsl:if test="$ndungTBao/diaChi_CQT = ''"></xsl:if> </td>	

<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để ông/bà <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> biết và thực hiện./.</div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>