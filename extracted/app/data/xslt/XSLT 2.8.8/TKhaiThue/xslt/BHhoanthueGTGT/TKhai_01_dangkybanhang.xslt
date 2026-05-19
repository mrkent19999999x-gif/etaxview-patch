<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="''" />
		<xsl:variable name="ghiChuPL" select="''"/>
		 <xsl:call-template name="tkhaiHeader_01_dangkybanhang">
		<xsl:with-param name="mauTKhai"   select="'Mẫu 2.10'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="ghuchuTK"   select="'THÔNG BÁO 
Về việc thực hiện hợp đồng dịch vụ với đại lý thuế'"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
			<td><xsl:value-of select="$tkchinh/ten_loaiGiayTo"/>: Số <xsl:value-of select="$tkchinh/soGiayTo"/>, Ngày cấp <td class="align-c"><xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayCap,'dd/mm/yyyy')"/></td>, Nơi cấp: <xsl:value-of select="$tkchinh/noiCap"/></td><br/> 
            <br>Ngành nghề kinh doanh: <xsl:value-of select="$tkchinh/ten_NganhNghe"/></br>
			<br><td>Nay,<xsl:value-of select="$ttkthue/NNT/tenNNT"/> đăng ký bán hàng hoàn thuế giá trị gia tăng cho người nước ngoài theo quy định tại Thông tư số 72/2014/TT-BTC ngày 30/5/2014, Thông tư số 92/2019/TT-BTC ngày 31/12/2019 sửa đổi, bổ sung Thông tư số 72/2014/TT-BTC ngày 30/5/2014 của Bộ trưởng Bộ Tài chính, tại các địa điểm sau:</td></br>
						       <table class="tkhai_table">
									<tr>
										<td class="align-c"><b>STT</b></td>								
										<td class="align-c"><b>Tên chi nhánh/cửa hàng/cửa hàng đại lý </b></td>
										<td class="align-c"><b>Mã số thuế</b></td>
										<td class="align-c"><b>Địa chỉ thuế</b></td>
										<td class="align-c"><b>Thông tin chữ ký số</b></td>
										<td class="align-c"><b>Cơ quan thuế quản lý trực tiếp chi nhánh/cửa hàng/cửa hàng đại lý</b></td>
									</tr>
			                        
				       
						<xsl:for-each select="$tkchinh/DiaDiemCuaHang/ChitietDiaDiemCuaHang">
								<xsl:variable name="currentRows" select='position()'/>
								<tr>
								<td class="align-c"><xsl:value-of select="$currentRows"/></td>
								<td class="align-l"><xsl:value-of select="tenCuaHang"/></td>
								
								<td class="align-c"><xsl:value-of select="mst"/></td>
								<td class="align-c"><xsl:value-of select="diaChi"/>, <xsl:value-of select="tenXaPhuong"/>, <xsl:value-of select="tenTinh"/></td>
								
								<td class="align-c"><xsl:value-of select="thongTinCKS"/></td>
								<td class="align-c"><xsl:value-of select="tenCQT"/></td>
								
								</tr>
	         		</xsl:for-each>	
					
					
                      </table>
					  <td><xsl:value-of select="$ttkthue/NNT/tenNNT"/> cam kết kinh doanh bán hàng hoàn thuế tại các địa điểm nêu trên, lập hóa đơn kiêm tờ khai hoàn thuế trên Hệ thống khi bán hàng hoặc chuyển dữ liệu hóa đơn kiêm tờ khai hoàn thuế đã lập đến Hệ thống và chịu trách nhiệm trước pháp luật về cam kết này</td><br/> 
            <br><xsl:value-of select="$ttkthue/NNT/tenNNT"/> kính đề nghị <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/> công nhận <xsl:value-of select="$ttkthue/NNT/tenNNT"/> là doanh nghiệp bán hàng hoàn thuế giá trị gia tăng cho người nước ngoài xuất cảnh</br>
								
                      
		</div>	
		</div>
		<xsl:call-template name="tkhaiFooter_01_dangkybanhang">
	</xsl:call-template>
	<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
</xsl:stylesheet>
