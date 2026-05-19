<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_3A_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_3A_TNDN">	
			<xsl:variable name="pl03-3a_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_3A_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-3A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
       <xsl:with-param name="tenPL1"   select="'Đối với cơ sở kinh doanh thành lập mới từ dự án đầu tư, cơ sở kinh doanh di chuyển địa điểm, dự án đầu tư mới và dự án đầu tư đặc biệt quan trọng'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
		             <div class="content">	
		             	<table>
		             	  <xsl:for-each select="$pl03-3a_tndn/NoiDungPL03_3A">
							<xsl:variable name="currentRows" select='position()' />
						    <tr>
						      <td class="align-l"><b><u> A. Xác định điều kiện và mức độ ưu đãi thuế </u></b> </td>
						    </tr>
							<br/>
						    <tr>
					          <td class="align-l"><b><u> 1. Điều kiện ưu đãi. </u></b></td>
							</tr>
							<br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai1 = 'true' "> x </xsl:if>] Doanh nghiệp sản xuất mới thành lập từ dự án đầu tư.</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai2 = 'true' "> x </xsl:if>] Doanh nghiệp di chuyển địa điểm ra khỏi đô thị theo quy hoạch đã được cơ quan có thẩm quyền phê duyệt.</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai3 = 'true' "> x </xsl:if>] Doanh nghiệp mới thành lập từ dự án đầu tư hoặc dự án đầu tư mới  vào ngành nghề, lĩnh vực ưu đãi đầu tư. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai4 = 'true' "> x </xsl:if>] Doanh nghiệp mới thành lập từ dự án đầu tư hoặc dự án đầu tư mới  vào ngành nghề, lĩnh vực đặc biệt ưu đãi đầu tư. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai5 = 'true' "> x </xsl:if>] Doanh nghiệp mới thành lập từ dự án đầu tư hoặc dự án đầu tư mới vào địa bàn thuộc Danh mục địa bàn có điều kiện kinh tế - xã hội khó khăn. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai6 = 'true' "> x </xsl:if>] Doanh nghiệp mới thành lập từ dự án đầu tư hoặc dự án đầu tư mới  vào địa bàn thuộc Danh mục địa bàn có điều kiện kinh tế - xã hội đặc biệt khó khăn, khu kinh tế, khu công nghệ cao. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai7 = 'true' "> x </xsl:if>] Doanh nghiệp thành lập mới trong lĩnh vực xã hội hoá hoặc có thu nhập từ hoạt động xã hội hoá. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai8 = 'true' "> x </xsl:if>] Dự án đầu tư đặc biệt quan trọng. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai9 = 'true' "> x </xsl:if>] Hợp tác xã dịch vụ nông nghiệp; Quỹ tín dụng nhân dân; Tổ chức tài chính vi mô; Cơ quan xuất bản. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai10 = 'true' "> x </xsl:if>] Ưu đãi theo Giấy phép đầu tư, Giấy chứng nhận ưu đãi đầu tư. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDai11 = 'true' "> x </xsl:if>] Ưu đãi khác </td>
			                </tr><br/>
			                <tr>
						      <td class="align-l"><b><u>2. Mức độ ưu đãi thuế:</u></b> </td>
						    </tr>
						    <br/>
						    <tr>
						      <td class="align-l">2.1- Thuế suất thuế thu nhập doanh nghiệp ưu đãi: <span class="number"><xsl:value-of select="mucDoUuDai"/></span> %</td>
						    </tr><br/>
						    <tr>
						      <td class="align-l">2.2- Thời hạn áp dụng thuế suất ưu đãi <xsl:value-of select="thoiHanUuDai"/> năm, kể từ năm <xsl:value-of select="namBatDauUuDai"/></td>
						    </tr><br/>
						    <tr>
						      <td class="align-l">2.3- Thời gian miễn thuế <xsl:value-of select="namMienThueBD"/> năm, kể từ năm <xsl:value-of select="namMienThueKT"/></td>
						    </tr><br/>
						    <tr>
						      <td class="align-l">2.4- Thời gian giảm 50% số thuế phải nộp: <xsl:value-of select="namPNop50Thue"/> năm, kể từ năm <xsl:value-of select="namKTNop50Thue"/></td>
						    </tr><br/>
   						    <tr>
						      <td class="align-l"><b><u> B. Xác định số thuế được ưu đãi: </u></b> </td>
						    </tr>
						    <table>
   						       <tr>
						         <td class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></td>
						       </tr><br/>	
							</table>
					    <table class="tkhai_table">
						   <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Mã chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
						   </tr>
						   <tr>
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
						   </tr>
						   <tr>
							   <td class="align-c"><b>3</b></td>
							   <td class="align-l"><b>Xác định số thuế TNDN chênh lệch do doanh nghiệp hưởng thuế suất ưu đãi </b></td>
							   <td></td>
							   <td></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.1</td>
							   <td class="align-l">Tổng thu nhập tính thuế được hưởng thuế suất ưu đãi</td>
							   <td class="align-c">[1]</td>
							   <td class="number align-r"><xsl:value-of select="ct1"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.2</td>
							   <td class="align-l">Thuế TNDN tính theo thuế suất ưu đãi</td>
							   <td class="align-c">[2]</td>
							   <td class="number align-r"><xsl:value-of select="ct2"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.3</td>
							   <td class="align-l">Thuế TNDN tính theo thuế suất không phải thuế suất ưu đãi</td>
							   <td class="align-c">[3]</td>
							   <td class="number align-r"><xsl:value-of select="ct3"/></td>
						   </tr>
						   <tr>
							   <td class="align-c"><b>3.4</b></td>
							   <td class="align-l"><b>Thuế TNDN chênh lệch ([4] = [3] - [2]) </b></td>
							   <td class="align-c"><b>[4]</b></td>
							   <td class="number align-r"><b><xsl:value-of select="ct4"/></b></td>
						   </tr>
						   <tr >
							   <td class="align-c"><b>4</b></td>
							   <td class="align-l"><b> Xác định số thuế được miễn, giảm trong kỳ tính thuế: </b></td>  
							   <td></td>
							   <td></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.1</td>
							   <td class="align-l">Tổng thu nhập tính thuế được miễn thuế hoặc giảm thuế</td>
							   <td class="align-c">[5]</td>
							   <td class="number align-r"><xsl:value-of select="ct5"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.2</td>
							   <td class="align-l">Thuế suất thuế TNDN ưu đãi áp dụng (%)</td>
							   <td class="align-c">[6]</td>
							   <td class="number align-r"><xsl:value-of select="ct6"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.3</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp phải nộp</td>
							   <td class="align-c">[7]</td>
							   <td class="number align-r"><xsl:value-of select="ct7"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.4</td>
							   <td class="align-l">Tỷ lệ thuế TNDN được miễn hoặc giảm (%)</td>
							   <td class="align-c">[8]</td>
							   <td class="number align-r"><xsl:value-of select="ct8"/></td>
						   </tr>
						   <tr>
							   <td class="align-c"><b>4.5</b></td>
							   <td class="align-l"><b>Thuế Thu nhập doanh nghiệp được miễn, giảm</b></td>
							   <td class="align-c">[9]</td>
							   <td class="number align-r"><xsl:value-of select="ct9"/></td>
						   </tr>
					   </table>
				       <br/>
				       </xsl:for-each>
                      </table>						   
                </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><u><b>Ghi chú:</b></u> - TNDN: thu nhập doanh nghiệp.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_3A_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>