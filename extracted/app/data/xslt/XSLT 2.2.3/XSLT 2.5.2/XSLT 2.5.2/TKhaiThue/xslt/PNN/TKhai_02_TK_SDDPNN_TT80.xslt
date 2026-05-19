<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader_02TK_SDDPNN_TT80">
		<xsl:with-param name="mauTKhai"   select="'02/TK-SDDPNN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            <div><b>3. Thửa đất chịu thuế</b></div>
			<div><b>[10]</b> Thông tin người sử dụng đất:</div>
				<table class="tkhai_table">
                        <tr>
							<td class="align-c"><b>STT</b></td>
							<td class="align-c"><b>Tên tổ chức/cá nhân</b></td>
							<td class="align-c"><b>MST</b></td>
							<td class="align-c"><b>CMND/CCCD/Hộ chiếu (đối với cá nhân chưa có MST)</b></td>
							<td class="align-c"><b>Tỷ lệ</b></td>
						</tr>
						<xsl:for-each select="$tkchinh/ThuaDatChiuThue/NguoiSuDungDat/CTietNguoiSuDungDat">
							<xsl:variable name="currentRows" select="position()"/>
							<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenToChuc_caNhan"/></td>
								<td class="align-c"><xsl:value-of select="mst"/></td>
								<td class="align-c"><xsl:value-of select="cmnd_cccd_hoChieu"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:formatNumber(tyLe)"/></td>
								<!-- <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ct5)"/></td> -->
	         				</tr>	
	         		</xsl:for-each>	
					</table>
				<table class="ttinnnt_table">
					<tr>
					     <td colspan="2"> <b>[11]</b> Địa chỉ thửa đất:</td>
				    </tr>	
				    <tr>
					     <td><b>[11.1]</b>  Số nhà: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_1"/> </td>
					     <td><b>[11.2]</b>  Đường/phố: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_2"/> </td>
				    </tr>	
				    <tr>
					     <td><b>[11.3]</b>  Tổ/thôn: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_3_ten"/> </td>
					     <td><b>[11.4]</b>  Phường/xã/thị trấn: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_4_ten"/> </td>
				    </tr>
<tr>
					     <td><b>[11.5]</b>  Quận/huyện: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_5_ten"/> </td>
					     <td><b>[11.6]</b>  Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/DiaChiThuaDat/ct11_6_ten"/> </td>
				    </tr>
<tr>
					     <td colspan="2"> <b>[12]</b> Đã có giấy chứng nhận: [<xsl:if test="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12='true'">x</xsl:if>]</td>
				    </tr>	
				    <tr>
					     <td><b>[12.1]</b>  Số giấy chứng nhận: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_1"/> </td>
					     <td><b>[12.2]</b>  Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_2,'dd/mm/yyyy')"/> </td>
				    </tr>	
				    <tr>
					     <td><b>[12.3]</b>  Thửa đất số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_3"/> </td>
					     <td><b>[12.4]</b>  Tờ bản đồ số: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_4"/> </td>
				    </tr>
<tr>
					     <td><b>[12.5]</b>  Diện tích: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_5"/> </td>
					     <td><b>[12.6]</b>  Loại đất/ Mục đích sử dụng: <xsl:value-of select="$tkchinh/ThuaDatChiuThue/GiayChungNhan/ct12_6_ten"/> </td>
				    </tr>	
<tr>
					    <td colspan="2"> <b>[13]</b> Thời điểm bắt đầu sử dụng đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/ct13,'dd/mm/yyyy')"/> </td>
				    </tr>
<tr>
					     <td colspan="2"> <b>[14]</b> Thời điểm thay đổi thông tin của thửa đất: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThuaDatChiuThue/ct14,'dd/mm/yyyy')"/> </td>
				    </tr>	
				    <tr>
					     <td colspan="2"><b>4. Đối tượng miễn, giảm thuế [15]</b> <i> (ghi rõ trường hợp thuộc diện được miễn, giảm thuế)</i>: <xsl:value-of select="$tkchinh/DoiTuongMienGiam/ct15_ten"/> </td>
				    </tr>
				</table>
			<div><b>5. Căn cứ tính thuế: </b></div>
			<table>
					<tr>
					     <td> <b>[16]</b> Diện tích đất thực tế sử dụng: <xsl:value-of select="ihtkk:formatNumber($tkchinh/CanCuTinhThue/ct16)"/> </td>
				    </tr>	
				    <tr>
					     <td> <b>[17]</b> Thông tin xác định giá đất:</td>
				    </tr>	
				    <tr>
					     <td> <b>[17.1]</b> Loại đất:  <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_1_ten"/> </td>
				    </tr>	
				    <tr>
					     <td> <b>[17.2]</b> Tên đường/vùng: <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_2_ten"/> </td>
				    </tr>	
				    <tr>
					     <td colspan="3"> <b>[17.3] </b>Đoạn đường/khu vực: <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_3_ten"/> </td>
				    </tr>	
				    <tr>
					     <td> <b>[17.4]</b> Loại đường: <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_4_ten"/> </td>
					     <td> <b>[17.5]</b> Vị trí/hạng: <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_5_ten"/> </td>
				    </tr>	
				    <tr>
					     <td> <b>[17.6]</b> Giá đất: <xsl:value-of select="ihtkk:formatNumber($tkchinh/CanCuTinhThue/CT17/ct17_6)"/> </td>
					     <td> <b>[17.7]</b> Hệ số (đường/hẻm): <xsl:value-of select="$tkchinh/CanCuTinhThue/CT17/ct17_7"/> </td>
				    </tr>	
				    <tr>
					     <td> <b>[17.8]</b> Giá 1 m2 đất <i>(Giá đất theo mục đích sử dụng): </i> <xsl:value-of select="ihtkk:formatNumber($tkchinh/CanCuTinhThue/CT17/ct17_8)"/> </td>
				    </tr>
<tr>
					     <td> <b>[17.9]</b> Bảng kê nhiều vị trí: <xsl:if test="$tkchinh/CanCuTinhThue/CT17/ct17_9='true'">[x]</xsl:if> </td>
				    </tr>					
			</table>
			<div><b>6. Tính thuế </b></div>
			<div><b>6.1 </b> Đất ở <i>(Tính cho đất ở, bao gồm cả trường hợp sử dụng đất ở để kinh doanh)</i></div>
			<div>Tính trên diện tích có quyền sử dụng</div>
			<table class="ttinnnt_table">
					<tr>
					     <td colspan="2"> <b>[18]</b> Diện tích: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_1/ct18)"/> </td>
					     <td> <b>[19]</b> Số thuế phải nộp (<b>[19] = [18]*[17.8]*</b><i>0,03%</i>): <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_1/ct19)"/> </td>
				    </tr>	
				    <!-- <tr>
					     <td> </td>
					     <td> <i>[22]=[21]*[20.8]*0,03%</i></td>
				    </tr> -->	
			</table>
			<div><b>6.2 </b> Đất ở nhà nhiều tầng, có nhiều hộ ở - Tính trên diện tích sàn có quyền sử dụng  </div>
			<table class="ttinnnt_table">
					<tr>
					     <td colspan="2"> <b>[20]</b> Diện tích: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_2/ct20)"/> </td>
					     <td> <b>[21]</b> Hệ số phân bổ: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_2/ct21)"/> </td>
				    </tr>
					<tr>
					     <td colspan="3"> <b>[22]</b> Số thuế phải nộp (<b>[22]=[20]*[21]*[17.8]*</b><i>0,03%</i>): <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_2/ct22)"/> </td>
				    </tr>
				    <!-- <tr>
					     <td> </td>
					     <td> </td>
					     <td> <i>[25]=[23]*[24]*[20.8]*0,03% </i></td>
				    </tr>	 -->
			</table>
			<div><b>6.3 </b> Đất sản xuất kinh doanh – Tính trên diện tích sử dụng đúng mục đích:  </div>
			
					<tr>
					     <td colspan="2"><b>[23]</b> Diện tích: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_3/ct23)"/> </td>
					     <td><b>[24]</b> Hệ số phân bổ <i>(đối với nhà nhiều tầng nhiều hộ ở, nhà chung cư): </i><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_3/ct24)"/> <i> (Khi không điền hoặc để bằng 0, hệ số sẽ được tính bằng 1).</i> </td>
				    </tr>
			<br/>
			<tr>
					     <td><b>[25]</b> Số thuế phải nộp (<b>[25] = [23]*[24]*[17.8]*</b><i>0,03%</i>): <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_3/ct25)"/> </td>
				    </tr>
			<div><b>6.4 </b> Đất sử dụng không đúng mục đích hoặc chưa sử dụng theo đúng quy định:  </div>
			<table class="ttinnnt_table">
					<tr>
					     <td colspan="3"><b>[26]</b> Mục đích đang sử dụng: <xsl:value-of select="$tkchinh/TinhThue/CT6_4/ct26_ten"/> </td>
				    </tr>
<tr>
					    <td colspan="3"><b>[27]</b> Hệ số phân bổ  <i>(đối với nhà nhiều tầng nhiều hộ ở, nhà chung cư): </i><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_4/ct27)"/> <i> (Khi không điền hoặc để bằng 0, hệ số sẽ được tính bằng 1)</i></td>
				    </tr>		
				    <tr>
					     <td colspan="2"><b>[28]</b> Diện tích: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_4/ct28)"/> </td>
					     <td><b>[29]</b> Giá 1m2 đất: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_4/ct29)"/> </td>
				    </tr>	
				    <tr>
					     <td colspan="3"><b>[30]</b> Số thuế phải nộp (<b>[30]=[28]*[29]*[27]*</b><i>0,15%</i>): <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_4/ct30)"/> </td>
				    </tr>	
			</table>
			<div><b>6.5 </b> Đất lấn, chiếm: </div>
			<table class="ttinnnt_table">
					<tr>
					     <td colspan="3"><b>[31]</b> Mục đích đang sử dụng: <xsl:value-of select="$tkchinh/TinhThue/CT6_5/ct31_ten"/> </td>
				    </tr>
<tr>
					    <td colspan="3"><b>[32]</b> Hệ số phân bổ  <i>(đối với nhà nhiều tầng nhiều hộ ở, nhà chung cư): </i><xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_5/ct32)"/> <i> (Khi không điền hoặc để bằng 0, hệ số sẽ được tính bằng 1)</i></td>
				    </tr>
				    <tr>
					     <td colspan="2"><b>[33]</b> Diện tích: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_5/ct33)"/> </td>
					     <td><b>[34]</b> Giá 1m2 đất: <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_5/ct34)"/> </td>
				    </tr>	
				    <tr>
					     <td colspan="3"><b>[35]</b> Số thuế phải nộp (<b>[35]=[33]*[34]*[32]*</b><i>0,2%</i>): <xsl:value-of select="ihtkk:formatNumber($tkchinh/TinhThue/CT6_5/ct35)"/> </td>
				    </tr>	
			</table>
			<div><b>7. [36] Tổng số thuế phải nộp trước miễn giảm ([36]=[19]+[22]+[25]+[30]+[35]): </b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNopTruocMG/ct36)"/></div>
			<div><b>8. [37] Số thuế được miễn, giảm: </b><xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThueMienGiam/ct37)"/> </div>
			<div><b>9. [38] Tổng số thuế phải nộp  <i>([38]=[36]-[37]): </i></b> <xsl:value-of select="ihtkk:formatNumber($tkchinh/SoThuePhaiNop/ct38)"/></div>
			<div><b>10. [39] Nộp cho cả thời kỳ ổn định  </b>(trong chu kỳ ổn định 5 năm) <i>[39] ([39]=[38]* (5 hoặc số năm còn lại của chu kỳ ổn định): </i> <xsl:value-of select="ihtkk:formatNumber($tkchinh/NopCaThoiKyOnDinh/ct39)"/></div>
				
<table style="page-break-inside: avoid;" >
<tr>
<td>	   
	 <xsl:call-template name="tkhaiFooter_TBVMT_TT80"/>
	<br/>
<div id="sigDiv"></div>
</td>
</tr>
</table>	
	</div>
		</div>
		
		
	</xsl:template>		
</xsl:stylesheet>

