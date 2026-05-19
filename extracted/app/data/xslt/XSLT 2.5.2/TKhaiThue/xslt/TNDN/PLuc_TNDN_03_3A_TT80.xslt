<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_3B_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3A_TNDN">	
			<xsl:variable name="pl03-3a-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3A_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc-03-3b-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-3A/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
       <xsl:with-param name="tenPL1"   select="'Đối với thu nhập từ dự án đầu tư mới, thu nhập của doanh nghiệp được hưởng ưu đãi thuế thu nhập doanh nghiệp'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kê khai theo từng tỉnh nơi người nộp thuế có trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi 
đồng thời nộp Phụ lục này kèm tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN tại trụ sở chính)'"/>
		</xsl:call-template>
		<xsl:for-each select="$pl03-3a-tndn/NoiDungPL03_3A">
		<xsl:variable name="currentRowsParent" select='position()'/>
		<xsl:if test="$currentRowsParent > 1 ">
		<br/>____________________________________________________________________________________________________________________________________________________________________________________
		<br/>
		</xsl:if>
		    <br/>
				<table>
					<tr>
						<td colspan="3">
							<b>[09]</b> Địa phương nơi có đơn vị phụ thuộc/địa điểm kinh doanh có thu nhập được hưởng ưu đãi khác tỉnh nơi đóng trụ sở chính:
						</td>
					</tr>
					<tr>
						<td>
							<b>[09a]</b> Xã phường: <xsl:value-of select="ct09a_ten"/>
						</td>
						<td>
							<b>[09b]</b> Quận/huyện: <xsl:value-of select="ct09b_ten"/>
						</td>
						<td>
							<b>[09c]</b> Tỉnh/Thành phố: <xsl:value-of select="ct09c_ten"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b> Dự án đầu tư - kinh doanh nhà ở xã hội: </b>
             				  <xsl:if test="duAn = 'true' "> [x] </xsl:if>   <xsl:if test="duAn = 'false'">[]</xsl:if>	<xsl:if test="duAn = '1'"> [x]</xsl:if> <xsl:if test="duAn = '0'">[]</xsl:if> 
						</td>
					</tr>
				</table>	
				<div class="ndungtkhai_div">	
					<div class="content">
					<tr>
						<td class="align-l"><b> A. Xác định ưu đãi thuế thu nhập doanh nghiệp của người nộp thuế tại trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh</b> </td>
					</tr>
					<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		            <table>	
					    <table class="tkhai_table">
						   <tr>
							   <td rowspan='3' class="align-c">STT</td>
							   <td rowspan='3' class="align-c">Tên NNT, đơn vị  phụ thuộc, địa điểm kinh doanh</td>
							   <td rowspan='3' class="align-c">Mã số thuế NNT, đơn vị phụ thuộc, mã địa điểm kinh doanh</td>
							   <td rowspan='3' class="align-c">Cơ quan thuế quản lý NNT, đơn vị phụ thuộc, địa điểm kinh doanh</td>
							   <td rowspan='3' class="align-c">Điều kiện được hưởng ưu đãi thuế</td>
							   <td colspan='3' class="align-c">Thông tin dự án đầu tư</td>
							   <td colspan='4' class="align-c">Xác định thời gian ưu đãi</td>
							   <td colspan='4' class="align-c">Kết quả kinh doanh của hoạt động được hưởng ưu đãi</td>
							   <td colspan='5' class="align-c">Xác định số thuế được ưu đãi thuế suất</td>
							   <td colspan='3' class="align-c">Xác định số thuế được miễn, giảm</td>
							   <td rowspan='3' class="align-c">Tổng số thuế được ưu đãi</td>
						   </tr>
						   <tr>
							   <td rowspan='2' class="align-c">Tên dự án đầu tư</td>
							   <td rowspan='2' class="align-c">Mã dự án đầu tư (nếu có)</td>
							   <td rowspan='2' class="align-c">Lĩnh vực hoạt động</td>
							   <td colspan='2' class="align-c">Ưu đãi thuế suất</td>
							   <td colspan='2' class="align-c">Miễn giảm thuế</td>
							   <td rowspan='2' class="align-c">Doanh thu tính thuế</td>
							   <td rowspan='2' class="align-c">Chi phí tính thuế</td>
							   <td rowspan='2' class="align-c">Thu nhập miễn thuế</td>
							   <td rowspan='2' class="align-c">Chuyển lỗ và bù trừ lãi, lỗ</td>
							   <td rowspan='2' class="align-c">TNTT được hưởng ưu đãi</td>
							   <td rowspan='2' class="align-c">Thuế suất ưu đãi (%)</td>
							   <td rowspan='2' class="align-c">Thuế TNDN phải nộp theo thuế suất phổ thông</td>
							   <td rowspan='2' class="align-c">Số thuế TNDN tính theo thuế suất ưu đãi</td>
							   <td rowspan='2' class="align-c">Số thuế chênh lệch do áp dụng thuế suất ưu đãi</td>
							   <td rowspan='2' class="align-c">Tỷ lệ giảm thuế</td>
							   <td rowspan='2' class="align-c">Số thuế được miễn</td>
							   <td rowspan='2' class="align-c">Số thuế được giảm</td>
						   </tr>
						   <tr>
							   <td class="align-c">Số năm</td>
							   <td class="align-c">Từ năm</td>
							   <td class="align-c">Số năm</td>
							   <td class="align-c">Từ năm</td>
						   </tr>
						   <tr>
							   <td class="align-c"><i>(1)</i></td>
							   <td class="align-c"><i>(2)</i></td>
							   <td class="align-c"><i>(3)</i></td>
							   <td class="align-c"><i>(4)</i></td>
							   <td class="align-c"><i>(5)</i></td>
							   <td class="align-c"><i>(6)</i></td>
							   <td class="align-c"><i>(7)</i></td>
							   <td class="align-c"><i>(8)</i></td>
							   <td class="align-c"><i>(9)</i></td>
							   <td class="align-c"><i>(10)</i></td>
							   <td class="align-c"><i>(11)</i></td>
							   <td class="align-c"><i>(12)</i></td>
							   <td class="align-c"><i>(13)</i></td>
							   <td class="align-c"><i>(14)</i></td>
							   <td class="align-c"><i>(15)</i></td>
							   <td class="align-c"><i>(16)</i></td>
							   <td class="align-c"><i>(17)</i></td>
							   <td class="align-c"><i>(18)</i></td>
							   <td class="align-c"><i>(19)</i></td>
							   <td class="align-c"><i>(20)</i></td>
							   <td class="align-c"><i>(21)</i></td>
							   <td class="align-c"><i>(22)</i></td>
							   <td class="align-c"><i>(23)</i></td>
							   <td class="align-c"><i>(24)</i></td>
							   <td class="align-c"><i>(25)=(21)+(23)+ (24)</i></td>
						   </tr>
						   <xsl:for-each select="thueTNDN_uuDai/ChiTiet_Pluc">
							<xsl:variable name="currentRows" select='position()'/>
						    <tr>
							   <td class="align-c"><xsl:value-of select="$currentRows"/></td>
							   <td class="align-l"><xsl:value-of select="ct2"/></td>
							   <td class="align-c"><xsl:value-of select="ct3"/></td>
							   <td class="align-l"><xsl:value-of select="ct4_ten"/></td>
							   <td class="align-l"><xsl:value-of select="ct5_ten"/></td>
							   <td class="align-l"><xsl:value-of select="ct6"/></td>
							   <td class="align-c"><xsl:value-of select="ct7"/></td>
							   <td class="align-c"><xsl:value-of select="ct8_ten"/></td>
							   <td class="align-c"><xsl:value-of select="ct9"/></td>
							   <td class="align-r"><xsl:value-of select="ct10"/></td>
							   <td class="align-r"><xsl:value-of select="ct11"/></td>
							   <td class="align-r"><xsl:value-of select="ct12"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct13)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct14)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct15)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct16)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct17)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct18)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct19)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct20)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct21)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct22)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct23)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct24)"/></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct25)"/></td>
						    </tr>
						  </xsl:for-each> 
						   <tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="align-c" colspan="2"><b>Tổng cộng</b></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong10)"/></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong11)"/></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong12)"/></b></td>
								<td></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong13)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong14)"/></b></td>
								<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong15)"/></b></td>
						   </tr>  
					   </table>
				       <br/>
				    </table>
					<tr>
						<td class="align-l"><b> B. Xác định số thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN của đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh</b> </td>
					</tr>
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
		            <table>	
					    <table class="tkhai_table">
						   <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Tên chỉ tiêu</b></td>
							   <td class="align-c"><b>Mã chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
						   </tr>
						   <tr>
							   <td class="align-c">1</td>
							   <td class="align-l">Thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN (<b>[16]=[11]-[15]</b>)</td>
							   <td class="align-c"><b>[16]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDN_phaiNop/ct16)"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">2</td>
							   <td class="align-l">Thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</td>
							   <td class="align-c"><b>[17]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDN_phaiNop/ct17)"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3</td>
							   <td class="align-l">Thuế TNDN đã tạm nộp trong năm</td>
							   <td class="align-c"><b>[18]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDN_phaiNop/ct18)"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">4</td>
							   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm (<b>[19]=[16]-[18]</b>)</td>
							   <td class="align-c"><b>[19]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDN_phaiNop/ct19)"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">5</td>
							   <td class="align-l">Thuế TNDN còn phải nộp (<b>[20]=[16]-[17]-[18]</b>)</td>
							   <td class="align-c"><b>[20]</b></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDN_phaiNop/ct20)"/></td>
						   </tr>
					    </table>
				    </table>
					</div>
				</div>
			
		</xsl:for-each>
					<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>		
			<xsl:call-template name="tkhaiFooter-03TNDN-TT80"/>	
			<div><i><u><b>Ghi chú:</b></u></i></div>
			<div><i>1. NNT kê khai Phụ lục này theo từng tỉnh/thành phố nơi người nộp thuế có đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi, đồng thời nộp Phụ lục này kèm tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN khi kê khai tại trụ sở chính.</i></div>
			<div><i>2. TNDN: Thu nhập doanh nghiệp;</i></div>
			<div><i>3. Số liệu chỉ tiêu [12] tổng hợp vào chỉ tiêu C11 của tờ khai 03/TNDN;</i></div>
			<div><i>4. Số liệu chỉ tiêu [13] tổng hợp vào chỉ tiêu C12 của tờ khai 03/TNDN;</i></div>
			<div><i>5. Số liệu chỉ tiêu [14] tổng hợp vào chỉ tiêu C13 của tờ khai 03/TNDN.</i></div>
			<div><i>7. NNT không phải kê khai mục B nếu hoạt động được hưởng ưu đãi thuế TNDN của trụ sở chính.</i></div>
			<div><i>8. Chỉ tiêu [09a], [09b], [09c]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi theo quy định tại điểm h khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều địa bàn cấp huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho địa bàn cấp huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
						<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_3B_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>