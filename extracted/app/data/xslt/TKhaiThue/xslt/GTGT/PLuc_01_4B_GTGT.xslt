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
				
		<!-- Phụ lục 01-4B/GTGT -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_4B_GTGT">	
		<xsl:variable name="pl04b" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_4B_GTGT' />
			<xsl:call-template name="tkhaiHeader-pluc-04-1-gtgt">
		<xsl:with-param name="mauTKhai"   select="'01-4B/GTGT'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
        <xsl:with-param name="tenPL"   select="'BẢNG KÊ KHAI ĐIỀU CHỈNH THUẾ GTGT ĐẦU VÀO PHÂN BỔ 
ĐƯỢC KHẤU TRỪ NĂM '"/> 
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai thuế GTGT mẫu số 01/GTGT)'"/>
	  </xsl:call-template>
			<div class="ndungtkhai_div">	
			<div class="content">
		     	<div class="donvitien"> <i>Đơn vị tiền: đồng Việt Nam</i></div>
				
<div class="ghichu">
		     	 <div style="width:50% ;float:left;"><b>A. Thuế GTGT của HHDV mua vào trong kỳ:  </b></div>
		     	   <div class="pl_04a_gtgt_HHDV_DV"><b><xsl:value-of select="ihtkk:formatNumber($pl04b/ThueGTGTCuaHHDVMVaoTKy/thueGTGTMVao)"/></b> <b> đồng</b></div>
		     	   </div>
		     	   
		<div class="ghichu">		     	   
			      <div class="align-l"><i>Trong đó: </i></div>
</div>			      
	<div  class="pl_04a_gtgt">		      
			            <table class="pl_04a_gtgt_table">							
							 <tr>
								<td class="align-l"><i>- Thuế GTGT của HHDV mua vào dùng riêng cho SXKD chịu thuế GTGT và sử dụng cho các hoạt động cung cấp HHDV không kê khai, nộp thuế GTGT đủ điều kiện khấu trừ:</i></td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($pl04b/ThueGTGTCuaHHDVMVaoTKy/thueGTGTCThueDuDKKT)"/> </td>
							</tr>
							<tr>
								<td class="align-l"><i>- Thuế GTGT của HHDV mua vào không đủ điều kiện khấu trừ:</i></td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($pl04b/ThueGTGTCuaHHDVMVaoTKy/thueGTGTKhongDuDKKT)"/> </td>
							</tr>
							<tr>
                                <td class="align-l"><i>- Thuế GTGT của HHDV mua vào dùng chung cho SXKD HHDV chịu thuế và  không chịu thuế đủ điều kiện khấu trừ:</i></td>
								<td class="align-r"> <xsl:value-of select="ihtkk:formatNumber($pl04b/ThueGTGTCuaHHDVMVaoTKy/thueGTGTDungChungDuDKKT)"/> </td>
							</tr>
						</table>
</div>							
					<div class="ghichu">	
						<div class="align-l"><b>B. Điều chỉnh thuế GTGT đầu vào được khấu trừ theo tỷ lệ phân bổ của năm:</b></div>
						</div>
						<table class="tkhai_table"  >
							<tr>
							   <td class="align-c"><b>STT</b></td>
							   <td class="align-c"><b>Chỉ tiêu</b></td>
							   <td class="align-c"><b>Số tiền</b></td>
							</tr>
                             <tr>
                              <td class="align-c">1</td>
                              <td class="align-l">Tổng doanh thu hàng hoá, dịch vụ bán ra trong năm (1)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/tongDThuBRa)"/></td>
                            </tr>
                             <tr>
                              <td class="align-c">2</td>
                              <td class="align-l">Doanh thu hàng hoá, dịch vụ bán ra chịu thuế (2)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/dThuBRaChiuThue)"/></td>
                            </tr>
                            <tr>
                              <td class="align-c">3</td>
                              <td class="align-l">Tỷ lệ % doanh thu  HHDV bán ra chịu thuế trên tổng doanh thu của năm (3) = (2)/(1)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/tyLeDThu)"/></td>
                            </tr>
                            <tr>
                              <td class="align-c">4</td>
                              <td class="align-l">Tổng thuế GTGT của HHDV mua vào cần phân bổ trong năm (4)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/thueGTGTMVaoPBo)"/></td>
                            </tr>
                            <tr>
                              <td class="align-c">5</td>
                              <td class="align-l">Thuế GTGT đầu vào được khấu trừ trong năm (5) = (4) x (3)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/thueGTGTMVaoKTru)"/></td>
                            </tr>                            
                            <tr>
                              <td class="align-c">6</td>
                              <td class="align-l">Thuế GTGT đầu vào đã kê khai khấu trừ trong năm (6)</td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/thueGTGTDVaoDaKKKT)"/></td>
                            </tr>                            
                            <tr>
                              <td class="align-c">7</td>
                              <td class="align-l">Điều chỉnh tăng (+), giảm (-) thuế GTGT đầu vào được khấu trừ trong năm (7) = (5) - (6) </td>
                              <td class="align-r"><xsl:value-of select="ihtkk:formatNumber($pl04b/DChinhThueGTGTDVaoKTruTheoTyLe/dieuChinhThueGTGT)"/></td>
                            </tr>                            
					</table>  
		      </div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  			
			<xsl:call-template name="tkhaiFooter"/>	
	<div class="ghichu">
		<div><i><u>Ghi chú: </u></i></div><br/>
		<div><i>- GTGT: giá trị gia tăng</i></div>
		<div><i>- HHDV: hàng hoá dịch vụ; SXKD: sản xuất kinh doanh.</i></div>
</div>
<div id="sigDiv"></div>
</td>
</tr>
</table>
	</xsl:if>				
		<!-- Kết thúc PL 01-4B/GTGT -->
		
    	</xsl:template>		
</xsl:stylesheet>