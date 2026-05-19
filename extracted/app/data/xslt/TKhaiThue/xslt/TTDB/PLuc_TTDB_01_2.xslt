<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>   
  <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư  số 156/2013/TT-BTC ngày 06/11/2013 của Bộ Tài chính'" />		
				
<!--Bắt đầu PL01-2/TTĐB-->
	-<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_2_TTDB">			
	<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_2_TTDB' />	
	<xsl:variable name="ghiChuPL" select="'(Kèm theo Tờ khai Thuế tiêu thụ đặc biệt mẫu số 01/TTĐB)'"/>
		<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-2/TTĐB'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HOÁ ĐƠN HÀNG HOÁ MUA VÀO CHỊU THUẾ TIÊU THỤ ĐẶC BIỆT '"/>
		<xsl:with-param name="ghiChuPL"   select="$ghiChuPL"/>
	  </xsl:call-template>	  
			<div class="ndungtkhai_div">
				<div class="content">
	<div class="ghichu">	 			
				<div class="align-l"><b>I.Bảng tính thuế TTĐB của nguyên liệu mua vào:</b></div>
	</div>			
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">                 
					<tr>                     
						<td class="align-c" rowspan="2"><b>STT</b></td>                     
						<td class="align-c" colspan="3"><b>Chứng từ hoặc biên lai nộp thuế TTĐB</b> </td>                     
						<td class="align-c" rowspan="2"><b>Tên nguyên liệu đã nộp thuế TTĐB</b></td>                     
						<td class="align-c" rowspan="2"><b>Số lượng đơn vị nguyên liệu mua vào</b></td>                     
						<td class="align-c" rowspan="2"><b>Thuế TTĐB đã nộp</b></td>                     
						<td class="align-c" rowspan="2"><b>Thuế TTĐB trên 1 đơn vị nguyên liệu mua vào</b></td>    
						<td class="align-c" rowspan="2"><b>Số thuế TTĐB đã khấu trừ các kỳ trước</b></td>                     
						<td class="align-c" rowspan="2"><b>Số thuế TTĐB chưa được khấu trừ đến kỳ này</b></td>
					  </tr>                    
					  <tr>                     
					    <td class="align-c"><b>Ký hiệu</b></td>                     
					    <td class="align-c"><b>Số</b></td>                     
					    <td class="align-c"><b>Ngày, tháng, năm phát hành</b></td>                   
					  </tr>                   
					  <tr>                    
					    <td class="align-c">(1)</td>                    
					    <td class="align-c">(2)</td>                    
					    <td class="align-c">(3)</td>                    
					    <td class="align-c">(4)</td>                    
					    <td class="align-c">(5)</td>                    
					    <td class="align-c">(6)</td>                    
					    <td class="align-c">(7)</td>                   
					    <td class="align-c">(8)=(7)/(6)</td>                    
					    <td class="align-c">(9)</td>                    
					    <td class="align-c">(10)</td>                    
					   </tr>
					<xsl:for-each select="$pl02/TTinThueNLMVao/ChiTietThueTTDBNLMVao/ThueNLMVao">
					<xsl:variable name="currentRows" select='position()' />
					<tr>
						<td  class="align-c"><xsl:value-of select="$currentRows" /></td>             
						<td class="align-l"><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct2"/></td>                    
						<td class="align-l" ><xsl:value-of select="BienLaiChungTuNopThueTTDB/ct3"/></td>
						<td class="align-c" ><xsl:value-of select="ihtkk:stringDatetime(BienLaiChungTuNopThueTTDB/ct4, 'dd/mm/yyyy')"/></td>                    
						<td class="align-l" ><xsl:value-of select="ct5"/></td>                    
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>                    
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>                    
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct8)"/></td>                    
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct9)"/></td>                    
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct10)"/></td>                    
					 </tr>  
					 </xsl:for-each>                
					 <tr>                    
						<td></td>                    
						<td class="align-c" colspan="3" ><b>Tổng cộng</b></td>                    
						<td></td>                    
						<td></td>                    
						<td class="align-r" ><b><xsl:value-of select="ihtkk:formatNumber($pl02/TTinThueNLMVao/tong_ct7)"/></b></td>
						<td class="align-r"></td>                    
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/TTinThueNLMVao/tong_ct9)"/></b></td>                    	
						<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/TTinThueNLMVao/tong_ct10)"/></b></td>                 	
						</tr>                
                 </table> 	
                    <br/>
 	<div class="ghichu">	 	                   
      			<div class="align-l"><b>II.Bảng tính thuế TTĐB của nguyên liệu được khấu trừ:</b></div>
  </div>    			
				<div class="donvitien"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
					<table class="tkhai_table">  
						 <tr>                     
							<td class="align-c">STT</td>                     
							<td class="align-c"><b>Mặt hàng tiêu thụ</b></td>                     
							<td class="align-c"><b>Số lượng</b></td>                     
							<td class="align-c"><b>Tên nguyên liệu chịu thuế TTĐB đầu vào</b></td>                     
							<td class="align-c"><b>Lượng nguyên liệu trên 1 đơn vị sản phẩm tiêu thụ</b></td>                     
							<td class="align-c"><b>Thuế TTĐB trên 1 đơn vị nguyên liệu đầu vào</b></td>                     
						    <td class="align-c"><b>Tổng thuế TTĐB đầu vào được khấu trừ</b></td>                    
						  </tr>                   
					    <tr>                    
						   <td class="align-c">(1)</td>                    
						   <td class="align-c">(2)</td>                    
						   <td class="align-c">(3)</td>                    
						   <td class="align-c">(4)</td>                    
						   <td class="align-c">(5)</td>                    
						   <td class="align-c">(6)</td>                    
						   <td class="align-c">(7)=(3)x(5)x(6)</td>                    
				 	    </tr>                    
				<xsl:for-each select="$pl02/TTinThueNLDuocKTru/ChiTietThueTTDBNLDuocKTru/ThueNLDuocKTru">
					<xsl:variable name="currentRows" select='position()' />
					<tr>
						<td  class="align-c"><xsl:value-of select="$currentRows" /></td>                    
						<td class="align-l" ><xsl:value-of select="ct2"/></td>                    
						<td class="align-r" ><xsl:value-of select="ct3"/></td>
						<td class="align-l" ><xsl:value-of select="ct4"/></td>
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
						<td class="align-r" ><xsl:value-of select="ihtkk:formatNumber(ct7)"/></td>                    
					</tr>     
				</xsl:for-each>               
					<tr>                    
						<td></td>                    
						<td class="align-c" ><b>Tổng cộng</b></td>                    
						<td></td>                    
						<td></td>                    
						<td></td>                    
						<td></td>                    
					    <td class="align-r" ><b><xsl:value-of select="ihtkk:formatNumber($pl02/TTinThueNLDuocKTru/tong_ct7)"/></b></td>                    
					</tr>                
					</table> 
	<div class="ghichu">	 					
					<div><i>(TTĐB: tiêu thụ đặc biệt; GTGT: giá trị gia tăng</i></div>
</div>					
					</div>
				</div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>					
			<xsl:call-template name="tkhaiFooter"/>	
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
   </xsl:template>		
</xsl:stylesheet>