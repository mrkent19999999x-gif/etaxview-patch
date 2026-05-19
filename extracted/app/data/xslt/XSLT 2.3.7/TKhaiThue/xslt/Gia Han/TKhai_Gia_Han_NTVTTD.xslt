<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:template name="tokenizeString">
<xsl:param name="list"/>
<xsl:param name="delimiter"/>
<xsl:param name="index"/>
<xsl:choose>
    <xsl:when test="contains($list, $delimiter)">      
        <xsl:variable name="listLength" select="string-length($list)" />
        <xsl:variable name="listLengthWithoutDelimiters" select="string-length(translate($list, $delimiter,''))" />
        <xsl:variable name="noOfDelimiters" select="($listLength - $listLengthWithoutDelimiters)" />
        <xsl:if test="$index = 3">
			<xsl:if test="$noOfDelimiters = 3">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
			</xsl:if>
        </xsl:if>
      <xsl:if test="$index = 2">
			<xsl:if test="$noOfDelimiters = 3">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
			</xsl:if>
        </xsl:if>
        <xsl:if test="$index = 1">
			<xsl:if test="$noOfDelimiters = 3">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 2">
				
			</xsl:if>
			<xsl:if test="$noOfDelimiters = 1">
				<xsl:value-of select="substring-before($list,$delimiter)"/>
			</xsl:if>
			 
        </xsl:if>
       <xsl:if test="$index = 0">
		   <xsl:if test="$noOfDelimiters = 3">
					
				</xsl:if>
				<xsl:if test="$noOfDelimiters = 2">
					
				</xsl:if>
				<xsl:if test="$noOfDelimiters = 1">
						<xsl:value-of select="substring-after($list,$delimiter)"/>
				</xsl:if>
			

					 
				</xsl:if>
       <!-- <xsl:if test="$noOfDelimiters >= 1">, </xsl:if>-->
        <xsl:call-template name="tokenizeString">
            <xsl:with-param name="list" select="substring-after($list,$delimiter)"/>
            <xsl:with-param name="delimiter" select="$delimiter"/>
             <xsl:with-param name="index" select="$index"/>
        </xsl:call-template>
    </xsl:when>
     <xsl:otherwise>
        <xsl:choose>
            <xsl:when test="$list = ''">
                <xsl:text/>
            </xsl:when>
            <!--<xsl:otherwise>
                 <xsl:value-of select="$list"/>
            </xsl:otherwise>-->
        </xsl:choose>
    </xsl:otherwise>
</xsl:choose>
</xsl:template>

	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		 <xsl:call-template name="tkhaiHeaderGH">
		 
		<xsl:with-param name="mauTKhai"   select="''"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>  

   
<div class="ndungtkhai_div">
<div class="content">
<div class="align-l">[07] Loại thuế đề nghị gia hạn:</div>
<div>a) [<xsl:if test="$tkchinh/CT07/ct_a = 'true' or $tkchinh/CT07/ct_a = '1'" >x</xsl:if>] Thuế GTGT của doanh nghiệp, tổ chức</div>
<div>b) [<xsl:if test="$tkchinh/CT07/ct_b = 'true' or $tkchinh/CT07/ct_b = '1'" >x</xsl:if>] Thuế TNDN của doanh nghiệp, tổ chức</div>
<div>c) [<xsl:if test="$tkchinh/CT07/ct_c = 'true' or $tkchinh/CT07/ct_c = '1'" >x</xsl:if>] Thuế GTGT và thuế TNCN của hộ gia đình, cá nhân kinh doanh </div>
<div>d) [<xsl:if test="$tkchinh/CT07/ct_d = 'true' or $tkchinh/CT07/ct_d = '1'" >x</xsl:if>] Tiền thuê đất (kê chi tiết địa chỉ từng khu đất thuê thuộc đối tượng gia hạn tiền thuê đất) </div>
    <table class="tkhai_table">
        <tr>
            <td class="align-c" rowspan="2"><b>STT</b></td>
            <td class="align-c" colspan="4"><b>Khu đất thuê</b></td>
		 </tr>
		 <tr>
            <td class="align-c"><b>CQT quản lý khu đất</b></td>
            <td class="align-c"><b>Tỉnh/Thành phố</b></td>
            <td class="align-c"><b>Quận/Huyện</b></td>
            <td class="align-c"><b>Địa chỉ</b></td>
		 </tr>
			
		 <xsl:for-each select="$tkchinh/CT07/KhuDat/CTietKhuDat">
			 <xsl:if test="contains(khuDatThue, '#')">
				<xsl:variable name="maCQT">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="khuDatThue"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'3'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="maTinh">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="khuDatThue"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'2'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="maHuyen">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="khuDatThue"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'1'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="diaChi">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="khuDatThue"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'0'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
						<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
								 <td class="align-l">
								 		<xsl:value-of select="ihtkk:getTenCT($maCQT)" />
								 </td>
								 <td class="align-l">			 
										<xsl:value-of select="ihtkk:getTinh($maTinh)" />
								 </td>
								 <td class="align-l">			 
									<xsl:value-of select="ihtkk:getHuyen($maHuyen)" />
								 </td>
								 <td class="align-l">			 
									<xsl:value-of select="$diaChi" />
								 </td>
							</tr>
			</xsl:if>	
			<xsl:if test="not(contains(khuDatThue, '#'))">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td  class="align-c"><xsl:value-of select="$currentRows" /></td>
								 <td class="align-l">
								 		
								 </td>
								 <td class="align-l">			 
										
								 </td>
								 <td class="align-l">			 
									
								 </td>
								 <td class="align-l">			 
									<xsl:value-of select="khuDatThue" />
								 </td>
							</tr>
			</xsl:if>			
 		</xsl:for-each>		
	 </table>
 <div class="align-l">[08] Trường hợp được gia hạn:</div>
  <div class="align-l"><b>I. Doanh nghiệp nhỏ và siêu nhỏ</b></div>
   <div class="align-l">[<xsl:if test="$tkchinh/CT08/CT_I/ct_a = 'true' or $tkchinh/CT08/CT_I/ct_a = '1'" >x</xsl:if>] a) Doanh nghiệp nhỏ:</div>
     <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Lĩnh vực hoạt động</b></td>
            <td class="align-c"><b>Số lao động</b></td>
            <td class="align-c"><b>Doanh thu (VNĐ) </b></td>
            <td class="align-c"><b>Nguồn vốn (VNĐ)</b></td>
		 </tr>
		 <xsl:for-each select="$tkchinh/CT08/CT_I/DNNho/CTietDNNho">
			<xsl:if test="contains(linhVucHDong, '#')">
				<xsl:variable name="tenLinhVuc">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="linhVucHDong"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'0'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
						<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-l"><xsl:value-of select="$tenLinhVuc"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLaoDong)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nguonVon)"/></td>
							</tr>	
			</xsl:if>
			<xsl:if test="not(contains(linhVucHDong, '#'))">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-l"><xsl:value-of select="linhVucHDong"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLaoDong)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nguonVon)"/></td>
							</tr>	
			</xsl:if>
 		</xsl:for-each>		
	 </table>
	 
	  <div class="align-l">[<xsl:if test="$tkchinh/CT08/CT_I/ct_b = 'true' or $tkchinh/CT08/CT_I/ct_b = '1'" >x</xsl:if>] b) Doanh nghiệp siêu nhỏ:</div>
     <table class="tkhai_table">
        <tr>
            <td class="align-c"><b>Lĩnh vực hoạt động</b></td>
            <td class="align-c"><b>Số lao động</b></td>
            <td class="align-c"><b>Doanh thu (VNĐ) </b></td>
            <td class="align-c"><b>Nguồn vốn (VNĐ)</b></td>
		 </tr>
		 <xsl:for-each select="$tkchinh/CT08/CT_I/DNSieuNho/CTietDNSieuNho">
			<xsl:if test="contains(linhVucHDong, '#')">
				<xsl:variable name="tenLinhVuc2">
					<xsl:call-template name="tokenizeString">
									<xsl:with-param name="list"><xsl:value-of select="linhVucHDong"/></xsl:with-param>
									<xsl:with-param name="delimiter"> <xsl:value-of select="'#'" /> </xsl:with-param>
									<xsl:with-param name="index"> <xsl:value-of select="'0'" /> </xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="currentRows" select='position()' />
					<tr>
						<td class="align-l"><xsl:value-of select="$tenLinhVuc2"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLaoDong)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu)"/></td>
						<td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nguonVon)"/></td>
					</tr>		
			</xsl:if>
			<xsl:if test="not(contains(linhVucHDong, '#'))">
				<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-l"><xsl:value-of select="linhVucHDong"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(soLaoDong)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(doanhThu)"/></td>
								 <td class="align-r"><xsl:value-of select="ihtkk:formatNumber(nguonVon)"/></td>
							</tr>	
			</xsl:if>
 		</xsl:for-each>	
			
			
	 </table>
 <div><b>II. Doanh nghiệp, tổ chức, hộ gia đình, cá nhân kinh doanh hoạt động trong các lĩnh vực:</b></div>
 <div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_a = 'true' or $tkchinh/CT08/CT_II/ct_a = '1'" >x</xsl:if>] a) Nông nghiệp, lâm nghiệp và thủy sản;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_b = 'true' or $tkchinh/CT08/CT_II/ct_b = '1'" >x</xsl:if>] b) Sản xuất, chế biến thực phẩm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_c = 'true' or $tkchinh/CT08/CT_II/ct_c = '1'" >x</xsl:if>] c) Dệt;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_d = 'true' or $tkchinh/CT08/CT_II/ct_d = '1'" >x</xsl:if>] d) Sản xuất trang phục;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_e = 'true' or $tkchinh/CT08/CT_II/ct_e = '1'" >x</xsl:if>] e) Sản xuất da và các sản phẩm có liên quan;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_f = 'true' or $tkchinh/CT08/CT_II/ct_f = '1'" >x</xsl:if>] f) Chế biến gỗ và sản xuất sản phẩm từ gỗ, tre, nứa (trừ giường, tủ, bàn, ghế); sản xuất sản phẩm từ rơm, rạ và vật liệu tết bện;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_g = 'true' or $tkchinh/CT08/CT_II/ct_g = '1'" >x</xsl:if>] g) Sản xuất giấy và sản phẩm từ giấy;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_h = 'true' or $tkchinh/CT08/CT_II/ct_h = '1'" >x</xsl:if>] h) Sản xuất sản phẩm từ cao su và Plastic;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_i = 'true' or $tkchinh/CT08/CT_II/ct_i = '1'" >x</xsl:if>] i) Sản xuất sản phẩm từ khoáng phi kim loại khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_j = 'true' or $tkchinh/CT08/CT_II/ct_j = '1'" >x</xsl:if>] j) Sản xuất kim loại;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_k = 'true' or $tkchinh/CT08/CT_II/ct_k = '1'" >x</xsl:if>] k) Gia công cơ khí; xử lý và tráng phủ kim loại;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_l = 'true' or $tkchinh/CT08/CT_II/ct_l = '1'" >x</xsl:if>] l) Sản xuất sản phẩm điện tử, máy vi tính và sản phẩm quang học;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_m = 'true' or $tkchinh/CT08/CT_II/ct_m = '1'" >x</xsl:if>] m) Sản xuất ô tô và xe có động cơ khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_n = 'true' or $tkchinh/CT08/CT_II/ct_n = '1'" >x</xsl:if>] n) Sản xuất giường, tủ, bàn, ghế;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_p = 'true' or $tkchinh/CT08/CT_II/ct_p = '1'" >x</xsl:if>] p) Xây dựng;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_q = 'true' or $tkchinh/CT08/CT_II/ct_q = '1'" >x</xsl:if>] q) Vận tải kho bãi;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_r = 'true' or $tkchinh/CT08/CT_II/ct_r = '1'" >x</xsl:if>] r) Dịch vụ lưu trú và ăn uống;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_s = 'true' or $tkchinh/CT08/CT_II/ct_s = '1'" >x</xsl:if>] s) Giáo dục và đào tạo;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_t = 'true' or $tkchinh/CT08/CT_II/ct_t = '1'" >x</xsl:if>] t) Y tế và hoạt động trợ giúp xã hội;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_u = 'true' or $tkchinh/CT08/CT_II/ct_u = '1'" >x</xsl:if>] u) Hoạt động kinh doanh bất động sản;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_v = 'true' or $tkchinh/CT08/CT_II/ct_v = '1'" >x</xsl:if>] v) Hoạt động dịch vụ lao động và việc làm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_w = 'true' or $tkchinh/CT08/CT_II/ct_w = '1'" >x</xsl:if>] w) Hoạt động của các đại lý du lịch, kinh doanh tua du lịch và các dịch vụ hỗ trợ, liên quan đến quảng bá và tổ chức tua du lịch;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_x = 'true' or $tkchinh/CT08/CT_II/ct_x = '1'" >x</xsl:if>] x) Hoạt động sáng tác, nghệ thuật và giải trí;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_y = 'true' or $tkchinh/CT08/CT_II/ct_y = '1'" >x</xsl:if>] y) Hoạt động của thư viện, lưu trữ, bảo tàng và các hoạt động văn hóa khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_z = 'true' or $tkchinh/CT08/CT_II/ct_z = '1'" >x</xsl:if>] z) Hoạt động thể thao, vui chơi giải trí;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_a1 = 'true' or $tkchinh/CT08/CT_II/ct_a1 = '1'" >x</xsl:if>] a1) Hoạt động chiếu phim;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_b1 = 'true' or $tkchinh/CT08/CT_II/ct_b1 = '1'" >x</xsl:if>] b1) Sản xuất sản phẩm công nghiệp hỗ trợ ưu tiên phát triển;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_c1 = 'true' or $tkchinh/CT08/CT_II/ct_c1 = '1'" >x</xsl:if>] c1) Sản xuất sản phẩm cơ khí trọng điểm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_d1 = 'true' or $tkchinh/CT08/CT_II/ct_d1 = '1'" >x</xsl:if>] d1) Tổ chức tín dụng, chi nhánh ngân hàng nước ngoài;</div>
  </div>	
 </div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>	  	
<xsl:call-template name="tkhaiFooterGH">   
</xsl:call-template>
<div id="sigDiv"></div>
</td>
</tr>
</table>  
<br/><br/><br/>
</xsl:template>		
</xsl:stylesheet>