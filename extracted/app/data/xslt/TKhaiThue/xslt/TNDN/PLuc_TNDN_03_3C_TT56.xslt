<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_3C_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_3C_TNDN">	
			<xsl:variable name="pl03-3c_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_3C_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-3C/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THUẾ THU NHẬP DOANH NGHIỆP ĐƯỢC ƯU ĐÃI'"/>
<xsl:with-param name="tenPL1"   select="'Đối với doanh nghiệp sử dụng lao động là người dân tộc thiểu số hoặc doanh nghiệp hoạt động sản xuất, xây dựng, vận tải sử dụng nhiều lao động nữ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
		             <div class="content">	
		             	<table>
		             	  <xsl:for-each select="$pl03-3c_tndn/NoiDungPL03_3C">
							<xsl:variable name="currentRows" select='position()' />
						    <tr>
						      <td class="align-l"><b><u> A. Xác định điều kiện và mức độ ưu đãi thuế </u></b> </td>
						    </tr><br/>
						    <tr>
					          <td class="align-l"><b><u> 1. Điều kiện ưu đãi. </u></b></td>
							</tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDai1 = 'true' "> x </xsl:if>] Doanh nghiệp hoạt động sản xuất, xây dựng, vận tải sử dụng nhiều lao động nữ: </td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Tổng số lao động sử dụng thường xuyên trong kỳ tính thuế: <span class="number"><xsl:value-of select="tongSoLD1"/> </span> người</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Xác nhận của cơ quan quản lý lao động có thẩm quyền về tổng số lao động nữ mà doanh nghiệp đang sử dụng (nếu có): số <xsl:value-of select="soXacNhanCQT1"/> ngày <xsl:value-of select="ihtkk:stringDatetime(ngayXacNhanCQT1, 'dd/mm/yyyy')"/></td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l"> [<xsl:if test="dieuKienUuDai2 = 'true' "> x </xsl:if>] Doanh nghiệp sử dụng lao động là người dân tộc thiểu số:</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Tổng số lao động sử dụng thường xuyên trong kỳ tính thuế: <span class="number"><xsl:value-of select="tongSoLD2"/></span> người</td>
			                </tr><br/>
					        <tr>
             				  <td class="align-l">- Xác nhận của cơ quan quản lý lao động có thẩm quyền về tổng số lao động nữ mà doanh nghiệp đang sử dụng (nếu có): số <xsl:value-of select="soXacNhanCQT2"/> ngày <xsl:value-of select="ihtkk:stringDatetime(ngayXacNhanCQT2, 'dd/mm/yyyy')"/></td>
			                </tr><br/>
    		                <tr>
						      <td class="align-l"><b><u>2. Mức độ ưu đãi thuế: </u></b> </td>
						    </tr>
						    <br/>
        			        <tr>
             				  <td class="align-l"> [<xsl:if test="mucDoUuDai1 = 'true' "> x </xsl:if>] Giảm thuế thu nhập doanh nghiệp (TNDN) tương ứng mức chi cho lao động nữ. </td>
			                </tr><br/>
			                 <tr>
             				  <td class="align-l"> [<xsl:if test="mucDoUuDai2 = 'true' "> x </xsl:if>] Giảm thuế thu nhập doanh nghiệp tương ứng mức chi cho lao động là người dân tộc thiểu số. </td>
			                </tr><br/>			                
   						    <tr>
						      <td class="align-l"><b><u> B. Xác định số thuế được giảm:</u></b> </td>
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
							   <td class="align-c">(1)</td>
							   <td class="align-c">(2)</td>
							   <td class="align-c">(3)</td>
							   <td class="align-c">(4)</td>
						   </tr>
						   <tr>
							   <td class="align-c"><b>3</b></td>
							   <td class="align-l"><b>Xác định số thuế thu nhập doanh nghiệp (TNDN) được giảm trong kỳ tính thuế:</b></td>
							   <td></td>
							   <td></td>							   
						   </tr>
						   <tr>
							   <td class="align-c">3.1</td>
							   <td class="align-l">Tổng các khoản chi cho lao động nữ</td>
							   <td class="align-c">[01]</td>
							   <td class="number align-r"><xsl:value-of select="ct01"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.2</td>
							   <td class="align-l">Tổng các khoản chi cho lao động là người dân tộc thiểu số</td>
							   <td class="align-c">[02]</td>
							   <td class="number align-r"><xsl:value-of select="ct02"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.3</td>
							   <td class="align-l">Thuế thu nhập doanh nghiệp phải nộp</td>
							   <td class="align-c">[03]</td>
							   <td class="number align-r"><xsl:value-of select="ct03"/></td>
						   </tr>
						   <tr>
							   <td class="align-c">3.4</td>
							   <td class="align-l"><b>Thuế TNDN được giảm tương ứng mức chi cho lao động nữ, lao động là người dân tộc thiểu số: </b><i>(Không quá số thuế TNDN phải nộp) </i></td>
							   <td class="align-c">[04]</td>
							   <td class="number align-r"><xsl:value-of select="ct04"/></td>
						   </tr>
						  </table>
				       <br/>
				       </xsl:for-each>
                      </table>						   
                </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><u><b>Ghi chú:</b></u> - TNDN: thu nhập doanh nghiệp.</i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_3C_TNDN-->
	</xsl:template>		
</xsl:stylesheet>