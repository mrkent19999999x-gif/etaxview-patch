<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính'" />
		<xsl:call-template name="tkhaiHeader_01_KNNT_TDT">
			<xsl:with-param name="mauTKhai"   select="'01/KNNT-TĐT'"/>
			<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		</xsl:call-template>
		<div style="width:90%;padding-top: 6pt;text-align:center"><b>Kính gửi: </b><xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
<xsl:if test="$tkchinh/ma_truong_hop='01'">		

		<xsl:if test="$tkchinh/DeNghiKetNoi/luat_NSNN_83 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Ngân sách Nhà nước số 83/2015/QH13 ngày 25/06/2015 của Quốc hội nước Cộng hòa Xã hội Chủ nghĩa Việt Nam và các văn bản hướng dẫn thi hành; các văn bản sửa đổi, bổ sung;</div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/luat_QLT_38 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Quản lý thuế số 38/2019/QH14 ngày 13/06/2019 của Quốc hội nước Cộng hòa Xã hội Chủ nghĩa Việt Nam;</div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/luat_NHNN_46 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Ngân hàng Nhà nước số 46/2010/QH12 ngày 16/6/2010 của Quốc hội nước Cộng hòa Xã hội Chủ nghĩa Việt Nam và các văn bản hướng dẫn thi hành; các văn bản sửa đổi, bổ sung;</div></xsl:if> 
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/luat_GDDT_20 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Giao dịch điện tử số 20/2023/QH15 ngày 22/6/2023 của Quốc hội nước Cộng hòa Xã hội Chủ nghĩa Việt Nam và các văn bản hướng dẫn thi hành; các văn bản sửa đổi, bổ sung;</div></xsl:if> 
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/luat_TCTD_32 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Luật Các tổ chức tín dụng số 32/2024/QH15 ngày 18/01/2024 của Quốc hội nước Cộng hòa Xã hội Chủ nghĩa Việt Nam và các văn bản hướng dẫn thi hành; các văn bản sửa đổi, bổ sung; </div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/nDinh_165 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Nghị định số 165/2018/NĐ-CP ngày 24/12/2018 của Chính phủ về giao dịch điện tử trong hoạt động tài chính;</div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/nDinh_126 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ quy định chi tiết một số điều của Luật Quản lý thuế; các văn bản sửa đổi, bổ sung; </div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/nDinh_11 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Nghị định số 11/2020/NĐ-CP ngày 20/01/2020 của Chính phủ quy định về thủ tục hành chính thuộc lĩnh vực Kho bạc Nhà nước; </div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/tt_328 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Thông tư số 328/2016/TT-BTC ngày 26/12/2016 của Bộ trưởng Bộ Tài chính hướng dẫn thu và quản lý các khoản thu ngân sách nhà nước qua Kho bạc Nhà nước; Thông tư số 72/2021/TT-BTC ngày 17/8/2021 sửa đổi, bổ sung một số điều của Thông tư số 328/2016/TT-BTC ngày 26/12/2016 của Bộ trưởng Bộ Tài chính hướng dẫn thu và quản lý các khoản thu ngân sách nhà nước qua Kho bạc Nhà nước; </div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/tt_84 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Thông tư số 84/2016/TT-BTC ngày 17/06/2016 của Bộ trưởng Bộ Tài chính hướng dẫn thủ tục thu nộp ngân sách nhà nước đối với các khoản thuế và thu nội địa; </div></xsl:if>
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/tt_80 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Thông tư số 80/2021/TT-BTC ngày 29/9/2021 của Bộ trưởng Bộ Tài chính hướng dẫn thi hành một số điều của Luật quản lý thuế và Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ quy định chi tiết một số điều của Luật quản lý thuế;</div></xsl:if> 
		
		<xsl:if test="$tkchinh/DeNghiKetNoi/tt_19 = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ Thông tư số 19/2021/TT-BTC ngày 18/3/2021 của Bộ trưởng Bộ Tài chính hướng dẫn giao dịch điện tử trong lĩnh vực thuế; </div></xsl:if> 
		
		<div>
		<xsl:call-template name="line-breaks">
          <xsl:with-param name="text" select="$tkchinh/DeNghiKetNoi/ndung_ccu_Khac"/>
        </xsl:call-template>
		
		
		
		</div> 
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Căn cứ tiêu chuẩn kỹ thuật theo công khai của Cục Thuế trên trang thông tin điện tử <xsl:value-of select="$tkchinh/DeNghiKetNoi/ccu_TChuan_KThuat"/>; Cổng thông tin điện tử của Cục Thuế cập nhật đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DeNghiKetNoi/cNhat_DenNgay,'dd/mm/yyyy')"/>.</div>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$ttkthue/NNT/tenNNT"/> nhận thấy có thể đáp ứng các quy định và tiêu chuẩn kỹ thuật theo công khai của Cục Thuế, cụ thể: 
			<br/>
		<xsl:call-template name="line-breaks">
          <xsl:with-param name="text" select="$tkchinh/DeNghiKetNoi/nDung_DapUng"/>
        </xsl:call-template>
		
		</div>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Bằng văn bản này, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đề nghị Cục Thuế thực hiện kiểm tra các tài liệu, hồ sơ gửi kèm theo để có thông báo cho chúng tôi về việc hồ sơ đảm bảo hoặc chưa đảm bảo các điều kiện về kết nối với Cổng thông tin điện tử của Cục Thuế.</div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp Cục Thuế cần bổ sung thông tin, đề nghị liên hệ với:</div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ông/Bà: <xsl:value-of select="$tkchinh/TTin_LHe/ong_Ba"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Chức vụ: <xsl:value-of select="$tkchinh/TTin_LHe/chuc_Vu"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ thư điện tử: <xsl:value-of select="$tkchinh/TTin_LHe/dChi_email"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số điện thoại liên hệ: <xsl:value-of select="$tkchinh/TTin_LHe/sdt_LHe"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> cam kết tuân thủ các quy định, quy trình trong việc thực hiện phối hợp thu NSNN.</div>
<xsl:if test="$tkchinh/vanBanNayThayThe = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$tkchinh/noiDung_VanBanNayThayThe"/></div></xsl:if>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trân trọng./.</div>


</xsl:if>

<xsl:if test="$tkchinh/ma_truong_hop='02'">	
	
		<div><br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ văn bản thỏa thuận kết nối với Cổng thông tin điện tử của Tổng cục Thuế (nay là Cục Thuế)/Cổng thông tin điện tử của Cục Thuế số <xsl:value-of select="$tkchinh/ThayDoiTTin/so_VBan_TThuan"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThayDoiTTin/ngay_VBan_TThuan,'dd/mm/yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> có thay đổi, bổ sung một số thông tin cụ thể:</br> </div>
		   <xsl:call-template name="line-breaks">
          <xsl:with-param name="text" select="$tkchinh/ThayDoiTTin/nDung_BSung"/>
        </xsl:call-template>
		
		<br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Bằng văn bản này, <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đề nghị Cục Thuế thực hiện kiểm tra các tài liệu, hồ sơ gửi kèm theo để thực hiện các thủ tục cập nhật thông tin hoặc ký thỏa thuận bổ sung. </br>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp Cục Thuế cần bổ sung thông tin, đề nghị liên hệ với:</div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Ông/Bà: <xsl:value-of select="$tkchinh/TTin_LHe/ong_Ba"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Chức vụ: <xsl:value-of select="$tkchinh/TTin_LHe/chuc_Vu"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Địa chỉ thư điện tử: <xsl:value-of select="$tkchinh/TTin_LHe/dChi_email"/></div>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- Số điện thoại liên hệ: <xsl:value-of select="$tkchinh/TTin_LHe/sdt_LHe"/></div>
<xsl:if test="$tkchinh/vanBanNayThayThe = 'true' "><div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="$tkchinh/noiDung_VanBanNayThayThe"/></div></xsl:if>
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trân trọng./.</div>
</xsl:if>	



	<xsl:call-template name="tkhaiFooter_01_KNNT_TDT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>	

<xsl:template name="line-breaks">
		<xsl:param name="text"/>
		<xsl:choose>
			<xsl:when test="contains($text,'#10;')">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="substring-before($text,'#10;')"/>
				<br/>
				<xsl:call-template name="line-breaks">
					<xsl:with-param name="text" select="substring-after($text,'#10;')"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($text,'&#13;')">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="substring-before($text,'&#13;')"/>
				<br/>
				<xsl:call-template name="line-breaks">
					<xsl:with-param name="text" select="substring-after($text,'&#13;')"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($text,'&#13;&#10;')">
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="substring-before($text,'&#13;&#10;')"/>
				<br/>
				<xsl:call-template name="line-breaks">
					<xsl:with-param name="text" select="substring-after($text,'&#13;&#10;')"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
</xsl:stylesheet>
