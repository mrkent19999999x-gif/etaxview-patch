<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 
80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_KTTSBD">	
		<xsl:variable name="pl02" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_1_KTTSBD' />
			<xsl:call-template name="tkhaiHeader-pluc01-KTTSBD">
		<xsl:with-param name="mauTKhai"   select="'01-1/KTTSBĐ'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ CHI TIẾT SỐ THUẾ PHẢI NỘP ĐỐI VỚI HOẠT ĐỘNG KHAI THÁC TÀI SẢN BẢO ĐẢM TRONG THỜI GIAN CHỜ XỬ LÝ'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo Tờ khai thuế đối với hoạt động khai thác tài sản bảo đảm trong thời gian chờ xử lý mẫu số 01/KTTSBĐ)'"/>
	  </xsl:call-template>
	  
	  <div class="ndungtkhai_div">	
			<div class="content">
				<div> <b>I. Kê khai thay cho người nộp thuế có tài sản bảo đảm là tổ chức, doanh nghiệp</b> </div>	
							<br/>
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
					<td class="align-c" rowspan="2"><b>Người nộp thuế có tài sản bảo đảm</b></td>
					<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
				<td class="align-c" colspan="2"><b>Hợp đồng</b></td>
				<td class="align-c" rowspan="2"><b>Số tiền thanh toán trong kỳ</b></td>
				<td class="align-c" rowspan="2"><b>Ngày thanh toán</b></td>
				<td class="align-c" colspan="2"><b>Thuế GTGT </b></td>
				<td class="align-c" colspan="2"><b>Thuế TNDN</b></td>
				<td class="align-c" rowspan="2"><b>Tổng số thuế phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Số</b></td>
				<td class="align-c"><b>Ngày/ tháng/ năm</b></td>
				<td class="align-c"><b>Giá tính thuế</b></td>
				<td class="align-c"><b>Thuế GTGT phải nộp</b></td>
				<td class="align-c"><b>Thu nhập tính thuế</b></td>
				<td class="align-c"><b>Thuế TNDN phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)</b></td>
				<td class="align-c"><b>(8)</b></td>
				<td class="align-c"><b>(9)</b></td>
				<td class="align-c"><b>(10)</b></td>
				<td class="align-c"><b>(11)</b></td>
				<td class="align-c"><b>(12)=(9)+(11)</b></td>
			</tr>
			 <xsl:for-each select="$pl02/KeKhaiThayToChuc/ChiTietKhaiThayToChuc">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="nNTCoTSBD" /></td>
							  <td class="align-c"><xsl:value-of select="maSoThue" /></td>
							  <td class="align-c"><xsl:value-of select="so" /></td>
							   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay,'dd/mm/yyyy')" /></td>
							   <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soTienThanhToan)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayThanhToan,'dd/mm/yyyy')" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(giaTinhThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTPhaiNop)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thuNhapTinhThue)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNDNPhaiNop)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThuePhaiNop)" /></td>
							</tr>
							</xsl:for-each>	
			              <tr>
			              <td></td>
			              <td><b>Cộng</b></td>
			               <td></td>
			                <td></td>
			                 <td></td>
			                 <td></td>
			                     <td></td>
			                 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayToChuc/tongCongGiaTinhThue)" /></b></td>
			                  
			                  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayToChuc/tongCongThueGTGTPN)" /></b></td>
			               
							
							
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayToChuc/tongCongThuNhapTT)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayToChuc/tongCongThueTNDNPN)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayToChuc/tongCongSoThuePN)" /></b></td>
							  </tr>
						
		</table>
		
		<div> <b> II. Kê khai thay cho người nộp thuế có tài sản bảo đảm là cá nhân</b> </div>	
							<br/>
					<div class="donvitien"><i>Đơn vị tiền: đồng Việt Nam</i></div>
		
		<table class="tkhai_table">
			<tr>
				<td class="align-c" rowspan="2"><b>STT</b></td>
					<td class="align-c" rowspan="2"><b>Người nộp thuế có tài sản bảo đảm</b></td>
					<td class="align-c" rowspan="2"><b>Mã số thuế</b></td>
					<td class="align-c" rowspan="2"><b>Chứng minh thư/Thẻ căn cước (đối với NNT không có thông tin MST)</b></td>
				<td class="align-c" colspan="2"><b>Hợp đồng</b></td>
				<td class="align-r" rowspan="2"><b>Số tiền thanh toán trong kỳ</b></td>
				<td class="align-r" rowspan="2"><b>Ngày thanh toán</b></td>
				<td class="align-r" colspan="2"><b>Thuế GTGT </b></td>
				<td class="align-r" colspan="2"><b>Thuế TNCN</b></td>
				<td class="align-r" rowspan="2"><b>Tổng số thuế phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>Số</b></td>
				<td class="align-c"><b>Ngày/ tháng/ năm</b></td>
				<td class="align-c"><b>Doanh thu tính thuế</b></td>
				<td class="align-c"><b>Thuế GTGT phải nộp</b></td>
				<td class="align-c"><b>Doanh thu tính thuế</b></td>
				<td class="align-c"><b>Thuế TNCN phải nộp</b></td>
			</tr>
			<tr>
				<td class="align-c"><b>(1)</b></td>
				<td class="align-c"><b>(2)</b></td>
				<td class="align-c"><b>(3)</b></td>
				<td class="align-c"><b>(4)</b></td>
				<td class="align-c"><b>(5)</b></td>
				<td class="align-c"><b>(6)</b></td>
				<td class="align-c"><b>(7)</b></td>
				<td class="align-c"><b>(8)</b></td>
				<td class="align-c"><b>(9)</b></td>
				<td class="align-c"><b>(10)</b></td>
				<td class="align-c"><b>(11)</b></td>
				<td class="align-c"><b>(12)</b></td>
				<td class="align-c"><b>(13)=(10)+(12)</b></td>
			</tr>
			 <xsl:for-each select="$pl02/KeKhaiThayCaNhan/ChiTietKhaiThayCaNhan">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							<td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="nNTCoTSBD" /></td>
							  <td class="align-c"><xsl:value-of select="maSoThue" /></td>
							    <td class="align-c"><xsl:value-of select="soCMND_CCCD" /></td>
							  <td class="align-c"><xsl:value-of select="so" /></td>
							   <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay,'dd/mm/yyyy')" /></td>
							   <td class="align-c"><xsl:value-of select="ihtkk:formatNumber(soTienThanhToan)" /></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngayThanhToan,'dd/mm/yyyy')" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuGTGT)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueGTGTPhaiNop)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThuTNCN)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(thueTNCNPhaiNop)" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(tongSoThuePhaiNop)" /></td>
							</tr>
							</xsl:for-each>	
			                <tr>
			              <td></td>
			              <td><b>Cộng</b></td>
			               <td></td>
			                <td></td>
			                 <td></td>
			                 <td></td>
			                 <td></td>
			                 <td></td>
			                 <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayCaNhan/tongCongDTTinhThueGTGT)" /></b></td>
			                  
			                  <td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayCaNhan/tongCongThueGTGTPN)" /></b></td>
			                   
							
							
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayCaNhan/tongCongDTTinhThueTNCN)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayCaNhan/tongCongThueTNCNPN)" /></b></td>
							<td class="align-r"><b><xsl:value-of select="ihtkk:formatNumber($pl02/KeKhaiThayCaNhan/tongCongSoThuePN)" /></b></td>
							  </tr>
		</table>
</div>
</div>
	</xsl:if>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		</xsl:template>		
</xsl:stylesheet>