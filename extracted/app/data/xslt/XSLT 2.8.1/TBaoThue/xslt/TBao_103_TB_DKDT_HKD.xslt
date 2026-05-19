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
		<xsl:call-template name="tbaoHeader_103_TB_KTDT_HKD">
			<xsl:with-param name="mauTBao"   select="'01/TB-ĐKĐT-HKD'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
	<!--Doi voi to 1/DKTD-HDDT-->
	<xsl:if test="TBao/DLTBao/HTDKy='1'">
		<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận đăng ký sử dụng hóa đơn điện tử'"> 
		

			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi xem xét tờ khai đăng ký sử dụng hóa đơn điện tử; chứng từ điện tử 
					   ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'yyyy')"/>
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế thông báo chấp nhận đề nghị đăng ký sử dụng hóa đơn điện tử; chứng từ điện tử  của đơn vị</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Tài khoản đã được gửi đến hộp thư điện tử của người nộp thuế/điện thoại liên hệ, đề nghị người nộp thuế thực hiện khai báo các thông tin liên quan theo nội dung hướng dẫn của cơ quan thuế tại thư điện tử này</div>
		
		</xsl:if>
		<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận đăng ký sử dụng hóa đơn điện tử'"> 
		

			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi xem xét tờ khai đăng ký sử dụng hóa đơn điện tử; chứng từ điện tử  
					   ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'yyyy')"/>
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế thông báo không chấp nhận đề nghị đăng ký sử dụng hóa đơn điện tử; chứng từ điện tử  của đơn vị</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế không chấp nhận người nộp thuế đăng ký sử dụng hóa đơn điện tử; ; chứng từ điện tử 
				<br/>
				Lý do: <xsl:value-of select="TBao/DLTBao/DSLDKCNhan/LDo/MTa"/></div>
		</xsl:if>
		
	</xsl:if>
	<xsl:if test="TBao/DLTBao/HTDKy='2'">
		<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử'"> 
		

			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi xem xét tờ khai thay đổi thông tin sử dụng hóa đơn điện tử; chứng từ điện tử  
					   ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'yyyy')"/>
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế thông báo chấp nhận đề nghị thay đổi thông tin sử dụng hóa đơn điện tử; chứng từ điện tử  của đơn vị</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Tài khoản đã được gửi đến hộp thư điện tử của người nộp thuế/điện thoại liên hệ, đề nghị người nộp thuế thực hiện khai báo các thông tin liên quan theo nội dung hướng dẫn của cơ quan thuế tại thư điện tử này</div>
		
		</xsl:if>
		<xsl:if test="TBao/DLTBao/Ten='Thông báo về việc không chấp nhận thay đổi thông tin sử dụng hóa đơn điện tử'"> 
		

			    <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Sau khi xem xét tờ khai thay đổi thông tin sử dụng hóa đơn điện tử; chứng từ điện tử  
					   ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/Ngay,'yyyy')"/>
				</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế thông báo không chấp nhận đề nghị thay đổi thông tin sử dụng hóa đơn điện tử; chứng từ điện tử  của đơn vị</div>
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
				Cơ quan thuế không chấp nhận người nộp thuế thay đổi thông tin sử dụng hóa đơn điện tử.
				<br></br>
				Lý do: <xsl:value-of select="TBao/DLTBao/DSLDKCNhan/LDo/MTa"/></div>
		</xsl:if>
		
	</xsl:if>
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế biết và thực hiện./.</div><br/>		

		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>