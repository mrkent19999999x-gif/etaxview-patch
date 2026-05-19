<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"> 
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
	<xsl:template match="/">
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		 <xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:variable name="CNhanCTru" select='$tkchinh/CANHANCUTRUCOTHUNHAPTUTIENLUONGTIENCONG' />
		  <xsl:variable name="CNhanKCTru" select='$tkchinh/CANHANKHONGCUTRUTHUNHAPTUTIENLUONGTIENCONG' />
		 <xsl:call-template name="tkhaiHeader">
		<xsl:with-param name="mauTKhai"   select="'07/KK-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'(Dành cho cá nhân cư trú và cá nhân không cư trú có thu nhập từ tiền lương, tiền công khai thuế trực tiếp với cơ quan thuế)'"/>
	  </xsl:call-template>
		<div class="ndungtkhai_div">
		<div class="content">
		<div class="donvitien"><i>Đơn vị tiền:  Đồng Việt Nam</i></div><br/>
							<table class="tkhai_table"  >
							<tr class="tkhaiheader">
							<td>STT</td>
							<td colspan="3" >Chỉ tiêu </td>
							<td> Số tiền</td>
							</tr>	
							<tr>
								<td class="tkhaiheader">I</td>
								<td colspan="4" class="b"> Cá nhân cư trú có thu nhập từ tiền lương, tiền công:</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td colspan="2">Cá nhân có thu nhập ổn định không phải nộp tờ khai các quý tiếp theo</td>
								<td class="align-c"> <b>[21]</b></td>
								<td class="align-c"> 	
				                        <xsl:if test="$CNhanCTru/ct21 = 'true' ">
			                        	[X]				</xsl:if>
			                        	<xsl:if test="$CNhanCTru/ct21 = 'false' ">
					                   [	]			</xsl:if>		
								</td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td colspan="2">Tổng thu nhập chịu thuế phát sinh trong kỳ </td>
								<td class="tkhaiheader">[22]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct22)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td colspan="2">Trong đó thu nhập chịu thuế được miễn giảm theo Hiệp định</td>
								<td class="align-c"><b>[23]</b></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct23)"/></td>
							</tr>
							<tr>
								<td rowspan="6" class="align-c">4</td>
								<td colspan="2">Tổng các khoản giảm trừ</td>
								<td  class="tkhaiheader">[24]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct24)"/></td>
							</tr>
							<tr>
								<td class="align-c">a</td>
								<td>Cho bản thân</td>
								<td class="tkhaiheader">[25]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct25)"/></td>
							</tr>
							<tr>
								<td class="align-c">b</td>
								<td>Cho người phụ thuộc</td>
								<td class="tkhaiheader">[26]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct26)"/></td>
							</tr>
							<tr>
								<td class="align-c">c</td>
								<td>Cho từ thiện, nhân đạo, khuyến học</td>
								<td class="tkhaiheader">[27]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct27)"/></td>
							</tr>
							<tr>
								<td class="align-c">d</td>
								<td>Các khoản đóng bảo hiểm được trừ</td>
								<td class="tkhaiheader">[28]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct28)"/></td>
							</tr>
							<tr>
								<td class="align-c">e</td>
								<td>Khoản đóng quỹ hưu trí tự nguyện được trừ</td>
								<td class="tkhaiheader">[29]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct29)"/></td>
							</tr>
							<tr>
								<td class="align-c">5</td>
								<td colspan="2">Tổng thu nhập tính thuế</td>
								<td class="tkhaiheader"> [30]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct30)"/> </td>
							</tr>
							<tr>
								<td class="align-c">6</td>
								<td colspan="2">Tổng số thuế thu nhập cá nhân phát sinh trong kỳ</td>
								<td class="tkhaiheader"> [31]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct31)"/></td>
							</tr>
							<tr>
								<td class="align-c">7</td>
								<td colspan="2">Tổng thu nhập chịu thuế làm căn cứ tính giảm thuế</td>
								<td class="tkhaiheader">[32]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct32)"/></td>
							</tr>
							<tr>
								<td class="align-c">8</td>
								<td colspan="2">Tổng số thuế thu nhập cá nhân được giảm</td>
								<td class="tkhaiheader">[33]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct33)"/></td>
							</tr>
							<tr>
								<td class="align-c">9</td>
								<td colspan="2">Tổng số thuế thu nhập cá nhân phải nộp</td>
								<td class="tkhaiheader">[34]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanCTru/ct34)"/></td>
							</tr>
							<tr>
								<td class="tkhaiheader">II</td>
								<td colspan="4" class="b"> Cá nhân không cư trú có thu nhập từ tiền lương, tiền công:</td>
							</tr>
							<tr>
								<td class="align-c">1</td>
								<td colspan="2">Tổng thu nhập tính thuế</td>
								<td class="tkhaiheader">[35]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanKCTru/ct35)"/></td>
							</tr>
							<tr>
								<td class="align-c">2</td>
								<td colspan="2">Mức thuế suất</td>
								<td class="tkhaiheader">[36]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanKCTru/ct36)"/></td>
							</tr>
							<tr>
								<td class="align-c">3</td>
								<td colspan="2">Tổng số thuế thu nhập cá nhân phải nộp</td>
								<td class="tkhaiheader">[37]</td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber($CNhanKCTru/ct37)"/></td>
							</tr>
						   </table>
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
	</xsl:template>		
</xsl:stylesheet>