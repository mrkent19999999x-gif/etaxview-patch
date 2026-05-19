<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBao/DLTBao' />
		<xsl:variable name="NNhanTBaoThue" select='TBao/DLTBao/TNNT' />
<!-- 		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' /> -->
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Nghị định 70/2025/NĐ-CP ngày 20 tháng 3 năm 2025 của Bộ trưởng Bộ Tài chính'"/>
<style type="text/css">
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>
		<xsl:call-template name="tbaoHeader_01_CCCT_TB">
			<xsl:with-param name="mauTBao"   select="'01/CCCT-TB'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi nhận được đề nghị đăng ký mới hoặc bổ sung nội 
						dung cung cấp thông tin/tài khoản truy cập hóa đơn điện tử, , chứng từ điện tử số 
						<xsl:value-of select="TBao/DLTBao/SDKy"/>, 
					   ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NDKy,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NDKy,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NDKy,'yyyy')"/>
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên cơ quan: <xsl:value-of select="TBao/DLTBao/TCQ"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ liên hệ: <xsl:value-of select="TBao/DLTBao/DCLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đầu mối liên hệ:</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="TBao/DLTBao/DCLHe"/></div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thư điện tử <xsl:value-of select="TBao/DLTBao/DCLHe"/></div>

	<xsl:if test="TBao/DLTBao/TTXNCQT='1'">
			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Tổng cục Thuế thông báo tiếp nhận đề nghị đăng ký mới hoặc bổ sung nội dung cung cấp thông tin/tài khoản truy cập hóa đơn điện tử, chứng từ điện tử.
				</div>
	</xsl:if>
	<xsl:if test="TBao/DLTBao/TTXNCQT='2'">
			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Tổng cục Thuế thông báo không tiếp nhận đề nghị đăng ký mới hoặc bổ sung nội dung cung cấp thông tin/tài khoản truy cập hóa đơn điện tử, chứng từ điện tử.
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do: <xsl:value-of select="TBao/DLTBao/DSLDKCNhan/LDo/MTa"/></div>
	</xsl:if>
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng cục Thuế thông báo để quý cơ quan được biết./.</div><br/>		

		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>