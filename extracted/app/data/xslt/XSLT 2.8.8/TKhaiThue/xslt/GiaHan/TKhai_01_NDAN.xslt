<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính)'" />
			<xsl:call-template name="tkhaiHeader_01_NDAN">
				<xsl:with-param name="mauTKhai"   select="'01/NDAN'"/>
				<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			</xsl:call-template>
	    		
		<div style="width:90%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ nhận thông báo: <xsl:value-of select="$tkchinh/dia_ChiNhanTB"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/></div>	
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ quy định tại Điều 66 Thông tư số 80/2021/TT-BTC ngày 29 tháng 09 năm 2021 
		của Bộ trưởng Bộ Tài chính;</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ thư bảo lãnh số <xsl:value-of select="$tkchinh/so_ThuBaoLanh"/> 
		ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThuBaoLanh,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThuBaoLanh,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_ThuBaoLanh,'yyyy')"/> của <xsl:value-of select="$tkchinh/ten_ToChucBaoLanh"/>;</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tính đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_TongTienNoThue,'dd')"/> 
		tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_TongTienNoThue,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay_TongTienNoThue,'yyyy')"/>, <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
		có tổng số tiền thuế nợ là: <xsl:value-of select="ihtkk:formatNumber($tkchinh/tong_TienNoThue)"/> đồng.</div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> đề nghị nộp dần tiền thuế nợ theo từng tháng, từ 
		ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/tu_NgayDeNghiNopDan,'dd')"/> 
		tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/tu_NgayDeNghiNopDan,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/tu_NgayDeNghiNopDan,'yyyy')"/> đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/den_NgayDeNghiNopDan,'dd')"/> 
		tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/den_NgayDeNghiNopDan,'mm')"/> 
		năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/den_NgayDeNghiNopDan,'yyyy')"/>, cụ thể như sau:</div>
		
		<div class="ndungtkhai_div">
            <div class="content">
               <div class="align-r">Đơn vị tiền: Đồng Việt Nam</div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>STT</b></td>
						<td class="align-c"><b>Kỳ nộp dần</b></td>
						<td class="align-c"><b>Khoản tiền thuế nợ được nộp dần</b></td>
						<td class="align-c"><b>Tiểu mục</b></td>
						<td class="align-c"><b>Số tiền nộp dần theo tháng</b></td>
						<td class="align-c"><b>Thời hạn nộp dần </b></td>
						<td class="align-c"><b>Ghi chú</b></td>
					</tr>				
					<tr>
						<td class="align-c">(1)</td>
						<td class="align-c">(2)</td>
						<td class="align-c">(3)</td>
						<td class="align-c">(4)</td>
						<td class="align-c">(5)</td>
						<td class="align-c">(6)</td>
						<td class="align-c">(7)</td>
					</tr>
					<xsl:for-each select="$tkchinh/DeNghiNopDanTheoThang/CTietDeNghiNopDan">
						<xsl:variable name="currentRows1" select='position()'/>	
					    <xsl:for-each select="NDungKyNopDan/CTietNopDanTheoThang">
					    		<xsl:variable name="currentRows2" select='position()'/>	
					        <xsl:if test="$currentRows2 = 1">
					        <tr>
						          <td rowspan="{last()+1}" class="align-c"><xsl:value-of select="$currentRows1" /></td>
						          <td rowspan="{last()+1}" class="align-l">
						            <xsl:value-of select="ancestor::CTietDeNghiNopDan[1]/ky_NopDan"/>
						          </td>
						          <td class="align-l">Tổng cộng</td>
						          <td></td>
								  <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(ancestor::NDungKyNopDan[1]/tong_SoTienNopDanTheoThang)"/></td>
								  <td></td>
								  <td></td>
							 </tr>
					        </xsl:if>
					          <tr>
					        	<td class="align-j"><xsl:value-of select="ten_LoaiThue"/></td>
								<td class="align-c"><xsl:value-of select="ma_TieuMuc"/></td>
								<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(so_TienNopDan)"/></td>
								<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(thoi_HanNop,'dd/mm/yyyy')"/></td>
								<td class="align-j"><xsl:value-of select="ghi_Chu"/></td>
					          </tr>
					       
					    </xsl:for-each>
					  </xsl:for-each>
					<tr>
						<td></td>
						<td colspan="3" class="align-c"><b>Tổng cộng</b></td>
						<td class="align-r">
							<b><xsl:value-of select="ihtkk:formatNumber($tkchinh/DeNghiNopDanTheoThang/tong_SoTienDeNghi)"/></b>
						</td>						
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>		
		</div><br/>	
		
		<div style="text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$ttkthue/NNT/tenNNT"/> cam kết nộp đầy đủ số tiền thuế nợ 
		phải nộp dần theo tháng và số tiền chậm nộp phát sinh (nếu có) đúng thời hạn quy định.</div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tài liệu gửi kèm:</div>
		<div><xsl:for-each select="$tkchinh/TaiLieuGuiKem/TaiLieu">
				<xsl:variable name="currentRows1" select='position()'/>																
				<div style="padding-top: 4pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(<xsl:value-of select="$currentRows1" />) <xsl:value-of select="tenTaiLieu"/></div>													 
			</xsl:for-each>
		</div>
		
		<xsl:call-template name="tkhaiFooter_01_NDAN"></xsl:call-template>
			<table style="page-break-inside: avoid;" >
				<tr>
					<td>
						<div id="sigDiv"></div>
					</td>
				</tr>
			</table>
	</xsl:template>		
</xsl:stylesheet>
