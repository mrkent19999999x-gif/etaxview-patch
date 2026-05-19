<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_3B_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_3B_TNDN">	
			<xsl:variable name="pl03-3b_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_3B_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-3B/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
<xsl:with-param name="tenPL1"   select="'Đối với cơ sở kinh doanh đầu tư xây dựng dây chuyền sản xuất mới, mở rộng quy mô, đổi mới công nghệ, cải thiện môi trường sinh thái, nâng cao năng lực sản xuất 
(dự án đầu tư mở rộng)'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
		             <div class="content">	
		             	<table>
		             	  <xsl:for-each select="$pl03-3b_tndn/NoiDungPL03_3B">
							<xsl:variable name="currentRows" select='position()' />
						    <tr>
						      <td class="align-l"><b><u> A. Xác định điều kiện và mức độ ưu đãi thuế </u></b> </td>
						    </tr><br/>
						    <tr>
					          <td class="align-l"><b><u> 1. Điều kiện ưu đãi. </u></b></td>
							</tr><br/>
							<tr>
                              <td class="align-l">- Ngành nghề, địa bàn đầu tư:</td>
							</tr><br/>							
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDaiNN1 = 'true' "> x </xsl:if>] Đầu tư  lắp đặt dây chuyền sản xuất mới không thuộc ngành nghề, lĩnh vực, địa bàn khuyến khích đầu tư. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDaiNN2 = 'true' "> x </xsl:if>] Đầu tư vào ngành nghề, lĩnh vực thuộc Danh mục lĩnh vực ưu đãi đầu tư.</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDaiNN3 = 'true' "> x </xsl:if>] Đầu tư vào ngành nghề, lĩnh vực thuộc Danh mục lĩnh vực đặc biệt ưu đãi đầu tư </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDaiNN4 = 'true' "> x </xsl:if>] Đầu tư vào địa bàn thuộc Danh mục địa bàn có điều kiện kinh tế - xã hội khó khăn. </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDaiNN5 = 'true' "> x </xsl:if>] Đầu tư vào địa bàn thuộc Danh mục địa bàn có điều kiện kinh tế - xã hội đặc biệt khó khăn.  </td>
			                </tr><br/>
    						<tr>
                              <td class="align-l">- Dự án đầu tư:</td>
							</tr><br/>	
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDaiDA1 = 'true' "> x </xsl:if>] Đầu tư xây dựng dây chuyền sản xuất mới </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">[<xsl:if test="dieuKienUuDaiDA2 = 'true' "> x </xsl:if>] Đầu tư mở rộng quy mô, đổi mới công nghệ, cải thiện môi trường sinh thái, nâng cao năng lực sản xuất </td>
			                </tr><br/>
            				<tr>
                              <td class="align-l"><b>Trong đó, dự án đầu tư bao gồm các hạng mục đầu tư:</b></td>
							</tr><br/>
					        <tr>
             				  <td class="align-l">- Hạng mục đầu tư: <xsl:value-of select="dieuKienUuDaiDAHM1"/></td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Hạng mục đầu tư: <xsl:value-of select="dieuKienUuDaiDAHM2"/></td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Hạng mục đầu tư: <xsl:value-of select="dieuKienUuDaiDAHM3"/></td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Thời gian đăng ký bắt đầu thực hiện miễn, giảm thuế: <xsl:value-of select="ihtkk:stringDatetime(dieuKienUuDaiDADKMGT, 'dd/mm/yyyy')"/></td>
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
						      <td class="align-l">2.3- Thời gian miễn thuế <xsl:value-of select="thoigianMienThueBD"/> năm, kể từ năm <xsl:value-of select="namMienThueKT"/></td>
						    </tr><br/>
						    <tr>
						      <td class="align-l">2.4- Thời gian giảm 50% số thuế phải nộp: <xsl:value-of select="namPNop50Thue"/> năm, kể từ năm <xsl:value-of select="namKTNop50Thue"/></td>
						    </tr><br/>
   						    <tr>
						      <td class="align-l"><b><u> B. Xác định số thuế thu nhập doanh nghiệp (TNDN) được ưu đãi: </u></b> </td>
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
							   <td class="align-l"><b>Xác định thu nhập tính thuế tăng thêm được hưởng ưu đãi </b></td>
							   <td></td>
							   <td></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.1</td>
							   <td class="align-l">Tổng nguyên giá TSCĐ dùng cho sản xuất, kinh doanh trong kỳ tính thuế</td>
							   <td class="align-c">[01]</td>
							   <td class="number align-r"><xsl:value-of select="ct01"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.2</td>
							   <td class="align-l">Tổng giá trị TSCĐ đầu tư mới đã đưa vào sản xuất kinh doanh</td>
							   <td class="align-c">[02]</td>
							   <td class="number align-r"><xsl:value-of select="ct02"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.3</td>
							   <td class="align-l">Tổng thu nhập tính thuế trong năm</td>
							   <td class="align-c">[03]</td>
							   <td class="number align-r"><xsl:value-of select="ct03"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.4</td>
							   <td class="align-l">Thu nhập tăng thêm do đầu tư mang lại được miễn hoặc giảm (đề nghị cho công thức tính)</td>
							   <td class="align-c">[04]</td>
							   <td class="number align-r"><xsl:value-of select="ct04"/></td>
						   </tr>
						   <tr >
							   <td class="align-c"><b>4</b></td>
							   <td class="align-l"><b>Xác định số thuế TNDN chênh lệch do doanh nghiệp hưởng thuế suất ưu đãi </b></td>  
							   <td></td>
							   <td></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.1</td>
							   <td class="align-l">Thuế TNDN tính theo thuế suất không phải thuế suất ưu đãi</td>
							   <td class="align-c">[05]</td>
							   <td class="number align-r"><xsl:value-of select="ct05"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.2</td>
							   <td class="align-l">Thuế TNDN tính theo thuế suất ưu đãi</td>
							   <td class="align-c">[06]</td>
							   <td class="number align-r"><xsl:value-of select="ct06"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4.3</td>
							   <td class="align-l">Thuế TNDN chênh lệch [07] = [05] – [06]</td>
							   <td class="align-c">[07]</td>
							   <td class="number align-r"><xsl:value-of select="ct07"/></td>
						   </tr>
						   <tr>
							   <td class="align-c"><b>5</b></td>
							   <td class="align-l"><b>Xác định số thuế được miễn, giảm trong kỳ tính thuế</b></td>
							   <td></td>
							   <td></td>
						   </tr>
						   <tr>
							   <td class="align-c">5.1</td>
							   <td class="align-l">Thuế suất thuế TNDN đang áp dụng (%)</td>
							   <td class="align-c">[08]</td>
							   <td class="number align-r"><xsl:value-of select="ct08"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">5.2</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp phải nộp</td>
							   <td class="align-c">[09]</td>
							   <td class="number align-r"><xsl:value-of select="ct09"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">5.3</td>
							   <td class="align-l">Tỷ lệ thuế TNDN được miễn hoặc giảm (%)</td>
							   <td class="align-c">[10]</td>
							   <td class="number align-r"><xsl:value-of select="ct10"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">5.4</td>
							   <td class="align-l">Thuế Thu nhập doanh nghiệp được miễn, giảm</td>
							   <td class="align-c">[11]</td>
							   <td class="number align-r"><xsl:value-of select="ct11"/></td>
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
			<div><i> - TSCĐ: tài sản cố định</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_3B_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>