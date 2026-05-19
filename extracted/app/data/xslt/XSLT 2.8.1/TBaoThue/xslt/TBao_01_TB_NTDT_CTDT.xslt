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
		<xsl:call-template name="tbaoHeader_01_1_TB_NTDT_CTDT">
			<xsl:with-param name="mauTBao"   select="'01/TB-NTĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/So" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/NTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/Ten" />

		</xsl:call-template>
		<br/>
		
			<!-- <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Luật Quản lý thuế ngày 13/6/2019;</div>
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế.</div>
			 -->
		<xsl:if test="TBao/DLTBao/THop='1'">

			           <div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Tờ khai đăng ký sử dụng chứng từ điện tử - Mẫu số 01 - 
					  Ban hành kèm theo Nghị định số 70/NĐ-CP của của người nộp thuế (NNT) gửi tới cơ quan thuế
					  lúc <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'hh')"/> 
					  giờ <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'mi')"/> 
					  phút ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'yyyy')"/>
						, cơ quan thuế tiếp nhận Tờ khai đăng ký sử dụng chứng từ điện tử - Mẫu số 01 - 
					  Ban hành kèm theo Nghị định số 70/NĐ-CP của người nộp thuế, cụ thể như sau:
					  </div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên tờ khai: Tờ khai đăng ký sử dụng chứng từ điện tử</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử: <xsl:value-of select="TBao/DLTBao/MGDDTu"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tờ khai đăng ký sử dụng chứng từ điện tử của người nộp thuế đã được cơ quan thuế tiếp nhận vào
						lúc <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'hh')"/> 
					  giờ <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'mi')"/> 
					  phút ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'yyyy')"/>
					  . Tờ khai đăng ký sử dụng chứng từ điện tử của người nộp thuế sẽ được cơ quan thuế tiếp tục kiểm tra</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trong thời gian 01 ngày làm việc kể từ ngày cơ quan thuế tiếp nhận Tờ khai ghi trên thông báo này, cơ quan thuế sẽ trả Thông báo Mẫu 02 ban hành kèm theo Nghị định số 70/NĐ-CP về việc chấp nhận hoặc không chấp nhận đăng ký của NNT, trường hợp không chấp nhận, cơ quan thuế nêu rõ lý do không chấp nhận.</div> 

		</xsl:if>
		<xsl:if test="TBao/DLTBao/THop='3'">
				
				<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Tờ khai đăng ký thay đổi thông tin sử dụng chứng từ điện tử - Mẫu số 01 - 
					  Ban hành kèm theo Nghị định số 70/NĐ-CP của của người nộp thuế (NNT) gửi tới cơ quan thuế
					  lúc <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'hh')"/> 
					  giờ <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'mi')"/> 
					  phút ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGGui,'yyyy')"/>
						, cơ quan thuế tiếp nhận Tờ khai đăng ký thay đổi thông tin sử dụng chứng từ điện tử - Mẫu số 01 - 
					  Ban hành kèm theo Nghị định số 70/NĐ-CP của người nộp thuế, cụ thể như sau:
					  </div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Tên tờ khai: Tờ khai đăng ký thay đổi thông tin sử dụng chứng từ điện tử</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Mã giao dịch điện tử: <xsl:value-of select="TBao/DLTBao/MGDDTu"/></div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tờ khai đăng ký thay đổi thông tin sử dụng chứng từ điện tử của người nộp thuế đã được cơ quan thuế tiếp nhận vào
						lúc <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'hh')"/> 
					  giờ <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'mi')"/> 
					  phút ngày <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'dd')"/> 
					  tháng <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'mm')"/> 
					  năm <xsl:value-of select="ihtkk:stringDatetime(TBao/DLTBao/TGNhan,'yyyy')"/>
					  . Tờ khai đăng ký thay đổi thông tin sử dụng chứng từ điện tử của người nộp thuế sẽ được cơ quan thuế tiếp tục kiểm tra</div>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Cơ quan thuế sẽ trả Thông báo Mẫu số 01/TB-ĐKĐT ban hành kèm theo Nghị định số 70/2025/NĐ-CP về việc chấp nhận hoặc không chấp nhận đăng ký của NNT, trường hợp không chấp nhận, cơ quan thuế nêu rõ lý do không chấp nhận.</div> 

		</xsl:if>
						

			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp NNT/Quý đơn vị cần biết thêm thông tin chi tiết, xin vui lòng truy cập theo đường dẫn https://thuedientu.gdt.gov.vn hoặc liên hệ với <xsl:value-of select="TBao/DLTBao/DMXLy"/> để được hỗ trợ.</div> 
	
			<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế <!-- <xsl:value-of select="$NNhanTBaoThue/tenNNhan"/> --> biết và thực hiện./.</div><br/>		
        <!-- <table style="page-break-inside: avoid;" width="100%">
		    <tr>
				<td width="50%">
					<div>&#160;&#160;&#160;<b>Nơi nhận:</b></div>
					<div>&#160;&#160;&#160;-<xsl:value-of select="$NNhanTBaoThue/tenNNhan"/></div>
					<div>&#160;&#160;&#160;- Lưu: Cổng thông tin điện tử của TCT.</div>
				</td>
				<td class="align-c">
					<div><b>TỔNG CỤC THUẾ</b></div>
				</td>
			</tr>
			<tr>
			    <td width="50%">&#160;&#160;&#160;</td>
				<td class="align-r" colspan="2">
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table> -->
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>			
	</xsl:template>		
</xsl:stylesheet>