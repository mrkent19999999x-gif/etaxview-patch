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
		<xsl:call-template name="tbaoHeader_107_TB_BSTT_NNT">
			<xsl:with-param name="mauTBao"   select="'01/TB-BSTT-NNT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định của pháp luật thuế hiện hành về trách nhiệm của người nộp thuế trong việc cung cấp thông tin theo yêu cầu của cơ quan quản lý thuế;</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Để làm rõ các nội dung:</div><br/>
			<table class="tkhai_table">
						<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Nội dung</b></td>
							<td class="align-c"><b>Hồ sơ thuế</b></td>
							<td class="align-c"><b>Loại kỳ tính thuế</b></td>
							<td class="align-c"><b>Kỳ tính thuế</b></td>				   						   						   						   						   
						 </tr>
				<xsl:for-each select="TBao/DLTBao/DSNDGTBSung/NDGTBSung">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-l"><xsl:value-of select="NDung"/></td>
								  <td class="align-l"><xsl:value-of select="HSThue"/></td>
								  <td class="align-l"><xsl:value-of select="LKTThue"/></td>
								  <td class="align-l"><xsl:value-of select="KTThue"/></td>
								 </tr>
				</xsl:for-each>
			</table>
			<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Về việc giải trình, bổ sung thông tin, tài liệu trong hồ sơ: 
		<xsl:value-of select="TBao/DLTBao/MHSo"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="TBao/DLTBao/TCQT" /> 
		đề nghị  <xsl:value-of select="TBao/DLTBao/TNNT"/> giải trình và bổ sung thông tin, tài liệu sau đây:</div><br/>
			<table class="tkhai_table">
						<tr>
						   <td class="align-c"><b>STT</b></td>
						   <td class="align-c"><b>Nội dung</b></td>
							<td class="align-c"><b>Hồ sơ thuế</b></td>
							<td class="align-c"><b>Loại kỳ tính thuế</b></td>
							<td class="align-c"><b>Kỳ tính thuế</b></td>	
							<td class="align-c"><b>Thông tin tài liệu</b></td>
						</tr>
				<xsl:for-each select="TBao/DLTBao/DSNDGTBSung/NDGTBSung">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows1" /></td>
									<td class="align-l"><xsl:value-of select="NDung"/></td>
								  <td class="align-l"><xsl:value-of select="HSThue"/></td>
								  <td class="align-l"><xsl:value-of select="LKTThue"/></td>
								  <td class="align-l"><xsl:value-of select="KTThue"/></td>
								  <td class="align-l"><xsl:value-of select="TTTLieu"/></td>
								 </tr>
				</xsl:for-each>
			</table>
			<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Văn bản giải trình, thông tin, tài liệu bổ sung gửi về cơ quan quản lý thuế <xsl:value-of select="TBao/DLTBao/TCQT" /> 
		trước ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'yyyy')"/></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với cơ quan quản lý thuế <xsl:value-of select="TBao/DLTBao/TCQT" /> 
			theo số điện thoại: <xsl:value-of select="TBao/DLTBao/DTCQT" /> địa chỉ: <xsl:value-of select="TBao/DLTBao/DCCQT" />.</div>		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="TBao/DLTBao/TCQT" /> thông báo để <xsl:value-of select="TBao/DLTBao/TNNT"/> được biết và thực hiện./.</div>
		<br/>
		<table style="page-break-inside: avoid;" width="100%">
		    <tr>
				<td class="align-l">
					<div><b>Nơi nhận:</b></div>
					<div>- Như trên;</div>
					<div>- Lưu VT;</div>
				</td>
				<td width="35%" class="align-c">
					<b>CƠ QUAN THUẾ</b><br/>
					<b>THỦ TRƯỞNG CƠ QUAN THUẾ</b>
					<br/>
					<i>(Chữ ký số)</i>
				</td>
			</tr>
			<tr>
			    <td width="50%">&#160;&#160;&#160;</td>
				<td class="align-r" colspan="2">
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>