<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 
<!--start phu luc 01/KHBS-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS">	
		<xsl:variable name="khbs" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS' />
		 <xsl:variable name="maTKhai" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/maTKhai"/> 
		  <xsl:variable name="mauTKhaiChinh"> 
            <xsl:choose>
                <xsl:when test="$maTKhai=06">
                    <xsl:value-of select="'01/TAIN'"/>
                </xsl:when>
				 <xsl:when test="$maTKhai=71">
                    <xsl:value-of select="'02/TNDN'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=41">
                    <xsl:value-of select="'01/NTNN'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=73">
                    <xsl:value-of select="'03/NTNN'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=59">
                    <xsl:value-of select="'01/BVMT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=61">
                    <xsl:value-of select="'01/PHLP'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=128">
                    <xsl:value-of select="'01/TBVMT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=05">
                    <xsl:value-of select="'01/TTDB'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=132">
                    <xsl:value-of select="'01/TĐ-GTGT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=133">
                    <xsl:value-of select="'03/TĐ-TAIN'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=135">
                    <xsl:value-of select="'01/TAIN-DK'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=149">
                    <xsl:value-of select="'01A/TNDN-DK'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=85">
                    <xsl:value-of select="'01B/TNDN-DK'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=02">
                    <xsl:value-of select="'02/GTGT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=04">
                    <xsl:value-of select="'03/GTGT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=07">
                    <xsl:value-of select="'04/GTGT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=53">
                    <xsl:value-of select="'05/GTGT'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=11">
                    <xsl:value-of select="'01A/TNDN'"/>
                </xsl:when>
				<xsl:when test="$maTKhai=12">
                    <xsl:value-of select="'01B/TNDN'"/>
                </xsl:when>
			
                <xsl:otherwise>
                    <xsl:value-of select="''"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

			<xsl:call-template name="tkhaiHeader-khbs">
		<xsl:with-param name="mauTKhaiChinh"   select="$mauTKhaiChinh"/>	
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
							<td></td>
							<td class="align-l"><b><xsl:value-of select="$khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct2"/></b></td>
							<td class="align-c"><b><xsl:value-of select="$khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct3"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct5)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($khbs/NDUNGKHAIBOSUNGDIEUCHINH/TongHopDCTangGiamPNop/ct6)"/></b></td>
						</tr>
			      </table>
                <div><b>B. Tính số tiền chậm nộp:</b></div><br/>
                <div>1. Số ngày chậm nộp: <xsl:value-of select="ihtkk:formatNumber($khbs/PhatChamNop/soNgayNopCham)"/></div><br/>
                <div>2. Số tiền chậm nộp (= số thuế điều chỉnh tăng x số ngày chậm nộp x mức tiền chậm nộp %): <xsl:value-of select="ihtkk:formatNumber($khbs/PhatChamNop/soTienPhatNopCham)"/></div><br/>
                <div><b>C. Nội dung giải thích và tài liệu đính kèm:</b></div><br/>
                <div><xsl:value-of select="$khbs/noiDungGiaiThich"/> </div> <br/>
                                       
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