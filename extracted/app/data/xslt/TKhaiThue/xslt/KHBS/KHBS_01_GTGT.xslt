<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
			
<!--start phu luc 01/KHBS-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS">	
		<xsl:variable name="khbs" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS' />
			<xsl:call-template name="tkhaiHeader-khbs">
		<xsl:with-param name="mauTKhaiChinh"   select="' 01/GTGT'"/>	
		<xsl:with-param name="mauTKhai"   select="'01/KHBS'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢN GIẢI TRÌNH KHAI BỔ SUNG, ĐIỀU CHỈNH'"/>
		<xsl:with-param name="ghiChuPL"   select="' '"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
			    <div><b>A. Nội dung bổ sung, điều chỉnh thông tin đã kê khai:</b></div><br/>
				<div class="align-r"><i>Đơn vị tiền: đồng Việt Nam</i></div>
				<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Chỉ tiêu điều chỉnh</b></td>
							<td class="align-c"><b>Mã số chỉ tiêu</b></td>
							<td class="align-c"><b>Số đã kê khai</b></td>
							<td class="align-c"><b>Số điều chỉnh</b></td>
							<td class="align-c"><b>Chênh lệch giữa số điều chỉnh với số đã kê khai</b></td>
						</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)=(5)-(4)</td>
						</tr>
						<tr>
							<td class="align-c"><b>I</b></td>
							<td colspan="5"><b>Chỉ tiêu điều chỉnh tăng số thuế phải nộp</b></td>
						</tr>
                        <xsl:for-each select="$khbs/NDUNGKHAIBOSUNGDIEUCHINH/DieuChinhTang/KHBSDieuChinhTang">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c"><b>II</b></td>
							<td colspan="5"><b>Chỉ tiêu điều chỉnh giảm số thuế phải nộp</b></td>
						</tr>
                        <xsl:for-each select="$khbs/NDUNGKHAIBOSUNGDIEUCHINH/DieuChinhGiam/KHBSDieuChinhGiam">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-c"><xsl:value-of select="ct3"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
							</tr>
						</xsl:for-each>
						<tr>
							<td class="align-c"><b>III</b></td>
							<td colspan="5"><b>Tổng hợp điều chỉnh số thuế phải nộp, (tăng: +; giảm: -):</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>1</b></td>
							<td class="align-l"><b>Thuế GTGT còn phải nộp trong kỳ</b></td>							
							<td class="align-c"><b>40</b></td>														
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct40/ct4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct40/ct5)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct40/ct6)"/></b></td>							
						</tr>
						<tr>
							<td class="align-c"><b>2</b></td>
							<td class="align-l"><b>Thuế GTGT còn được khấu trừ chuyển kỳ sau</b></td>							
							<td class="align-c"><b>43</b></td>														
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct43/ct4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct43/ct5)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct43/ct6)"/></b></td>							
						</tr>						
			      </table>
			      <div></div>
                <div><b>B. Tính số tiền chậm nộp:</b></div><br/>
                <div>1. Số ngày chậm nộp: <xsl:value-of select="ihtkk:formatNumber($khbs/PhatChamNop/soNgayNopCham)"/></div><br/>
                <div>2. Số tiền chậm nộp (= số thuế điều chỉnh tăng x số ngày chậm nộp x mức tiền chậm nộp %): <xsl:value-of select="ihtkk:formatNumber($khbs/PhatChamNop/soTienPhatNopCham)"/></div><br/>
                <div><b>C. Nội dung giải thích và tài liệu đính kèm:</b></div><br/>
                <div>1. Người nộp thuế tự phát hiện số tiền thuế đã được hoàn phải nộp trả NSNN là <xsl:value-of select="ihtkk:formatNumber($khbs/NOIDUNGGIAITHICH/soTienTraNSNN)"/> đồng thuộc Lệnh hoàn trả khoản thu NSNN hoặc Lệnh hoàn trả kiêm bù trừ khoản thu NSNN số <xsl:value-of select="$khbs/NOIDUNGGIAITHICH/quyetDinhHoanThueSo"/> ngày <xsl:value-of select="ihtkk:stringDatetime($khbs/NOIDUNGGIAITHICH/ngay,'dd/mm/yyyy')"/> của <xsl:value-of select="ihtkk:getTenCT($khbs/NOIDUNGGIAITHICH/coQuanThue)"/> </div> <br/>
                <div>- Số ngày nhận được tiền hoàn thuế: <xsl:value-of select="ihtkk:formatNumber($khbs/NOIDUNGGIAITHICH/soNgayNhanDuocTienHoan)"/></div><br/>
                <div>- Số tiền chậm nộp (= số tiền đã được hoàn phải nộp trả NSNN x số ngày nhận được tiền hoàn thuế x mức tiền chậm nộp %): <xsl:value-of select="ihtkk:formatNumber($khbs/NOIDUNGGIAITHICH/soTienChamNop)"/></div><br/>
                <div>2. Lý do khác: <xsl:value-of select="$khbs/NOIDUNGGIAITHICH/lyDoKhac"/></div><br/>                               
			</div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>	
			<div class="ghichu">		
		<div><b><i><u>Ghi chú:</u></i></b></div><br/>
		<div><i>a) Hướng dẫn kê khai mục III. Tổng hợp điều chỉnh số thuế phải nộp, (tăng: +; giảm: -) đối với khai bổ sung điều chỉnh tờ khai 01/GTGT</i></div><br/>
		<div><i>-	1. Điều chỉnh số thuế phải nộp (đối với thuế GTGT là chỉ tiêu [40])</i></div><br/>
		<div><i>-	2. Điều chỉnh số thuế GTGT chưa khấu trừ hết (chỉ tiêu [43])</i></div><br/>
		<div><i>b) Trường hợp KHBS kèm theo tờ khai thuế đối với dầu khí thì đơn vị tiền có thể là VNĐ hoặc USD./.</i></div><br/>
			</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>

	<!--end phu luc 01/KHBS-->
   </xsl:template>	
</xsl:stylesheet>