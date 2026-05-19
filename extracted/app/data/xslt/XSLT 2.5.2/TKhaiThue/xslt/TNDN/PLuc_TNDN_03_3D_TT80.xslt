<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_3C_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3D_TNDN">	
			<xsl:variable name="pl03-3d-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3D_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc-03-3b-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-3D/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
<xsl:with-param name="tenPL1"   select="'(Áp dụng đối với doanh nghiệp khoa học công nghệ hoặc doanh nghiệp thực hiện chuyển giao công nghệ thuộc lĩnh vực ưu tiên chuyển giao)'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kê khai theo từng tỉnh nơi người nộp thuế có trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi 
đồng thời nộp Phụ lục này kèm tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN tại trụ sở chính)'"/>
	  </xsl:call-template>	
		<xsl:for-each select="$pl03-3d-tndn/NoiDungPL03_3D">
		<xsl:variable name="currentRowsParent" select='position()'/>
		<xsl:if test="$currentRowsParent > 1 ">
		<br/>____________________________________________________________________________________________________________________________________________________________________________________
		<br/>
		</xsl:if>
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
			<br/>
			</table>
					<div class="ndungtkhai_div">	
		             <div class="content">
		             	  <table>
						    <tr>
						      <td class="align-l"><b>A. Xác định điều kiện và mức độ ưu đãi thuế:</b> </td>
						    </tr>
					        <tr>
             				  <td class="align-l"> <xsl:if test="dn_chuyenGiao = 'true' "> [x] </xsl:if>   <xsl:if test="dn_chuyenGiao = 'false'">[]</xsl:if>	<xsl:if test="dn_chuyenGiao = '1'"> [x]</xsl:if> <xsl:if test="dn_chuyenGiao = '0'">[]</xsl:if>  <b>Ưu đãi thuế TNDN dành cho doanh nghiệp thực hiện chuyển giao công nghệ thuộc lĩnh vực ưu tiên chuyển giao cho tổ chức, cá nhân ở địa bàn có điều kiện kinh tế - xã hội đặc biệt khó khăn </b></td>
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
							   <td class="align-c"><b>Giá trị</b></td>
						   </tr>
						   <tr>
							   <td class="align-c">1.</td>
							   <td class="align-l">Doanh thu từ hoạt động chuyển giao công nghệ được giảm thuế</td>
							   <td class="align-c">[10]</td>
							   <td class="number align-r"><xsl:value-of select="ct10"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">2.</td>
							   <td class="align-l">Chi phí từ hoạt động chuyển giao công nghệ được giảm thuế</td>
							   <td class="align-c">[11]</td>
							   <td class="number align-r"><xsl:value-of select="ct11"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.</td>
							   <td class="align-l">Thu nhập tính thuế TNDN</td>
							   <td class="align-c">[12]</td>
							   <td class="number align-r"><xsl:value-of select="ct12"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">4.</td>
							   <td class="align-l">Tỷ lệ giảm thuế (%)</td>
							   <td class="align-c">[13]</td>
							   <td class="number align-r"><xsl:value-of select="ct13"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">5.</td>
							   <td class="align-l">Số thuế TNDN được giảm</td>
							   <td class="align-c">[14]</td>
							   <td class="number align-r"><xsl:value-of select="ct14"/></td>							   
						   </tr>
						  </table>
						   <br/>
						  <tr>
             				  <td class="align-l"> <xsl:if test="dn_khoaHocCN = 'true' "> [x] </xsl:if>   <xsl:if test="dn_khoaHocCN = 'false'">[]</xsl:if>	<xsl:if test="dn_khoaHocCN = '1'"> [x]</xsl:if> <xsl:if test="dn_khoaHocCN = '0'">[]</xsl:if> <b> Ưu đãi thuế TNDN dành cho doanh nghiệp khoa học công nghệ </b></td>
			              </tr>
						  <br/>
						  <tr>
             				  <td class="align-l">1. Số Giấy chứng nhận doanh nghiệp khoa học và công nghệ: <xsl:value-of select="so_gcn"/> ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(ngayCap, 'dd/mm/yyyy')"/>, nơi cấp: <xsl:value-of select="noiCap"/> </td>
			                </tr>
             				  &#160;<div>Danh mục công nghệ, sản phẩm do doanh nghiệp sản xuất đủ điều kiện được hưởng ưu đãi:</div>
							<xsl:for-each select="congNghe_sanPham">
							<xsl:variable name="currentRows" select="position()"/><br/>
							<tr>
								&#160;&#160;&#160;<td class="align-l"><xsl:value-of select="$currentRows"/>)</td>
								<td class="align-l"><xsl:value-of select="ten"/></td>
	         				</tr>	
	         		      </xsl:for-each>
						  <br/>
						  <tr>
             				  <td class="align-l">2. Xác định điều kiện về doanh thu để được hưởng ưu đãi</td>
			              </tr>
						  <br/>
						  <table>
						  <tr>
						         <td class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></td>
						   </tr>
						   </table>
						   <table class="tkhai_table">
						   <tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Mã chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
						   </tr>
						   <tr>
							   <td class="align-c">1.</td>
							   <td class="align-l">Doanh thu từ việc sản xuất, kinh doanh các sản phẩm hình thành từ kết quả khoa học và công nghệ </td>
							   <td class="align-c">[15]</td>
							   <td class="number align-r"><xsl:value-of select="ct15"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">2.</td>
							   <td class="align-l">Tổng doanh thu của doanh nghiệp </td>
							   <td class="align-c">[16]</td>
							   <td class="number align-r"><xsl:value-of select="ct16"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.</td>
							   <td class="align-l">Tỷ lệ về doanh thu làm căn cứ xét ưu đãi thuế (%)</td>
							   <td class="align-c">[17]</td>
							   <td class="number align-r"><xsl:value-of select="ct17"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">4.</td>
							   <td class="align-l">Năm bắt đầu có thu nhập chịu thuế </td>
							   <td class="align-c">[18]</td>
							   <td class="align-c"><xsl:value-of select="ct18"/></td>							   
						   </tr>
						  </table>
						  
						  <tr>
             				  <td class="align-l"><b>B. Xác định ưu đãi thuế thu nhập doanh nghiệp của người nộp thuế tại trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh</b></td>
			              </tr>
						  <table>
						  <tr>
						         <td class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></td>
						   </tr>
						   </table>
						   <table class="tkhai_table">
						   <tr>
							   <td rowspan='2' class="align-c">STT</td>
							   <td rowspan='2' class="align-c">Tên NNT, đơn vị  phụ thuộc, địa điểm kinh doanh</td>
							   <td rowspan='2' class="align-c">Mã số thuế NNT, đơn vị phụ thuộc, mã địa điểm kinh doanh</td>
							   <td rowspan='2' class="align-c">Cơ quan thuế quản lý NNT, đơn vị phụ thuộc, địa điểm kinh doanh</td>
							   <td colspan='2' class="align-c">Xác định thời gian ưu đãi</td>
							   <td colspan='4' class="align-c">Kết quả kinh doanh của hoạt động được hưởng ưu đãi</td>
							   <td colspan='2' class="align-c">Xác định thuế TNDN phải nộp</td>
							   <td colspan='3' class="align-c">Xác định số thuế được miễn, giảm</td>
							   <td rowspan='2' class="align-c">Tổng số thuế được ưu đãi</td>
						   </tr>
						   <tr>
							   <td class="align-c">Số năm</td>
							   <td class="align-c">Từ năm</td>
							   <td class="align-c">Doanh thu tính thuế</td>
							   <td class="align-c">Chi phí tính thuế</td>
							   <td class="align-c">Thu nhập miễn thuế</td>
							   <td class="align-c">Chuyển lỗ và bù trừ lãi, lỗ</td>
							   <td class="align-c">TNTT được hưởng ưu đãi</td>
							   <td class="align-c">Thuế TNDN phải nộp theo thuế suất phổ thông</td>
							   <td class="align-c">Tỷ lệ giảm thuế (%)</td>
							   <td class="align-c">Số thuế được miễn</td>
							   <td class="align-c">Số thuế được giảm</td>
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
							   <td class="align-c"><i>(16)=(14)+(15)</i></td>
						   </tr>
						   <xsl:for-each select="thueTNDN_uuDai/ChiTiet_Pluc">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2"/></td>
								<td class="align-l"><xsl:value-of select="ct3"/></td>
								<td class="align-l"><xsl:value-of select="ct4_ten"/></td>
								<td class="align-c"><xsl:value-of select="ct5"/></td>
								<td class="align-c"><xsl:value-of select="ct6"/></td>
								<td class="number align-r"><xsl:value-of select="ct7"/></td>
								<td class="number align-r"><xsl:value-of select="ct8"/></td>
								<td class="number align-r"><xsl:value-of select="ct9"/></td>
								<td class="number align-r"><xsl:value-of select="ct10"/></td>
								<td class="number align-r"><xsl:value-of select="ct11"/></td>
								<td class="number align-r"><xsl:value-of select="ct12"/></td>
								<td class="number align-r"><xsl:value-of select="ct13"/></td>
								<td class="number align-r"><xsl:value-of select="ct14"/></td>
								<td class="number align-r"><xsl:value-of select="ct15"/></td>
								<td class="number align-r"><xsl:value-of select="ct16"/></td>
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
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong19)"/></b></td>
							<td></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong20)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong21)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber(thueTNDN_uuDai/tong22)"/></b></td>
						  </tr>
						  </table>
						  
						  <tr>
             				  <td class="align-l"><b>C. Xác định số thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN của đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh</b></td>
			              </tr>
						   <table class="tkhai_table">
						   <tr>
							   <td class="align-c">STT</td>
							   <td class="align-c">Tên chỉ tiêu</td>
							   <td class="align-c">Mã chỉ tiêu</td>
							   <td class="align-c">Giá trị</td>
						   </tr>
						   <tr>
							   <td class="align-c">1</td>
							   <td class="align-l">Thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN (<b>[23]=[19]-[22]</b>)</td>
							   <td class="align-c"><b>[23]</b></td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct23"/></td>
						   </tr>
						    <tr>
							   <td class="align-c">2</td>
							   <td class="align-l">Thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</td>
							   <td class="align-c"><b>[24]</b></td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct24"/></td>
						   </tr>
						    <tr>
							   <td class="align-c">3</td>
							   <td class="align-l">Thuế TNDN đã tạm nộp trong năm</td>
							   <td class="align-c"><b>[25]</b></td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct25"/></td>
						   </tr>
						    <tr>
							   <td class="align-c">4</td>
							   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm (<b>[26]=[23]-[25]</b>)</td>
							   <td class="align-c"><b>[26]</b></td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct26"/></td>
						   </tr>
						    <tr>
							   <td class="align-c">5</td>
							   <td class="align-l">Thuế TNDN còn phải nộp (<b>[27]=[23]-[24]-[25]</b>)</td>
							   <td class="align-c"><b>[27]</b></td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct27"/></td>
						   </tr>
						  </table>
				       <br/>
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
			<div><i>3. Số liệu chỉ tiêu [20] tổng hợp vào chỉ tiêu C12 của tờ khai 03/TNDN;</i></div>
			<div><i>4. Số liệu chỉ tiêu [14], [21] tổng hợp vào chỉ tiêu C13 của tờ khai 03/TNDN;</i></div>
			<div><i>5. NNT không phải kê khai mục C nếu hoạt động được hưởng ưu đãi thuế TNDN của trụ sở chính.</i></div>
			<div><i>6. Chỉ tiêu [09a], [09b], [09c]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi theo quy định tại điểm h khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều địa bàn cấp huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho địa bàn cấp huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
						<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_3C_TNDN-->
	</xsl:template>		
</xsl:stylesheet>