<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_01DNHT_2.2.2">
		<xsl:with-param name="mauTKhai"   select="'01/ĐNHT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>  
		<xsl:with-param name="ghuchuTK"   select="''"/> 
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
                      	<div> <b>II- Nội dung đề nghị hoàn trả khoản thu ngân sách nhà nước (NSNN):</b> </div>	
						<div><b>1. Thông tin về khoản thu đề nghị hoàn trả: </b></div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>					
                      <table class="tkhai_table">
                        <tr>
							<td class="align-c" ><b>Số TT</b></td>
							<td class="align-c"><b>Loại thuế</b></td>
							<td class="align-c"><b>Từ kỳ tính thuế</b></td>
							<td class="align-c"><b> Đến kỳ tính thuế</b></td>
							<td class="align-c"><b>Số tiền thuế nộp thừa (tính đến thời điểm đề nghị hoàn)</b></td>
							<td class="align-c"><b>Số thuế GTGT chưa khấu trừ hết đã đề nghị hoàn trên tờ khai thuế GTGT</b></td>
							<td class="align-c"><b>Số tiền đề nghị hoàn</b></td>
							<td class="align-c"><b>Lý do đề nghị hoàn trả</b></td>
							</tr>
						<tr>
							<td class="align-c">(1)</td>
							<td class="align-c">(2)</td>
							<td class="align-c">(3)</td>
							<td class="align-c">(4)</td>
							<td class="align-c">(5)</td>
							<td class="align-c">(6)</td>
							<td class="align-c">(7)</td>
							<td class="align-c">(8)</td>
							
						</tr>
				<xsl:for-each select="$tkchinh/NoiDungDNHT/TTinDNHT/CTietTTinDNHT">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-l"><xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy = 'Q' ">Q </xsl:if><xsl:value-of select="ct3_TuKy_KyKeKhai"/></td>
								<td class="align-l"><xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy = 'Q' ">Q </xsl:if><xsl:value-of select="ct3_DenKy_KyKeKhai"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct4)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct6)"/></td>
	         					<td class="align-l"><xsl:value-of select="ct7_ten"/></td>
	         				</tr>	
	         		</xsl:for-each>	
							<tr> 
							<td class="align-c" colspan ='4'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot4)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot5)"/></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/TTinDNHT/tongCot6)"/></b></td>
							<td></td>
							</tr>
			</table><br/>
	<div> <b>2. Hình thức đề nghị hoàn trả:</b> </div>	
						<div><b><i>2.1. Bù trừ cho khoản phải nộp NSNN : </i></b></div>
							<div  class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
			 <table class="tkhai_table">
                        <tr>
							<td class="align-c" rowspan="2"><b>STT</b></td>
							<td class="align-c" rowspan="2"><b>Khoản phải nộp NSNN</b> (loại thuế, khoản phạt)</td>
							<td class="align-c" colspan="3"><b>Cơ quan thu</b></td>
							<td class="align-c" rowspan="2"><b>Thời gian phát sinh khoản phải nộp </b>(Kỳ tính thuế)</td>
							<td class="align-c" colspan="2"><b>Quyết định thu/Tờ khai hải quan</b></td>
							<td class="align-c" colspan="2"><b>Nộp vào tài khoản</b></td>
							<td class="align-c" rowspan="2"><b>Số tiền </b></td>
							</tr>
							<tr>
								<td class="align-c"><b>Cơ quan thuế</b></td>
								<td class="align-c"><b>Cơ quan Hải quan</b></td>
								<td class="align-c"><b>Cơ quan khác</b></td>
								<td class="align-c"><b>Số</b></td>
								<td class="align-c"><b>Ngày</b></td>
								<td class="align-c"><b>Thu NSNN</b></td>
								<td class="align-c"><b>Tạm thu</b></td>
							</tr>
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
								<td class="align-c">(7)</td>
                                <td class="align-c">(8)</td>
                                <td class="align-c">(9)</td>
                                <td class="align-c">(10)</td>
                                <td class="align-c">(11)</td>
                             </tr>
                                
                              <xsl:for-each select="$tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/CTietBuTru">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="ct2_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct3_ten"/></td>
								<td class="align-l"><xsl:value-of select="ct4"/></td>
								<td class="align-l"><xsl:value-of select="ct5"/></td>
								<td class="align-l"><xsl:value-of select="ct6_KyKeKhai"/></td>
	         					<td class="align-l"><xsl:value-of select="ct7"/></td>
	         					<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ct8,'dd/mm/yyyy')"/></td>
	         					<td class="align-c"><xsl:if test="ct9='true'">[x]</xsl:if></td>
	         					<td class="align-c"><xsl:if test="ct20='true'">[x]</xsl:if></td>
	         					<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct11)"/></td>
	         					</tr>					
	         				</xsl:for-each>	
							<tr>
							<td class="align-c" colspan ='10'><b>Tổng cộng</b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot11)"/></b></td>
							</tr>
					</table> 
			
			
	<xsl:variable name="hoantratructiep" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/NoiDungDNHT/HThucDNHT/HoanTraTrucTiep' />
	<div>Tổng số tiền nộp NSNN ghi bằng chữ: <b><i><xsl:value-of select="ihtkk:DocTienBangChu($tkchinh/NoiDungDNHT/HThucDNHT/BuTruChoKhoanPNop/tongCot11)"/> đồng</i></b></div> 
               
					<div><b><i>2.2. Hoàn trả trực tiếp: </i></b> </div> 
				<div>Số tiền hoàn trả: Bằng số: <b><i><xsl:value-of select="ihtkk:formatNumber($hoantratructiep/soTienHoanTra)"/></i></b>&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;         Bằng chữ: <b><i><xsl:value-of select="ihtkk:DocTienBangChu($hoantratructiep/soTienHoanTra)"/> đồng </i></b></div> 
				<div>Hình thức hoàn trả: </div> 
				<div>[<xsl:if test="$hoantratructiep/HinhThucHoanTra/chuyenKhoan='true'">x</xsl:if>] Chuyển khoản:  Tài khoản số: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiKhoanSo"/> &#160;&#160; &#160;&#160;&#160; Tại Ngân hàng (KBNN): <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/taiNganHang"/> </div>         
			     <div> [<xsl:if test="$hoantratructiep/HinhThucHoanTra/tienMat='true'">x</xsl:if>] Tiền mặt: Nơi nhận tiền hoàn thuế: Kho bạc Nhà nước: <xsl:value-of select="$hoantratructiep/HinhThucHoanTra/noiNhanTien"/></div> 
	
			 

<div><b>III- Tài liệu gửi kèm: </b>(ghi rõ tên tài liệu, bản chính, bản sao)</div>
<table class="tkhai_table">

<xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td style="width:7%" class="align-c" ><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenTaiLieu"/></td>
							</tr>
	         				</xsl:for-each>	
</table>

<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_01DNHT"/>
	<div class="ghichu">
	 <div><b> <i><u>Ghi chú:</u></i></b></div><br/>
	 <div>  <i>- Kỳ thuế: Trường hợp đề nghị hoàn thuế cho nhiều tháng, năm thì ghi rõ từ tháng ... năm ... đến tháng ... năm... có liên quan.</i></div>
	 <div>  <i>- “Lý do đề nghị hoàn trả”: Ghi rõ đề nghị hoàn theo quy định tại Điểm, Khoản, Điều của văn bản quy phạm pháp luật có liên quan.</i></div>
	<div>  <i>- “Quyết định thu/Tờ khai hải quan”: Ghi Quyết định hành chính của cơ quan có thẩm quyền hoặc tờ khai hải quan có nợ thuế chưa nộp NSNN.</i></div>
	<div>  <i>- “Nộp vào tài khoản”: Đánh dấu “V” vào cột tài khoản có liên quan.</i></div>
	<div>  <i>- KBNN: Kho bạc Nhà nước.</i></div>
	<div>  <i>- NSNN: Ngân sách Nhà nước.</i></div>
	<div>  <i>- GTGT: Giá trị gia tăng.</i></div> 	  	 
	</div>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>
			
		</div>	
		</div>
	</xsl:template>		
</xsl:stylesheet>
