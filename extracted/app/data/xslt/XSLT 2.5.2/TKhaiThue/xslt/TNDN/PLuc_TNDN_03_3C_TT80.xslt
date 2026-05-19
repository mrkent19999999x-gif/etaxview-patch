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
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3C_TNDN">	
			<xsl:variable name="pl03-3c-tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_3C_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc-03-3b-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-3C/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
<xsl:with-param name="tenPL1"   select="'(Áp dụng đối với doanh nghiệp sử dụng lao động là người dân tộc thiểu số
hoặc doanh nghiệp hoạt động sản xuất, xây dựng, vận tải sử dụng nhiều lao động nữ)'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kê khai theo từng tỉnh nơi người nộp thuế có trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi 
đồng thời nộp Phụ lục này kèm tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN tại trụ sở chính)'"/>
	  </xsl:call-template>	
		<xsl:for-each select="$pl03-3c-tndn/NoiDungPL03_3C">
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
						      <td class="align-l"><b>A. Xác định điều kiện và mức độ ưu đãi thuế </b> </td>
						    </tr>
						    <tr>
					          <td class="align-l"><b><u> 1. Điều kiện ưu đãi. </u></b></td>
							</tr>
					        <tr>
             				  <td class="align-l"> <xsl:if test="dn_sdld_nu = 'true' "> [x] </xsl:if>   <xsl:if test="dn_sdld_nu = 'false'">[]</xsl:if>	<xsl:if test="dn_sdld_nu = '1'"> [x]</xsl:if> <xsl:if test="dn_sdld_nu = '0'">[]</xsl:if>  Doanh nghiệp hoạt động sản xuất, xây dựng, vận tải sử dụng nhiều lao động nữ: </td>
			                </tr>
					        <tr>
             				  <td class="align-l">- Tổng số lao động sử dụng thường xuyên trong kỳ tính thuế: <span class="number"><xsl:value-of select="sold_nu"/> </span> người</td>
			                </tr>
					        <tr>
             				  <td class="align-l">- Xác nhận của cơ quan quản lý lao động có thẩm quyền về tổng số lao động nữ mà doanh nghiệp đang sử dụng (nếu có): số <xsl:value-of select="so_xn_sdld_nu"/> ngày <xsl:value-of select="ihtkk:stringDatetime(ngay_xn_sdld_nu, 'dd/mm/yyyy')"/></td>
			                </tr>
					        <tr>
             				  <td class="align-l"> <xsl:if test="dn_sdld_dtoc = 'true' "> [x] </xsl:if> <xsl:if test="dn_sdld_dtoc = 'false'">[]</xsl:if>	<xsl:if test="dn_sdld_dtoc = '1'"> [x]</xsl:if> <xsl:if test="dn_sdld_dtoc = '0'">[]</xsl:if> Doanh nghiệp sử dụng lao động là người dân tộc thiểu số:</td>
			                </tr>
					        <tr>
             				  <td class="align-l">- Tổng số lao động sử dụng thường xuyên trong kỳ tính thuế: <span class="number"><xsl:value-of select="sold_dtoc"/></span> người</td>
			                </tr>
					        <tr>
             				  <td class="align-l">- Xác nhận của cơ quan quản lý lao động có thẩm quyền về tổng số lao động là người dân tộc thiểu số mà doanh nghiệp đang sử dụng (nếu có): số <xsl:value-of select="so_xn_sdld_dtoc"/> ngày <xsl:value-of select="ihtkk:stringDatetime(ngay_xn_sdld_dtoc, 'dd/mm/yyyy')"/></td>
			                </tr>
    		                <tr>
						      <td class="align-l"><b><u>2. Mức độ ưu đãi thuế: </u></b> </td>
						    </tr>
        			        <tr>
             				  <td class="align-l"> <xsl:if test="giam_TNDN_ldNu = 'true' "> [x] </xsl:if> <xsl:if test="giam_TNDN_ldNu = 'false'">[]</xsl:if>	<xsl:if test="giam_TNDN_ldNu = '1'"> [x]</xsl:if> <xsl:if test="giam_TNDN_ldNu = '0'">[]</xsl:if> Giảm thuế thu nhập doanh nghiệp (TNDN) tương ứng mức chi cho lao động nữ. </td>
			                </tr>
			                 <tr>
             				  <td class="align-l"> <xsl:if test="giam_TNDN_ldDToc = 'true' "> [x] </xsl:if><xsl:if test="giam_TNDN_ldDToc = 'false'">[]</xsl:if>	<xsl:if test="giam_TNDN_ldDToc = '1'"> [x]</xsl:if> <xsl:if test="giam_TNDN_ldDToc = '0'">[]</xsl:if> Giảm thuế thu nhập doanh nghiệp tương ứng mức chi cho lao động là người dân tộc thiểu số. </td>
			                </tr>							
   						    <tr>
						      <td class="align-l"><b> B. Xác định ưu đãi thuế thu nhập doanh nghiệp của người nộp thuế tại trụ sở chính, đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh:</b> </td>
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
							   <td class="align-c"><i>(1)</i></td>
							   <td class="align-c"><i>(2)</i></td>
							   <td class="align-c"><i>(3)</i></td>
							   <td class="align-c"><i>(4)</i></td>
						    </tr>
						    <tr>
							   <td class="align-c">1.</td>
							   <td class="align-l">Doanh thu tính thuế thu nhập doanh nghiệp</td>
							   <td class="align-c">[10]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct10"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">2.</td>
							   <td class="align-l">Chi phí tính thuế thu nhập doanh nghiệp</td>
							   <td class="align-c">[11]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct11"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">3.</td>
							   <td class="align-l">Thu nhập miễn thuế</td>
							   <td class="align-c">[12]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct12"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">4.</td>
							   <td class="align-l">Chuyển lỗ và bù trừ lãi, lỗ</td>
							   <td class="align-c">[13]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct13"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">5.</td>
							   <td class="align-l">Thu nhập tính thuế</td>
							   <td class="align-c">[14]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct14"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">6.</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp phải nộp</td>
							   <td class="align-c">[15]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct15"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">7.</td>
							   <td class="align-l">Xác định số thuế thu nhập doanh nghiệp được giảm trong kỳ tính thuế ([16] = [18] + [20])<br/>
<i>(Không quá số thuế thu nhập doanh nghiệp phải nộp)</i></td>
							   <td class="align-c">[16]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct16"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">7.1</td>
							   <td class="align-l"><i>Giảm thuế thu nhập doanh nghiệp tương ứng mức chi cho lao động nữ</i></td>
							   <td class="align-c"></td>
							   <td class="align-c"></td>						   
						    </tr>
						    <tr>
							   <td class="align-c">-</td>
							   <td class="align-l">Tổng các khoản chi cho lao động nữ</td>
							   <td class="align-c">[17]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct17"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">-</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp được giảm</td>
							   <td class="align-c">[18]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct18"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">7.2</td>
							   <td class="align-l"><i>Giảm thuế thu nhập doanh nghiệp tương ứng mức chi cho lao động là người dân tộc thiểu số</i></td>
							   <td class="align-c"></td>
							   <td class="align-c"></td>						   
						    </tr>
						    <tr>
							   <td class="align-c">-</td>
							   <td class="align-l">Tổng các khoản chi cho lao động là người dân tộc thiểu số</td>
							   <td class="align-c">[19]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct19"/></td>							   
						    </tr>
						    <tr>
							   <td class="align-c">-</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp được giảm </td>
							   <td class="align-c">[20]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_uuDai/ct20"/></td>							   
						    </tr>
						    </table>
							<tr>
						      <td class="align-l"><b> C. Xác định số thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN của đơn vị phụ thuộc/địa điểm kinh doanh khác tỉnh</b> </td>
						    </tr>
							<table class="tkhai_table">
						   <tr>
							   <td class="align-c">1.</td>
							   <td class="align-l">Thuế TNDN phải nộp của hoạt động được hưởng ưu đãi thuế TNDN (<b>[21]=[15]-[16]</b>)</td>
							   <td class="align-c">[21]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct21"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">2.</td>
							   <td class="align-l">Thuế TNDN nộp thừa kỳ trước chuyển sang kỳ này</td>
							   <td class="align-c">[22]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct22"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.</td>
							   <td class="align-l">Thuế TNDN đã tạm nộp trong năm</td>
							   <td class="align-c">[23]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct23"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">4.</td>
							   <td class="align-l">Chênh lệch giữa số thuế phải nộp và số thuế đã tạm nộp trong năm (<b>[24]=[21]-[23]</b>)</td>
							   <td class="align-c">[24]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct24"/></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">5.</td>
							   <td class="align-l">Thuế TNDN còn phải nộp (<b>[25]=[21]-[22]-[23]</b>)</td>
							   <td class="align-c">[25]</td>
							   <td class="number align-r"><xsl:value-of select="thueTNDN_phaiNop/ct25"/></td>							   
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
			<div><i>3. Số liệu chỉ tiêu [16] tổng hợp vào chỉ tiêu C13 của tờ khai 03/TNDN;</i></div>
			<div><i>4. NNT không phải kê khai mục C nếu hoạt động được hưởng ưu đãi thuế TNDN của trụ sở chính.</i></div>
			<div><i>5. Chỉ tiêu [09a], [09b], [09c]: Khai thông tin của đơn vị phụ thuộc, địa điểm kinh doanh khác tỉnh có thu nhập được hưởng ưu đãi theo quy định tại điểm h khoản 1 Điều 11 Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh đóng trên nhiều địa bàn cấp huyện do Cục Thuế quản lý thì chọn 1 đơn vị đại diện để kê khai vào chỉ tiêu này. Trường hợp có nhiều đơn vị phụ thuộc, địa điểm kinh doanh do Chi cục Thuế khu vực quản lý thì chọn 1 đơn vị đại diện cho địa bàn cấp huyện do Chi cục Thuế khu vực quản lý để kê khai vào chỉ tiêu này.</i></div>
						<div id="sigDiv"></div>
</td>
</tr>
</table>				
		</xsl:if>
<!--end phu luc PL03_3C_TNDN-->
	</xsl:template>		
</xsl:stylesheet>