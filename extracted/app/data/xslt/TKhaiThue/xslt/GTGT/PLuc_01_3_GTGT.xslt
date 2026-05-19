<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
				
		<!-- Phụ lục 01-3/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_3_GTGT">	
		<xsl:variable name="pl03" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_3_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'01-3/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'BẢNG KÊ HÀNG HOÁ, DỊCH VỤ ĐƯỢC ÁP DỤNG THUẾ SUẤT THUẾ GTGT 0%'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c" rowspan="4"><b>STT</b></td>
							   <td class="align-c" colspan="6"><b>Hợp đồng xuất khẩu</b></td>
							   <td class="align-c" colspan="4"><b>Tờ khai hàng hoá xuất khẩu</b></td>
							   <td class="align-c" colspan="4"><b>Hoá đơn xuất khẩu</b></td>
							   <td class="align-c" colspan="4"><b>Chứng từ thanh toán qua ngân hàng</b></td>
							   <td class="align-c" colspan="13"><b>Chứng từ thanh toán bù trừ</b></td>
            					<td class="align-c" rowspan="4"><b>Ghi chú</b></td>
							</tr>
							<tr>
							  <td class="align-c" rowspan="3"><b>Số</b></td>
							  <td class="align-c" rowspan="3"><b>Ngày</b></td>
							  <td class="align-c" colspan="2"><b>Trị giá</b></td>
							  <td class="align-c" rowspan="3"><b>Hình thức, phương thức thanh toán</b></td>
							  <td class="align-c" rowspan="3"><b>Thời hạn thanh toán</b></td>
							  <td class="align-c" rowspan="3"><b>Tờ khai số</b></td>
							  <td class="align-c" rowspan="3"><b>Ngày đăng ký</b></td>
							  <td class="align-c" colspan="2"><b>Trị giá</b></td>							  
							  <td class="align-c" rowspan="3"><b>Số</b></td>
							  <td class="align-c" rowspan="3"><b>Ngày</b></td>
							  <td class="align-c" colspan="2"><b>Trị giá</b></td>
							  <td class="align-c" rowspan="3"><b>Số</b></td>
							  <td class="align-c" rowspan="3"><b>Ngày</b></td>
							  <td class="align-c" colspan="2"><b>Trị giá</b></td>
							  <td class="align-c" colspan="4"><b>Văn bản xác nhận với phía nước ngoài</b></td>							  
							  <td class="align-c" colspan="4"><b>Hợp đồng nhập khẩu</b></td>							  
							  <td class="align-c" colspan="4"><b>Tờ khai hàng hoá nhập khẩu</b></td>							  							  
                              <td class="align-c" rowspan="3"><b>Chứng từ thanh toán bù trừ khác</b></td>							  
							</tr>
							<tr>
								<td class="align-c" rowspan="2"><b>Ngoại tệ</b></td>
                                <td class="align-c" rowspan="2"><b>Đồng Việt Nam</b></td>
								<td class="align-c" rowspan="2"><b>Ngoại tệ</b></td>
                                <td class="align-c" rowspan="2"><b>Đồng Việt Nam</b></td>
								<td class="align-c" rowspan="2"><b>Ngoại tệ</b></td>
                                <td class="align-c" rowspan="2"><b>Đồng Việt Nam</b></td>
								<td class="align-c" rowspan="2"><b>Ngoại tệ</b></td>
                                <td class="align-c" rowspan="2"><b>Đồng Việt Nam</b></td>
					 		    <td class="align-c" rowspan="2"><b>Số</b></td>
							    <td class="align-c" rowspan="2"><b>Ngày</b></td>
             				    <td class="align-c" colspan="2"><b>Trị giá</b></td>                                
 					 		    <td class="align-c" rowspan="2"><b>Số</b></td>
							    <td class="align-c" rowspan="2"><b>Ngày</b></td>
             				    <td class="align-c" colspan="2"><b>Trị giá</b></td>  
								<td class="align-c" rowspan="2"><b>Tờ khai số</b></td>
                                <td class="align-c" rowspan="2"><b>Ngày đăng ký</b></td>             				                                 
             				    <td class="align-c" colspan="2"><b>Trị giá</b></td>  
							</tr>
							<tr>
           						<td class="align-c"><b>Ngoại tệ</b></td>
								<td class="align-c"><b>Đồng Việt Nam</b></td>
								<td class="align-c"><b>Ngoại tệ</b></td>
                                <td class="align-c"><b>Đồng Việt Nam</b></td>
								<td class="align-c"><b>Ngoại tệ</b></td>
                                <td class="align-c"><b>Đồng Việt Nam</b></td>
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
								<td class="align-c">(12)</td>
								<td class="align-c">(13)</td>
								<td class="align-c">(14)</td>
								<td class="align-c">(15)</td>
								<td class="align-c">(16)</td>
								<td class="align-c">(17)</td>
								<td class="align-c">(18)</td>
								<td class="align-c">(19)</td>
								<td class="align-c">(20)</td>
								<td class="align-c">(21)</td>
								<td class="align-c">(22)</td>
								<td class="align-c">(23)</td>
								<td class="align-c">(24)</td>
								<td class="align-c">(25)</td>
								<td class="align-c">(26)</td>
								<td class="align-c">(27)</td>
								<td class="align-c">(28)</td>
								<td class="align-c">(29)</td>
								<td class="align-c">(30)</td>
								<td class="align-c">(31)</td>
								<td class="align-c">(32)</td>
								<td class="align-c">(33)</td>																
							</tr>
							
						   <xsl:for-each select="$pl03/ChiTietBangKeHH">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="HopDongXuatKhau/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(HopDongXuatKhau/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="HopDongXuatKhau/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(HopDongXuatKhau/dongVietNam)" /></td>
							  <td class="align-l"><xsl:value-of select="HopDongXuatKhau/hinhThucThanhToanHDongXKhau" /></td>
							  <td class="align-l"><xsl:value-of select="HopDongXuatKhau/thoiHanThanhToanHDongXKhau" /></td>
							  <td class="align-l"><xsl:value-of select="ToKhaiHHoaXKhau/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ToKhaiHHoaXKhau/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="ToKhaiHHoaXKhau/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ToKhaiHHoaXKhau/dongVietNam)" /></td>
							  <td class="align-l"><xsl:value-of select="HoaDonXKhau/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(HoaDonXKhau/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="HoaDonXKhau/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(HoaDonXKhau/dongVietNam)" /></td>
							  <td class="align-l"><xsl:value-of select="CTuTToanNganHang/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(CTuTToanNganHang/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="CTuTToanNganHang/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(CTuTToanNganHang/dongVietNam)" /></td>			
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/VBanXNhanVoiNNgoai/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ChungTuThanhToanBuTru/VBanXNhanVoiNNgoai/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/VBanXNhanVoiNNgoai/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChungTuThanhToanBuTru/VBanXNhanVoiNNgoai/dongVietNam)" /></td>	
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/HDongNhapKhau/so"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ChungTuThanhToanBuTru/HDongNhapKhau/ngay,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/HDongNhapKhau/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChungTuThanhToanBuTru/HDongNhapKhau/dongVietNam)" /></td>
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/ToKhaiHHoaNhapKhau/soTKhai"/></td>
							  <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ChungTuThanhToanBuTru/ToKhaiHHoaNhapKhau/ngayDKyTKhai,'dd/mm/yyyy')" /></td>
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/ToKhaiHHoaNhapKhau/ngoaiTe" /></td>
							  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ChungTuThanhToanBuTru/ToKhaiHHoaNhapKhau/dongVietNam)" /></td>
							  <td class="align-l"><xsl:value-of select="ChungTuThanhToanBuTru/chungTuThanhToanBuTruKhac" /></td>
							   <td class="align-l"><xsl:value-of select="ghiChu" /></td>
							  </tr>
							</xsl:for-each>
					</table>  
<div class="ghichu">					
					<div><b>Các tài liệu khác (nếu có): </b>   <xsl:value-of select="$pl03/taiLieuKhac"/></div>
</div>					
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>	
<div class="ghichu">			
		<div><i><u><b>Ghi chú: </b></u></i></div><br/>
		<div><i>- Cột “Tờ khai số” ghi đầy đủ chữ số và ký hiệu của Tờ khai hàng hoá xuất khẩu, nhập khẩu.</i></div>
		<div><i>- Cột “Ngày đăng ký” ghi rõ ngày tháng năm đăng ký Tờ khai hàng hoá xuất nhập khẩu</i></div>
		<div><i>- Cột “Ngoại tệ” ghi rõ số tiền và đồng tiền thanh toán đối với ngoại tệ; cột “Đồng Việt Nam” ghi rõ số tiền thanh toán nếu đồng tiền thanh toán là Đồng Việt Nam (trường hợp trên tài liệu có ghi cả hai đồng tiền thanh toán là ngoại tệ và Đồng Việt Nam thì phải ghi vào cả 2 cột này).</i></div>
			<div><i>- Trường hợp người nộp thuế xuất khẩu hàng hoá để thực hiện công trình xây dựng ở nước ngoài thì cột “Hợp đồng xuất khẩu” ghi Văn bản ban hành Danh mục hàng hoá xuất khẩu để xây dựng công trình ở nước ngoài./.</i></div>
</div>	
<div id="sigDiv"></div>
</td>
</tr>
</table>		
</xsl:if>		
		<!-- Kết thúc PL 01-3/GTGT -->
		
		</xsl:template>		
</xsl:stylesheet>