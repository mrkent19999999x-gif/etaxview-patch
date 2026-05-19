<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	
		<xsl:variable name="noidungtb" select='TBaoThue/NDungTBao' />
		<xsl:variable name="ttchungtb" select='TBaoThue/TTinChung' />
	    <xsl:call-template name="tkhaiHeaderTBThue">
	    <xsl:with-param name="mauTKhai"   select="''"/>
	  </xsl:call-template>
		  
		<div class="ndungtkhai_div">
            <div class="content">
                 <div style="padding-left:167px;"> Địa chỉ: <xsl:value-of select="$ttchungtb/NNhanTBaoThue/diaChiNNhan"/></div>
                 <div>Căn cứ hồ sơ đăng ký nộp hồ sơ khai thuê squa mạng Internet của <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/>.</div>
                 <div>Xét điều kiện thực hiện và cam kết của <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/>.</div>
                 <div>Cơ quan thuế thông báo không chấp nhận đề nghị nộp hồ sơ khai thuế qua Internet của <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/>.</div>
                 <div>Lý do: <xsl:value-of select="$noidungtb/lyDo"/></div>
                 <div> <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/> cần biết thêm chi tiết, xin vui lòng liên hệ với cơ quan thuế theo địa chỉ: <xsl:value-of select="$ttchungtb/CQT/tenCQT"/></div>
                 <div>Địa chỉ: <xsl:value-of select="$noidungtb/diaChiCQT"/></div>
                 <div>Số điện thoại: <xsl:value-of select="$noidungtb/dienThoaiCQT"/></div>
                 <div>Địa chỉ E-mail: <xsl:value-of select="$noidungtb/emailCQT"/></div>
                 <div>Cơ quan thuế thông báo để <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/> biết, thực hiện ./.</div>
            <table>
                 <td class="align-l" >								
									<b><i>Nơi nhận:</i></b>
									<br/>- Như trên;
									<br/>- Tên các bộ phận có liên quan
									<br/>- Lưu: VT, KK và KTT
		         </td>							
			     <td class="align-c">								
									<b>THỦ TRƯỞNG CƠ QUAN THUẾ</b><br/>(Ký, ghi rõ họ tên và đóng dấu)
									<br/>
									<br/>
									<br/>
									<br/><xsl:value-of select="$noidungtb/thuTruongCQTKy"/>
									<br/>
			     </td>
			</table>
        </div>	
        </div>
        <table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
