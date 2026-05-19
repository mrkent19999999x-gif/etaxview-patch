<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC  ngày 6/11/2013 của  Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>
<!--start phu luc PL03_7_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL03_7_TNDN">	
			<xsl:variable name="pl03-7" select='HSoThueDTu/HSoKhaiThue/PLuc/PL03_7_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc">
		<xsl:with-param name="mauTKhai"   select="'03-7/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'THÔNG TIN VỀ GIAO DỊCH LIÊN KẾT'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN )'"/>
	  </xsl:call-template>				
					<div class="ndungtkhai_div">	
					<div class="content">
						<div class="align-l"><b>PHẦN A. THÔNG TIN VỀ CÁC BÊN LIÊN KẾT.</b></div>
							<br/>
							<table class="tkhai_table">
								   <tr>
									 <td class="align-c"><b>STT</b></td>
									 <td class="align-c"><b>Tên bên liên kết</b></td>
									 <td class="align-c"><b>Quốc gia</b></td>
									 <td class="align-c"><b>Mã số thuế</b></td>
									 <td class="align-c" colspan="13"><b>Hình thức liên kết</b></td>
								  </tr>
								   <tr>
									 <td class="align-c" rowspan="2">(1)</td>
									 <td class="align-c" rowspan="2">(2)</td>
									 <td class="align-c" rowspan="2">(3)</td>
									 <td class="align-c" rowspan="2">(4)</td>
									 <td class="align-c" colspan="13">(5)</td>   
								   </tr>
								   <tr>
								     <td class="align-c">A</td>
								     <td class="align-c">B</td>
								     <td class="align-c">C</td>
								     <td class="align-c">D</td>
								     <td class="align-c">E</td>
								     <td class="align-c">F</td>
								     <td class="align-c">G</td>
								     <td class="align-c">H</td>
								     <td class="align-c">I</td>
								     <td class="align-c">J</td>
								     <td class="align-c">K</td>
								     <td class="align-c">L</td>
								     <td class="align-c">M</td>
								   </tr>
								   <xsl:for-each select="$pl03-7/TTinCacBenLKet/moiQHeVoiTungLKet">
									<xsl:variable name="currentRows" select='position()' />
								   <tr>
									 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
									 <td class="align-l"><xsl:value-of select="tenLKet"/></td>
									 <td class="align-l"><xsl:value-of select="quocGia"/></td>
									 <td class="align-c"><xsl:value-of select="mstLKet"/></td>									 
									 <td class="align-c">[<xsl:if test="ctA_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctB_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctC_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctD_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctE_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctF_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctG_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctH_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctI_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctJ_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctK_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctL_GCN = 'true' ">x</xsl:if>]</td>
									 <td class="align-c">[<xsl:if test="ctM_GCN = 'true' ">x</xsl:if>]</td>
									</tr>
									</xsl:for-each>
							   </table>
							   <br/>
							<div class="align-l"> <b>PHẦN B. THÔNG TIN XÁC ĐỊNH GIÁ THỊ TRƯỜNG ĐỐI VỚI GIAO DỊCH LIÊN KẾT</b></div>
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
							 <tr>
								<td class="align-c" rowspan="2"><b>STT</b></td>
								<td class="align-c" rowspan="2"><b>Nội dung</b></td>
								<td class="align-c" colspan="4"><b>Doanh thu, thu nhập </b></td>
								<td class="align-c" colspan="4"><b>Chi phí</b></td>
	                            <td class="align-c" rowspan="2"><b>Lợi nhuận tăng do xác định lại theo giá thị trường</b></td>									
							 </tr>
							 <tr>
								 <td class="align-c"><b>Giá trị ghi nhận theo sổ sách kế toán</b></td>
								 <td class="align-c"><b>Giá trị xác định lại theo giá thị trường</b></td>
								 <td class="align-c"><b>Chênh lệch</b></td>
								 <td class="align-c"><b>Phương pháp xác định giá</b></td>
								 <td class="align-c"><b>Giá trị ghi nhận theo sổ sách kế toán </b></td>
								 <td class="align-c"><b>Giá trị xác định lại theo giá thị trường</b></td>
								 <td class="align-c"><b>Chênh lệch</b></td>
								 <td class="align-c"><b>Phương pháp xác định giá</b></td>
							   </tr>
							   <tr>
							     <td class="align-c">(1)</td>
							     <td class="align-c">(2)</td>
							     <td class="align-c">(3)</td>
							     <td class="align-c">(4)</td>
							     <td class="align-c">(5)=(4)-(3)</td>
							     <td class="align-c">(6)</td>
							     <td class="align-c">(7)</td>
							     <td class="align-c">(8)</td>
							     <td class="align-c">(9)=(7)-(8)</td>
							     <td class="align-c">(10)</td>
							     <td class="align-c">(11) =(5)+(9)</td>
							     </tr>
							<tr >
							   <td class="align-c"><b>I</b></td>
							   <td class="align-l"><b>Tổng giá trị giao dịch phát sinh từ hoạt động kinh doanh</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuSSKTCTI"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTI"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuCLechCTI"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTI"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTI"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiCLechCTI"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongLoiNhuanCTI"/></b></td>							   
							</tr>
							<tr >
							   <td class="align-c"><b>II</b></td>
							   <td class="align-l"><b>Tổng giá trị giao dịch phát sinh từ hoạt động liên kết</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDThuCLechCTII"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII"/></b></td>			
							</tr>
							<tr >
							   <td class="align-c"><b>1</b></td>
							   <td class="align-l"><b>Hàng hoá</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHSSKTCTII_1"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHGiaTTCTII_1"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHCLechCTII_1"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHCPhiSSKTCTII_1"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHCPhiGiaTTCTII_1"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHCPhiCLechCTII_1"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongHHLoiNhuanCTII_1"/></b></td>			
							</tr>
							<tr >
							   <td class="align-c"><i>1.1</i></td>
							   <td class="align-l"><i>Hàng hoá hình thành TSCĐ</i></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHSSKTCTII_1_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHGiaTTCTII_1_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCLechCTII_1_1"/></td>
							   <td class="align-r"></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiSSKTCTII_1_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiGiaTTCTII_1_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiCLechCTII_1_1"/></td>							   							   
							   <td class="align-r"></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHLoiNhuanCTII_1_1"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinHHoaHThanhTSCD/hHoaHThanhTSCD">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">1.1.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_1_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_1_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_1_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_1_1"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>1.2</i></td>
							   <td class="align-l"><i>Hàng hoá không hình thành TSCĐ</i></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHSSKTCTII_1_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHGiaTTCTII_1_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCLechCTII_1_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiSSKTCTII_1_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiGiaTTCTII_1_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHCPhiCLechCTII_1_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongHHLoiNhuanCTII_1_2"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinHHoaKhongHThanhTSCD/hHoaKhongHThanhTSCD">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">1.2.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_1_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_1_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_1_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_1_2"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><b>2</b></td>
							   <td class="align-l"><b>Dịch vụ</b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuSSKTCTII_2"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuGiaTTCTII_2"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuCLechCTII_2"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuCPhiSSKTCTII_2"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuCPhiGiaTTCTII_2"/></b></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuCPhiCLechCTII_2"/></b></td>							   							   
							   <td class="align-r"></td>
							   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-7/tongDVuLoiNhuanCTII_2"/></b></td>			
							</tr>
							<tr >
							   <td class="align-c"><i>2.1</i></td>
							   <td class="align-l"><i>Nghiên cứu, phát triển</i></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_1"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_1"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_1"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinNghienCuuPhatTrien/nghienCuuPhatTrien">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							      <td class="align-c">2.1.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_1"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>2.2</i></td>
							   <td class="align-l"><i>Quảng cáo, tiếp thị</i></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_2"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinQuangCaoTiepThi/quangCaoTiepThi">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">2.2.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_2"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>2.3</i></td>
							   <td class="align-l"><i>Quản lý kinh doanh và tư vấn, đào tạo</i></td>
						      <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_3"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_3"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_3"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_3"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_3"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_3"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_3"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinQLyKDoanhTVDT/qLyKDoanhTVDT">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">2.3.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_3"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_3"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_3"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_3"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>2.4</i></td>
							   <td class="align-l"><i>Hoạt động tài chính</i></td>
						      <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_4"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_4"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_4"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_4"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_4"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_4"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_4"/></td>
							</tr>
							<tr >
							   <td class="align-c">2.4.1</td>
							   <td class="align-l">Tiền bản quyền và các khoản tương tự</td>
						      <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_4_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_4_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_4_1"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_4_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_4_1"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_4_1"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_4_1"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinTienBanQuyen/tienBanQuyen">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">2.4.1.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_4_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_4_1"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_4_1"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_4_1"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>2.4.2</i></td>
							   <td class="align-l"><i>Lãi vay</i></td>
						      <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_4_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_4_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_4_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_4_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_4_2"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_4_2"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_4_2"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinLaiVay/laiVay">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">2.4.2.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_4_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_4_2"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_4_2"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_4_2"/></td>
								</tr>
								</xsl:for-each>
							<tr >
							   <td class="align-c"><i>2.5</i></td>
							   <td class="align-l"><i>Dịch vụ khác</i></td>
						      <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuSSKTCTII_2_5"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuGiaTTCTII_2_5"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongDThuCLechCTII_2_5"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiSSKTCTII_2_5"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiGiaTTCTII_2_5"/></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongCPhiCLechCTII_2_5"/></td>							   							   
							   <td></td>
							   <td class="number align-r"><xsl:value-of select="$pl03-7/tongLoiNhuanCTII_2_5"/></td>
							</tr>
							<xsl:for-each select="$pl03-7/TTinDichVuKhac/dichVuKhac">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
								 <td class="align-c">2.5.<xsl:value-of select="$currentRows" /></td>
								 <td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuSSKT_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuGiaTT_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriDThuCLech_ctII_2_5"/></td>
								 <td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiSSKT_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiGiaTT_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriCPhiCLech_ctII_2_5"/></td>
								 <td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_5"/></td>
								 <td class="number align-r"><xsl:value-of select="gtriLoiNhuan_ctII_2_5"/></td>
								</tr>
								</xsl:for-each>
						   </table>
                             </div>
					</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>						
			<xsl:call-template name="tkhaiFooter"/>	
			<div><i><b><u>Ghi chú:</u></b> </i></div>
			<div><i>- Đề nghị doanh nghiệp đọc kỹ Hướng dẫn kê khai thông tin về giao dịch liên kết để xác định đủ và chính xác các thông tin ghi vào tờ khai này;</i></div>
			<div><i>- Những cột chỉ tiêu nào không có thông tin thì bỏ trống. </i></div>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
<!--end phu luc PL03_7_TNDN-->
	   
	</xsl:template>		
</xsl:stylesheet>