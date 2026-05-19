<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:call-template name="tkhaiHeader_03_TB_DVHT">
				<xsl:with-param name="mauTKhai"   select="'03/TB-ĐVHT'"/>
			</xsl:call-template>
	    
		<div style="padding-top: 6pt;text-align:center"><b>THÔNG BÁO<br/> 
		Đơn vị hợp thành đã nộp Tờ khai thông tin theo Quy định về thuế tối thiểu toàn cầu tại nước có Hiệp định giữa nhà chức trách có thẩm quyền về trao đổi thông tin theo quy định thuế tối thiểu toàn cầu có hiệu lực với Việt Nam</b><br/>
		Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> Từ <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay"/> Đến <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay"/>
		</div><br/>
		
		<div style="width:100%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1. Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2. Mã số thuế được cấp theo quy định thuế tối thiểu toàn cầu: </b> <xsl:value-of select="$ttkthue/NNT/mst"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>3. Địa chỉ trụ sở chính: </b> <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4. Đơn vị hợp thành đã nộp Tờ khai thông tin theo Quy định về thuế tối thiểu toàn cầu tại nước có Hiệp định giữa nhà chức trách có thẩm quyền về trao đổi thông tin theo Quy định về thuế tối thiểu toàn cầu có hiệu lực với Việt Nam:</b></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.1. Tên đơn vị hợp thành: </b> <xsl:value-of select="$tkchinh/ten_DVHTNop"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.2: Mã số thuế được cấp tại Việt Nam (nếu có): </b> <xsl:value-of select="$tkchinh/mst_DVHTNop"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>4.3. Quốc gia cư trú: </b> <xsl:value-of select="$tkchinh/ten_QuocGiaCuTru"/></div>		
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> cam kết về tính chính xác, trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này.</div>
		
		<xsl:call-template name="tkhaiFooter_03_TB_DVHT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>
