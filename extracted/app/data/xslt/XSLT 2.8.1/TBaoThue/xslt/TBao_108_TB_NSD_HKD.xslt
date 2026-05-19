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
		<xsl:call-template name="tbaoHeader_108_TB_NSD">
			<xsl:with-param name="mauTBao"   select="'01/TB-TNĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
		
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Luật Quản lý thuế ngày 13/6/2019;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Điểm c, Khoản 12, Điều 1 Nghị định số 70/2025/NĐ-CP ngày 20/3/2025 của Chính phủ sửa đổi, bổ sung một số điều của Nghị định số 123/2020/NĐ-CP quy định về hóa đơn, chứng từ;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ tờ khai 01/ĐKTĐ-HĐĐT của <xsl:value-of select="TBao/DLTBao/TNNT"/>
			có MST <xsl:value-of select="TBao/DLTBao/MST"/> lập ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/> 
					có mã hồ sơ <xsl:value-of select="TBao/STBao/So"/> thuộc trường hợp tại Điểm c Khoản 12 Điều 1 Nghị định số 70/2025/NĐ-CP ngày 20/3/2025, Cơ quan Thuế thông báo:</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cục thuế thông báo về việc tạm ngừng sử dụng hóa đơn điện tử với <xsl:value-of select="TBao/DLTBao/TNNT"/></div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế:  <xsl:value-of select="TBao/DLTBao/MST"/></div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ trụ sở kinh doanh:  <xsl:value-of select="TBao/DLTBao/DChi"/></div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do thông báo ngừng sử dụng hóa đơn điện tử/hóa đơn điện tử khởi tạo từ máy tính tiền:</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				<table class="tkhai_table">
				<xsl:for-each select="TBao/DLTBao/DSLDo/LDo">
									<xsl:variable name="currentRows1" select='position()'/>
								<tr>
									<td class="align-c"><xsl:value-of select="$currentRows1" /></td>
								  <td class="align-l"><xsl:value-of select="LDo"/></td>
								 </tr>
				</xsl:for-each>
				</table>
			</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thông báo ngừng sử dụng hóa đơn điện tử/hóa đơn điện tử khởi tạo từ máy tính tiền có hiệu lực kể từ 
			0 giờ 0 phút 0 giây ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/STBao/NTBao,'yyyy')"/>  
					đối với tổ chức cung cấp dịch vụ <xsl:value-of select="TBao/DLTBao/TNNT"/>
			có MST <xsl:value-of select="TBao/DLTBao/MST"/>.</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Người nộp thuế sử dụng hóa đơn điện tử/hóa đơn điện tử khởi tạo từ máy tính tiền kể từ thời điểm thông báo ngừng sử dụng hóa đơn có hiệu lực thi hành thì được coi là sử dụng hóa đơn không hợp pháp theo quy định tại Điều 4 Nghị định số 125/2020/NĐ-CP ngày 19/10/2020 của Chính phủ quy định xử phạt vi phạm hành chính về thuế, hóa đơn hoặc các văn bản sửa đổi, bổ sung (nếu có).</div>
			
		<table style="page-break-inside: avoid;" width="100%">
		    <tr>
				<td class="align-c">
					<div><b></b></div>
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