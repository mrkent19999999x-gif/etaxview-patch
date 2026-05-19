<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Mẫu số: GCN-01/QLT(Ban hành kèm theo Thông tư số 66 /2010 /TT-BTC ngày 22 tháng 4 năm 2010)'" />
	<xsl:variable name="ghiChuPL" select="''"/>
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL_GCN_01_TNDN">	
			<xsl:variable name="pl01_gcn" select='HSoThueDTu/HSoKhaiThue/PLuc/PL_GCN_01_TNDN' />
			<xsl:call-template name="tkhaiHeader-pluc">
				<xsl:with-param name="mauTKhai"   select="GCN-01/QLT"/>
				<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
				<xsl:with-param name="tenPL"   select="'BÁO CÁO TRÍCH, SỬ DỤNG QUỸ KHOA HỌC VÀ CÔNG NGHỆ'"/>
				<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN năm 2013)'"/>
			</xsl:call-template>
			<div class="ndungtkhai_div">	
					<div class="content">
						<div class="align-l"><b>PHẦN A. THÔNG TIN VỀ GIÁ TRỊ GIAO DỊCH LIÊN KẾT VÀ PHƯƠNG PHÁP XÁC ĐỊNH GIÁ</b></div>
						<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
						<br/>
						<table class="tkhai_table">
							<tr>
								<td class="align-c"><b>STT</b></td>
								<td class="align-c"><b>Chỉ tiêu</b></td>
								<td class="align-c" colspan="2"><b>Doanh thu, thu nhập khác </b></td>
								<td class="align-c" colspan="2"><b>Chi phí</b></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td class="align-c"><b>Giá trị</b><i>(đồng Việt Nam hoặc ngoại tệ…)</i></td>
								<td class="align-c"><b>Phương pháp xác định giá</b></td>
								<td class="align-c"><b>Giá trị</b><i>(đồng Việt Nam hoặc ngoại tệ…)</i></td>
								<td class="align-c"><b>Phương pháp xác định giá</b></td>
							</tr>
							<tr>
								<td class="align-c">(1)</td>
								<td class="align-c">(2)</td>
								<td class="align-c">(3)</td>
								<td class="align-c">(4)</td>
								<td class="align-c">(5)</td>
								<td class="align-c">(6)</td>
							</tr>
							<tr>
								<td  class="align-c"><b>I</b></td>
								<td class="align-l"><b>Tổng giá trị giao dịch phát sinh từ hoạt động kinh doanh</b></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThuCTI"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhiCTII"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>II</b></td>
								<td class="align-l"><b>Tổng giá trị giao dịch phát sinh từ hoạt động liên kết</b></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThuCTII"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhiCTI"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>1</b></td>
								<td class="align-l"><b>Hàng hoá</b></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_1"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_1"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>1.1</b></td>
								<td class="align-l"><i>Hàng hoá hình thành TSCĐ</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_1_1"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_1_1"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinHHoaHThanhTSCD/hHoaHThanhTSCD">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">1.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_1_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_1_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_1_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_1_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_1_1"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>1.2</b></td>
								<td class="align-l"><i>Hàng hoá không hình thành TSCĐ</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_1_2"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_1_2"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinHHoaKhongHThanhTSCD/hHoaKhongHThanhTSCD">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">1.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_1_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_1_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_1_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_1_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_1_2"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2</b></td>
								<td class="align-l"><b>Dịch vụ</b></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>2.1</b></td>
								<td class="align-l"><i>Nghiên cứu, phát triển</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_1"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_1"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinNghienCuuPhatTrien/nghienCuuPhatTrien">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_1"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2.2</b></td>
								<td class="align-l"><i>Quảng cáo, tiếp thị</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_2"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_2"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinQuangCaoTiepThi/quangCaoTiepThi">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.2.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_2"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2.3</b></td>
								<td class="align-l"><i>Quản lý kinh doanh và tư vấn, đào tạo</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_3"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_3"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinQLyKDoanhTVDT/qLyKDoanhTVDT">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.3.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_3"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_3"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_3"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_3"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_3"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2.4</b></td>
								<td class="align-l"><i>Hoạt động tài chính</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_4"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_4"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>2.4.1</b></td>
								<td class="align-l"><i>Tiền bản quyền và các khoản tương tự</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_4_1"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_4_1"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinTienBanQuyen/tienBanQuyen">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.4.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_4_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_4_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_4_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_4_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_4_1"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c">2.4.2</td>
								<td class="align-l"><i>Cho vay, đi vay</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_4_2"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_4_2"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinChoVayDiVay/choVayDiVay">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.4.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_4_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_4_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_4_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_4_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_4_2"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2.5</b></td>
								<td class="align-l"><i>Dịch vụ khác</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_5"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_5"/></b></td>
								<td></td>
							</tr>
							<tr>
								<td  class="align-c"><b>2.5.1</b></td>
								<td class="align-l"><i>Xoá nợ</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_5_1"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_5_1"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinXoaNo/xoaNo">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.5.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_5_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_5_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_5_1"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_5_1"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_5_1"/></td>
									</tr>
							</xsl:for-each>
							<tr>
								<td  class="align-c"><b>2.5.2</b></td>
								<td class="align-l"><i>Dịch vụ khác</i></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriDThu_ctII_2_5_2"/></b></td>
								<td></td>
								<td class="align-c"><b class="number"><xsl:value-of select="$pl01_gcn/tongGTriCPhi_ctII_2_5_2"/></b></td>
								<td></td>
							</tr>
							<xsl:for-each select="$pl01_gcn/TTinDichVuKhac/dichVuKhac">
									<xsl:variable name="currentRows" select='position()' />
									<tr>
										<td class="align-c">2.4.1.<xsl:value-of select="$currentRows" /></td>
										<td class="align-l"><xsl:value-of select="tenLienKet_ctII_2_5_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriDThu_ctII_2_5_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapDThu_ctII_2_5_2"/></td>
										<td class="align-r number"><xsl:value-of select="gtriCPhi_ctII_2_5_2"/></td>
										<td class="align-l"><xsl:value-of select="pphapCPhi_ctII_2_5_2"/></td>
									</tr>
							</xsl:for-each>

						</table>
						<br/>
						<div class="align-l"><b>PHẦN B. KÊ KHAI MỐI QUAN HỆ VỚI TỪNG LIÊN KẾT.</b></div>
						<br/>
						<table class="tkhai_table">
								   <tr>
									 <td class="align-c"><b>STT</b></td>
									 <td class="align-c"><b>Tên bên liên kết</b></td>
									 <td class="align-c"><b>Địa chỉ</b></td>
									 <td class="align-c"><b>Mã số thuế</b></td>
									 <td class="align-c" colspan="13"><b>Hình thức liên kết</b></td>
								  </tr>
								   <tr>
									 <td class="align-c" rowspan="2">(1)</td>
									 <td class="align-c" rowspan="2">(2)</td>
									 <td class="align-c" rowspan="2">(3)</td>
									 <td class="align-c" rowspan="2">(4)</td>
									 <td class="align-c" colspan="13">(5) bắt buộc check ít nhất một trong các hình thức bên dưới</td>   
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
								   <xsl:for-each select="$pl01_gcn/TTinMoiQHeVoiTungLKet/moiQHeVoiTungLKet">
									<xsl:variable name="currentRows" select='position()' />
								   <tr>
									 <td class="align-c"><xsl:value-of select="$currentRows" /></td>
									 <td class="align-l"><xsl:value-of select="tenLKet"/></td>
									 <td class="align-l"><xsl:value-of select="diaChiLKet"/></td>
									 <td class="align-l"><xsl:value-of select="mstLKet"/></td>									 
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

				</div>
			</div>
<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>				
			<xsl:call-template name="tkhaiFooter"/>
<div id="sigDiv"></div>
</td>
</tr>
</table>			
		</xsl:if>
	</xsl:template>		
</xsl:stylesheet>