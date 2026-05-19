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
6/11/2013  của Bộ Tài chính
'" />
		 <xsl:call-template name="tkhaiHeader_02TK_SDDPNN">
		<xsl:with-param name="mauTKhai"   select="'02/TK-SDDPNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>3. Thửa đất chịu thuế</b></div>
				<table class="ttinnnt_table">
					<tr>
					     <td colspan="2"> [12] Địa chỉ: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct12"/> </td>
					     <td>[13] Tổ/Thôn: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct13"/></td>
				    </tr>	
				    <tr>
					     <td>[14] Phường/xã/thị trấn: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct14"/> </td>
					     <td>[15]  Quận/huyện: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct15_ten"/></td>
					     <td>[16] Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct16_ten"/></td>
				    </tr>	
				    <tr>
					     <td colspan="2"> [17] Đã có giấy chứng nhận (GCN) số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17"/> </td>
					     <td>[17.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/ct17_1,'dd/mm/yyyy')"/></td>
				    </tr>	
				    <tr>
					     <td>[17.2] Thửa đất số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17_2"/> </td>
					     <td>[17.3] Tờ bản đồ số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17_3"/></td>
					     <td>[17.4] Diện tích: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17_4"/></td>
				    </tr>	
				    <tr>
					     <td>[17.5] Mục đích sử dụng: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/ct17_5"/> </td>
				    </tr>	
				</table>
			<div><b>4. [18] Đối tượng miễn,  giảm thuế: <xsl:value-of select="$tkchinh/DoiTuongMienGiam/ct18"/></b></div>
			<div><b>5. Căn cứ tính thuế: </b></div>
			<table class="ttinnnt_table">
					<tr>
					     <td> [19] Diện tích đất thực tế sử dụng: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct19"/> </td>
				    </tr>	
				    <tr>
					     <td> [20] Thông tin xác định giá đất:</td>
				    </tr>	
				    <tr>
					     <td> [20.1] Loại đất:  <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_1"/> </td>
				    </tr>	
				    <tr>
					     <td> [20.2] Tên đường/vùng: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_2"/> </td>
				    </tr>	
				    <tr>
					     <td> [20.3] Đoạn đường/khu vực: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_3"/> </td>
				    </tr>	
				    <tr>
					     <td> [20.4] Loại đường: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_4"/> </td>
					     <td> [20.5] Vị trí/hạng: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_5"/> </td>
				    </tr>	
				    <tr>
					     <td> [20.6] Giá đất: <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_6"/> </td>
					     <td> [20.7] Hệ số (đường/hẻm): <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_7"/> </td>
				    </tr>	
				    <tr>
					     <td> [20.8] Giá 1 m2 đất <i>(Giá đất theo mục đích sử dụng):</i> <xsl:value-of select="$tkchinh/CanCuTinhThue/ct20_8"/> </td>
				    </tr>	
			</table>
			<div><b>6. Tính thuế </b></div>
			<div><b>6.1 </b> Đất ở <i>(Tính cho đất ở, bao gồm cả trường hợp sử dụng đất ở để kinh doanh)</i></div>
			<div>Tính trên diện tích có quyền sử dụng</div>
			<table class="ttinnnt_table">
					<tr>
					     <td> [21] Diện tích: <xsl:value-of select="$tkchinh/TinhThue/CT6_1/ct21"/> </td>
					     <td> [22] Số thuế phải nộp: <xsl:value-of select="$tkchinh/TinhThue/CT6_1/ct22"/> </td>
				    </tr>	
				    <tr>
					     <td> </td>
					     <td> <i>[22]=[21]*[20.8]*0,03%</i></td>
				    </tr>	
			</table>
			<div><b>6.2 </b> Đất ở nhà nhiều tầng, có nhiều hộ ở - Tính trên diện tích sàn có quyền sử dụng  </div>
			<table class="ttinnnt_table">
					<tr>
					     <td> [23] Diện tích: <xsl:value-of select="$tkchinh/TinhThue/CT6_2/ct23"/> </td>
					     <td> [24] Hệ số phân bổ: <xsl:value-of select="$tkchinh/TinhThue/CT6_2/ct24"/> </td>
					     <td> [25] Số thuế phải nộp: <xsl:value-of select="$tkchinh/TinhThue/CT6_2/ct25"/> </td>
				    </tr>	
				    <tr>
					     <td> </td>
					     <td> </td>
					     <td> <i>[25]=[23]*[24]*[20.8]*0,03% </i></td>
				    </tr>	
			</table>
			<div><b>6.3 </b> Đất sản xuất kinh doanh – Tính trên diện tích sử dụng đúng mục đích  </div>
			<table class="ttinnnt_table">
					<tr>
					     <td>[26] Diện tích: <xsl:value-of select="$tkchinh/TinhThue/CT6_3/ct26"/> </td>
					     <td>[27] Số thuế phải nộp <i>([27]=[26]*[20.8]*0,03% ): </i><xsl:value-of select="$tkchinh/TinhThue/CT6_3/ct27"/> </td>
				    </tr>	
			</table>
			<div><b>6.4 </b> Đất sử dụng không đúng mục đích hoặc chưa sử dụng theo đúng quy định:  </div>
			<table class="ttinnnt_table">
					<tr>
					     <td>[28] Mục đích đang sử dụng: <xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct28"/> </td>
					     <td>[29] Hệ số phân bổ  <i>(đối với nhà chung cư): </i><xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct29"/> </td>
				    </tr>	
				    <tr>
					     <td> </td>
					     <td> <i>( Khi không điền hoặc để bằng 0, hệ số sẽ được tính bằng 1)</i></td>
				    </tr>	
				    <tr>
					     <td>[30] Diện tích: <xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct30"/> </td>
					     <td>[31] Giá 1m2 đất: <xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct31"/> </td>
				    </tr>	
				    <tr>
					     <td>[32] Số thuế phải nộp <i>([32]=[30]*[31]*[29]*0,15% ):</i> <xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct32"/> </td>
				    </tr>	
			</table>
			<div><b>6.5 </b> Đất lấn, chiếm</div>
			<table class="ttinnnt_table">
					<tr>
					     <td>[33] Mục đích đang sử dụng: <xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct33"/> </td>
					     <td>[34] Hệ số phân bổ  <i>(đối với nhà chung cư): </i><xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct34"/> </td>
				    </tr>	
				    <tr>
					     <td> </td>
					     <td> <i>(Khi không điền hoặc để bằng 0, hệ số sẽ được tính bằng 1)</i></td>
				    </tr>	
				    <tr>
					     <td>[35] Diện tích: <xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct35"/> </td>
					     <td>[36] Giá 1m2 đất: <xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct36"/> </td>
				    </tr>	
				    <tr>
					     <td>[37] Số thuế phải nộp  <i>([37]=[35]*[36]*[34]*0,2% ): </i> <xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct37"/> </td>
				    </tr>	
			</table>
			<div><b>7. [38] Tổng số thuế phải nộp trước miễn giảm </b><i>([38]=[22]+[25]+[27]+[32]+[37]):</i> <xsl:value-of select="$tkchinh/SoThuePhaiNopTruocMG/ct38"/></div>
			<div><b>8. [39] Số thuế được miễn, giảm: </b><xsl:value-of select="$tkchinh/SoThueMienGiam/ct39"/></div>
			<div><b>9. [40] Tổng số thuế phải nộp  </b><i>([40]=[38] - [39]): </i> <xsl:value-of select="$tkchinh/SoThuePhaiNop/ct40"/></div>
			<div><b>10. [41] Nộp một lần cho 5 năm (trong chu kỳ ổn định 5 năm)  </b><i>([41]=[40]* 5): </i> <xsl:value-of select="$tkchinh/NopMotLan5Nam/ct41"/></div>
			<div><b>11 .Thời hạn nộp thuế: </b></div>
			<div>[<xsl:if test="$tkchinh/ThoiHanNopThue/NopMotLan = 'true' or $tkchinh/ThoiHanNopThue/NopMotLan = '1'" >x</xsl:if>] Nộp thuế một lần trong năm.</div>
			<div>[<xsl:if test="$tkchinh/ThoiHanNopThue/NopHaiLan = 'true' or $tkchinh/ThoiHanNopThue/NopHaiLan = '1'" >x</xsl:if>] Nộp thuế theo 2 lần trong năm.</div>
			<div>[<xsl:if test="$tkchinh/ThoiHanNopThue/NopOnDinh = 'true' or $tkchinh/ThoiHanNopThue/NopOnDinh = '1'" >x</xsl:if>] Nộp thuế cho cả thời kỳ ổn định: Năm: <xsl:value-of select="$tkchinh/ThoiHanNopThue/nam"/></div>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

