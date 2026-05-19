<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
	<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<xsl:variable name="ttchungtb" select="TBaoThue/TTinChung"/>
	<xsl:variable name="ttchungdk" select="DKyThue/TTinChung"/>
	<xsl:param name="ngayKyHDDLyThue" select="$ttkthue/DLyThue/ngayKyHDDLyThue"/>
	<xsl:param name="kyKKhai" select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai"/>
	<xsl:param name="kieuKy" select="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy"/>
	<xsl:param name="tuNgay" select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay"/>
	<xsl:param name="denNgay" select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay"/>
	<xsl:param name="smallcase" select="'abcdefghijklmnopqrstuvwxyzàèìòùáéíóúýâêîôûãñõäëïöüÿåæœçđøặằắậầấụờớợựừứệềếọộồốịỳủơổ'"/>
	<xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÈÌÒÙÁÉÍÓÚÝÂÊÎÔÛÃÑÕÄËÏÖÜŸÅÆŒÇÐØẶẰẮẬẦẤỤỜỚỢỰỪỨỆỀẾỌỘỒỐỊỲỦƠỔ'"/>
	<xsl:template name="BieuNguDatNuoc">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		<tr>
			<td style="width:80%;text-align:center">
				<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
				<br/>-------------------------
            </td>
			<td style="width:17% ; vertical-align: top;" rowSpan="5" align="top">
				<div class="bieu_mau_div">
					<div>Mẫu số: <b>
							<xsl:value-of select="$mauTKhai_"/>
						</b>
						<br/>
						<span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau_"/>) </span>
					</div>
				</div>
			</td>
		</tr>
		<tr>
			<td class="tentkhai">
				<xsl:value-of select="translate($ttkthue_/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
			</td>
		</tr>
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<xsl:template name="BieuNguPhuLuc">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="tenPL_"/>
		<xsl:param name="ghiChuPL_"/>
		<tr>
			<td class="align-c" colspan="3" style="width:80%">
				<b>PHỤ LỤC</b>
			</td>
			<td style="width:15%" rowSpan="2">
				<div class="bieu_mau_div">
					<div>Mẫu số: <b>
							<xsl:value-of select="$mauTKhai_"/>
						</b>
						<br/>(<i>
							<xsl:value-of select="$moTaBieuMau_"/>
						</i>)
                    </div>
				</div>
			</td>
		</tr>
		<tr>
			<td class="bketitle" colspan="3">
				<b>
					<xsl:value-of select="$tenPL_"/>
				</b>
			</td>
		</tr>
		<tr>
			<td class="align-c" colspan="3">
				<i>
					<xsl:value-of select="$ghiChuPL_"/>
				</i>
			</td>
		</tr>
	</xsl:template>
	<!-- start tkhai header -->
	<xsl:template name="tkhaiHeader">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:80%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
					<td style="width:17% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau"/>
                            ) </span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="tentkhai">
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai">
						<div style="width:80% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[08]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[10] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[11]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[12] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[14]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[15]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[16] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[17]</b> Điện thoại: 
                        </td>
						<td>
							<b>[18]</b> Fax: 
                        </td>
						<td>
							<b>[19]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[20] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[12] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[14]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[15]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[16] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[17]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[18]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[19]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
		<div class="giahan_div">
			<xsl:if test="$ttkthue/TKhaiThue/giaHan">
				<xsl:if test="$ttkthue/TKhaiThue/giaHan = 'true' ">
					<table>
						<tr>
							<td>[X]Gia hạn
                            </td>
						</tr>
						<tr>
							<td>Trường hợp được gia hạn: <xsl:value-of select="$tkchinh/lyDoGiaHan"/>
							</td>
						</tr>
					</table>
				</xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/giaHan = '' ">
					<table>
						<tr>
							<td>[]Gia hạn
                            </td>
						</tr>
					</table>
				</xsl:if>
			</xsl:if>
		</div>
	</xsl:template>
 
<!-- start header 01 dang ky ban hang-->
	<xsl:template name="tkhaiHeader_01_dangkybanhang">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						PHỤ LỤC 1</b>
						<br/> (Ban hành kèm theo Thông tư số 92/2019/TT-BTC ngày 31/12/2019 của Bộ trưởng Bộ Tài chính) 
						
					</td>
				</tr>
				<tr>
					<td class="align-c" rowSpan='2'>
					<b><xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					<br/>-------------------
					 <br/>V/v Đăng ký bán hàng hoàn thuế giá trị gia tăng
					</td>
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập - Tự do - Hạnh phúc</b>
						<br/>-------------------
						<br/>
														
					</td>
					
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
					</td>
				</tr>
				
				<tr>
					<td class="align-c" colspan="2">
					
					Kính gửi: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/>
					</td>
				</tr>
				
				<table class="ttinnnt_table">
				<tr>
					<td colspan="4">
						<b>Tên doanh nghiệp</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<b>Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<b></b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<b></b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b></b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td colspan="2">
						<b></b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				
			</table>
			
			</table>
			</table>
		</div>
	</xsl:template>
	<!-- start header 01 dieu chinh ban hang-->
	<xsl:template name="tkhaiHeader_01_dieuchinhbanhang">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						PHỤ LỤC 8</b>
						<br/> (Ban hành kèm theo Thông tư số 92/2019/TT-BTC ngày 31/12/2019 của Bộ trưởng Bộ Tài chính) 
						
					</td>
				</tr>
				<tr>
					<td class="align-c" rowSpan='2'>
					<b><xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					<br/>-------------------
					 <br/>V/v <xsl:value-of select="$tkchinh/tenLoaiThayDoi"/> việc bán hàng hoàn thuế GTGT cho người nước ngoài
					</td>
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập - Tự do - Hạnh phúc</b>
						<br/>-------------------
						<br/>
														
					</td>
					
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
					</td>
				</tr>
				
				<tr>
					<td class="align-c" colspan="2">
					
					Kính gửi: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/>
					</td>
				</tr>
				
				<table class="ttinnnt_table">
				<tr>
					<td colspan="4">
						<b>Tên doanh nghiệp</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<b>Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<b></b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<b></b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b></b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td colspan="2">
						<b></b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				
			</table>
			
			</table>
			</table>
		</div>
	</xsl:template>
	<!-- start header 01_KNNT_TDT-->
	<xsl:template name="tkhaiHeader_01_KNNT_TDT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:65%;text-align:center">
					</td>
					<td style="width:35% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div_td">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:40%;text-align:center">
							<b>
							<!-- <xsl:value-of select="$ttkthue/NNT/tenNNT"/> -->
							<xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/>
							</b>
							<br/>────────────<br/>
					</td>
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:40%;text-align:center">
						<xsl:if test="$tkchinh/so_VBan">									
                            Số: <xsl:value-of select="$tkchinh/so_VBan"/>/VB-ĐN
						</xsl:if>
						<br/>Về việc <xsl:if test="$tkchinh/ma_truong_hop='01'"> đề nghị kết nối với Cổng thông tin điện tử của Tổng cục Thuế</xsl:if><xsl:if test="$tkchinh/ma_truong_hop='02'"> thay đổi, bổ sung thông tin đã ký thỏa thuận</xsl:if>
						<!-- <xsl:value-of select="translate($tkchinh/ten_truong_hop,$uppercase,$smallcase)"/> -->
					</td>
					<td style="width:60%;text-align:center">
							<i>
								<xsl:value-of select="$tkchinh/diaDanh"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>

	</xsl:template>
	
	
		<!-- start header 01_DSMT_LHQ-->
	<xsl:template name="tkhaiHeader_01_DSMT_LHQ">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:65%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:35% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/><br/>
			<div class="align-c" style="font-size:14pt"><b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenTKhai"/></b></div><br/><br/>
		</div>


	</xsl:template>

<!-- start header mẫu số 05 (TT179/2013)-->
	<xsl:template name="tkhaiHeader_05_TT179">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số <xsl:value-of select="$mauTKhai"/><br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/SoDeNghiXoaNo">									
                            Số: <xsl:value-of select="$tkchinh/SoDeNghiXoaNo"/>
						</xsl:if>
						<br/>V/v đề nghị xóa nợ tiền thuế, tiền phạt
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>

	</xsl:template>
	
<!-- start header phụ lục 05a (TT179/2013)-->
	<xsl:template name="tkhaiHeader_05a_TT179">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số <xsl:value-of select="$mauTKhai"/><br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			
			<div style="width:100%;text-align:center"><b>BẢNG TỔNG HỢP TIỀN THUẾ, TIỀN PHẠT <br/>PHÁT SINH TRƯỚC NGÀY 01/7/2007 ĐẾN NAY CÒN NỢ</b><br/>
						<i>(Kèm theo công văn số <xsl:value-of select="$tkchinh/SoDeNghiXoaNo"/>  
						ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd/mm/yyyy')"/>
						của <xsl:value-of select="$ttkthue/NNT/tenNNT"/>)</i></div>

		</div><br/>

	</xsl:template>

<!-- start header 01/XNCG-DNMT-->
	<xsl:template name="tkhaiHeader_01_XNCG_DNMT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:65%;text-align:center">
					</td>
					<td style="width:35% ; vertical-align: top;" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$tkchinh/ct4_cqcq"/><xsl:value-of select="$tkchinh/ct5_ckvt"/></b>
							<br/>
							<b>CHƯƠNG TRÌNH, DỰ ÁN PHI<br/>CHÍNH PHỦ NƯỚC NGOÀI<br/>TẠI VIỆT NAM</b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
                            Số: <xsl:value-of select="$tkchinh/so_vban"/>
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>

	</xsl:template>
<!-- start header 30/ĐK-TCT (TT86/2024)-->
	<xsl:template name="tkhaiHeader_30_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center"></td>
					<td style="width:25%;vertical-align:top;" align="top">
						<div class="bieu_mau_div">
							<div>
				  Mẫu số: 
								<b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">
									<xsl:value-of select="$moTaBieuMau"/>
								</span>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
						<b>
							<xsl:value-of select="$ttkthue/tenNNT"/>
						</b>
						<br/>────────────
						<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/so">
				Số: 
							<xsl:value-of select="$tkchinh/so"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
						<i>
						Ngày <xsl:value-of select="substring($ttkthue/ngayKy, 9, 2)" />
						tháng <xsl:value-of select="substring($ttkthue/ngayKy, 6, 2)" />
						năm <xsl:value-of select="substring($ttkthue/ngayKy, 1, 4)" />
						</i>
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>
	
	
	<!-- start header 31/ĐK-TCT (TT86/2024)-->
	<xsl:template name="tkhaiHeader_31_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center"></td>
					<td style="width:25%;vertical-align:top;" align="top">
						<div class="bieu_mau_div">
							<div>
				  Mẫu số: 
								<b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">
									<xsl:value-of select="$moTaBieuMau"/>
								</span>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
						<b>
							<xsl:value-of select="$ttkthue/tenNNT"/>
						</b>
						<br/>────────────
						<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/so">
				Số: 
							<xsl:value-of select="$tkchinh/so"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
						<i>
						Ngày <xsl:value-of select="substring($ttkthue/ngayKy, 9, 2)" />
						tháng <xsl:value-of select="substring($ttkthue/ngayKy, 6, 2)" />
						năm <xsl:value-of select="substring($ttkthue/ngayKy, 1, 4)" />
						</i>
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>

	

	<!-- start header 01/APA-ĐN-->
	<xsl:template name="tkhaiHeader_01_APA_DN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table style="width:100%; border:0; border-collapse:collapse;">
			  <tr>
				<td style="width:75%;"></td>
				<td style="width:25%; text-align:right; vertical-align:top;">
				  <div class="bieu_mau_div">
					<div>
					  <b>
						<xsl:value-of select="$mauTKhai"/>
					  </b>
					  <br/>
					  <span class="mtatentkhai" style="font-size:9pt">
						<xsl:value-of select="$moTaBieuMau"/>
					  </span>
					</div>
				  </div>
				</td>
			  </tr>
			</table>
			<br/>
			<table>
				<tr>
					<td style="width:100%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
							<br/>Độc lập - Tự do - Hạnh phúc
						</b>
						<br/>────────────
						<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						
					</td>
					<td style="width:50%;text-align:center">
						
					</td>
				</tr>
			</table>
		</div>
		<br/>
	</xsl:template>

	<!-- start header 01/GHAN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_GHAN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/SoDeNghiGiaHan">									
                            Số: <xsl:value-of select="$tkchinh/SoDeNghiGiaHan"/>
						</xsl:if>
						<br/>V/v đề nghị gia hạn nộp thuế
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>

	</xsl:template>
	
	<!-- start header 01/NDAN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_NDAN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/SoDeNghiNopDan">									
                            Số: <xsl:value-of select="$tkchinh/SoDeNghiNopDan"/>
						</xsl:if>
						<br/>V/v đề nghị nộp dần tiền thuế nợ
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>

	</xsl:template>
	
	<!-- start header 01/KTCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_KTCN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/SoDeNghiKTCN">									
                            Số: <xsl:value-of select="$tkchinh/SoDeNghiKTCN"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>
	</xsl:template>
	
	<!-- start header 03/KTCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_03_KTCN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/SoThongBaoNopNSNN">									
                            Số: <xsl:value-of select="$tkchinh/SoThongBaoNopNSNN"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>
	</xsl:template>
	<xsl:template name="tkhaiHeader_NoHeader">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 01/TB-DVHT-->
	<xsl:template name="tkhaiHeader_01_TB_DVHT">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			
			<table>
				<tr>
					<td style="width:50%;text-align:center">
							<b><xsl:value-of select="$tkchinh/TT_DonViThongBao/ten_DonViThongBao"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:50%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="width:50%;text-align:center">
						<xsl:if test="$tkchinh/so_ThongBao">									
                            Số: <xsl:value-of select="$tkchinh/so_ThongBao"/>
						</xsl:if>
					</td>
					<td style="width:50%;text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>
	</xsl:template>
	<!-- start header 01/MGTH (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_MGTH">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template>
				<tr>
					<td style="width: 45%" class="align-r" align="top">
					<br></br>
							<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, 
							Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> 
							tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> 
							năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
					</td>
				</tr>
				<tr>
				<br></br>
					<td class="align-c">
					<br></br>
						Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/>
					</td>
				</tr>				
			</table>
		</div>
	</xsl:template>

<!-- start header 06/MGTH (TT80/2021)-->
	<xsl:template name="tkhaiHeader_06_MGTH">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template>
				<tr>
					<td style="width: 45%" class="align-r" align="top">
					<br></br>
							<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, 
							Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> 
							tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> 
							năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
					</td>
				</tr>
				<tr>
				<br></br>
					<td class="align-c">
					<br></br>
						Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/>
					</td>
				</tr>				
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 01/TKTT-QDMTT-->
	<xsl:template name="tkhaiHeader_01_TKTT_QDMTT">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>TỜ KHAI THÔNG TIN</b><br/>(Áp dụng đối với quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn)</div>
			<div style="text-align:center">
				<b>[01]</b> Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> 
				Từ <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> 
				đến <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
			</div>
			<div style="text-align:center">
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
					<b>[02]</b> Lần đầu: &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ:
                </xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
					<b>[02]</b> Lần đầu: &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                </xsl:if>
			</div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế theo quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08]</b> Hợp đồng đại lý thuế: Số <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		</div>
	</xsl:template>
	
	<!-- start header 01/TNDN-QDMTT-->
	<xsl:template name="tkhaiHeader_01_TNDN_QDMTT">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>TỜ KHAI THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG</b><br/><i>(Áp dụng đối với Quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn)</i></div>
			<div style="text-align:center">
				<b>[01]</b> Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> 
				Từ <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> 
				đến <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
			</div>
			<div style="text-align:center">
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
					<b>[02]</b> Lần đầu: &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ:
                </xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
					<b>[02]</b> Lần đầu: &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                </xsl:if>
			</div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế theo quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08]</b> Hợp đồng đại lý thuế: Số <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		</div>
	</xsl:template>
	
	
	<!-- start header 01/TM-QDMTT-->
	<xsl:template name="tkhaiHeader_01_TM">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>BẢN THUYẾT MINH GIẢI TRÌNH CHÊNH LỆCH DO KHÁC BIỆT<br/>CHUẨN MỰC KẾ TOÁN TÀI CHÍNH</b></div>
			<div style="text-align:center">
				<b>[01]</b> Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> 
				Từ <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> 
				đến <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
			</div>
			<div style="text-align:center">
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
					<b>[02]</b> Lần đầu: &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ:
                </xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
					<b>[02]</b> Lần đầu: &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                </xsl:if>
			</div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế theo quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08]</b> Hợp đồng đại lý thuế: Số <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		</div>
	</xsl:template>
	
	
	<!-- start header 03/TB-DVHT-->
	<xsl:template name="tkhaiHeader_03_TB_DVHT">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			
			<table style="width:100%">
				<tr>
					<td style="width:40%;text-align:center">
							<b><xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
							<br/>────────────<br/>
					</td>
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>────────────<br/>
					</td>
				</tr>
				<tr>
					<td style="text-align:center">
						<xsl:if test="$tkchinh/so_ThongBao">									
                            Số: <xsl:value-of select="$tkchinh/so_ThongBao"/>
						</xsl:if>
					</td>
					<td style="text-align:center">
							<i>
								Ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'yyyy')"/>
							</i>
					</td>
				</tr>
			</table>
		</div><br/>
	</xsl:template>
	
	<!-- start tkhai header 01/MTCN TT80-->
	<xsl:template name="TkhaiHeader_01_MTCN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:75%;text-align:center">
					</td>
					<td style="width:25% ; vertical-align: top;" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số <xsl:value-of select="$mauTKhai"/><br/>
								<span class="mtatentkhai" style="font-size:9pt"><xsl:value-of select="$moTaBieuMau"/></span>
							</div>
						</div>
					</td>
				</tr>
			</table><br/>
			<table class="ttinnnt_table">
				<tr>
					<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						<b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/></b>
						 <br/>────────────<br/>
						 Số: <xsl:value-of select="$tkchinh/so"/><br/>
						V/v: Đề nghị miễn tiền chậm nộp
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b><br/>
					────────────<br/>
					<i><xsl:value-of select="$tkchinh/diaDanh"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
					</div>
				</td>
				</tr>
				<tr>
				<td colspan="2" align="center">
					<br/>
					Kính gửi: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/tenCQTNoiNop"/><br/><br/>
				</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tên người nộp thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Địa chỉ nhận thông báo: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/dchiNNT"/>, <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/phuongXa"/>, <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Điện thoại: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/dthoaiNNT"/>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;E-mail: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/NNT/emailNNT"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 07/TEM (TT31/2021)-->
	<xsl:template name="tkhaiHeader_07_TEM_TT31">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập - Tự do - Hạnh phúc</b>
						<br/>-------------------
						<br/>
					
					</td>
					<td style="width:15% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau"/>
                            ) </span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="tentkhai">
					<br/>		
		
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
						<br/>-------------------------
												
					</td>
					
				</tr>
				<tr>
				   <td class="align-c">
					<b>Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/></b>
					</td>
				</tr>
				<tr>
					<td>
					<br/>
					Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					
					</td>
				</tr>
				<tr>
					<td>
					Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					
					</td>
				</tr>
			</table>
					
		</div>
	</xsl:template>	
	<!-- start header 02/TEM (TT31/2025)-->
	<xsl:template name="tkhaiHeader_02_TEM_TT31">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập - Tự do - Hạnh phúc</b>
						<br/>-------------------
						<br/>
					</td>
					<td style="width:15% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau"/>
                            ) </span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
				<td class="align-c">
				<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				</tr>
				
				<tr>
					<td class="align-c">
					<br/>		
		
						<b>KẾ HOẠCH MUA/MUA BỔ SUNG/ĐƠN ĐỀ NGHỊ MUA TEM ĐIỆN TỬ THUỐC LÁ HOẶC TEM ĐIỆN TỬ RƯỢU SẢN XUẤT ĐỂ TIÊU THỤ TRONG NƯỚC </b>
					</td>
				</tr>
				<tr>
				
					<td class="align-c">
						<b>NĂM: <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai"/></b>
					</td>
				</tr>
				<tr>
					<td class="align-c">
					<br/>
					<b> Kính gửi:  </b> <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> (1)
					<br/>
					<br/>
					</td>
					</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/dangKyKHLanDau='true' or $tkchinh/Header/dangKyKHLanDau='1' ">							                             
						 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<input type="checkbox" checked="true">    Đăng ký kế hoạch lần đầu</input>  
						</xsl:if>
						<xsl:if test="$tkchinh/Header/dangKyKHLanDau='false' or $tkchinh/Header/dangKyKHLanDau='0' ">							                             
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <input type="checkbox">    Đăng ký kế hoạch lần đầu</input>  
						</xsl:if>
										
					</td>
					
				</tr>
				<tr>
					<td class="align-l">
						
						<xsl:if test="$tkchinh/Header/dangKyKHBoSung='true' or $tkchinh/Header/dangKyKHBoSung='1'">							                             
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <input type="checkbox" checked="true">    Đăng ký kế hoạch bổ sung lần thứ: <xsl:value-of select="$tkchinh/Header/lanThu"/><br/></input>  
						</xsl:if>
						<xsl:if test="$tkchinh/Header/dangKyKHBoSung='false' or $tkchinh/Header/dangKyKHBoSung='0' ">							                             
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <input type="checkbox">    Đăng ký kế hoạch bổ sung lần thứ: <xsl:value-of select="$tkchinh/Header/lanThu"/><br/></input>   
						</xsl:if>					
					</td>
					
				</tr>
					<tr>
					<td class="align-l">
						
						<xsl:if test="$tkchinh/Header/donDeNghiMua='true' or $tkchinh/Header/donDeNghiMua='1'">							                             
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <input type="checkbox" checked="true">    Đơn đề nghị mua</input>  
						</xsl:if>
						<xsl:if test="$tkchinh/Header/donDeNghiMua='false' or $tkchinh/Header/donDeNghiMua='0' ">							                             
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <input type="checkbox">    Đơn đề nghị mua</input>   
						</xsl:if>					
					</td>
					
				</tr>
			</table>
			
						<br/>
			
		</div>
	</xsl:template>
	<!-- start header 04/TEM (TT31/2025)-->
	<xsl:template name="tkhaiHeader_04_TEM_TT31">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập - Tự do - Hạnh phúc</b>
						<br/>-------------------
						<br/>
					
						
					
					</td>
					<td style="width:15% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau"/>
                            ) </span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
				<td class="align-c">
				<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayKy,'yyyy')"/></i>
				</td>
				</tr>
				
				<tr>
					<td class="tentkhai" colspan="2">
					<br/>		
		
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
						<br/>-------------------------
					</td>
				</tr>
				
				<tr>
					<td class="align-c" colspan="2">
						
						<xsl:if test="$tkchinh/thongBaoMatChay='true' or $tkchinh/thongBaoMatChay='1'">							                             
						<input type="checkbox" checked="true">    Thông báo mất, cháy </input>  
						</xsl:if>
						<xsl:if test="$tkchinh/thongBaoMatChay='false' or $tkchinh/thongBaoMatChay='0' ">							                             
						<input type="checkbox">    Thông báo mất, cháy</input>   
						</xsl:if>					
					</td>
					
				</tr>
				<tr>
					<td class="align-c" colspan="2">
						
						<xsl:if test="$tkchinh/thongBaoHuy='true' or $tkchinh/thongBaoHuy='1'">							                             
						<input type="checkbox" checked="true">    Thông báo kết quả hủy </input>  
						</xsl:if>
						<xsl:if test="$tkchinh/thongBaoHuy='false' or $tkchinh/thongBaoHuy='0' ">							                             
						<input type="checkbox">    Thông báo kết quả hủy</input>   
						</xsl:if>					
					</td>
					
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<br/>
					<b>Kính gửi:</b>  <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> 
					
					</td>
				</tr>
			</table>
					
		</div>
	</xsl:template>
	
	<!-- start header 01/TKTT-IIR-->
	<xsl:template name="tkhaiHeader_01_TKTT_IIR">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>TỜ KHAI THÔNG TIN</b><br/>(Áp dụng đối với quy định về tổng hợp thu nhập chịu thuế tối thiểu)</div>
			<div style="text-align:center">
				<b>[01]</b> Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> 
				Từ <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> 
				đến <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
			</div>
			<div style="text-align:center">
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
					<b>[02]</b> Lần đầu: &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ:
                </xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
					<b>[02]</b> Lần đầu: &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                </xsl:if>
			</div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế/mã số doanh nghiệp theo quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08]</b> Hợp đồng đại lý thuế: Số <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		</div>
	</xsl:template>
	<!-- start header 01/TNDN-IIR-->
	<xsl:template name="tkhaiHeader_01_TNDN_IIR">
		<xsl:param name="mauTKhai"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>TỜ KHAI THUẾ THU NHẬP DOANH NGHIỆP BỔ SUNG</b><br/><i>(Áp dụng đối với Quy định về tổng hợp thu nhập chịu thuế tối thiểu)</i></div>
			<div style="text-align:center">
				<b>[01]</b> Năm tài chính báo cáo: Năm <xsl:value-of select="$kyKKhai"/> 
				Từ <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> 
				đến <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
			</div>
			<div style="text-align:center">
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
					<b>[02]</b> Lần đầu: &#x2612; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ:
                </xsl:if>
				<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
					<b>[02]</b> Lần đầu: &#x2610; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[03]</b> Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                </xsl:if>
			</div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Tên đơn vị hợp thành chịu trách nhiệm kê khai: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế theo quy định về thuế tối thiểu toàn cầu: <xsl:value-of select="$ttkthue/NNT/mst"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></div>
			<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08]</b> Hợp đồng đại lý thuế: Số <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></div>
		</div>
	</xsl:template>
	
</xsl:stylesheet>
