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
	<!-- start header 01_TTĐB (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_TTDB_TT80">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[08] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<tr>
					<td colspan="3">
						<b>[09]</b> Tên đơn vị phụ thuộc/địa điểm kinh doanh của hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở chính: 
                            <xsl:value-of select="$tkchinh/Header/ct09"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[10]</b> Mã số thuế đơn vị phụ thuộc/Mã số địa điểm kinh doanh:
                            <xsl:value-of select="$tkchinh/Header/ct10"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[11]</b> Địa chỉ nơi có hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở chính:
					</td>
				</tr>
				<tr>
					<td>
						<b>&#160;&#160;&#160;&#160;&#160;[11a]</b> Phường/xã:  
                            <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKDKhacTinhNDTSC/ct11a_phuongXa_ten"/>
					</td>
					<td>
						<b>[11b]</b> Quận/Huyện:  
                            <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKDKhacTinhNDTSC/ct11b_quanHuyen_ten"/>
					</td>
					<td>
						<b>[11c] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKDKhacTinhNDTSC/ct11c_tinhTP_ten"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header 01_TTĐB hộ kinh doanh-->
	<xsl:template name="tkhaiHeader_01_TTDB_TT80_HKD">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06]</b> Tên địa điểm kinh doanh của hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở kinh doanh: 
                            <xsl:value-of select="$tkchinh/Header/ct06"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06.1]</b>Mã địa điểm kinh doanh: 
                            <xsl:value-of select="$tkchinh/Header/ct06_1"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[07]</b> Địa chỉ nơi có hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở kinh doanh:
					</td>
				</tr>
				<tr>
					<td>
						<b>[07.1] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKDKhacTinhNDTSC/ct7_1_tinhTP_ten"/>
					</td>
					</tr>
				<tr>
					<td>
						<b>[07.2]</b> Xã/phường/đặc khu:  
                            <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKDKhacTinhNDTSC/ct7_2_phuongXa_ten"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08]Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> 
                            <xsl:value-of select="$tkchinh/Header/ct08"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09]</b>Mã số thuế  
                            <xsl:value-of select="$tkchinh/Header/ct09"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10]</b>Văn bản ủy quyền (nếu có): Số   
                            <xsl:value-of select="$tkchinh/Header/ct10"/>
					
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct10_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct10_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct10_ngay,'yyyy')"/>
                            
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[11] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[12] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[11] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[12] Mã số thuế: </b>
						</td>
					</tr>
					
				</xsl:if>
				
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 02_CNKD_HKD-->
	<xsl:template name="tkhaiHeader_02_CNKD_HKD">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] &#160;&#160; <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;]&#160;&#160; <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			
			</table>
						<br/>
						<table class="ttinnnt_table"  width="100%">
						
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế/Số định danh cá nhân: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
								<tr>
					<td>
						<b>[06]Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> 
                            <xsl:value-of select="$tkchinh/Header/ct06"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b>Mã số thuế  
                            <xsl:value-of select="$tkchinh/Header/ct07"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08]</b>Văn bản ủy quyền (nếu có): Số   
                            <xsl:value-of select="$tkchinh/Header/ct08"/>
					
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct08_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct08_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct08_ngay,'yyyy')"/>
                            
					</td>
				</tr>					
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										
										<b>[09] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[10] </b>Mã số thuế:
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								
								
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										
										<b>[09] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[10] </b>Mã số thuế:
									</td>
								</tr>
							</xsl:if>
						</table>
						<br/>
					
		</div>
	</xsl:template>
	
	<!-- start header 01_BVMT hộ kinh doanh-->
	<xsl:template name="tkhaiHeader_01_BVMT_HKD">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06]</b> Tên địa điểm kinh doanh của hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở kinh doanh: 
                            <xsl:value-of select="$tkchinh/Header/tenDiaDiemKD"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06.1]</b>Mã địa điểm kinh doanh: 
                            <xsl:value-of select="$tkchinh/Header/maDiaDiemKD"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[07]</b> Địa chỉ nơi có hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở kinh doanh:
					</td>
				</tr>
				<tr>
					<td>
						<b>[07.1] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/tenTinh"/>
					</td>
					</tr>
				<tr>
					<td>
						<b>[07.2]</b> Xã/phường/đặc khu:  
                            <xsl:value-of select="$tkchinh/Header/ten_XaPhuong"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07.3]</b> Địa chỉ chi tiết:  
                            <xsl:value-of select="$tkchinh/Header/diaChi"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08]Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> 
                            <xsl:value-of select="$tkchinh/Header/ct07"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09]</b>Mã số thuế:
                            <xsl:value-of select="$tkchinh/Header/ct08"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10]</b>Văn bản ủy quyền (nếu có): Số   
                            <xsl:value-of select="$tkchinh/Header/ct09"/>
					
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'yyyy')"/>
                            
					</td>
				</tr>
		
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[11] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[12] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[11] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[12] Mã số thuế: </b>
						</td>
					</tr>
					
				</xsl:if>
				
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 01_TAIN hộ kinh doanh-->
	<xsl:template name="tkhaiHeader_01_TAIN_HKD">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<tr>
					<td colspan="3">
						<b>[06]</b> Địa chỉ nơi có hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở kinh doanh:
					</td>
				</tr>
				<tr>
					<td>
						<b>[06.1] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/CT06/ct06_1_ten_TinhTP"/>
					</td>
					</tr>
				<tr>
					<td>
						<b>[06.2]</b> Xã/phường/đặc khu:  
                            <xsl:value-of select="$tkchinh/Header/CT06/ct06_2_ten_XaPhuong"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> 
                            <xsl:value-of select="$tkchinh/Header/ct07"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08]</b>Mã số thuế  
                            <xsl:value-of select="$tkchinh/Header/ct08"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09]</b>Văn bản ủy quyền (nếu có): Số   
                            <xsl:value-of select="$tkchinh/Header/ct09"/>
					
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct09_ngay,'yyyy')"/>
                            
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[10] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[11] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[10] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[11] Mã số thuế: </b>
						</td>
					</tr>
					
				</xsl:if>
				
			</table>
		</div>
	</xsl:template>
	
	
	
	<!-- start tkhai header 01/CNKD hộ kinh doanh bản thật-->
	<xsl:template name="tkhaiHeader_01_CNKD">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:80%;text-align:center">
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="5" align="top">
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
			</table>
			<div style="width:100%;padding-top: 10pt;text-align:center">
			<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
			<br/>────────────<br/></div>
			
			<div style="width:100%;padding-top: 10pt;text-align:center"><b>TỜ KHAI THUẾ ĐỐI VỚI HỘ KINH DOANH, CÁ NHÂN KINH DOANH</b><br/>
			<i>(Áp dụng cho hộ kinh doanh, cá nhân kinh doanh có doanh thu năm trên 500 triệu đồng)</i>
			</div>
			
			<div>
				<div style="padding-top: 10pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/nopThueTNCNDoanhThu='true' or $tkchinh/Header/nopThueTNCNDoanhThu='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Hộ kinh doanh, cá nhân kinh doanh thuộc đối tượng nộp thuế TNCN trên doanh thu tính thuế
						</xsl:if>
						<xsl:if test="$tkchinh/Header/nopThueTNCNDoanhThu='false' or $tkchinh/Header/nopThueTNCNDoanhThu='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Hộ kinh doanh, cá nhân kinh doanh thuộc đối tượng nộp thuế TNCN trên doanh thu tính thuế
						</xsl:if>
					</label>
				</div>
				<div style="padding-top: 6pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/nopThueTNCNThunhapTinhThue='true' or $tkchinh/Header/nopThueTNCNThunhapTinhThue='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Hộ kinh doanh, cá nhân kinh doanh thuộc đối tượng nộp thuế TNCN trên thu nhập tính thuế
						</xsl:if>
						<xsl:if test="$tkchinh/Header/nopThueTNCNThunhapTinhThue='false' or $tkchinh/Header/nopThueTNCNThunhapTinhThue='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Hộ kinh doanh, cá nhân kinh doanh thuộc đối tượng nộp thuế TNCN trên thu nhập tính thuế
						</xsl:if>
					</label>
				</div>
				<div style="padding-top: 6pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/hoatDongTMDT='true' or $tkchinh/Header/hoatDongTMDT='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Hộ kinh doanh, cá nhân kinh doanh chỉ có hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số khác không có chức năng đặt hàng trực tuyến và chức năng thanh toán
						</xsl:if>
						<xsl:if test="$tkchinh/Header/hoatDongTMDT='false' or $tkchinh/Header/hoatDongTMDT='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Hộ kinh doanh, cá nhân kinh doanh chỉ có hoạt động kinh doanh trên nền tảng thương mại điện tử, nền tảng số khác không có chức năng đặt hàng trực tuyến và chức năng thanh toán
						</xsl:if>
					</label>
				</div>
				<div style="padding-top: 6pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/hoatDongKhac='true' or $tkchinh/Header/hoatDongKhac='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Hộ kinh doanh, cá nhân kinh doanh khai các loại thuế khác (thuế TTĐB, thuế tài nguyên, thuế/phí bảo vệ môi trường)
						</xsl:if>
						<xsl:if test="$tkchinh/Header/hoatDongKhac='false' or $tkchinh/Header/hoatDongKhac='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Hộ kinh doanh, cá nhân kinh doanh khai các loại thuế khác (thuế TTĐB, thuế tài nguyên, thuế/phí bảo vệ môi trường)
						</xsl:if>
					</label>
				</div>
				<div style="padding-top: 6pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/hoatDongLPS='true' or $tkchinh/Header/hoatDongLPS='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Trường hợp đề nghị cấp hóa đơn điện tử có mã của cơ quan thuế theo lần phát sinh
						</xsl:if>
						<xsl:if test="$tkchinh/Header/hoatDongLPS='false' or $tkchinh/Header/hoatDongLPS='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Trường hợp đề nghị cấp hóa đơn điện tử có mã của cơ quan thuế theo lần phát sinh
						</xsl:if>
					</label>
				</div>
			</div>
			
			<div style="padding-top: 6pt">
				<table width="100%">
					<tr>
						<td style="width:30%">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[01]</b> Kỳ tính thuế:</td>
						<td class="align-l" style="width:70%">
							<xsl:if test="$kieuKy='M'">
								[01a] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
								[01b] Quý  năm<br/>
								[01c] Lần phát sinh<br/>
							</xsl:if>
							<xsl:if test="$kieuKy='Q'">
								[01a] Tháng  năm<br/>
								[01b] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
								[01c] Lần phát sinh<br/>
							</xsl:if>
							<xsl:if test="$kieuKy='D'">
								[01a] Tháng  năm<br/>
								[01b] Quý  năm<br/>
								[01c] Lần phát sinh <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
							</xsl:if>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td class="align-l">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[02] </b>Lần đầu:
							<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">&#x2612;</xsl:if>
							<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">&#x2610;</xsl:if>
						</td>
						<td class="align-l"><b>[03] </b>Bổ sung lần thứ:
							<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'"><xsl:value-of select="$ttkthue/TKhaiThue/soLan"/></xsl:if>
						</td>
					</tr>	
				</table>
			</div>
			
			<div style="padding-top: 10pt">
				<table class="ttinnnt_table">
					<tr>
						<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[04] Người nộp thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
					</tr>
					<tr></tr>
					<tr>
						<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
					</tr>
					<tr></tr>
					<tr>
						<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06] Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct7_ten"/></td>
					</tr>
					<tr></tr>
					<tr>
						<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06.1]</b> Mã số thuế:  <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct7_1_ma"/></td>
					</tr>
					<tr></tr>
					<tr>
						<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[06.2]</b> Văn bản ủy quyền (nếu có): Số <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct7_2_so"/> 
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ToChucNopThueThay/ct7_2_ngay,'dd')"/> 
						tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ToChucNopThueThay/ct7_2_ngay,'mm')"/> 
						năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ToChucNopThueThay/ct7_2_ngay,'yyyy')"/></td>
					</tr>
					<tr></tr>
					<xsl:if test="not($ttkthue/DLyThue)">
						<tr>
							<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07] Tên đại lý thuế (nếu có):</b></td>
						</tr>
						<tr></tr>
						<tr>
							<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07.1]</b> Mã số thuế:</td>
						</tr>
					</xsl:if>
					<xsl:if test="$ttkthue/DLyThue">
						<tr>
							<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07] Tên đại lý thuế (nếu có): </b> <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</td>
						</tr>
						<tr></tr>
						<tr>
							<td>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[07.1]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
						</tr>
					</xsl:if>
				</table>
			</div>
		</div>			
	</xsl:template>
	
	<!-- start header 01/BK-STK-->
	<xsl:template name="tkhaiHeader_pluc_01BK_STK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:80%;text-align:center">
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="5" align="top">
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
			</table>
			<div style="width:100%;padding-top: 10pt;text-align:center">
			<b>THÔNG BÁO SỐ TÀI KHOẢN/SỐ HIỆU VÍ ĐIỆN TỬ</b>
			</div>
			
		</div>
	</xsl:template>
	
	<!-- start header 01/BK-HTK-->
	<xsl:template name="tkhaiHeader_pluc_01BK_HTK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:80%;text-align:center">
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="5" align="top">
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
			</table>
			<div style="width:100%;padding-top: 10pt;text-align:center">
			<b>BẢNG KÊ HÀNG TỒN KHO, MÁY MÓC, THIẾT BỊ CỦA HỘ KINH DOANH, CÁ NHÂN KINH DOANH</b>
			</div>
			
			<div style="width:100%;padding-top: 6pt;text-align:center">
			<i>(Áp dụng đối với hộ kinh doanh, cá nhân kinh doanh trong năm 2025 có mức doanh thu từ 3 tỷ đồng<br/>
			trở lên hoặc từ năm 2026 lựa chọn nộp thuế thu nhập cá nhân trên thu nhập tính thuế)</i>
			</div>
			
		</div>
	</xsl:template>	
	
	<!-- start header 01 dang ky ban hang-->
	<xsl:template name="tkhaiHeader_pluc_CNKD_TTS_TCKT">
		<xsl:param name="mauTKhai"/>
		
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
				<td class="align-c" colspan="2">
				
					<br/>	
<b>PHỤ LỤC</b><br/>					
		<b>
						BẢNG KÊ CHI TIẾT CÁ NHÂN CHO THUÊ BẤT ĐỘNG SẢN</b>
						<br/> (Kèm theo tờ khai 01/CNKD-TCKT áp dụng đối với tổ chức khai thay cho cá nhân cho thuê bất động sản ) 
						
					</td>
				</tr>
				<tr>
				   <td class="align-c" >
					<b>[01]</b> Kỳ tính thuế:
				  	<!-- <xsl:if test="$kieuKy='Y'"> [01e]<xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						
					</xsl:if> -->
				
					<xsl:if test="$kieuKy='Q'">[01b] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						(Từ tháng: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> 	
              &#160;	
             	
             &#160; Đến tháng <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)

					</xsl:if>
					
					
						<xsl:if test="$kieuKy='M'"> [01a] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  <br/>
						</xsl:if>
						
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
				<tr>
					<td colspan="3">
						<b>[04] Tổ chức khai, nộp thuế thay theo pháp luật quản lý thuế:</b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05]</b> Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
			</table>
			
			</table>
			
		</div>
	</xsl:template>
	<!-- start tkhai header 03/CNKD TMĐT-->
	<xsl:template name="tkhaiHeader_03_CNKD_TMDT">
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
								<span class="mtatentkhai" style="font-size:9pt">
                            <xsl:value-of select="$moTaBieuMau"/>
                            </span>
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
							<xsl:value-of select="$ghuchuTK"/>					
					</td>
				</tr>
				
				<tr>
					<td class="align-c">
												
							<b>[01]</b> Kỳ tính thuế: Năm <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai"/>    
                       					
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: &#x2612; <b>[03] </b>Bổ sung lần thứ:    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: &#x2610; <b>[03] </b>Bổ sung lần thứ: <xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>   
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<!--<table class="ttinnnt_table">-->
			<table class="ttinnnt_table" width="100%" border="0" cellpadding="0" cellspacing="0" style="width:1100px;">
				<tr>
					<td colspan="3">
					<!--<td colspan="1"> bỏ colspan để hệ thống tự căn chỉnh-->
						<b>[03] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				
				
				<tr>
					<td colspan="3">
						<b>[04] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[05] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[06] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[07] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td>
					   Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[05] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[06] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[07] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<tr>
					<td colspan="3"><b>[08] Tên của tổ chức khai thay (nếu có): </b><xsl:value-of select="$tkchinh/Header/ct08_Ten_TC"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[09]</b> Mã số thuế: <xsl:value-of select="$tkchinh/Header/ct09_MST"/></td>
				</tr>
				
			</table>
		</div>		
	</xsl:template>
	<!-- start header 01_XSBHDC hộ kinh doanh-->
	<xsl:template name="tkhaiHeader_01_XSBHDC_HKD">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							[01a]<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='Q'">
							[01b]<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] Mã số thuế: </b>
						</td>
					</tr>
					
				</xsl:if>
				
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 01_BĐS-->
	<xsl:template name="tkhaiHeader_01_BDS">
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
				<td class="align-c" >
					<b>[01]</b> Kỳ tính thuế:
					<xsl:if test="$kieuKy='N'">
						<xsl:if test="substring($kyKKhai,1,1) = '1'">
							[01a] 6 tháng đầu năm <xsl:value-of select= "substring($kyKKhai,3,4)"/> (Từ tháng <xsl:value-of select= "$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> đến tháng <xsl:value-of select= "$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)
						</xsl:if>	
						<xsl:if test="substring($kyKKhai,1,1) = '2'">
							[01b] 6 tháng cuối năm <xsl:value-of select= "substring($kyKKhai,3,4)"/> (Từ tháng <xsl:value-of select= "$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> đến tháng <xsl:value-of select= "$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)
						</xsl:if>
					</xsl:if>
					<xsl:if test="$kieuKy='Y'"> [01c] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						
					</xsl:if>
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
			
			<div style="width:100%;padding-top: 10pt;text-align:center"><b>THÔNG BÁO DOANH THU/TỜ KHAI THUẾ ĐỐI VỚI HOẠT ĐỘNG CHO THUÊ BẤT ĐỘNG SẢN</b><br/>
			<i>(Áp dụng đối với cá nhân có hoạt động cho thuê bất động sản trừ hoạt động kinh doanh lưu trú trực tiếp khai thuế với cơ quan thuế)</i>
			</div>
			
			<div style="padding-top: 10pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/doanhThuDuoiNguong='true' or $tkchinh/Header/doanhThuDuoiNguong='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Cá nhân cho thuê bất động sản thông báo doanh thu năm từ 500 triệu đồng trở xuống
						</xsl:if>
						<xsl:if test="$tkchinh/Header/doanhThuDuoiNguong='false' or $tkchinh/Header/doanhThuDuoiNguong='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Cá nhân cho thuê bất động sản thông báo doanh thu năm từ 500 triệu đồng trở xuống
						</xsl:if>
					</label>
			</div>
			<div style="padding-top: 10pt;text-align:justify">
					<label class="align-l">
						<xsl:if test="$tkchinh/Header/doanhThuTrenNguong='true' or $tkchinh/Header/doanhThuTrenNguong='1'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[X]</span> Cá nhân cho thuê bất động sản có doanh thu năm trên 500 triệu đồng
						</xsl:if>
						<xsl:if test="$tkchinh/Header/doanhThuTrenNguong='false' or $tkchinh/Header/doanhThuTrenNguong='0'">
						<span style="font-family: Courier, monospace; position: relative; top: -2px;">[ ]</span> Cá nhân cho thuê bất động sản có doanh thu năm trên 500 triệu đồng
						</xsl:if>
					</label>
			</div>
				<br/>
			<table class="ttinnnt_table"  width="100%">
						
				<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
								</td>
				</tr>
				<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
				</tr>
				<tr>
								<td colspan="3">
									<b>[06] Mã địa điểm kinh doanh nơi nộp tờ khai: </b>
									<xsl:value-of select="$tkchinh/Header/ct06_ma"/>
								</td>
				</tr>
				<tr>
								<td colspan="3">
									<b>[06.1] </b>Số nhà, đường phố/xóm/ấp/thôn:  
									<xsl:value-of select="$tkchinh/Header/ct06_1_diaChi"/>
								</td>
				</tr>
				<tr>
								<td colspan="3">
									<b>[06.2] </b>Xã/phường/đặc khu:  
									<xsl:value-of select="$tkchinh/Header/ct06_2_ten"/>
								</td>
				</tr>
				<tr>
								<td colspan="3">
									<b>[06.3] </b>Tỉnh/Thành phố:
									<xsl:value-of select="$tkchinh/Header/ct06_3_ten"/>
								</td>
				</tr>
				<tr>
					<td>
						<b>[07] Tổ chức/cá nhân khai, nộp thuế thay theo ủy quyền (nếu có): </b> 
                            <xsl:value-of select="$tkchinh/Header/ct07_ten"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07.1]</b> Mã số thuế  
                            <xsl:value-of select="$tkchinh/Header/ct07_1_ma"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07.2]</b> Văn bản ủy quyền (nếu có): Số   
                            <xsl:value-of select="$tkchinh/Header/ct07_2_so"/>
					
						ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct07_2_ngay,'dd')"/> 
						tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct07_2_ngay,'mm')"/> 
						năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct07_2_ngay,'yyyy')"/>
                            
					</td>
				</tr>					
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										
										<b>[08] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[08.1] </b>Mã số thuế:
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								
								
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										
										<b>[08] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[08.1] </b>Mã số thuế:
									</td>
								</tr>
							</xsl:if>
			</table>
						<br/>
					
		</div>
	</xsl:template>
	
	
	<!-- start header 01_BK_BDS-->
	<xsl:template name="tkhaiHeader_pluc_01_BK_BDS">
		<xsl:param name="mauTKhai"/>
		
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<table class="ttinnnt_table" width="100%">
					<tr>
						<td class="align-c" colspan="3">
							<br/>	
							<b>PHỤ LỤC</b><br/>					
							<b>BẢNG KÊ CHI TIẾT CÁ NHÂN CHO THUÊ BẤT ĐỘNG SẢN</b>
							<br/> (Kèm theo tờ khai 01/BĐS áp dụng đối với trường hợp cá nhân khai thuế đối với hoạt động cho thuê bất động sản) 
							<br></br>
							<br></br>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[01] Người nộp thuế: :</b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[02]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
						</td>
					</tr>
				</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc 01-1/BK-XSBHĐC Hộ kinh doanh-->
	<xsl:template name="tkhaiHeader_pluc_01_1_BK_XSBHĐC">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
				</xsl:call-template>
				<tr>
					<td class="align-c" colspan="3">
					<xsl:variable name="date" select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay"/>

						<b>[01]</b> Kỳ tính thuế: Năm <xsl:value-of select="substring-after(substring-after($date, '/'), '/')" />
					
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
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05]</b> Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 01_CNKD_TCKT-->
	<xsl:template name="tkhaiHeader_01_CNKD_TCKT">
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
				<!-- <tr>
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='M'"> 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='Q'">Quý
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
					</td>	
				</tr> -->
				<tr>
					<td class="align-l">
				
			 <!--<div>[<xsl:if test="$tkchinh/doanhThuTren50Ty='true' or $tkchinh/doanhThuTren50Ty='1'">x</xsl:if>] <lable>  Doanh thu trên 3 tỷ đồng</lable></div>-->
						
						 <div>[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/hopTacKD='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/hopTacKD= '1'">X</xsl:if>] Tổ chức khai thuế thay, nộp thuế thay cá nhân hợp tác kinh doanh với tổ chức</div>
                        <br/>
                        
                        		<!--<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/hopTacKD='false' or '0'">
						[ ] Tổ chức khai thuế thay, nộp thuế thay cá nhân hợp tác kinh doanh với tổ chức   
						 </xsl:if>-->
						<div>[<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/batDongSan='true' or HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/batDongSan=  '1'">X</xsl:if>] Tổ chức khai thuế thay, nộp thuế thay cho cá nhân cho thuê bất động sản </div>
						<br/>
					<!--<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ThongTinKeKhai/DoiTuong/batDongSan='false' or '0'">
						[ ] Tổ chức khai thuế thay, nộp thuế thay cho cá nhân cho thuê bất động sản 
						 </xsl:if>--> 
						 					</td>
				</tr>
				
				<tr>
				   <td class="align-c" >
					<b>[01]</b> Kỳ tính thuế:
				  	<!-- <xsl:if test="$kieuKy='Y'"> [01e]<xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						
					</xsl:if> -->
				
					<xsl:if test="$kieuKy='Q'">[01b] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						<!--(Từ tháng: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> 	
              &#160;	
             	
             &#160; Đến tháng <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)-->

					</xsl:if>
					
					
						<xsl:if test="$kieuKy='M'"> [01a] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  <br/>
						</xsl:if>
<xsl:if test="$kieuKy='D'"> [01c] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  <br/>
						</xsl:if>
						
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
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tổ chức khai, nộp thuế thay theo pháp luật quản lý thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[04.1]</b> Mã số thuế:
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[04.2]</b> Điện thoại: 
							<xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					
					<b>[04.3]</b> Email:
							<xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[05] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[05.1]</b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[05] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
				           <b>[05.1]</b> Mã số thuế:
						</td>
					</tr>
					
				</xsl:if>
				
			</table>
		</div>
	</xsl:template>
	
		<!-- start header phụ lục BĐS của 01/TCKT-->
<xsl:template name="tkhaiHeader_pluc_CNKD_BDS_TCKT">
    <xsl:param name="mauTKhai"/>
    <xsl:param name="moTaBieuMau"/>
    <xsl:param name="ghuchuTK"/>
    <xsl:variable name="pl01" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_CANHAN_TTS' />
    <div class="header_div">
        <table>

            <table class="ttinnnt_table">
                <td style="width:77%;text-align:center">
                    

                    <b>PHỤ LỤC</b>
                    <br></br>

                    <b>BẢNG KÊ CHI TIẾT CÁ NHÂN CHO THUÊ BẤT ĐỘNG SẢN</b>
                          <br></br>
                    
 (Kèm theo tờ khai 01/TCKT áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho cá nhân cho thuê bất động sản)
                </td>
                <td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
                    <div class="bieu_mau_div">
                        <div>Mẫu số: <b>
                            <xsl:value-of select="$mauTKhai"/>
                        </b>
                            

                            <span class="mtatentkhai" style="font-size:9pt">(
                                <xsl:value-of select="$moTaBieuMau"/>
                                ) </span>
                        </div>
                    </div>
                </td>
                <!--       <tr>
                           <td class="align-c" >
                            <b>[01]</b> Kỳ tính thuế:
                              <xsl:if test="$kieuKy='Y'"> [01e]<xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>

                            </xsl:if>

                            <xsl:if test="$kieuKy='Q'">[01b] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
                                (Từ tháng: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/>
                      &#160;

                     &#160; Đến tháng <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)

                            </xsl:if>


                                <xsl:if test="$kieuKy='M'"> [01a] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  

                                </xsl:if>

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
                        </tr> -->
                <tr>
                    <td colspan="3">
                        <b>[01] Tổ chức khai, nộp thuế thay theo pháp luật quản lý thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>[02]</b> Mã số thuế:
                        <xsl:value-of select="$ttkthue/NNT/mst"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>[03]</b> Địa chỉ nơi có bất động sản cho thuê:
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <b>[03.1]</b> Xã/phường/đặc khu:
                        <xsl:value-of select="$pl01/DiaChi_BDS/ten_xa"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <b>[03.2]</b> Tỉnh/TP:
                        <xsl:value-of select="$pl01/DiaChi_BDS/ten_tinh"/>
                    </td>
                </tr>


            </table>

        </table>

    </div>
</xsl:template>

<!-- start header phụ lục HTKD của 01/TCKT-->
   <xsl:template name="tkhaiHeader_pluc_TCKT">
       <xsl:param name="mauTKhai"/>
       <xsl:param name="moTaBieuMau"/>
       <xsl:param name="ghuchuTK"/>
    <div class="header_div">
       <table>

          <table class="ttinnnt_table">
                   <td style="width:77%;text-align:center">
                       

                       <b>PHỤ LỤC</b>
<br></br>
                       <b>
                           BẢNG KÊ CHI TIẾT HỘ KINH DOANH, CÁ NHÂN KINH DOANH</b>
                       <br></br>
 (Kèm theo Tờ khai 01/TCKT áp dụng đối với tổ chức khai thuế thay, nộp thuế thay cho cá nhân hợp tác kinh doanh với tổ chức)

                   </td>
                   <td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
                       <div class="bieu_mau_div">
                           <div>Mẫu số: <b>01/BK-KTHTKD </b> <b>
                               <xsl:value-of select="$mauTKhai"/>
                           </b>
                               

                               <span class="mtatentkhai" style="font-size:9pt">(
                                   <xsl:value-of select="$moTaBieuMau"/>
                                   ) </span>
                           </div>
                       </div>
                   </td>
             <!--   <tr>
                          <td class="align-c" >
                           <b>[01]</b> Kỳ tính thuế:
                              <xsl:if test="$kieuKy='Y'"> [01e]<xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>

                           </xsl:if>

                           <xsl:if test="$kieuKy='Q'">[01b] <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
                               (Từ tháng: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/>
                     &#160;

                    &#160; Đến tháng <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)

                           </xsl:if>


                               <xsl:if test="$kieuKy='M'"> [01a] <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  

                               </xsl:if>

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
                       </tr>-->
             <tr>
                <td colspan="3">
                   <b>[01] Tổ chức khai, nộp thuế thay theo pháp luật quản lý thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                </td>
             </tr>
             <tr>
                <td colspan="3">
                   <b>[02]</b> Mã số thuế:
                   <xsl:value-of select="$ttkthue/NNT/mst"/>
                </td>
             </tr>

          </table>

       </table>

    </div>
	</xsl:template>
	
	<!-- start tkhai header plucNQ142GTGT -->
		<xsl:template name="tkhaiHeader-pluc142GTGT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<!--<xsl:param name="tenPL"/>-->
		<xsl:param name="tenPLGTGT"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:variable name="kkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue' />	
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:80%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
				
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<!--<xsl:value-of select="$tenPL"/>-->
							<xsl:if test="ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'yyyy')='2024'">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 142/2024/QH15 
							</xsl:if>
							<xsl:if test="ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'mm')&lt;='06'and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'mm')&gt;='01'and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&gt;='2025'">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 174/2024/QH15 
							</xsl:if>
							<xsl:if test="ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'mm')&lt;='12'and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'mm')&gt;='07'and (ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&gt;='2025' or ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&gt;='2026')">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 204/2025/QH15 
							</xsl:if>
							
						
							
						</b>
					</td>
				</tr>
				
				<tr>					
				<td class="align-c" colspan="3">
				<i>
				<xsl:value-of select="$ghiChuPL"/>
				</i>
				</td>
				</tr>
				<!-- end -->
				<tr>
					<td class="align-c" colspan="3">
						<i>(Kèm theo Tờ khai thuế GTGT Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>)</i>
					</td>
				</tr>
				
				<tr>
					<td class="align-l">
					<br/>
				
						[01] Tên người nộp thuế:
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						[02] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							[03] Tên đại lý thuế (nếu có): 
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							[04] Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							[03] Tên đại lý thuế (nếu có):
						</td>
					</tr>
					<tr>
						<td class="align-l">
[04] Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	<!-- Start tkhai header BCTC_TT200_ Năm-->
	<xsl:template name="tkhaiHeader-BCTC200_Nam">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC209_Nam">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 200 năm-->
		<xsl:template name="BieuNguDatNuoc_BCTC209_Nam">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		
		
		<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B01 - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BẢNG CÂN ĐỐI KẾ TOÁN
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc BCTC 200-->
	<xsl:template name="tkhaiHeader-plucBCTC200">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B02 - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 200-->
	<xsl:template name="tkhaiHeader-plucBCTC200_LCTTTT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B03a - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp trực tiếp) (*)
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 200-->
	<xsl:template name="tkhaiHeader-plucBCTC200_LCTTGT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B03b - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp gián tiếp) (*)
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- Start tkhai header BCTC209_ Giữa niên độ-->
	<xsl:template name="tkhaiHeader-BCTC209_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC209_GND">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 209 Giữa niên độ-->
		<xsl:template name="BieuNguDatNuoc_BCTC209_GND">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		
		
		<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					  
					  
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B01a - ĐTĐP</b>

<br/><i>Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BẢNG CÂN ĐỐI KẾ TOÁN GIỮA NIÊN ĐỘ
						<br/>
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					<br/>Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc BCTC 209 Báo cáo kết quả hoạt động kinh doanh Giữa niên độ-->
	<xsl:template name="PLuc_BCTC209_KQHDSXKD_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B02a - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH GIỮA NIÊN ĐỘ
						<br/>
						</b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 209 Báo cáo lưu chuyển tiền tệ trực tiếp giữa niên độ-->
	<xsl:template name="PLuc_BCTC209_LCTTTT_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03a - ĐTĐP</b>

<br/><i>Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ
						 </b>
						 <br/>
						 (Theo phương pháp trực tiếp) (*)
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	
	
	<!-- start header Phuluc BCTC 209 Báo cáo lưu chuyển tiền tệ gián tiếp giữa niên độ-->
	<xsl:template name="PLuc_BCTC209_LCTTGT_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03b - ĐTĐP</b>

<br/><i>Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ
						 </b>
						 <br/> 
						 <br/>
						 (Theo phương pháp gián tiếp) (*)
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>

			</table>
			</table>
		</div>
	</xsl:template>
	
	
	
	
	
	<!-- Start tkhai header BCTC_TT200_ GND-->
	<xsl:template name="tkhaiHeader-BCTC200_GND">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC200_GND">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 200 GND-->
		<xsl:template name="BieuNguDatNuoc_BCTC200_GND">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		
		
		<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B01a - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BẢNG CÂN ĐỐI KẾ TOÁN
						 </b>
						
					</td>
				</tr>
				<tr>
					<xsl:if test="$kieuKy='Q'">
								
								Quý <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
								
							</xsl:if>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc BCTC 200 GND-->
	<xsl:template name="tkhaiHeader-plucBCTC200_GND">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B02 - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 200 GND-->
	<xsl:template name="tkhaiHeader-plucBCTC200_LCTTTT_GND">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B03a - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp trực tiếp) (*)
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 200 GND-->
	<xsl:template name="tkhaiHeader-plucBCTC200_LCTTGT_GND">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>B03b - ĐTĐP</b>

<br/><i>(Ban hành theo Thông tư số 209/2015/TT-BTC ngày 28/12/2015 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp gián tiếp) (*)
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	
	
	
	
	
	
	
	<!-- Start tkhai header BCTC_TT125_ Năm-->
	<xsl:template name="tkhaiHeader-BCTC125_Nam">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC200_Nam">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 125 năm-->
		<xsl:template name="BieuNguDatNuoc_BCTC200_Nam">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		
		
		<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<p>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></p>
					<p>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
					<p>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></p>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B01 – CTQ</b>

<br/><i>(Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BẢNG CÂN ĐỐI KẾ TOÁN
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc BCTC 125 nam-->
	<xsl:template name="tkhaiHeader-plucBCTC125_KQHDSXKD">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<p>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></p>
					<p>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
					<p>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></p>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B02 – CTQ</b>

<br/><i>(Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 125 nam-->
	<xsl:template name="tkhaiHeader-plucBCTC125_LCTTTT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<p>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></p>
					<p>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
					<p>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></p>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03 - CTQ</b>

<br/><i>Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp trực tiếp) (*)
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 125 nam-->
	<xsl:template name="tkhaiHeader-plucBCTC125_LCTTGT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 <b>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>. Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></b>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03 - CTQ</b>

<br/><i>(Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ
						 </b>
						 <br/>
						 (Theo phương pháp gián tiếp) (*)
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc BCTC 125 nam-->
	<xsl:template name="tkhaiHeader-plucBCTC125_BDVCSH">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<p>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></p>
					<p>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></p>
					<p>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></p>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B05 - CTQ</b>

<br/><i>(Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO TÌNH HÌNH BIẾN ĐỘNG VỐN CHỦ SỞ HỮU
						 </b>
						
						 
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
		<!-- Start tkhai header BCTC_TT24 năm 2024_ Năm-->
	<xsl:template name="tkhaiHeader-BCTC24_Nam">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC24_Nam">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

				<tr>
					<td class="align-c" colspan="3">
					 Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 24 năm-->
		<xsl:template name="BieuNguDatNuoc_BCTC24_Nam">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		<tr>
			<td style="width:40%;text-align:center">
			
			<xsl:value-of select="translate(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenCoQuanCapTren,$smallcase,$uppercase)"/>
			<br/>
			<b>
			<xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/>
			</b>
			</td>
			<td style="width:44%;text-align:center">
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
			<td class="align-c" colspan="3"><b> BÁO CÁO TÌNH HÌNH TÀI CHÍNH</b></td>
		</tr>
		<!--
		
		<tr>
			<td class="align-c"><i>Cho năm tài chính kết thúc ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd')"/>  tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'yyyy')"/></i></td>
		</tr>
		-->
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc KQHD BCTC TT 24/2024-->
	
	<xsl:template name="tkhaiHeader-plucBCTC24">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_PL_BCTC24_Nam">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

				<tr>
					<td class="align-c" colspan="3">
					 Năm: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhai"/> 
					</td>
				</tr>
				
			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên phụ lục BCTC thông tư 24 năm-->
		<xsl:template name="BieuNguDatNuoc_PL_BCTC24_Nam">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		<tr>
			<td style="width:40%;text-align:center">
			
			<xsl:value-of select="translate(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenCoQuanCapTren,$smallcase,$uppercase)"/>
			<br/>
			<b>
			<xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/>
			</b>
			</td>
			<td style="width:44%;text-align:center">
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
			<td class="align-c" colspan="3"><b> BÁO CÁO KẾT QUẢ HOẠT ĐỘNG</b></td>
		</tr>
		<!--
		
		<tr>
			<td class="align-c"><i>Cho năm tài chính kết thúc ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd')"/>  tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'yyyy')"/></i></td>
		</tr>
		-->
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc LCTT BCTC TT 24/2024-->
	
	<xsl:template name="tkhaiHeader-plucBCTC24_LCTT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_PL_BCTC24_Nam_LCTT">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

				<tr>
					<td class="align-c" colspan="3">
					 Năm: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhai"/> 
					</td>
				</tr>
				
			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên phụ lục BCTC thông tư 24 năm-->
		<xsl:template name="BieuNguDatNuoc_PL_BCTC24_Nam_LCTT">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		<tr>
			<td style="width:40%;text-align:center">
			
			<xsl:value-of select="translate(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/tenCoQuanCapTren,$smallcase,$uppercase)"/>
			<br/>
			<b>
			<xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/>
			</b>
			</td>
			<td style="width:44%;text-align:center">
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
			<td class="align-c" colspan="3"><b> BÁO CÁO LƯU CHUYỂN TIỀN TỆ</b></td>
		</tr>
		<!--
		
		<tr>
			<td class="align-c"><i>Cho năm tài chính kết thúc ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd')"/>  tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'yyyy')"/></i></td>
		</tr>
		-->
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- Start tkhai header BCTC125_ Giữa niên độ-->
	<xsl:template name="tkhaiHeader-BCTC125_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguDatNuoc_BCTC125_GND">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template> <br/>

			</table>
		</div>
	</xsl:template>
	<!-- Biểu ngữ đất nước + Tên tờ khai BCTC thông tư 125 Giữa niên độ-->
		<xsl:template name="BieuNguDatNuoc_BCTC125_GND">
		<xsl:param name="mauTKhai_"/>
		<xsl:param name="moTaBieuMau_"/>
		<xsl:param name="ttkthue_"/>
		<xsl:param name="ghuchuTK_"/>
		
		
		<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Đơn vị báo cáo: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					  
					 <br/>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax:<xsl:value-of select="$ttkthue/NNT/faxNNT"/>   
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B01a – CTQ</b>

<br/><i>Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BẢNG CÂN ĐỐI KẾ TOÁN GIỮA NIÊN ĐỘ
						<br/>(Dạng đầy đủ)
						 </b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					<br/>Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		
		<tr>
			<td class="mtatentkhai">
				<div style="width:80% ">
					<xsl:value-of select="$ghuchuTK_"/>
				</div>
			</td>
			<td/>
		</tr>
	</xsl:template>
	<!-- start header Phuluc BCTC 125 Báo cáo kết quả hoạt động kinh doanh Giữa niên độ-->
	<xsl:template name="PLuc_BCTC125_KQHDSXKD_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Công ty quản lý quỹ: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 <br/>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax:<xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B02a – CTQ</b>

<br/><i>(Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính)</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO KẾT QUẢ HOẠT ĐỘNG KINH DOANH GIỮA NIÊN ĐỘ
						<br/>(Dạng đầy đủ)
						</b>
						
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 125 Báo cáo lưu chuyển tiền tệ trực tiếp giữa niên độ-->
	<xsl:template name="PLuc_BCTC125_LCTTTT_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Công ty quản lý quỹ: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 <br/>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax:<xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03a - CTQ</b>

<br/><i>Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ
						 </b>
						 <br/>
						 (Theo phương pháp trực tiếp) (*)
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
					<xsl:variable name="thang" select="number(ihtkk:stringDatetime($denNgay,'mm'))"/>

                    Quý <xsl:value-of select="ceiling($thang div 3)"/> Năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				
				
			</table>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header Phuluc BCTC 125 Báo cáo lưu chuyển tiền tệ gián tiếp giữa niên độ-->
	<xsl:template name="PLuc_BCTC125_LCTTGT_GiuaNienDo">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b>Công ty quản lý quỹ: <xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					
					 <br/>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>,<xsl:value-of select="$ttkthue/NNT/phuongXa"/>, <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					 <br/>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> Fax:<xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<tr>
			<td style="width:50%;text-align:center">
				<b>Mẫu số B03a - CTQ</b>

<br/><i>Ban hành theo Thông tư số 125/2011/TT-BTC ngày 05/09/2011 của Bộ Tài chính</i>
				
            </td>
		
		</tr>
					
				</tr>
				
				<tr>
				<td class="align-c" colspan="2">
					<br/>		
		<b>
						BÁO CÁO LƯU CHUYỂN TIỀN TỆ GIỮA NIÊN ĐỘ
						 </b>
						 <br/> (Dạng đầy đủ)
						 <br/>
						 (Theo phương pháp gián tiếp) (*)
						
					</td>
				</tr>

			</table>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
