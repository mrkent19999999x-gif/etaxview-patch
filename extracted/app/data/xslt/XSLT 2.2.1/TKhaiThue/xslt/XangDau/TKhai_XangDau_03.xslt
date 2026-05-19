<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
 
 	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeaderXangDau">
		<xsl:with-param name="mauTKhai"   select="'03'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>
 
<!-- Báo cáo kết quả hoạt động kinh doanh mẫu số 03 --> 

<div class="ndungtkhai_div">
			<div class="content">
			<div></div>
		    <table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
				            <td class="align-c"><b>Mã đơn vị/ chi nhánh</b></td>
							<td class="align-c"><b>Tên đơn vị/ chi nhánh</b></td>
							<td class="align-c"><b>Mã số thuế</b></td>
							<td class="align-c"><b>Mã Địa bàn</b></td>
							<td class="align-c"><b>Địa bàn</b></td>
							<td class="align-c"><b>Doanh thu bán hàng (đồng)</b></td>
							<td class="align-c"><b>Giá vốn (đồng)</b></td>
							<td class="align-c"><b>Chi phí kinh doanh (đồng)</b></td>
							<td class="align-c"><b>Lợi nhuận trước thuế (đồng)</b></td>
							<td class="align-c"><b>Lợi nhuận sau thuế (đồng)</b></td>
						</tr>
						<tr>
							<td class="align-c"><b>A</b></td>
							<td class="align-c"><b>B</b></td>
							<td class="align-c"><b>C</b></td>
							<td class="align-c"><b>D</b></td>
							<td class="align-c"><b>E</b></td>
							<td class="align-c"><b>F</b></td>
							<td class="align-c"><b>1</b></td>
							<td class="align-c"><b>2</b></td>
	                        <td class="align-c"><b>3</b></td>
							<td class="align-c"><b>4</b></td>
							<td class="align-c"><b>5</b></td>
						</tr>
				        <xsl:for-each select="$tkchinh/BKeKQuaHDKD/CTietBKeKQuaHDKD">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
							    <td class="align-c"><xsl:value-of select="$currentRows" /></td>
								<td class="align-l"><xsl:value-of select="ma_ChiNhanh"/></td>
								<td class="align-l"><xsl:value-of select="ten_ChiNhanh"/></td>
								<td class="align-c"><xsl:value-of select="MaSoThue"/></td>
								<td class="align-l"><xsl:value-of select="ma_DiaBan"/></td>
								<td class="align-l"><xsl:value-of select="ten_DiaBan"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuBH)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaVon)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(chiPhiKDoanh)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(loiNhuanTruocThue)"/></td>			
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(loiNhuanSauThue)"/></td>
							</tr>
						</xsl:for-each>
			      </table>	
</div>
</div>
<table style="page-break-inside: avoid;" width="100%" >
<tr>
<td>	  
		<xsl:call-template name="tkhaiFooter"/>
	  <div><b><i>Ghi chú:</i></b></div><br/>
	  <div>- Số liệu trình bầy trong báo cáo này là số liệu về hoạt động kinh doanh xăng dầu, không bao gồm số liệu hoạt động kinh doanh khác</div><br/>
	  <div>- Đối với các chi nhánh hạch toán phụ thuộc Công ty thành viên nếu không xác định riêng được kết quả kinh doanh mà hạch toán chung với kết quả kinh doanh của Công ty thì không báo cáo các chỉ tiêu này.</div><br/>
	  <div>- Sản lượng bán hàng chỉ tính đối với sản lượng xăng dầu bán ra khỏi hệ thống Petrolimex (theo lít thực tế), không tính lượng bán nội bộ giữa Tập đoàn với các Công ty, giữa các Công ty với các chi nhánh (đảm bảo chỉ tiêu sản lượng không bị tính trùng).</div><br/>
	  <div>- Trường hợp Công ty có chi nhánh:</div><br/>
	  <div><i>+ Báo cáo của Công ty: Chỉ bao gồm sản lượng Công ty trực tiếp bán, không bao gồm Chi nhánh bán.</i></div><br/>
	  <div><i>+ Báo cáo của Chi nhánh: Chỉ bao gồm sản lượng Chi nhánh trực tiếp bán. Đồng thời ghi chú Chi nhánh trực thuộc Công ty nào để thuận tiện cho việc tổng hợp.</i></div><br/>
	  <div>- Đối với chỉ tiêu doanh thu (cột 2): Là doanh thu thuần, không bao gồm thuế BVMT và các loại phí, thuế khác nhưng đã bao gồm thuế TTĐB (theo đúng quy định về hạch toán doanh thu bán hàng).</div><br/>
	  <div>- Thời hạn lập và gửi báo cáo: chậm nhất là ngày 30 của tháng tiếp sau tháng kết thúc quý báo cáo.</div><br/>
	  <div id="sigDiv"></div>
</td>
</tr>
</table>	
	</xsl:template>		
</xsl:stylesheet>