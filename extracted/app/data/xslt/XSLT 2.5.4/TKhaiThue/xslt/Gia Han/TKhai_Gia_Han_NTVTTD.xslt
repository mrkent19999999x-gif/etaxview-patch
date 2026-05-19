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
             <td class="align-c" colspan="3"><b>Quyết định/Hợp đồng</b></td>
		 </tr>
		 <tr>
            <td class="align-c"><b>CQT quản lý khu đất</b></td>
            <td class="align-c"><b>Tỉnh/Thành phố</b></td>
            <td class="align-c"><b>Quận/Huyện</b></td>
            <td class="align-c"><b>Địa chỉ</b></td>
            <td class="align-c"><b>Số</b></td>
			<td class="align-c"><b>Kí hiệu</b></td>
			<td class="align-c"><b>Ngày</b></td>
		 </tr>
			<xsl:for-each select="$tkchinh/CT07/KhuDat/CTietKhuDat">
									<xsl:variable name="currentRows" select='position()' />
					    <tr>
							 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							 <td class="align-l"><xsl:value-of select="ten_CQT_QLy"/></td>
							 <td class="align-c"><xsl:value-of select="ten_Tinh"/></td>
							 <td class="align-l"><xsl:value-of select="ten_Huyen"/></td>
							 <td class="align-c"><xsl:value-of select="diaChi_KhuDat"/></td>
							<td class="align-c"><xsl:value-of select="soThongBao"/></td>
							<td class="align-c"><xsl:value-of select="kiHieu"/></td>
							<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay,'dd/mm/yyyy')"/></td>
						</tr>
			</xsl:for-each>
		

	 </table>
 <div class="align-l">[08] Trường hợp được gia hạn:</div>
  <div class="align-l"><b>I. Doanh nghiệp nhỏ và siêu nhỏ</b></div>
   <div class="align-l">[<xsl:if test="$tkchinh/CT08/CT_I/ct_a = 'true' or $tkchinh/CT08/CT_I/ct_a = '1'" >x</xsl:if>] 1) Doanh nghiệp nhỏ:</div>
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
	 
	  <div class="align-l">[<xsl:if test="$tkchinh/CT08/CT_I/ct_b = 'true' or $tkchinh/CT08/CT_I/ct_b = '1'" >x</xsl:if>] 2) Doanh nghiệp siêu nhỏ:</div>
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
 <div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_1 = 'true' or $tkchinh/CT08/CT_II/ct_1 = '1'" >x</xsl:if>] 1) Nông nghiệp, lâm nghiệp và thủy sản;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_2 = 'true' or $tkchinh/CT08/CT_II/ct_2 = '1'" >x</xsl:if>] 2) Sản xuất, chế biến thực phẩm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_3 = 'true' or $tkchinh/CT08/CT_II/ct_3 = '1'" >x</xsl:if>] 3) Dệt;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_4 = 'true' or $tkchinh/CT08/CT_II/ct_4 = '1'" >x</xsl:if>] 4) Sản xuất trang phục;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_5 = 'true' or $tkchinh/CT08/CT_II/ct_5 = '1'" >x</xsl:if>] 5) Sản xuất da và các sản phẩm có liên quan;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_6 = 'true' or $tkchinh/CT08/CT_II/ct_6 = '1'" >x</xsl:if>] 6) Chế biến gỗ và sản xuất sản phẩm từ gỗ, tre, nứa (trừ giường, tủ, bàn, ghế); sản xuất sản phẩm từ rơm, rạ và vật liệu tết bện;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_7 = 'true' or $tkchinh/CT08/CT_II/ct_7= '1'" >x</xsl:if>] 7) Sản xuất giấy và sản phẩm từ giấy;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_8 = 'true' or $tkchinh/CT08/CT_II/ct_8 = '1'" >x</xsl:if>] 8) Sản xuất sản phẩm từ cao su và Plastic;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_9 = 'true' or $tkchinh/CT08/CT_II/ct_9 = '1'" >x</xsl:if>] 9) Sản xuất sản phẩm từ khoáng phi kim loại khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_10 = 'true' or $tkchinh/CT08/CT_II/ct_10 = '1'" >x</xsl:if>] 10) Sản xuất kim loại;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_11 = 'true' or $tkchinh/CT08/CT_II/ct_11 = '1'" >x</xsl:if>] 11) Gia công cơ khí; xử lý và tráng phủ kim loại;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_12 = 'true' or $tkchinh/CT08/CT_II/ct_12 = '1'" >x</xsl:if>] 12) Sản xuất sản phẩm điện tử, máy vi tính và sản phẩm quang học;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_13 = 'true' or $tkchinh/CT08/CT_II/ct_13 = '1'" >x</xsl:if>] 13) Sản xuất ô tô và xe có động cơ khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_14 = 'true' or $tkchinh/CT08/CT_II/ct_14 = '1'" >x</xsl:if>] 14) Sản xuất giường, tủ, bàn, ghế;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_15 = 'true' or $tkchinh/CT08/CT_II/ct_15 = '1'" >x</xsl:if>] 15) Xây dựng;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_16 = 'true' or $tkchinh/CT08/CT_II/ct_16 = '1'" >x</xsl:if>] 16) Vận tải kho bãi;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_17 = 'true' or $tkchinh/CT08/CT_II/ct_17 = '1'" >x</xsl:if>] 17) Dịch vụ lưu trú và ăn uống;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_18 = 'true' or $tkchinh/CT08/CT_II/ct_18 = '1'" >x</xsl:if>] 18) Giáo dục và đào tạo;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_19 = 'true' or $tkchinh/CT08/CT_II/ct_19 = '1'" >x</xsl:if>] 19) Y tế và hoạt động trợ giúp xã hội;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_20 = 'true' or $tkchinh/CT08/CT_II/ct_20= '1'" >x</xsl:if>] 20) Hoạt động kinh doanh bất động sản;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_21 = 'true' or $tkchinh/CT08/CT_II/ct_21= '1'" >x</xsl:if>] 21) Hoạt động dịch vụ lao động và việc làm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_22 = 'true' or $tkchinh/CT08/CT_II/ct_22 = '1'" >x</xsl:if>] 22) Hoạt động của các đại lý du lịch, kinh doanh tua du lịch và các dịch vụ hỗ trợ, liên quan đến quảng bá và tổ chức tua du lịch;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_23 = 'true' or $tkchinh/CT08/CT_II/ct_23 = '1'" >x</xsl:if>] 23) Hoạt động sáng tác, nghệ thuật và giải trí;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_24 = 'true' or $tkchinh/CT08/CT_II/ct_24 = '1'" >x</xsl:if>] 24) Hoạt động của thư viện, lưu trữ, bảo tàng và các hoạt động văn hóa khác;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_25 = 'true' or $tkchinh/CT08/CT_II/ct_25 = '1'" >x</xsl:if>] 25) Hoạt động thể thao, vui chơi giải trí;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_26 = 'true' or $tkchinh/CT08/CT_II/ct_26 = '1'" >x</xsl:if>] 26) Hoạt động chiếu phim;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_27 = 'true' or $tkchinh/CT08/CT_II/ct_27 = '1'" >x</xsl:if>] 27) Sản xuất sản phẩm công nghiệp hỗ trợ ưu tiên phát triển;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_28 = 'true' or $tkchinh/CT08/CT_II/ct_28 = '1'" >x</xsl:if>] 28) Sản xuất sản phẩm cơ khí trọng điểm;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_29 = 'true' or $tkchinh/CT08/CT_II/ct_29 = '1'" >x</xsl:if>] 29) Tổ chức tín dụng, chi nhánh ngân hàng nước ngoài;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_30 = 'true' or $tkchinh/CT08/CT_II/ct_30 = '1'" >x</xsl:if>] 30) Hoạt động xuất bản;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_31 = 'true' or $tkchinh/CT08/CT_II/ct_31 = '1'" >x</xsl:if>] 31) Hoạt động điện ảnh, sản xuất chương trình truyền hình, ghi âm và xuất bản âm nhạc;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_32 = 'true' or $tkchinh/CT08/CT_II/ct_32 = '1'" >x</xsl:if>] 32) Hoạt động phát thanh, truyền hình;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_33 = 'true' or $tkchinh/CT08/CT_II/ct_33 = '1'" >x</xsl:if>] 33) Lập trình máy vi tính, dịch vụ tư vấn và các hoạt động khác liên quan đến máy vi tính;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_34 = 'true' or $tkchinh/CT08/CT_II/ct_34 = '1'" >x</xsl:if>] 34) Hoạt động dịch vụ thông tin;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_35 = 'true' or $tkchinh/CT08/CT_II/ct_35 = '1'" >x</xsl:if>] 35) Khai thác dầu thô và khí đốt tự nhiên (không gia hạn đối với thuế thu nhập doanh nghiệp của dầu thô, condensate, khí thiên nhiên thu theo hiệp định, hợp đồng);</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_36 = 'true' or $tkchinh/CT08/CT_II/ct_36 = '1'" >x</xsl:if>] 36) Hoạt động dịch vụ hỗ trợ khai khoáng;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_37 = 'true' or $tkchinh/CT08/CT_II/ct_37 = '1'" >x</xsl:if>] 37) Sản xuất đồ uống;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_38 = 'true' or $tkchinh/CT08/CT_II/ct_38 = '1'" >x</xsl:if>] 38) In, sao chép bản ghi các loại;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_39= 'true' or $tkchinh/CT08/CT_II/ct_39 = '1'" >x</xsl:if>] 39) Sản xuất than cốc, sản phẩm dầu mỏ tinh chế;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_40 = 'true' or $tkchinh/CT08/CT_II/ct_40 = '1'" >x</xsl:if>] 40) Sản xuất hóa chất và sản phẩm hóa chất;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_41 = 'true' or $tkchinh/CT08/CT_II/ct_41 = '1'" >x</xsl:if>] 41) Sản xuất sản phẩm từ kim loại đúc sẵn (trừ máy móc, thiết bị);</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_42 = 'true' or $tkchinh/CT08/CT_II/ct_42 = '1'" >x</xsl:if>] 42) Sản xuất mô tô, xe máy;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_43 = 'true' or $tkchinh/CT08/CT_II/ct_43 = '1'" >x</xsl:if>] 43) Sửa chữa, bảo dưỡng và lắp đặt máy móc và thiết bị;</div>
<div>[<xsl:if test="$tkchinh/CT08/CT_II/ct_44 = 'true' or $tkchinh/CT08/CT_II/ct_44 = '1'" >x</xsl:if>] 44) Thoát nước và xử lý nước thải;</div>
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