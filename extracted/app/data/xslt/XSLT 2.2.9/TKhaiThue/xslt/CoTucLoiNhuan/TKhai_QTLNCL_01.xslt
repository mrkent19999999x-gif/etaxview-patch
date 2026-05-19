<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 61/2016/TT-BTC ngày
11/4/2016 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_QT-LNCL_01">
		<xsl:with-param name="mauTKhai"   select="'01/QT-LNCL'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"> <b>STT</b></td>
						<td class="align-c"><b>Chỉ tiêu</b></td>
						<td class="align-c"><b>Mã số</b></td>
						<td class="align-c"><b>Số tiền</b></td>
					</tr>
				
					<tr>
						<td class="align-c">1</td>
						<td class="align-c">2</td>
						<td class="align-c">3</td>
						<td class="align-c">4</td>
					</tr>
					<tr>
						  <td class="align-c"><b>1</b></td>
						   <td class="align-l"><b>Lợi nhuận sau thuế TNDN</b></td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct21"/></td>
				</tr>
				<tr>
						  <td class="align-c"><b>2</b></td>
						   <td class="align-l"><b>Các khoản phân phối, trích lập các quỹ theo quy định
được trừ ([22] = [23] + [24] + … + [28])
</b></td>
						   <td class="align-c"><b>[22]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct22"/></td>
				</tr>		
					<tr>
						  <td class="align-c">2.1</td>
						   <td class="align-l">Chia lãi cho các thành viên góp vốn liên kết theo quy định của hợp đồng kinh tế (nếu có)</td>
						   <td class="align-c">[23]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct23"/></td>
				</tr>		
						<tr>
						  <td class="align-c">2.2</td>
						   <td class="align-l">Bù đắp khoản lỗ của các năm trước đã hết thời hạn được trừ vào lợi nhuận trước thuế</td>
						   <td class="align-c">[24]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct24"/></td>
				</tr>	
										<tr>
						  <td class="align-c">2.3</td>
						   <td class="align-l">Trích quỹ đặc thù theo quyết định của Thủ tướng Chính phủ (nếu có)</td>
						   <td class="align-c">[25]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct25"/></td>
				</tr>	
						<tr>
						  <td class="align-c">2.4</td>
						   <td class="align-l">Trích quỹ đầu tư phát triển</td>
						   <td class="align-c">[26]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct26"/></td>
				</tr>	
			<tr>
						  <td class="align-c">2.5</td>
						   <td class="align-l">Trích quỹ khen thưởng, phúc lợi</td>
						   <td class="align-c">[27]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct27"/></td>
				</tr>	
					<tr>
						  <td class="align-c">2.6</td>
						   <td class="align-l">Trích quỹ thưởng người quản lý doanh nghiệp, kiểm soát viên</td>
						   <td class="align-c">[28]</td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct28"/></td>
				</tr>	
				<tr>
						  <td class="align-c"><b>3</b></td>
						   <td class="align-l"><b>Lợi nhuận sau thuế còn lại sau khi trích lập các quỹ
phải nộp ngân sách nhà nước ([29] = [21] - [22])
</b></td>
						   <td class="align-c"><b>[29]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct29"/></td>
				</tr>
					<tr>
						  <td class="align-c"><b>4</b></td>
						   <td class="align-l"><b>Lợi nhuận sau thuế còn lại sau khi trích lập các quỹ đã tạm nộp trong năm
</b></td>
						   <td class="align-c"><b>[30]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct30"/></td>
				</tr>	
									<tr>
						  <td class="align-c"><b>5</b></td>
						   <td class="align-l"><b>Lợi nhuận sau thuế còn lại sau khi trích lập các quỹ
còn phải nộp ngân sách nhà nước ([31] = [29] - [30])

</b></td>
						   <td class="align-c"><b>[31]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct31"/></td>
				</tr>
						<tr>
						  <td class="align-c"><b>6</b></td>
						   <td class="align-l"><b>20% số lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ngân sách nhà nước ([32] = [29]*20%)</b></td>
						   <td class="align-c"><b>[32]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct32"/></td>
				</tr>	
								<tr>
						  <td class="align-c"><b>7</b></td>
						   <td class="align-l"><b>Chênh lệch giữa số lợi nhuận sau thuế còn lại sau khi trích lập các quỹ còn phải nộp ngân sách nhà nước với
20% số lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ngân sách nhà nước ([33] = [31] - [32])</b></td>
						   <td class="align-c"><b>[33]</b></td>
						   <td class="number align-r"><xsl:value-of select="$tkchinh/ct33"/></td>
				</tr>		
				
		</table>
		<div>&#160;&#160;&#160;&#160;<b>8. Tiền chậm nộp của khoản chênh lệch từ 20% trở lên đến ngày hết hạn nộp lợi nhuận sau thuế còn lại sau khi trích lập các quỹ theo quyết toán (trường hợp nộp lợi nhuận sau thuế còn lại sau khi trích lập các quỹ theo quyết toán trước thời hạn thì tính đến ngày nộp lợi nhuận sau thuế còn lại sau khi trích lập các quỹ)</b></div>
		<div>&#160;&#160;&#160;&#160;[M1] Số ngày chậm nộp <xsl:value-of select="$tkchinh/soNgayChamNop"/> ngày, từ ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/tuNgay,'dd/mm/yyyy')"/> đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/denNgay,'dd/mm/yyyy')"/> </div>
	<div>&#160;&#160;&#160;&#160;[M2] Số tiền chậm nộp: <xsl:value-of select="$tkchinh/soTienChamNop"/></div>
					
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01DNHT"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

