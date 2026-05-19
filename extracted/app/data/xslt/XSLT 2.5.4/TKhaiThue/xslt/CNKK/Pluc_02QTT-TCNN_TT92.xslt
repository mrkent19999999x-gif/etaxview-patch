<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="PL" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-pluc-02-1-BK-QTT-TNCN_TT92">
		<xsl:with-param name="mauTKhai"   select="'02-1/BK-QTT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày 15/6/2015 của Bộ Tài chính'"/>
		<xsl:with-param name="ghuchuTK"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập cá nhân  mẫu số 02/QTT-TNCN )'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">      
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
                      <table  class="tkhai_table">
							  <tr>
								<td colspan="25"><b>I. Người phụ thuộc đã có MST/CMND/Hộ chiếu</b></td>
							  </tr>
							  <tr>
								<td class="align-c" rowspan="2" ><b>STT</b></td>
								<td class="align-c"  colspan="2" rowspan="2"><b>Họ và tên</b></td>
								<td class="align-c"  colspan="4" rowspan="2"><b>Ngày sinh</b></td>
								<td class="align-c"  colspan="4" rowspan="2"><b>Mã số thuế</b></td>
								<td class="align-c"  colspan="4" rowspan="2"><b>Quốc tịch</b></td>
								<td class="align-c"  colspan="4" rowspan="2"><b>Số CMND/Hộ chiếu</b></td>
								<td class="align-c"  colspan="2" rowspan="2"><b>Quan hệ với người nộp thuế</b></td>
								<td class="align-c" colspan="4"><b>Thời gian được tính giảm trừ trong năm</b></td>
							  </tr>
							  <tr>
										<td class="align-c" colspan="2"> Từ tháng</td>
										<td class="align-c" colspan="2"> Đến tháng</td>
									</tr>
							  <tr>
								<td class="align-c" ><b>[09]</b></td>
								<td class="align-c"  colspan="2"><b>[10]</b></td>
								<td class="align-c" colspan="4"><b>[11]</b></td>
								<td class="align-c"  colspan="4"><b>[12]</b></td>
								<td class="align-c"  colspan="4"><b>[13]</b></td>
								<td class="align-c"  colspan="4"><b>[14]</b></td>
								<td class="align-c" colspan="2"><b>[15]</b></td>
								<td class="align-c"  colspan="2"><b>[16]</b></td>
								<td class="align-c" colspan="2"><b>[17]</b></td>
								
								</tr>
									  <xsl:for-each select="$PL/NPTCoCMND_MST/CTiet">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows" /></td>
								  <td colspan="2"><xsl:value-of select="ct10" /></td>
								  <td class="align-c" colspan="4"><xsl:value-of select="ihtkk:stringDatetime(ct11, 'dd/mm/yyyy')" /></td>
								  <td class="align-c" colspan="4"><xsl:value-of select="ct12"/></td>
								  <td colspan="4"><xsl:value-of select="ct13_ten" /></td>
								  <td colspan="4"><xsl:value-of select="ct14" /></td>
								  <td colspan="2"><xsl:value-of select="ct15_ten" /></td>
								  <td class="align-c" colspan="2" ><xsl:value-of select="ct16" /></td>
								  <td class="align-c" colspan="2"><xsl:value-of select="ct17" /></td>
								</tr>
								</xsl:for-each>
							   
							  <tr>
								<td colspan="25"><b>II.	Người phụ thuộc chưa có MST/CMND/Hộ chiếu</b></td>
							  </tr>
							  <tr>
								<td rowspan="3" class="align-c" ><b>STT</b></td>
								<td rowspan="3" colspan="2" align="c"><b>Họ và tên</b></td>
								<td colspan="14" class="align-c" ><b>Thông tin trên giấy khai sinh</b></td>
								<td rowspan="3" colspan="2" class="align-c" ><b>Quốc tịch</b></td>
								<td rowspan="3" colspan="2" class="align-c" ><b>Quan hệ với người nộp thuế</b></td>
								<td rowspan="2" colspan="4" class="align-c" ><b>Thời gian được tính giảm trừ trong năm</b></td>
							  </tr>
							  <tr>
								<td rowspan="2" colspan="2" class="align-c" >Ngày sinh</td>
								<td rowspan="2" colspan="2" class="align-c" >Số</td>
								<td rowspan="2" colspan="2" class="align-c" >Quyển số</td>
								<td colspan="8" class="align-c" >Nơi đăng ký</td>
							  </tr>
							  <tr>
								<td class="align-c"  colspan="2">Quốc gia</td>
								<td class="align-c"  colspan="2">Tỉnh/ Thành phố</td>
								<td class="align-c"  colspan="2">Quận/ Huyện</td>
								<td class="align-c"  colspan="2">Phường/ Xã</td>
								<td class="align-c"  colspan="2">Từ tháng</td>
								<td class="align-c"  colspan="2">Đến tháng</td>
							  </tr>
							  <tr>
								<td class="align-c" ><b>[18]</b></td>
								<td class="align-c"  colspan="2"><b>[19]</b></td>
								<td class="align-c"  colspan="2"><b>[20]</b></td>    
								<td class="align-c" ><b>[21]</b></td>
								<td class="align-c"  colspan="3"><b>[22]</b></td>   
								<td class="align-c"  colspan="2"><b>[23]</b></td>   
								<td class="align-c"  colspan="2"><b>[24]</b></td> 
								<td class="align-c"  colspan="2"><b>[25]</b></td>   
								<td class="align-c"  colspan="2"><b>[26]</b></td>  
								<td class="align-c"  colspan="2"><b>[27]</b></td>
								<td class="align-c"  colspan="2"><b>[28]</b></td>
								<td class="align-c"  colspan="2"><b>[29]</b></td>   
								<td class="align-c"  colspan="2"><b>[30]</b></td>
							  </tr>
							
									   <xsl:for-each select="$PL/NPTChuaCoCMND_MST/CTiet">
												<xsl:variable name="currentRows" select='position()' />
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows" /></td>
								   <td colspan="2"><xsl:value-of select="ct19" /></td>
								   <td class="align-c"  colspan="2" width="13%"><xsl:value-of select="ihtkk:stringDatetime(ct20, 'dd/mm/yyyy')" /></td>
								  <td class="align-c" ><xsl:value-of select="ct21" /></td>
								 <td class="align-c"  colspan="3"><xsl:value-of select="ct22" /></td>
								  <td   colspan="2"><xsl:value-of select="ct23_ten" /></td>
								  <td  colspan="2"><xsl:value-of select="ct24_ten" /></td>
								 <td  colspan="2"><xsl:value-of select="ct25_ten" /></td>
								  <td colspan="2"><xsl:value-of select="ct26_ten" /></td>
								  <td  colspan="2"><xsl:value-of select="ct27_ten" /></td>
								  <td   colspan="2"><xsl:value-of select="ct28_ten" /></td>
								  <td class="align-c"  colspan="2"><xsl:value-of select="ct29" /></td>
								  <td class="align-c"  colspan="2"><xsl:value-of select="ct30" /></td>
							  </tr>
							  </xsl:for-each>
						</table>
					   <div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân)</i></div>
                      			
		</div>	
		</div>		
	<xsl:call-template name="tkhaiFooter"></xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>