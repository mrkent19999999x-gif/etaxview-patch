<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày
 29/9/2021 của Bộ trưởng Bộ Tài chính)'" />
		 <xsl:call-template name="tkhaiHeader_QT_LNCL_01">
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
						  <td class="align-c"><b>A</b></td>
						   <td class="align-l"><b>Xác định số lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ngân sách nhà nước</b></td>
						   <td class="align-c"><b>[09]</b></td>
						   <td class="align-c"></td>
				    </tr>
					<tr>
						  <td class="align-c">1</td>
						   <td class="align-l">Lợi nhuận sau thuế thu nhập doanh nghiệp</td>
						   <td class="align-c"><b>[10]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct10)"/></td>

				</tr>
				<tr>
						  <td class="align-c">2</td>
						   <td class="align-l">Các khoản phân phối, trích lập các quỹ theo quy định được trừ ([11]=[12]+[13]+…+[16])</td>
						   <td class="align-c"><b>[11]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct11)"/></td>
				</tr>		
					<tr>
						  <td class="align-c">2.1</td>
						   <td class="align-l">Chia lãi cho các thành viên góp vốn liên kết theo quy định của hợp đồng kinh tế (nếu có)</td>
						   <td class="align-c"><b>[12]</b></td>
                           <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct12)"/></td>

				</tr>	
					<tr>
						  <td class="align-c">2.2</td>
						   <td class="align-l">Bù đắp khoản lỗ của các năm trước đã hết thời hạn được trừ vào lợi nhuận trước thuế</td>
						   <td class="align-c"><b>[13]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct13)"/></td>
				</tr>		
					<tr>
						  <td class="align-c">2.3</td>
						   <td class="align-l">Trích quỹ đầu tư phát triển</td>
						   <td class="align-c"><b>[14]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct14)"/></td>
				</tr>		
					<tr>
						  <td class="align-c">2.4</td>
						   <td class="align-l">Trích quỹ khen thưởng, phúc lợi</td>
						   <td class="align-c"><b>[15]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct15)"/></td>
				</tr>		
					<tr>
						  <td class="align-c">2.5</td>
						   <td class="align-l">Trích quỹ thưởng người quản lý doanh nghiệp, kiểm soát viên</td>
						   <td class="align-c"><b>[16]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct16)"/></td>
				</tr>	
				<tr>
						  <td class="align-c"><b>B</b></td>
						   <td class="align-l"><b>Lợi nhuận sau thuế còn lại sau khi trích lập các quỹ phải nộp ([17]=[10]-[11])</b></td>
						   <td class="align-c"><b>[17]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct17)"/></td>
				    </tr>	
				    <tr>
						  <td class="align-c"><b>C</b></td>
						   <td class="align-l"><b>Số lợi nhuận sau thuế còn lại nộp thừa kỳ trước chuyển sang kỳ này</b></td>
						   <td class="align-c"><b>[18]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct18)"/></td>
				    </tr>	
				    <tr>
						  <td class="align-c"><b>D</b></td>
						   <td class="align-l"><b>Số lợi nhuận sau thuế còn lại đã tạm nộp đến thời hạn nộp hồ sơ khai quyết toán</b></td>
						   <td class="align-c"><b>[19]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct19)"/></td>
				    </tr>	
				        <tr>
						  <td class="align-c"><b>E</b></td>
						   <td class="align-l"><b>Chênh lệch giữa số phải nộp của kỳ tính thuế và số đã tạm nộp đến thời hạn nộp hồ sơ khai quyết toán ([20]=[17]-[19])</b></td>
						   <td class="align-c"><b>[20]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct20)"/></td>
				    </tr>
				        <tr>
						  <td class="align-c"><b>F</b></td>
						   <td class="align-l"><b>Số lợi nhuận sau thuế còn lại còn phải nộp đến thời hạn nộp hồ sơ khai quyết toán ([21]=[17]-[18]-[19])</b></td>
						   <td class="align-c"><b>[21]</b></td>
						   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($tkchinh/ct21)"/></td>
				    </tr>
						</table>
		 </div>		
      </div>	
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		  
		<xsl:call-template name="tkhaiFooter"/> 
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><u><i>Ghi chú:</i></u> </b></div> 
				<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tờ khai mẫu số 01/QT-LNCL được mặc định áp dụng đối với hoạt động sản xuất kinh doanh thông thường của người nộp thuế. Trường hợp người nộp thuế có các hoạt động đặc thù “Hoạt động xổ số kiến thiết, xổ số điện toán” thì phải lựa chọn để khai riêng đối với hoạt động đặc thù đó. </i></div>
							<div><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Chỉ tiêu [18]: NNT kê khai số lợi nhuận sau thuế còn lại nộp thừa kỳ trước chuyển sang bù trừ với số lợi nhuận sau thuế còn lại phải nộp kỳ này.</i></div>
				
<div id="sigDiv"></div>
</td></tr>
</table>		
	</xsl:template>		
</xsl:stylesheet>

