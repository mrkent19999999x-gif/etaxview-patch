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
		<xsl:call-template name="tbaoHeader_107_TB_BSTT">
			<xsl:with-param name="mauTBao"   select="'01/TB-BSTT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Kính gửi: <xsl:value-of select="TBao/DLTBao/TNNT"/>
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="TBao/DLTBao/MST"/>
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ nhận thông báo: 
		<xsl:value-of select="TBao/DLTBao/DCNNT"/>.
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định của pháp luật thuế hiện hành về 
		 trách nhiệm của người nộp thuế trong việc cung cấp thông tin theo yêu cầu của cơ quan quản lý thuế;
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Để làm rõ các nội dung:
			<xsl:value-of select="TBao/DLTBao/TNNT" /> thuộc diện rủi ro rất cao theo mức độ rủi ro người nộp thuế tại ngày phân tích
			<xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/NPTich,'dd/mm/yyyy')"/>.
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
			<xsl:value-of select="TBao/DLTBao/TCQT" /> đề nghị <xsl:value-of select="TBao/DLTBao/TNNT" />
			giải trình và bổ sung thông tin, tài liệu theo Phụ lục đính kèm.
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Văn bản giải trình, thông tin, 
		tài liệu bổ sung gửi về cơ quan quản lý thuế <xsl:value-of select="TBao/DLTBao/TCQT" /> 
		trước ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'dd')"/> 
					tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'mm')"/>
					năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/THGTBSung,'yyyy')"/>.
		</div>
					
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nếu có vướng mắc, đề nghị người nộp thuế liên hệ với 
		cơ quan quản lý thuế <xsl:value-of select="TBao/DLTBao/TCQT" /> 
		theo số điện thoại: <xsl:value-of select="TBao/DLTBao/DTCQT" /> 
		địa chỉ: <xsl:value-of select="TBao/DLTBao/DCCQT" />.
		</div>		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="TBao/DLTBao/TCQT" /> 
		thông báo để <xsl:value-of select="TBao/DLTBao/TNNT"/> được biết và thực hiện./.
		</div>
		<br/>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i><u>Ghi chú</u></i></b></div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;NNT vui lòng truy cập cổng dịch vụ công:
		https://dichvucong.gdt.gov.vn/tthc/ để thực hiện giải trình bổ sung thông tin. 
		</div>
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trong trường hợp người nộp thuế cần giải trình bổ sung 
		thông tin trực tiếp. Người nộp thuế vui lòng liên hệ cơ quan Thuế và đến trực tiếp tại cơ quan thuế quản lý để thực hiện 
		giải trình bổ sung thông tin
		</div>
		<br></br>
		<table style="page-break-inside: avoid;" width="100%">
		    <tr>
				<td class="align-l">
					<div><b>Nơi nhận:</b></div>
					<div>- Như trên;</div>
					<div>- Lưu VT;</div>
				</td>
				<td width="55%" class="align-c">
					<b>THỦ TRƯỞNG CƠ QUAN QUẢN LÝ THUẾ</b><br/>
					<b>BAN HÀNH THÔNG BÁO</b>
					<br/>
					<i>(Ký, ghi rõ họ tên, đóng dấu)</i>
				</td>
			</tr>
			<tr>
			    <td width="45%">&#160;&#160;&#160;</td>
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