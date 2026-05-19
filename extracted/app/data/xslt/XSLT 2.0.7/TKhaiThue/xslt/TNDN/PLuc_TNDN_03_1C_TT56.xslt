<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>

<!--start phu luc 03_1C_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_1C_TNDN">	
			<xsl:variable name="pl03-1c_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_1C_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-1C/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH'"/>
<xsl:with-param name="tenPL1"   select="'Dành cho người nộp thuế là các Công ty chứng khoán, Công ty quản lý quỹ đầu tư chứng khoán'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>					
					<div class="ndungtkhai_div">	
			<div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
								 <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu </b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c">(1)</td>
								   <td class="align-c">(2)</td>
								   <td class="align-c">(3)</td>
								   <td class="align-c">(4)</td>								   								   								   
								 </tr>
								 <tr>
								   <td></td>
								   <td colspan="1"><b>Kết quả kinh doanh ghi nhận theo báo cáo tài chính.</b></td>
								   <td></td>
								   <td></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>1</b></td>
								   <td class="align-l"><b>Thu từ phí cung cấp dịch vụ cho khách hàng và hoạt động tự doanh ([01]=[02]+[03]+[04]+[05]+[06]+[07]+[08]+[09]+[10])</b></td>
								   <td class="align-c"><b>[01]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct01"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l">Thu phí dịch vụ môi giới chứng khoán</td>
								   <td class="align-c">[02]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct02"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l">Thu phí quản lý danh mục đầu tư</td>
								   <td class="align-c">[03]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct03"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">c</td>
								   <td class="align-l">Thu phí bảo lãnh và phí đại lý phát hành</td>
								   <td class="align-c">[04]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct04"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">d</td>
								   <td class="align-l">Thu phí tư vấn tài chính và đầu tư chứng khoán</td>
								   <td class="align-c">[05]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct05"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">e</td>
								   <td class="align-l">Thu phí quản lý quỹ đầu tư chứng khoán và các khoản tiền thưởng cho công ty quản lý quỹ</td>
								   <td class="align-c">[06]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct06"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">f</td>
								   <td class="align-l">Thu từ phí phát hành chứng chỉ quỹ </td>
								   <td class="align-c">[07]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct07"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">g</td>
								   <td class="align-l">Phí thù lao hội đồng quản trị nhận được do tham gia hội đồng quản trị của các công ty khác</td>
								   <td class="align-c">[08]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct08"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">h</td>
								  <td class="align-l">Chênh lệch giá chứng khoán mua bán trong kỳ, thu lãi trái phiếu từ hoạt động tự doanh của công ty chứng khoán, hoạt động đầu tư tài chính của công ty quản lý quỹ</td>
								   <td class="align-c">[09]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct09"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">i</td>
								   <td class="align-l">Các khoản thu khác theo quy định của pháp luật về cung cấp dịch vụ cho khách hàng và hoạt động tự doanh</td>
								   <td class="align-c">[10]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct10"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>2</b></td>
								   <td class="align-l"><b>Chi phí để thực hiện cung cấp dịch vụ cho khách hàng và các chi phí cho hoạt động tự doanh ([11]= [12]+[13]+......+[22]+[23])</b></td>
								   <td class="align-c"><b>[11]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct11"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c">a</td>
								   <td class="align-l">Chi nộp phí thành viên trung tâm giao dịch chứng khoán (đối với công ty là thành viên của Trung tâm giao dịch chứng khoán)</td>
								   <td class="align-c">[12]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct12"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">b</td>
								   <td class="align-l">Chi phí lưu ký chứng khoán, phí giao dịch chứng khoán tại Trung tâm giao dịch chứng khoán</td>
								   <td class="align-c">[13]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct13"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">c</td>
								   <td class="align-l">Phí niêm yết và đăng ký chứng khoán (đối với công ty phát hành chứng khoán niêm yết tại Trung tâm giao dịch chứng khoán)</td>
								   <td class="align-c">[14]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct14"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">d</td>
								   <td class="align-l">Chi phí liên quan đến việc quản lý quỹ đầu tư, danh mục đầu tư</td>
								   <td class="align-c">[15]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct15"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">e</td>
								   <td class="align-l">Chi phí huy động vốn cho quỹ đầu tư</td>
								   <td class="align-c">[16]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct16"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">f</td>
								   <td class="align-l">Chi trả lãi tiền vay</td>
								   <td class="align-c">[17]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct17"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">g</td>
								   <td class="align-l">Chi phí thù lao cho hội đồng quản trị</td>
								   <td class="align-c">[18]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct18"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">h</td>
								   <td class="align-l">Chi nộp thuế, phí, lệ phí phải nộp có liên quan đến hoạt động kinh doanh</td>
								   <td class="align-c">[19]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct19"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">i</td>
								   <td class="align-l">Chi hoạt động quản lý và công vụ, chi phí cho nhân viên </td>
								   <td class="align-c">[20]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct20"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">k</td>
								   <td class="align-l">Chi khấu hao tài sản cố định, chi khác về tài sản</td>
								   <td class="align-c">[21]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct21"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">l</td>
								   <td class="align-l">Trích dự phòng giảm giá chứng khoán tự doanh</td>
								   <td class="align-c">[22]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct22"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">m</td>
								   <td class="align-l">Các khoản chi khác theo quy định của pháp luật về cung cấp dịch vụ cho khách hàng và hoạt động tự doanh</td>
								   <td class="align-c">[23]</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct23"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>3</b></td>
								   <td class="align-l"><b>Lãi (lỗ) từ hoạt động cung cấp dịch vụ cho khách hàng và hoạt động tự doanh ([24]= [01]-[11])</b></td>
								   <td class="align-c"><b>[24]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct24"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>4</b></td>
								   <td class="align-l"><b>Các khoản thu nhập khác ngoài cung cấp dịch vụ cho khách hàng và hoạt động tự doanh</b></td>
								   <td class="align-c"><b>[25]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct25"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>5</b></td>
								   <td class="align-l"><b>Chi phí khác ngoài cung cấp dịch vụ cho khách hàng và hoạt động tự doanh</b></td>
								   <td class="align-c"><b>[26]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct26"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>6</b></td>
								   <td class="align-l"><b>Lãi (lỗ) khác ngoài cung cấp dịch vụ cho khách hàng và hoạt động tự doanh ([27]=[25]-[26])</b></td>
								   <td class="align-c"><b>[27]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct27"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>7</b></td>
								   <td class="align-l"><b>Tổng lợi nhuận kế toán trước thuế thu nhập doanh nghiệp ([28] = [24] + [27])</b></td>
								   <td class="align-c"><b>[28]</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct28"/></b></td>
								 </tr>  
							   </table>
					    </div>
					</div>
		<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>							
			<xsl:call-template name="tkhaiFooter"/>	
				<div><i><b><u>Ghi chú:</u></b>  Số liệu tại chỉ tiêu  [28] của Phụ lục này được ghi vào chỉ tiêu A1 của Tờ khai quyết toán thuế TNDN của cùng kỳ tính thuế.  </i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>						
		</xsl:if>
<!--end phu luc 03_1C_TNDN-->	
	   
	</xsl:template>		
</xsl:stylesheet>