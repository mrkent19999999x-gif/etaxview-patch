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
	<!-- start tkhai header (ko có lần xuất bán) VSP-->
	<xsl:template name="tkhaiHeader-VSP1">
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
				<tr>
					<td colspan="3">
						<b>[12]</b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct12"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct13"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[14] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[15] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[16]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[17]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[18] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[19]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[20]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[21]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[14] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]:  </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[15] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[16]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[17]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[18] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[19]</b> Điện thoại: 
                        </td>
						<td>
							<b>[20]</b> Fax: 
                        </td>
						<td>
							<b>[21]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[22] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
			</table>
			<br/>
		</div>
	</xsl:template>
	<!-- start tkhai header (có kỳ kết dư) VSP-->
	<xsl:template name="tkhaiHeader-VSP2">
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
						<b>[02]</b> Kỳ kết dư: từ <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT02/tuNgay,'dd/mm/yyyy')"/> đến <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT02/denNgay,'dd/mm/yyyy')"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[03]</b> Lần đầu: [X] <b>[04] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[03]</b> Lần đầu: [&#32;] <b>[04] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[05] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[09]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[11] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[12]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13]</b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct13"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[14]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct14"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[15] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT15/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT15/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[16] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[17]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[19] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[21]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[22]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[23] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[15] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT15/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT15/daiLyThue='true' ">x</xsl:if>]: </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[16] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[17]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[19] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Điện thoại: 
                        </td>
						<td>
							<b>[21]</b> Fax: 
                        </td>
						<td>
							<b>[22]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[23] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc Vietsovpetro-->
	<xsl:template name="tkhaiHeader-pluc_VSP">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[04] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[04] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]:  </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header Vietsovpetro (Lần xuất bán)-->
	<xsl:template name="tkhaiHeader-VSP">
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
					<td class="align-c" colspan="3">
						<b>[02]</b>Lần xuất bán thứ: <xsl:value-of select="$tkchinh/ct02"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[03]</b> Lần đầu: [X] <b>[04] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[03]</b> Lần đầu: [&#32;] <b>[04] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[05]</b> Xuất khẩu: [<xsl:if test="$tkchinh/ct05='true' ">x</xsl:if>] <b>[06] </b> Xuất bán tại Việt Nam: [<xsl:if test="$tkchinh/ct06='true' ">x</xsl:if>]</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[07]</b> Ngày xuất hoá đơn đối với xuất bán tại Việt Nam: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct07,'dd/mm/yyyy')"/>
					</td>
				</tr>
				<tr>
					<td>
                        
                    </td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[08] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[09] Mã số thuế:</b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[11]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[12]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[13] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[14] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[15]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[16] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct16"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[17]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct17"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[18] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT18/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[19] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[21]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td>
							<b>[22] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[23]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[24]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[25]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[26] </b>  Hợp đồng hoặc Hợp đồng đại lý thuế, số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[18] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT18/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]: </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[19] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[21]</b> Quận/Huyện: 
                        </td>
						<td>
							<b>[22] </b>Tỉnh/Thành phố:
                        </td>
					</tr>
					<tr>
						<td>
							<b>[23]</b> Điện thoại: 
                        </td>
						<td>
							<b>[24]</b> Fax: 
                        </td>
						<td>
							<b>[25]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[26] </b>  Hợp đồng hoặc Hợp đồng đại lý thuế, số  
                        </td>
						<td colspan="2"> ngày: 
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header Vietsovpetro (Lần xuất bán tại Việt Nam)-->
	<xsl:template name="tkhaiHeader-VSP4">
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
					<td class="align-c" colspan="3">
						<b>[02] </b> Lần xuất bán thứ: <xsl:value-of select="$tkchinh/ct02"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[03]</b> Lần đầu: [X] <b>[04] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[03]</b> Lần đầu: [&#32;] <b>[04] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[05] </b> Xuất bán tại Việt Nam: [<xsl:if test="$tkchinh/ct05='true' ">X</xsl:if>]</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[06]</b> Ngày xuất hoá đơn đối với xuất bán tại Việt Nam: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct06,'dd/mm/yyyy')"/>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[07] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[08] Mã số thuế:</b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[11]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[12] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[13] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[14]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[15] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct15"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[16]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct16"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[17] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT17/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[18] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[19]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td>
							<b>[21] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[22]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[23]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[24]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[25] </b>  Hợp đồng hoặc Hợp đồng đại lý thuế, số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[17] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT17/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]:  </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[18] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[19]</b> Địa chỉ:
                        </td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Quận/Huyện: 
                        </td>
						<td>
							<b>[21] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[22]</b> Điện thoại: 
                        </td>
						<td>
							<b>[23]</b> Fax: 
                        </td>
						<td>
							<b>[24]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[25] </b>  Hợp đồng hoặc Hợp đồng đại lý thuế, số
                        </td>
						<td colspan="2"> ngày:
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header  01A/TNDN-->
	<xsl:template name="tkhaiHeader-01ATNDN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">       
                        [<xsl:if test="$tkchinh/dnQuiMoVuaVaNho = 'true' "> X </xsl:if>]  Doanh nghiệp có quy mô nhỏ và vừa
                    </td>
				</tr>
				<tr>
					<td class="align-c">
                        [<xsl:if test="$tkchinh/dnCoCSoHToanPThuoc = 'true' "> X </xsl:if>]  Doanh nghiệp có cơ sở sản xuất hạch toán phụ thuộc
                    </td>
				</tr>
				<tr>
					<td>
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
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header  03/TNDN-->
	<xsl:template name="tkhaiHeader-03TNDN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">
                        [<xsl:if test="$tkchinh/doanhNghiepCoCSoHToanPThuoc = 'true' ">x</xsl:if>]  Doanh nghiệp có cơ sở sản xuất hạch toán phụ thuộc
                    </td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[06] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[07] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[08] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
									<b>[10]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[11] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[12] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[13]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[14] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[15] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[16]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[17]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[18] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[20]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[21]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[14] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[15] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[16]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[17]</b> Quận/Huyện:
                                    </td>
									<td colspan="2">
										<b>[18] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[20]</b> Fax: 
                                    </td>
									<td>
										<b>[21]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[22] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header  03/TNDN TT56-->
	<xsl:template name="tkhaiHeader-03TNDN_TT56">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">
                        [<xsl:if test="$tkchinh/doanhNghiepCoQuyMoVuaVaNho = 'true' ">x</xsl:if>]  Doanh nghiệp có quy mô vừa và nhỏ
                    </td>
				</tr>
				<tr>
					<td class="align-c">
                        [<xsl:if test="$tkchinh/doanhNghiepCoCSoHToanPThuoc = 'true' ">x</xsl:if>]  Doanh nghiệp có cơ sở sản xuất hạch toán phụ thuộc
                    </td>
				</tr>
				<tr>
					<td class="align-c">
                        [<xsl:if test="$tkchinh/doanhNghiepKeKhaiTTinLienKet = 'true' ">x</xsl:if>]  Doanh nghiệp thuộc đối tượng kê khai thông tin giao dịch liên kết
                    </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[04]</b> Ngành nghề có tỷ lệ doanh thu cao nhất: <xsl:value-of select="$tkchinh/ct_04"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[05]</b> Tỷ lệ (%): <span class="number">
							<xsl:value-of select="$tkchinh/ct_05"/>
						</span>%</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[06] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[07] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[08] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
									<b>[10]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[11] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[12] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[13]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[14] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[15] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[16]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[17]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[18] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[20]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[21]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[14] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[15] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[16]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[17]</b> Quận/Huyện:
                                    </td>
									<td colspan="2">
										<b>[18] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[20]</b> Fax: 
                                    </td>
									<td>
										<b>[21]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[22] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header KHBS-->
	<xsl:template name="tkhaiHeader-khbs">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="mauTKhaiChinh"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<tr>
					<td style="width:80%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
                    </td>
					<td style="width:17% ; vertical-align: top;" rowSpan="3" align="top">
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
					<td class="bketitle">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<div style="width:80% ">
							<i>
                            (Bổ sung, điều chỉnh các thông tin đã khai tại <xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>, 
                            mẫu số <xsl:value-of select="$mauTKhaiChinh"/>,  
                            kỳ tính thuế <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
                           , ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'yyyy')"/>)
                        </i>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[01] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[02] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[03] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[04]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[05]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[07] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[08]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[09] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[10] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[11]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[12]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[13] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[14]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[15]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[16]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[17] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[09] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[10] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[11]</b> Địa chỉ: </td>
					</tr>
					<tr>
						<td>
							<b>[12]</b> Quận/Huyện: </td>
						<td colspan="2">
							<b>[13] </b>Tỉnh/Thành phố: </td>
					</tr>
					<tr>
						<td>
							<b>[14]</b> Điện thoại: </td>
						<td>
							<b>[15]</b> Fax: </td>
						<td>
							<b>[16]</b> E-mail: </td>
					</tr>
					<tr>
						<td>
							<b>[17] </b> Hợp đồng đại lý thuế: Số  </td>
						<td colspan="2"> Ngày: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header 01TNKDCK -->
	<xsl:template name="tkhaiHeader-01TNKDCK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
				<br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
		</div>
		<div class="header_div">
			<table>
				<tr>
					<td class="tentkhai">
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai">
						<xsl:value-of select="$ghuchuTK"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header 01/VTNN-->
	<xsl:template name="tkhaiHeader-01VTNN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Bên Việt Nam khấu trừ và nộp thuế thay</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] Mã số thuế của bên Việt Nam khấu trừ và nộp thuế thay: </b>
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
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 01/HKNN-->
	<xsl:template name="tkhaiHeader-01HKNN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên Hãng hàng không nước ngoài:</b>: <xsl:value-of select="$tkchinh/ct04"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] Nước cư trú:</b>: <xsl:value-of select="$tkchinh/ct05"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[06] Địa chỉ trụ sở chính tại nước ngoài: </b>: <xsl:value-of select="$tkchinh/ct06"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[07] Tên văn phòng/đại lý tại Việt Nam:</b>
									<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[08] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09] </b> Địa chỉ văn phòng/đại lý tại Việt Nam: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[10]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
									<b>[11]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[12] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[13] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[14]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[15] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[16] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[17]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[19] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[20]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[21]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[22]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[23] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[15] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[16] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[17]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[19] </b>Tỉnh/Thành phố:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[20]</b> Điện thoại:
                                    </td>
									<td>
										<b>[21]</b> Fax: 
                                    </td>
									<td>
										<b>[22]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[23] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 01/TBH-->
	<xsl:template name="tkhaiHeader-01TBH">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Bên Việt Nam khấu trừ và nộp thuế thay: </b>
									<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế: 
                                    <xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[06] </b> Địa chỉ văn phòng/đại lý tại Việt Nam: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
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
							<tr>
								<td colspan="3">
									<b>[12] Tên Tổ chức nhận tái bảo hiểm nước ngoài</b>: <xsl:value-of select="$tkchinh/Header/ct12"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[13]</b> Nước cư trú: <xsl:value-of select="$tkchinh/Header/ct13"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[14] </b>Địa chỉ trụ sở chính tại nước ngoài: <xsl:value-of select="$tkchinh/Header/ct14"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[15]</b>Mã số thuế tại nước cư trú: <xsl:value-of select="$tkchinh/Header/ct15"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] </b>Mã số thuế: 
                                        <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] </b>Mã số thuế: 
                                    </td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax: 
                                    </td>
									<td>
										<b>[23]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start header 2-->
	<xsl:template name="tkhaiHeader2">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
								<td colspan="2">
                                    Phường/xã: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>
								</td>
							</tr>
							<tr>
								<td>
                                    Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
                                    Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[07] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[09]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[12]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[13]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[14] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[15]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[16]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[17]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[18] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> </td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[12]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[13]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[14] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[15]</b> Điện thoại:
                                    </td>
									<td>
										<b>[16]</b> Fax:
                                    </td>
									<td>
										<b>[17]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[18] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start header 3-->
	<xsl:template name="tkhaiHeader3">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[05] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
								<td colspan="2">
                                    Phường/xã: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>
								</td>
							</tr>
							<tr>
								<td>
                                    Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
                                    Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
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
	<!-- start header 4-->
	<xsl:template name="tkhaiHeader4">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- end header 4-->
	<!--start header Thanh kiem tra -->
	<xsl:template name="tkhaiHeaderTbao">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<xsl:param name="tenPL"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
				<br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$tkchinh/cqtCapTren">
							<b>
								<xsl:value-of select="$tkchinh/cqtCapTren"/>
							</b>
							<br/>
						</xsl:if>
						<xsl:if test="$tkchinh/cqtCapDuoi">
							<b>
								<xsl:value-of select="$tkchinh/cqtCapDuoi"/>
							</b>
							<br/>
								
                            -------------------------<br/>
						</xsl:if>
						<xsl:if test="$tkchinh/so">									
                            Số: <xsl:value-of select="$tkchinh/so"/>
						</xsl:if>
					</td>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------<br/>
						<xsl:if test="$tkchinh/diaDiem">
							<i>
								<xsl:value-of select="$tkchinh/diaDiem"/>, ngày 
                                <!--cau lenh cat ngay....thang....-->
								<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'yyyy')"/>
							</i>
						</xsl:if>
					</td>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai" colspan="2">
						<xsl:value-of select="$ghuchuTK"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header Thong bao thue -TVAN -->
	<xsl:template name="tkhaiHeaderTBThue-TVAN">
		<xsl:param name="mauTKhai"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
			</div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>--------------oOo-----------<br/>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'dd')"/>								
                            tháng <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'mm')"/> năm 
                            <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'yyyy')"/>
						</i>
						<br/>
						<br/>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<b>THÔNG BÁO</b>
					</td>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttchungtb/TTinTBaoThue/tenTBao"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header Dang ky thue -->
	<xsl:template name="tkhaiHeaderDKThue">
		<xsl:param name="mauTKhai"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
			</div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>--------------oOo-----------<br/>
						<xsl:value-of select="DKyThue/NDungDKy/diaDiemTB"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttchungdk/TTinDKyThue/ngayDKy,'dd')"/>	tháng <xsl:value-of select="ihtkk:stringDatetime($ttchungdk/TTinDKyThue/ngayDKy,'mm')"/> năm 
                        <xsl:value-of select="ihtkk:stringDatetime($ttchungdk/TTinDKyThue/ngayDKy,'yyyy')"/>
						<br/>
						<br/>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<b>TỜ KHAI</b>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<br/>
						<b>
							<xsl:value-of select="$ttchungdk/TTinDKyThue/tenDKy"/>
						</b>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header Dang ky thue -->
	<xsl:template name="tkhaiHeaderDKThue_HS">
		<xsl:param name="mauTKhai"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
			</div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>--------------oOo-----------<br/>
					</td>
					<tr/>
					<tr/>
					<tr/>
					<tr/>
					<tr/>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<b>HỒ SƠ</b>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<br/>
						<b>
							<xsl:value-of select="$ttchungdk/TTinDKyThue/tenDKy"/>
						</b>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header Thong bao thue -->
	<xsl:template name="tkhaiHeaderTBThue">
		<xsl:param name="mauTKhai"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
			</div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:value-of select="$ttchungtb/CQT/tenCQT"/>
						<br/>
                        -------------------------<br/>
                        Số: <xsl:value-of select="$ttchungtb/TTinTBaoThue/soTBao"/>
					</td>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>--------------oOo-----------<br/>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'dd')"/>								
                            tháng <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'mm')"/> năm 
                            <xsl:value-of select="ihtkk:stringDatetime($ttchungtb/TTinTBaoThue/ngayTBao,'yyyy')"/>
						</i>
						<br/>
						<br/>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="align-c">
						<b>THÔNG BÁO</b>
					</td>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttchungtb/TTinTBaoThue/tenTBao"/>
					</td>
				</tr>
			</table>
		</div>
		<div style="padding-left:100px">
			<b>
				<i>
					<u>Kính gửi</u>
				</i>
			</b>:  <xsl:value-of select="$ttchungtb/NNhanTBaoThue/tenNNhan"/>
		</div>
		<br/>
		<div style="padding-left:167px;"> Mã số thuế: <xsl:value-of select="$ttchungtb/NNhanTBaoThue/maNNhan"/>
		</div>
		<br/>
	</xsl:template>
	<!--start header XNhan_TNCN_01XNCG-->
	<xsl:template name="tkhaiTNCN-01XNCG">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
				<br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">								
                    </td>
					<td class="align-c">								
                    </td>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai" colspan="2">
						<xsl:value-of select="$ghuchuTK"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header XNhan_TNCN_02XNMT-->
	<xsl:template name="tkhaiHeaderTNCN-02XNMT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
				<br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>TỔNG CỤC THUẾ </b>
						<br/>
                        CỤC THUẾ  <xsl:value-of select="$tkchinh/XacNhanCuaCQT/tenCQT"/>
						<br/>---------------------<br/>
					</td>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>---------------------<br/>
						<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayXacNhan,'dd')"/>							
                            tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayXacNhan,'mm')"/> năm 
                            <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayXacNhan,'yyyy')"/>
						</i>
					</td>
					<br/>
					<br/>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="2">
						<b>
							<xsl:value-of select="$ghuchuTK"/>
						</b>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header TB-TNCN-->
	<xsl:template name="tkhaiHeaderTbao-TNCN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="bieu_mau_div">
			<div>Mẫu số: <b>
					<xsl:value-of select="$mauTKhai"/>
				</b>
				<br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
		</div>
		<br/>
		<div class="header_div">
			<table>
				<tr>
					<td>     </td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$tkchinh/CoQuanTBao">
							<b>
								<xsl:value-of select="$tkchinh/CoQuanTBao/cucThue"/>
							</b>
							<br/>
							<b>
								<xsl:value-of select="$tkchinh/CoQuanTBao/chiCucThue"/>
							</b>
							<br/>								
                            -------------------------<br/>								
                            Số: <xsl:value-of select="$tkchinh/CoQuanTBao/soTBao"/>  /TB-CT (CCT)
                        </xsl:if>
					</td>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------<br/>
						<xsl:if test="$tkchinh/diaDiem">
							<i>
								<xsl:value-of select="$tkchinh/diaDiem"/>, ngày 
                                <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'dd')"/>								
                                tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'mm')"/> năm 
                                <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngay,'yyyy')"/>
							</i>
						</xsl:if>
					</td>
				</tr>
				<tr>
					<td class="tentkhai" colspan="2">
						<br/>
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai" colspan="2">
						<xsl:value-of select="$ghuchuTK"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header 02TNDN-->
	<xsl:template name="tkhaiHeader-02TNDN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr/>
				<tr>
					<td class="align-c">       
                        [<xsl:if test="$tkchinh/dnQuiMoVuaVaNho = 'true' "> x </xsl:if>]  Doanh nghiệp có quy mô vừa và nhỏ
                    </td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>1. Bên chuyển nhượng:</b>
								</td>
								<tr/>
							</tr>
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
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng: </b>
								</td>
							</tr>
							<tr>
                            </tr>
							<tr>
								<td colspan="3">
									<b>[12]</b> Tên tổ chức/cá nhân nhận chuyển nhượng:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct12"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[13]</b> Mã số thuế (đối với doanh nghiệp) hoặc số chứng minh nhân dân (đối với cá nhân):  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct13"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[14]</b> Địa chỉ: 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct14"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[15]</b> Hợp đồng chuyển nhượng bất động sản:  Số:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT15/soHD"/>
                                    Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayHD,'dd/mm/yyyy')"/>
				
                                    có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày 
                                    <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'dd/mm/yyyy')"/>
                                    (nếu có).		
											 
                                    <!--											có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'yyyy')"/>-->
                                    (nếu có).											
											 									
                                </td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày:
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- hết header 02TNDN-->
	<!--Start Header 06/TNCN-->
	<xsl:template name="tkhaiHeader-06TNDN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>Bên chuyển nhượng vốn:</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>Tên tổ chức có vốn chuyển nhượng</b>: <xsl:value-of select="$tkchinh/tenTChucCVonCNhuong"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>Địa chỉ trụ sở chính: </b>
									<xsl:value-of select="$tkchinh/diaChiTruSoChinh"/>
								</td>
							</tr>
							<tr colspan="3">
								<td>
									<b>Bên nhận chuyển nhượng vốn:</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>Tên tổ chức hoặc cá nhân nhận vốn chuyển nhượng:</b>
									<xsl:value-of select="$tkchinh/tenTChucCNNhanVonCNhuong"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
                                    Quốc tịch:<xsl:value-of select="$tkchinh/quocTich"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
                                    Địa chỉ trụ sở chính:<xsl:value-of select="$tkchinh/diaChiTruSoChinh"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>Mã số thuế (đối với doanh nghiệp) hoặc số chứng minh nhân dân (đối với cá nhân):</b>
									<xsl:value-of select="$tkchinh/mst"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
                                        Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
                                        Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
                                        Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
                                        Điện thoạ: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
                                        Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
                                        E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
                                        Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ttkthue/DLyThue/ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
                                        Địa chỉ:
                                    </td>
								</tr>
								<tr>
									<td>
                                        Quận/Huyện: 
                                    </td>
									<td colspan="2">
                                        Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
                                        Điện thoạ:
                                    </td>
									<td>
                                        Fax: 
                                    </td>
									<td>
                                        E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
                                        Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header 06TNDN-->
	<xsl:template name="tkhaiHeader-061TNDN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="tb_header">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr/>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>1. Bên chuyển nhượng:</b>
								</td>
								<tr/>
							</tr>
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
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng: </b>
								</td>
							</tr>
							<tr>
                            </tr>
							<tr>
								<td colspan="3">
									<b>[12]</b> Tên tổ chức/cá nhân nhận chuyển nhượng:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct12"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[13]</b> Mã số thuế (đối với doanh nghiệp) hoặc số chứng minh nhân dân (đối với cá nhân):  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct13"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[14]</b> Địa chỉ: 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct14"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[15]</b> Hợp đồng chuyển nhượng bất động sản:  Số:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT15/soHD"/>
                                    Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayHD,'dd/mm/yyyy')"/>
				
                                    có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày 
                                    <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'dd/mm/yyyy')"/>
                                    (nếu có).		
											 
                                    <!--											có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/CT15/ngayXN,'yyyy')"/>-->
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày:
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- hết header 06TNDN-->
	<!--Start Header 24/KK-TNCN-->
	<xsl:template name="tkhaiHeader-24KK-TNCN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần*:</td>
				</tr>
				<tr>
					<td>
						<b>A - PHẦN CÁ NHÂN TỰ KÊ KHAI</b>
					</td>
				</tr>
				<tr>
					<td>
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
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--start header DKy_TNCN-16DK-->
	<xsl:template name="tkhaiHeader-DKy_TNCN-16DK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<div class="header_div">
			<table>
				<tr>
					<td/>
				</tr>
				<tr>
					<td class="align-c">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>------------------------------------</td>
				</tr>
				<tr>
					<td class="tentkhai">
						<xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[01]</b> Lần đầu: [X] <b>[02] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[01]</b> Lần đầu: [&#32;] <b>[02] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<br/>
				<br/>
				<tr>
					<td>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[03] </b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[04]</b> Mã số thuế: 
                                    <xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b> Tên của tổ chức, cá nhân trả thu nhập: <xsl:value-of select="$tkchinh/ThongTinChungNNT/tenCQChiTraThuNhap"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[06]</b> Mã số thuế: <xsl:value-of select="$tkchinh/ThongTinChungNNT/mstCQChiTraThuNhap"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Start tkhai header 02LPTB-->
	<xsl:template name="tkhaiHeader-02LPTB">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<b>A. PHẦN NGƯỜI NỘP THUẾ TỰ KÊ KHAI:</b>
					</td>
					<br/>
				</tr>
				<tr>
					<td>
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
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Start tkhai header BC26-->
	<xsl:template name="tkhaiHeader-BC26">
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>1. Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>3. Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
									</b>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- Start tkhai header PL BK01/AC-->
	<xsl:template name="tkhaiHeader-pluc-bk01">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
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
					<td class="bketitle" colspan="1">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="1">
						<i>
							<xsl:value-of select="$ghiChuPL"/>
						</i>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>1. Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>3. Các loại hoá đơn chưa sử dụng: </b>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- Start tkhai header TT37_2010-->
	<xsl:template name="tkhaiHeader-TT372010">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<xsl:param name="ttkthue_" select="$ttkthue"/>
		<xsl:param name="ghuchuTK_" select="$ghuchuTK"/>
		<div class="header_div">
			<table style="width:100%;">
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
				<tr>
					<td class="align-c">
						<b></b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td>
									<b>Tổ chức chi trả thu nhập: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
									</b>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- Start tkhai header TB01-->
	<xsl:template name="tkhaiHeader-TB01">
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td>
									<b>1. Tên đơn vị phát hành: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>3. Địa chỉ trụ sở: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>4. Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
									</b>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Start tkhai header TB03-->
	<xsl:template name="tkhaiHeader-TB03">
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
					<td style="padding-left:100px">
						<b>Kính gửi: </b>
						<xsl:value-of select="$tkchinh/kinhGui"/>
					</td>
				</tr>
				<tr>
					<td>
						<table class="ttinnnt_table">
							<br/>
							<tr>
								<td>
									<b>1. Tên tổ chức, cá nhân: </b>
									<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>2. Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>3. Địa chỉ: </b>
									<xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Start tkhai header TT373-->
	<xsl:template name="tkhaiHeader-TT37">
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên tổ chức, cá nhân trả thu nhập : <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>[04] Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
									</b>
								</td>
								<td>
									<b>[05] Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
									</b>
								</td>
								<td>
									<b>[06] Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
									</b>
								</td>
							</tr>
							<tr>
								<td>
									<b>[07] Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
									</b>
								</td>
								<td>
									<b>[08] Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
									</b>
								</td>
								<td>
									<b>[09] E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
									</b>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- Start tkhai header BCTC-->
	<xsl:template name="tkhaiHeader-BCTC">
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên tổ chức, cá nhân trả thu nhập: </b>
									<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[04] Địa chỉ: </b>
									<xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
								<td>
									<b>[05] Quận/Huyện: </b>
									<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td>
									<b>[06] Tỉnh/Thành phố: </b>
									<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[07] Điện thoại: </b>
									<xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[08] Fax: </b>
									<xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[09] E-mail: </b>
									<xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>

		<!-- Start tkhai header BCTC_TT200-->
	<xsl:template name="tkhaiHeader-BCTC200">
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
				</xsl:call-template> <br/>
<tr>
					<td class="align-c">
					<xsl:if test="$tkchinh/hoatDongLienTuc = 'true' "> <i>(Áp dụng cho doanh nghiệp đáp ứng giả định hoạt động liên tục) </i></xsl:if> 
					<xsl:if test="$tkchinh/hoatDongKhongLienTuc = 'true' "> <i>(Áp dụng cho doanh nghiệp không đáp ứng giả định hoạt động liên tục) </i></xsl:if> 
                    </td>
					
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Tại ngày <xsl:value-of select="ihtkk:stringDatetime($denNgay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($denNgay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($denNgay,'yyyy')"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên tổ chức, cá nhân trả thu nhập: </b>
									<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[04] Địa chỉ: </b>
									<xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
								<td>
									<b>[05] Quận/Huyện: </b>
									<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td>
									<b>[06] Tỉnh/Thành phố: </b>
									<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[07] Điện thoại: </b>
									<xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[08] Fax: </b>
									<xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[09] E-mail: </b>
									<xsl:value-of select="$ttkthue/NNT/emailNNT"/>
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
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	
	<!-- start tkhai header 01A/DK-TNDN, 01/DK-TAIN  -->
	<xsl:template name="tkhaiHeader-DK1">
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
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/ct01 = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhi/ct02 = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/ct03 = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<i>(Đối với dầu thô và condensate là ngày,tháng, năm; Khí thiên nhiên là tháng, năm)</i>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[05]</b> Lần xuất bán thứ: <xsl:value-of select="$tkchinh/ct05"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[06]</b> Lần đầu: [X] <b>[07] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[06]</b> Lần đầu: [&#32;] <b>[07] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[08]</b> Xuất khẩu:  [ <xsl:if test="$tkchinh/LoaiXuatBan/ct08 = 'true' "> X </xsl:if>] 
                        <b>[09]</b> Xuất bán tại Việt Nam: [ <xsl:if test="$tkchinh/LoaiXuatBan/ct09 = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[10]</b> Ngày xuất hóa đơn đối với xuất bán tại Việt Nam: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct10,'dd/mm/yyyy')"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[11] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[12] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[13] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[14]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
									<b>[15]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[16] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[17] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[18]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[19]</b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct19"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[26]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[27]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số:  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' ">  </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[26]</b> Fax: 
                                    </td>
									<td>
										<b>[27]</b> E-mail:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: 
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 01B/DK-TNDN -->
	<xsl:template name="tkhaiHeader-DK2">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
							<tr>
								<td>
									<b>[12] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct12"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số:  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' ">  </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện:
                                    </td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại:
                                    </td>
									<td>
										<b>[19]</b> Fax: 
                                    </td>
									<td>
										<b>[20]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số:  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 02/DK-TAIN  -->
	<xsl:template name="tkhaiHeader-DK3">
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
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/dauTho = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhi/condensate = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/khiThienNhien = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[05]</b> Lần đầu: [X] <b>[06] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[05]</b> Lần đầu: [&#32;] <b>[06] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[07] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[08] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[10]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
								</td>
								<td colspan="2">
									<b>[11]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[12] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
								<td>
									<b>[13] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
								</td>
								<td>
									<b>[14]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[15]</b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct15"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax: 
                                    </td>
									<td>
										<b>[23]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: 
                                    </td>
									<td colspan="2"> ngày  tháng  năm 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 01/BCTL-DK  -->
	<xsl:template name="tkhaiHeader-DK4">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
							<tr>
								<td>
									<b>[12] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct12"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số:  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> X </xsl:if>]: 
                                            <xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện:
                                    </td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[19]</b> Fax: 
                                    </td>
									<td>
										<b>[20]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số:  
                                    </td>
									<td colspan="2"> Ngày:
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 03/TD-TAIN-->
	<xsl:template name="tkhaiHeader-03tain">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
									<td colspan="2">
										<b>[20A]</b> Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'yyyy')"/>
									</td>
								</tr>
							</xsl:if>
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
									<td colspan="2">
										<b>[20A]</b> Ngày  tháng  năm 
                                    </td>
								</tr>
							</xsl:if>
							<tr colspan="3">
								<td>
									<b>[21]</b> Tên loại tài nguyên: <xsl:value-of select="$tkchinh/ct21"/>
								</td>
							</tr>
							<tr colspan="3">
								<td>
									<b>[22]</b> Thuế suất (%): <xsl:value-of select="$tkchinh/ct22"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
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
	<!-- start header Phuluc-->
	<xsl:template name="tkhaiHeader-pluc">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL1"/>
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						<b>[03]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01PLDK-->
	<xsl:template name="tkhaiHeader-pluc01PLDK">
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
					<td class="align-c">
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/dauTho = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhicondensate = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/khiThienNhien = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3" class="align-c">
						<i>(Đối với dầu thô và condensate là ngày...tháng...năm hoặc năm; Khí thiên nhiên là tháng/ quý/ năm)</i>
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' ">
									<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
								</xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT20/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT20/daiLyThue = 'true' "> </xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01-02tain-dk-->
	<xsl:template name="tkhaiHeader-pluc01-02tain-dk">
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
					<td class="align-c">
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/ct01 = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhi/ct02 = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/ct03 = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3" class="align-c">
						<i>(Đối với dầu thô và condensate là ngày...tháng...năm hoặc năm; Khí thiên nhiên là tháng/ quý/ năm)</i>
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' ">
									<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
								</xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "/>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01-01b-dk-->
	<xsl:template name="tkhaiHeader-pluc01-01b-dk">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3" class="align-c">
						<i>(Đối với dầu thô và condensate là ngày...tháng...năm hoặc năm; Khí thiên nhiên là tháng/ quý/ năm)</i>
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td>
							<b>[04] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' ">
									<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
								</xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td>
							<b>[04] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT13/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "/>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 02_1_PL_DK-->
	<xsl:template name="tkhaiHeader-pluc02_1_PL_DK">
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
					<td class="align-c">
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/ct01 = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhi/ct02 = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/ct03 = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' ">
									<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
								</xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">[08] Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "/>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">[08] Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header pluc-04-1-gtgt-->
	<xsl:template name="tkhaiHeader-pluc-04-1-gtgt">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="mauSo"/>
		<div class="header_div">
			<table>
				<tr>
					<td class="align-c" colspan="3">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% ; vertical-align: top;" rowSpan="3" align="top">
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
					<td class="bketitle" colspan="3">
						<b>BẢNG KÊ KHAI ĐIỀU CHỈNH THUẾ GTGT ĐƯỢC KHẤU TRỪ NĂM <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_4B_GTGT/namKTru"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<i>(Kèm theo tờ khai thuế <xsl:value-of select="$tKhai"/> 
                            mẫu số <xsl:value-of select="$mauSo"/>   ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd')"/> tháng  <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'yyyy')"/>)</i>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế:</b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có):</b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có):</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01-1/VTNN-->
	<xsl:template name="tkhaiHeaderPL01-1_VTNN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct02"/>
					</td>
					<td class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct03"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): </td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- end header Phuluc 01-1/VTNN-->
	<!-- start header Phuluc 01-2/VTNN-->
	<xsl:template name="tkhaiHeaderPL01-2_VTNN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct02"/>
					</td>
					<td class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct03"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): </td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- end header Phuluc 01-2/VTNN-->
	<!-- start header Phuluc 01-3/VTNN-->
	<xsl:template name="tkhaiHeaderPL01-3_VTNN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct02"/>
					</td>
					<td class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct03"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): </td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">[08] Mã số thuế </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- end header Phuluc 01-3/VTNN-->
	<!-- start header Phuluc 01-1/HKNN-->
	<xsl:template name="tkhaiHeader-pluc-01-1-hknn">
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
						<b>[01]</b> Kỳ tính thuế: từ ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HKNN/ct01_tu,'dd/mm/yyyy')"/> đến ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HKNN/ct01_den,'dd/mm/yyyy')"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên Hãng hàng không nước ngoài: </b>
						<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct04"/>
					</td>
					<td class="align-l">
						<b>[03]</b> Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct05"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[04]</b> Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HKNN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[05] Tên văn phòng/đại lý bán vé tại Việt Nam: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l" colspan="2">
							<b>[07] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>[08]</b> Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l" colspan="2">
							<b>[07] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l" colspan="2">
							<b>[08]</b> Mã số thuế </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01-2/HKNN-->
	<xsl:template name="tkhaiHeader-pluc-01-2-hknn">
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
						<b>[01]</b> Kỳ tính thuế: từ ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN/ct01_tu,'dd/mm/yyyy')"/> đến ngày <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN/ct01_den,'dd/mm/yyyy')"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên Hãng hàng không nước ngoài: </b>
						<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct04"/>
					</td>
					<td class="align-l">
						<b>[03]</b> Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct05"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[04]</b> Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[05] Tên văn phòng/đại lý tại Việt Nam: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l" colspan="2">
						<b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l" colspan="2">
							<b>[07] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[08]</b> Mã số thuế:  <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l" colspan="2">
							<b>[07] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td>
							<b>[08]</b> Mã số thuế:  </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 01-1/TBH-TB, 01/TBH, Phu luc 02-1/TBH-TB-->
	<xsl:template name="tkhaiHeader-pluc-01-1-TBH-TB">
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
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[01] Tên tổ chức nhận tái bảo hiểm nước ngoài hoặc tổ chức được uỷ quyền: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[02] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">[03] Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">[05] Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[04] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">[05] Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start  header TKhai_TNCN_03KK -->
	<xsl:template name="tkhaiHeaderTKhai_TNCN_03KK">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
							<tr>
								<td colspan="3">
									<br/>
									<b>[12] Tên tổ chức khai thay (nếu  có): </b>
									<xsl:value-of select="$tkchinh/ToChucKhaiThay/ct12"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[13] Mã số thuế: </b>
									<xsl:value-of select="$tkchinh/ToChucKhaiThay/ct13"/>
								</td>
							</tr>
							<tr colspan="3">
								<td>
									<b>[14]</b> Địa chỉ: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct14"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[15]</b> Quận/Huyện: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct15"/>
								</td>
								<td colspan="2">
									<b>[16] </b>Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct16"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[17]</b> Điện thoại: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct17"/>
								</td>
								<td>
									<b>[18]</b> Fax: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct18"/>
								</td>
								<td>
									<b>[19]</b> E-mail: <xsl:value-of select="$tkchinh/ToChucKhaiThay/ct19"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td>
										<b>[20] </b> Tên đại lý thuế (nếu có):  <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[26]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[27]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td>
										<b>[20] </b> Tên đại lý thuế (nếu có):  </td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại:
                                    </td>
									<td>
										<b>[26]</b> Fax: 
                                    </td>
									<td>
										<b>[27]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start header Phuluc 09-3KK/TNCN-->
	<xsl:template name="tkhaiHeaderPL09-3KK_TNCN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td>
						<b>[03]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[04]</b> Họ và tên vợ (chồng) nếu có: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/KeKhai/ct04"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[05]</b> Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/KeKhai/ct05"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06]</b> Số CMND/ Số hộ chiếu vợ (chồng): <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/KeKhai/ct06"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header -->
	<xsl:template name="tkhaiHeader09KK_TNCN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
							<tr>
								<td>
									<b>[12]</b> Số tài khoản ngân hàng (nếu có): <xsl:value-of select="$tkchinh/ct12"/>
								</td>
								<td colspan="2">
									<b>[12a]</b> Mở tại: <xsl:value-of select="$tkchinh/ct12a"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[15]</b> Địa chỉ:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[16]</b> Quận/Huyện:
                                    </td>
									<td colspan="2">
										<b>[17] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[18]</b> Điện thoại:
                                    </td>
									<td>
										<b>[19]</b> Fax:
                                    </td>
									<td>
										<b>[20]</b> E-mail:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21] </b> Hợp đồng đại lý thuế: Số
                                    </td>
									<td colspan="2"> Ngày:
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header 02/NTNN, 04NTNN -->
	<xsl:template name="tkhaiHeader02_NTNN">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Bên Việt Nam khấu trừ và nộp thuế thay</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế của bên Việt Nam khấu trừ và nộp thuế thay:
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
							<tr>
								<td>
									<b>[21] </b> Hợp đồng nhà thầu: Số  <xsl:value-of select="$tkchinh/CT21/soHopDong"/>
								</td>
								<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayHopDong,'dd/mm/yyyy')"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
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
	<!-- start header Phuluc 02-1/NTNN-->
	<xsl:template name="tkhaiHeader-pluc02-1_NTNN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>Bên Việt nam khấu trừ và nộp thuế thay: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l"> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 02-2/NTNN-->
	<xsl:template name="tkhaiHeader-pluc02-2_NTNN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>Bên Việt Nam khấu trừ và nộp thuế thay (hoặc nhà thầu nước ngoài): </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l"> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header 01KK_TTS -->
	<xsl:template name="tkhaiHeader01KK_TTS">
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
					<td>
						<table>
							<tr>
								<td class="align-r">Hình thức kê khai:</td>
								<td>+ Quyết toán riêng cho từng năm [<xsl:if test="$tkchinh/HinhThucKeKhai/quyetToanRiengTungNam = 'true' ">X</xsl:if>]</td>
							</tr>
							<tr>
								<td/>
								<td>+ Quyết toán hết vào năm đầu của kỳ thanh toán [<xsl:if test="$tkchinh/HinhThucKeKhai/quyetToanHetVaoNamDau = 'true' ">X</xsl:if>]</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<i>(Trường hợp hợp đồng cho thuê tài sản có kỳ hạn thanh toán trên một năm) </i>
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
					<td>
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
							<tr>
								<td>
									<b>[21] </b> Văn bản uỷ quyền (nếu có): Số  <xsl:value-of select="$tkchinh/CT21/soVBUQ"/>
								</td>
								<td colspan="2"> Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'yyyy')"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
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
	<!-- start tkhai header BVMT_01 -->
	<xsl:template name="tkhaiHeaderBVMT_01">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
							<tr>
								<td>
									<b>[12]</b> Số tài khoản: <xsl:value-of select="$tkchinh/Header/ct12"/>
								</td>
								<td colspan="2">
									<b>[13]</b> tại Ngân hàng / KBNN: <xsl:value-of select="$tkchinh/Header/ct13"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[14] </b> Nghề nghiệp/ lĩnh vực hoạt động, kinh doanh chính: <xsl:value-of select="$tkchinh/Header/ct14"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[15] </b> Văn bản uỷ quyền: <xsl:value-of select="$tkchinh/Header/ct15"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[16] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[17] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax: 
                                    </td>
									<td>
										<b>[23]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[24] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	<!-- end tkhai header BVMT_01 -->
	<!--tkhai header 09/KK-TNCN -->
	<xsl:template name="tkhaiHeader09KK-TNCN">
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
				<tr>
					<td>
						<b>[12]</b> Số tài khoản ngân hàng (nếu có): <xsl:value-of select="$tkchinh/ct12"/>
					</td>
					<td colspan="2">
						<b>[12a]</b> Mở tại: <xsl:value-of select="$tkchinh/ct12a"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: 
                        </td>
						<td>
							<b>[19]</b> Fax: 
                        </td>
						<td>
							<b>[20]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- end tkhai header 09/KK-TNCN -->
	<!-- Phụ lục 09-3/PL-TNCN -->
	<xsl:template name="tkhaiHeader-pluc-09-3-TNCN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL1"/>
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						<b>[03]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[04]</b> Họ và tên vợ (chồng) nếu có:  <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/ct04"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05]</b> Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/ct05"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[06]</b> Số CMND/ Số hộ chiếu vợ (chồng): <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL09-3_TNCN/ct06"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- Kết thúc header phụ lục 09-3/PL-TNCN -->
	<!--tkhai header 13/KK-TNCN -->
	<xsl:template name="tkhaiHeader13KK-TNCN">
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
				<tr>
					<td>
						<b>[12]</b> Số tài khoản (chứng khoán): <xsl:value-of select="$tkchinh/ct12"/>
					</td>
					<td colspan="2">
						<b>[12a]</b> Mở tại: <xsl:value-of select="$tkchinh/ct12a"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[12b]</b> Số tài khoản (ngân hàng): <xsl:value-of select="$tkchinh/ct12b"/>
					</td>
					<td colspan="2">
						<b>[12c]</b> Mở tại: <xsl:value-of select="$tkchinh/ct12c"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: 
                        </td>
						<td>
							<b>[19]</b> Fax: 
                        </td>
						<td>
							<b>[20]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- end tkhai header13/KK-TNCN -->
	<!-- start tkhai Cấp MST cho NPT-->
	<xsl:template name="tkhaiHeader_CapMST">
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:80%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>------------------------- </td>
				</tr>
				<tr>
					<td class="tentkhai">
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
	<!-- start tkhai header 03A/TD-TAIN-->
	<xsl:template name="tkhaiHeader-03Atain">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
									<td colspan="2">
										<b>[20A]</b> Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'yyyy')"/>
									</td>
								</tr>
							</xsl:if>
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
									<td colspan="2">
										<b>[20A]</b> Ngày  tháng  năm 
                                    </td>
								</tr>
							</xsl:if>
							<tr colspan="3">
								<td>
									<b>[21]</b> Tên loại tài nguyên: <xsl:value-of select="$tkchinh/ct21_ten"/>
								</td>
							</tr>
							<tr colspan="3">
								<td>
									<b>[22]</b> Thuế suất (%): <xsl:value-of select="$tkchinh/ct22"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
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
	<!-- start header Phuluc 02-1/PL-DK-->
	<xsl:template name="tkhaiHeader-pluc02_1DK">
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
					<td class="align-c">
						<b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/LoaiDauKhi/dauTho = 'true' "> X </xsl:if>]      
                        <b>[02]</b> Condensate: [<xsl:if test="$tkchinh/LoaiDauKhi/condensate = 'true' "> X </xsl:if>]     
                        <b>[03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/LoaiDauKhi/khiThienNhien = 'true' "> X </xsl:if>] 
                    </td>
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' ">
									<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
								</xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td>
							<b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/LoaiHinhUyQuyen/donViUyQuyen = 'true' ">
									<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
								</xsl:if>
								<xsl:if test="$tkchinh/LoaiHinhUyQuyen/daiLyThue = 'true' "> </xsl:if>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
		
	</xsl:template>
		<!-- start tkhai header 01/ĐNHT -->
	<xsl:template name="tkhaiHeader_01DNHT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
                    <td><b><xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/> </b><br/>Số: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/so"/></td>					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>
						<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
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
				<br/>
				<tr>
					<td class="tentkhai" colspan="4">
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
					<td class="align-c" colspan="4"> [01] Trường hợp hoàn thuế trước, kiểm tra sau [<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct01_1='true'">x</xsl:if>] <br/>     Trường hợp kiểm tra trước, hoàn thuế sau  [<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct01_2='true'">x</xsl:if>]
						
					</td>
				</tr>
				
			</table>
			<br/>
			<div style="width:90%;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/><br/>
			<div><b>I- Thông tin về tổ chức, cá nhân đề nghị hoàn trả: </b></div>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="4">
						<b>[02] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<b>[03] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[04]</b> CMND/Hộ chiếu số:
					</td>
					<td>
						Ngày cấp:
					</td>
					<td>
						Nơi cấp:
					</td>
					<td>
						Quốc tịch: 
					</td>
				</tr>
				<tr>
					<td>
						<b>[05] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<b>[06]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[07]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[09] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td colspan="2">
						<b>[10]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="4">
							<br/>
							<b>[11] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<b>[12] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="4">
						<td>
							<b>[13]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[15] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Điện thoại: 
                        </td>
						<td>
							<b>[17]</b> Fax: 
                        </td>
						<td colspan="2">
							<b>[18]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td><br/>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="4">
							<br/>
							<b>[11] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<b>[12] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="4">
						<td>
							<b>[13]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[15] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[17]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td colspan="2">
							<b>[18]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
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
	
	
	
	<!-- start tkhai header 01/TTS -->
	<xsl:template name="tkhaiHeader_01TTS">
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
						<b>[01]</b> Kỳ tính thuế: </td>
				</tr>
				<tr>
						<td class="align-c">Năm: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					    </td>
				</tr>
				<tr>
					    <td class="align-c">
					    Kỳ thanh toán: từ ngày: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$tkchinh/Header/KyThanhToan/tuNgay,$tkchinh/Header/KyThanhToan/KyThanhToan)"/>
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
					<td colspan="3">
						<b>[06] </b> Địa chỉ liên hệ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[10]</b>Số CMND (trường hợp cá nhân quốc tịch Việt Nam): <xsl:value-of select="$tkchinh/Header/ct10"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[11]</b> Hộ chiếu (trường hợp cá nhân không có quốc tịch Việt nam): <xsl:value-of select="$tkchinh/Header/ct11"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
				    <tr>
						<td colspan="3"><br/><b>[12] Tên đại lý thuế (nếu có): </b></td>
				    </tr>
					<tr>
						<td colspan="3"><b>[13] Mã số thuế: </b></td>
					</tr>
					<tr colspan="3">
						<td><b>[14]</b> Địa chỉ: </td>
					</tr>
					<tr>
						<td><b>[15]</b> Quận/Huyện: </td>
						<td colspan="2"><b>[16] </b>Tỉnh/Thành phố: </td>
					</tr>
					<tr>
						<td><b>[17]</b> Điện thoại: </td>
						<td>
							<b>[18]</b> Fax: 
                        </td>
						<td>
							<b>[19]</b> E-mail: 
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
					<tr>
					<td>
					<b>[21]</b> Văn bản uỷ quyền (nếu có): Số: <xsl:value-of select="$tkchinh/Header/CT21/so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'yyyy')"/>)
					</td> 
					</tr>
				
					<tr>
						<td>
						<b>[22]</b>Tổ chức nộp thuế thay (nếu có): <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct22"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[23]</b> Mã số thuế: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct23"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[24]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct24"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[25]</b> Điện thoại: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct25"/>
						</td>
						<td>
						<b>[26]</b>] Fax: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct26"/>
						</td>
						<td>
						<b>[27]</b> Email: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct25"/>
						</td>
					</tr>
				<tr>
						<td><b>Tờ khai năm đầu tiên [<xsl:if test="$tkchinh/Header/toKhaiNamDauTien='true'">x</xsl:if>] </b></td>
				
				</tr>
				<tr>
						<td><b>Hợp đồng khai, nộp thuế 1 lần [<xsl:if test="$tkchinh/Header/hdKhaiNopMotLan='true'">x</xsl:if>]</b></td>
				</tr>
				<tr>
						<td><b>Tờ khai của kỳ khai thuế đầu tiên của hợp đồng mới/hợp đồng đã khai có thay đổi [<xsl:if test="$tkchinh/Header/toKhaiKyDauTien='true'">x</xsl:if>]</b></td>
				</tr>
				<tr>
						<td><b>Mã hợp đồng: <xsl:value-of select="$tkchinh/Header/maHDong"/></b></td>
					</tr>
			</table>
		</div>
	</xsl:template>
	
	
	<!-- start tkhai header 01/XSBHDC -->
	<xsl:template name="tkhaiHeader_01_XSBHDC">
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
						<b>[07] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[10] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[11] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[12]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[13]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[14] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[15]</b> Điện thoại: 
                        </td>
						<td>
							<b>[16]</b> Fax: 
                        </td>
						<td>
							<b>[17]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[10] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[11] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[12]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[13]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[14] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[15]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[16]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[17]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
		
	</xsl:template>
	
	<!-- start tkhai header 01/TKN_XSBHDC -->
	<xsl:template name="tkhaiHeader_01TNK_XSHBDC">
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
						<b>[01]</b> Kỳ tính thuế: </td>
				</tr>
				<tr>
						<td class="align-c">Năm: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					    </td>
				</tr>
				<tr>
					    <td class="align-c">
					    Kỳ thanh toán: từ ngày: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$tkchinh/Header/KyThanhToan/tuNgay,$tkchinh/Header/KyThanhToan/KyThanhToan)"/>
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
					<td colspan="3">
						<b>[06] </b> Địa chỉ liên hệ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[10]</b>Số CMND (trường hợp cá nhân quốc tịch Việt Nam): <xsl:value-of select="$tkchinh/Header/ct10"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[11]</b> Hộ chiếu (trường hợp cá nhân không có quốc tịch Việt nam): <xsl:value-of select="$tkchinh/Header/ct11"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
				    <tr>
						<td colspan="3"><br/><b>[12] Tên đại lý thuế (nếu có): </b></td>
				    </tr>
					<tr>
						<td colspan="3"><b>[13] Mã số thuế: </b></td>
					</tr>
					<tr colspan="3">
						<td><b>[14]</b> Địa chỉ: </td>
					</tr>
					<tr>
						<td><b>[15]</b> Quận/Huyện: </td>
						<td colspan="2"><b>[16] </b>Tỉnh/Thành phố: </td>
					</tr>
					<tr>
						<td><b>[17]</b> Điện thoại: </td>
						<td>
							<b>[18]</b> Fax: 
                        </td>
						<td>
							<b>[19]</b> E-mail: 
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
					<tr>
					<td>
					<b>[21]</b> Văn bản uỷ quyền (nếu có): Số <xsl:value-of select="$tkchinh/Header/ct21_so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct21_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct21_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct21_ngay,'yyyy')"/>
					</td> 
					</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start tkhai header_06/TNCN -->
	<xsl:template name="tkhaiHeader_06-TNCN">
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
						<b>[05] </b>Mã số thuế: 
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
				<tr>
					<td><b>[12] Tên tổ chức khai thay (nếu  có):</b> <xsl:value-of select="$tkchinh/Header/ct12"/></td>
				</tr>
				<tr>
				<td colspan="3">
							<b>[13] </b>Mã số thuế: 
						 <xsl:value-of select="$tkchinh/Header/ct13"/></td>
				</tr>
					<tr colspan="3">
						<td>
							<b>[14]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ct14"/>
                        </td>
					</tr>
					<tr>
						<td>
							<b>[15]</b> Quận/Huyện: <xsl:value-of select="$tkchinh/Header/ct15_ten"/>
                        </td>
						<td colspan="2">
							<b>[16]</b>Tỉnh/Thành phố:  <xsl:value-of select="$tkchinh/Header/ct16_ten"/>
                        </td>
					</tr>
					<tr>
						<td>
							<b>[17] </b>Điện thoại: <xsl:value-of select="$tkchinh/Header/ct17"/>
                        </td>
						<td>
							<b>[18] </b>Fax: <xsl:value-of select="$tkchinh/Header/ct18"/>
                        </td>
						<td>
							<b>[19]</b> E-mail: <xsl:value-of select="$tkchinh/Header/ct19"/>
                        </td>
					</tr>
					<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td><b>[20] Tên đại lý thuế (nếu có):</b><xsl:value-of select="$ttkthue/DLyThue/tenDLythue"/></td>
					</tr>
					<tr>
						<td><b>[21]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
					</tr>
					<tr>
						<td>
							<b>[22]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[23]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[24] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[25]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[26]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td><b>[27]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/></td>
					</tr>
					<tr>
						<td><b>[28] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/></td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></td>
					</tr>
                 </xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td><b>[20] Tên đại lý thuế (nếu có):</b></td>
					</tr>
					<tr>
						<td><b>[21]</b> Mã số thuế: </td>
					</tr>
					<tr>
						<td><b>[22]</b> Địa chỉ: </td>
					</tr>
					<tr>
						<td><b>[23]</b> Quận/Huyện:</td>
						<td colspan="2"><b>[24] </b>Tỉnh/Thành phố: </td>
					</tr>
					<tr>
						<td><b>[25]</b> Điện thoại: </td>
						<td><b>[26]</b> Fax: </td>
						<td><b>[27]</b> E-mail:</td>
					</tr>
					<tr>
						<td><b>[28] </b> Hợp đồng đại lý thuế: Số  </td>
						<td colspan="2"> Ngày: </td>
					</tr>
	</xsl:if>
			</table>
			</div>

	</xsl:template>
	
	<!-- start tkhai header_05/DS-TNCN -->
	<xsl:template name="tkhaiHeader_05-DS-TNCN">
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
							</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[02] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[03] </b>Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[04] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[05] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[04] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[05]</b> Mã số thuế: 
						</td>
					</tr>
				</xsl:if>
				
			</table>
		</div>
		
	</xsl:template>
	<!-- start tkhai header_02/ĐK-NPT-TNCN-->
	<xsl:template name="tkhaiHeader-02-ĐK-NPT-TNCN">
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
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[01]</b> Lần đầu: [X] <b>[02] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[01]</b> Lần đầu: [&#32;] <b>[02] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[03] Họ và tên cá nhân có thu nhập:</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>[04]  </b>Mã số thuế:<xsl:value-of select="$ttkthue/NNT/mst"/></td>
				</tr>
				<tr>
					<td><b>[05] </b>  Địa chỉ cá nhân nhận thông báo mã số NPT: <xsl:value-of select="$tkchinh/Header/ct05"/></td>
				</tr>
				<tr>
					<td><b>[06]</b> Nơi đăng ký giảm trừ người phụ thuộc (Tổ chức, cá nhân trả thu nhập/cơ quan quản lý): <xsl:value-of select="$tkchinh/Header/ct06"/></td>
					</tr>
					<tr>
					<td><b>[07]</b> Mã số thuế của tổ chức, cá nhân trả thu nhập: <xsl:value-of select="$tkchinh/Header/ct07"/></td>
				</tr>
				
					</table>
						</div>
	</xsl:template>
	<!-- start tkhai header 01/CNKD-->
	<xsl:template name="tkhaiHeader_01_CNKD">
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
					<td><b>[5a]</b> Số CMND (trường hợp cá nhân quốc tịch Việt Nam):</td>
				</tr>
				<tr>
					<td>o	[5a.1] Số CMND: <xsl:value-of select="$tkchinh/Header/CT5a/ct5a1"/></td>
				</tr>
				<tr>
					<td>o	[5a.2] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT5a/ct5a2,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>
					<td>o	[5a.3] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CT5a/ct5a3"/> </td>
				</tr> 
				<tr>
					<td><b>[5b]</b> Hộ chiếu (trường hợp cá nhân không có quốc tịch Việt nam): </td>
				</tr>
				<tr>
					<td>o	[5b.1] Số hộ chiếu: <xsl:value-of select="$tkchinh/Header/CT5b/ct5b1"/> </td>
				</tr>   
				<tr>
					<td>o	[5b.2] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT5b/ct5b2,'dd/mm/yyyy')"/></td>
				</tr>   
				<tr>
					<td>o	[5b.3] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CT5b/ct5b3"/></td>
				</tr>   
				<tr>
			        <td><b>[5c]</b> Thông tin Giấy chứng nhận đăng ký kinh doanh: <xsl:value-of select="$tkchinh/Header/ct05c"/></td>
				</tr>
				<tr>
					<td><b>[06]</b> Ngành nghề kinh doanh: </td>
				</tr>
			
						<xsl:for-each select="$tkchinh/Header/CT06/NNgheKDoanh">
												<xsl:variable name="currentRows" select='position()' />
										<tr>
										  <td><xsl:value-of select="$currentRows" /></td>
										  <td colspan="3"><xsl:value-of select="tenNNgheKDoanh" /></td>
										</tr>
						</xsl:for-each>	

				<tr>
					<td><b>[07]</b> Diện tích kinh doanh: <xsl:value-of select="$tkchinh/Header/ct07"/></td>
					<td><b>[07a]</b> Đi thuê: [<xsl:if test="$tkchinh/Header/ct07a='true'">x</xsl:if>]</td>
				</tr>
				<tr>
					<td><b>[08]</b> Số lượng lao động sử dụng thường xuyên: <xsl:value-of select="$tkchinh/Header/ct08"/></td>
				</tr>
				<tr>
					<td><b>[09]</b> Thời gian hoạt động trong ngày từ <xsl:value-of select="$tkchinh/Header/CT09/tuGio"/>: <xsl:value-of select="$tkchinh/Header/CT09/tuPhut"/> giờ đến <xsl:value-of select="$tkchinh/Header/CT09/denGio"/> <xsl:value-of select="$tkchinh/Header/CT09/denPhut"/></td>
				</tr>
				<tr>
					<td><b>[10] </b> Địa chỉ kinh doanh: </td>
				</tr>
				<tr>
					<td>o	Địa chỉ: <xsl:value-of select="$tkchinh/Header/CT10/diaChi"/></td>
				</tr>
				<tr>
					<td>o	[10.1] Phường/xã: <xsl:value-of select="$tkchinh/Header/CT10/ct10.1_ten"/></td>
				</tr>
				<tr>
					<td>o	[10.2] Quận/Huyện: <xsl:value-of select="$tkchinh/Header/CT10/ct10.2_ten"/></td>
				</tr>
				<tr>
					<td>o	[10.3] Tỉnh/TP: <xsl:value-of select="$tkchinh/Header/CT10/ct10.3_ten"/> </td>
				</tr>
				<tr>
					<td>
						<b>[11] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[12] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[13]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[14]</b> Văn bản uỷ quyền (nếu có): Số: <xsl:value-of select="$tkchinh/Header/CT14/tenVanBanUQ"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT14/ngayVanBanUQ,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT14/ngayVanBanUQ,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT14/ngayVanBanUQ,'yyyy')"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[15] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[16] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[17]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[19] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Điện thoại: 
                        </td>
						<td>
							<b>[21]</b> Fax: 
                        </td>
						<td>
							<b>[22]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[23] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[15] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[16] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[17]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[19] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[20]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[21]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[22]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[23] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<tr>
					<td><b>[24] Tên của tổ chức khai thay (nếu có): </b><xsl:value-of select="$tkchinh/Header/ToChucKThay/ct24"/></td>
				</tr>
				<tr>
					<td><b>[25]</b> Mã số thuế: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct25"/></td>
				</tr>
				<tr>
					<td><b>[26]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct26"/></td>
				</tr>
				<tr>
					<td><b>[27]</b> Điện thoại: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct27"/></td>
					<td><b>[28]</b> Fax: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct28"/></td>
					<td><b>[29]</b> Email: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct29"/></td>
				</tr>
			</table>
		</div>
				
	</xsl:template>
	
	<!-- start header Phuluc 01-1/CNKD-->
	<xsl:template name="tkhaiHeader-pluc_01_1_CNKD">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tổ chức khai thay: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[04] Đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
							</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[04] Đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 02-1/BK-QTT-TNCN-->
	<xsl:template name="tkhaiHeader-pluc-02-1-BK-QTT-TNCN">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l"><b>[03] </b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							 <b>[04]</b>Họ và tên vợ (chồng) nếu có:  <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct04"/>
							
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct05"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[06]</b> Số CMND/ Số hộ chiếu vợ (chồng): <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct06"/></td>
					</tr>
					<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[07] Tên đại lý thuế (nếu có): </b><xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[07] Tên đại lý thuế (nếu có):</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
					
					
					
				</xsl:if>
			
			</table>
		</div>
	</xsl:template>
	
	        <xsl:template name="tkhaiHeaderXangDau">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="header_div">			
            <table  class="ttinnnt_table" width="100%">						
                <tr>
            <td style="width:100%;text-align:center" >	
                <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                <br/>-------------------------
            </td>
					<td style="width:17% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b> <xsl:value-of select="$mauTKhai"/>	&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>	<br/></div>
						</div>
					</td>
        </tr> 
        <tr>
            <td class="tentkhai">
                <xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)" />
            </td>
        </tr>
        <tr>
            <td  class="mtatentkhai">
                <div style="width:80% " >
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
                <tr >
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
                    <table class="tb_header">
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
                    <table class="tb_header">
                        <tr>
                            <td>[]Gia hạn
                            </td>
                        </tr>							
                    </table>
                </xsl:if>
            </xsl:if>
        </div>
    </xsl:template>
    <!-- hết header tờ khai xăng dầu-->
    
<!-- start header tờ khai Cổ tức lợi nhuận được chia 01/CTLNĐC-->
  <xsl:template name="tkhaiHeader_CTLNDC_01">
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
				  [01] Kỳ: Cổ tức, lợi nhuận được chia của năm <xsl:value-of select="$tkchinh/ct01"/>, theo Nghị quyết/Quyết định số <xsl:value-of select="$tkchinh/nghiQuyetQDSo"/>, Ngày quyết định <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ngayQD,'dd/mm/yyyy')"/>
					</td>
				</tr>
				 <tr>   
                    <td class="align-c">
                     [01a] Ngày thông báo chia cổ tức, lợi nhuận: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct01a,'dd/mm/yyyy') "/>		
                    </td>   	 
           	   </tr>		
                <tr>   
                    <td class="align-c">          	   
                       	   
                  [02] Cổ tức được chia  [<xsl:if test="$tkchinh/ct02 = 'true' ">x</xsl:if>]  [03] Lợi nhuận được chia [<xsl:if test="$tkchinh/ct03 = 'true' ">x</xsl:if>]
                   </td>                       
               </tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							[04] Lần đầu: [x] 05] Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							[04] Lần đầu: [&#32;] [05] Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						
						<table class="ttinnnt_table">
						   <tr>
                    <td colspan="3">
                        <b>[06] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <b>[07] Mã số thuế: </b>
                        <xsl:value-of select="$ttkthue/NNT/mst"/>
                    </td>
                </tr>
                <tr >
                    <td>
                        <b>[08] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>[09]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
                    </td>
                    <td colspan="2">
                        <b>[10]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>[11] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
                    </td>
                    <td>
                        <b>[12] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
                    </td>
                    <td>
                        <b>[13]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
                    </td>
                </tr>
                <xsl:if test="not($ttkthue/DLyThue)">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[14] Tên đại lý thuế (nếu có): </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <b>[15] Mã số thuế: </b>
                        </td>
                    </tr>
                    <tr colspan="3">
                        <td>
                            <b>[16]</b> Địa chỉ: 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[17]</b> Quận/Huyện: 
                        </td>
                        <td colspan="2">
                            <b>[18] </b>Tỉnh/Thành phố: 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[19]</b> Điện thoại: 
                        </td>
                        <td>
                            <b>[20]</b> Fax: 
                        </td>
                        <td>
                            <b>[21]</b> E-mail: 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[22] </b> Hợp đồng đại lý thuế: Số  
                        </td>
                        <td colspan="2"> Ngày: 
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[14] Tên đại lý thuế (nếu có): </b>
                            <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <b>[15] Mã số thuế: </b>
                            <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
                        </td>
                    </tr>
                    <tr colspan="3">
                        <td>
                            <b>[16]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[17]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
                        </td>
                        <td colspan="2">
                            <b>[18] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[19]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
                        </td>
                        <td>
                            <b>[20]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
                        </td>
                        <td>
                            <b>[21]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
                        </td>
                        <td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
                        </td>
                    </tr>
		     </xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
       <!-- hết header tờ khai Cổ tức lợi nhuận được chia 01/CTLNĐC-->
       
<!-- start header tờ khai Cổ tức lợi nhuận được chia 01/QT-LNCL-->
  <xsl:template name="tkhaiHeader_QT-LNCL_01">
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
				  [01] Kỳ tính lợi nhuận sau thuế còn lại sau khi trích lập các quỹ: từ 
				  <xsl:value-of select="$tkchinh/ct01_Tu"/> đến <xsl:value-of select="$tkchinh/ct01_Den"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							[02] Lần đầu: [x] [03] Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							[02] Lần đầu: [&#32;] [03] Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
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
                <tr >
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
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
  
     <!-- hết header tờ khai Cổ tức lợi nhuận được chia 01/QT-LNCL-->   
     
     	<xsl:template name="tkhaiHeader_05DK">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ TỔNG HỢP CHO CÁ NHÂN CÓ THU NHẬP TỪ TIỀN <br/> LƯƠNG, TIỀN CÔNG THÔNG QUA CƠ QUAN CHI TRẢ THU NHẬP</b> 
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
				     <td class="align-c"><b>Đăng ký thuế:</b> [<xsl:if test="$tkchinh/dangKyThue = 'true' or $tkchinh/dangKyThue = '1'" >x</xsl:if>] &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;
				     <b>Thay đổi thông tin đăng ký thuế:</b> [<xsl:if test="$tkchinh/thayDoiTTin = 'true' or $tkchinh/thayDoiTTin = '1'" >x</xsl:if>] </td>
			</tr>
							
			</table>
			<br/>
						
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>1. Tên cơ quan chi trả thu nhập: </b> <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>2. Mã số thuế: </b> <xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>3. Cơ quan thuế quản lý: </b> <xsl:value-of select="$ttkthue/tenCQTQuanLy"/>
					</td>
				</tr>

			</table>
		</div>
		
	</xsl:template>    

<!--header phien ban 1.0.1 dang ky thue-->
<!--05DK-TH-TCT-->
		<xsl:template name="tkhaiHeader_05DK_TH">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ TỔNG HỢP CỦA CÁ NHÂN CÓ THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG</b> 
					</td>
				</tr>
				<tr>
					<td class="align-c"><i>(Dùng cho cơ quan chi trả thu nhập đăng ký cho cá nhân có ủy quyền)</i> 
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
				     <td class="align-c">Đăng ký thuế: [<xsl:if test="$tkchinh/dangKyThue = 'true' or $tkchinh/dangKyThue = '1'" >x</xsl:if>] &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;
				     Thay đổi thông tin đăng ký thuế: [<xsl:if test="$tkchinh/thayDoiTTin = 'true' or $tkchinh/thayDoiTTin = '1'" >x</xsl:if>] </td>
			</tr>
							
			</table>
			<br/>
						
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">1. Tên cơ quan chi trả thu nhập: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">2. Mã số thuế: <xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td>3. Cơ quan thuế quản lý: <xsl:value-of select="$ttkthue/tenCQTQuanLy"/>
					</td>
				</tr>
<tr>
					<td>4. Thông tin đăng ký thuế/thông tin thay đổi của cá nhân có ủy quyền như sau:
					</td>
				</tr>
			</table>
		</div>
		
	</xsl:template>  
<!--20DK-TH-TCT-->
		<xsl:template name="tkhaiHeader_20DK_TH">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ TỔNG HỢP NGƯỜI PHỤ THUỘC<br>CỦA CÁ NHÂN CÓ THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG </br></b> 
					</td>
				</tr>
				<tr>
					<td class="align-c"><i>Dùng cho cơ quan chi trả thu nhập đăng ký cho người phụ thuộc có ủy quyền</i> 
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
				     <td class="align-c">Đăng ký thuế: [<xsl:if test="$tkchinh/dangKyThue = 'true' or $tkchinh/dangKyThue = '1'" >x</xsl:if>] &#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;
				     Thay đổi thông tin đăng ký thuế: [<xsl:if test="$tkchinh/thayDoiTTin = 'true' or $tkchinh/thayDoiTTin = '1'" >x</xsl:if>] </td>
			</tr>
							
			</table>
			<br/>
						
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">1. Tên cơ quan chi trả thu nhập: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">2. Mã số thuế: <xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td>3. Cơ quan thuế quản lý: <xsl:value-of select="$ttkthue/tenCQTQuanLy"/>
					</td>
				</tr>
			</table>
		</div>
		
	</xsl:template>    	
	
	<!-- start header 04_CNV_TNCN_283 (TT80/2021)-->
	<xsl:template name="tkhaiHeader_04_CNV_TNCN_283">
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
						<xsl:if test="$kieuKy='Q'">[10b] 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='M'">[01b]  
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">[01a] Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
					</td>	
				</tr>		
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'true'"> [X] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'false'">[&#32;] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
					</td>
					</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= '1'"> [X] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= '0'">[&#32;] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNVG= 'true'"> [X] Khai thay cho nhiều cá nhân chuyển nhượng vốn góp
						</xsl:if>
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNVG= 'false'">[&#32;] Khai thay cho nhiều cá nhân chuyển nhượng vốn góp 
						</xsl:if>
					</td>
					</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNVG= '1'"> [X] Khai thay cho nhiều cá nhân chuyển nhượng vốn góp
						</xsl:if>
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNVG= '0'">[&#32;] Khai thay cho nhiều cá nhân chuyển nhượng vốn góp 
						</xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNCK= 'true'"> [X] Khai thay cho nhiều cá nhân chuyển nhượng chứng khoán 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNCK= 'false'">[&#32;] Khai thay cho nhiều cá nhân chuyển nhượng chứng khoán  
						</xsl:if>
					</td>
					</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNCK= '1'"> [X] Khai thay cho nhiều cá nhân chuyển nhượng chứng khoán 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/khaiThayChoCaNhanCNCK= '0'">[&#32;] Khai thay cho nhiều cá nhân chuyển nhượng chứng khoán  
						</xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						<b>I. THÔNG TIN CÁ NHÂN CHUYỂN NHƯỢNG VỐN GÓP, CHUYỂN NHƯỢNG CHỨNG KHOÁN: </b>
					</td>
				</tr>
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
					<td>
						<b>[06] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
<!-- 					<td>
						<b>[07]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td> -->
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
				<tr>
					<td colspan="3">
						<b>[12] Tên tổ chức, cá nhân khai thay (nếu  có): </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct12_ten_caNhanKhaiThay"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13] Mã số thuế: </b>
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct13_mst_caNhanKhaiThay"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[14] </b> Địa chỉ: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct14_dchi_caNhankhaiThay"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[15]</b> Xã/phường/đặc khu: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct15_tenXa"/>
					</td>
					<!-- <td>
						<b>[15]</b> Quận/Huyện: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct15_tenQuanHuyen"/>
					</td> -->
					<td colspan="2">
						<b>[16]</b> Tỉnh/Thành phố: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct16_tenTinh"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[17] </b> Điện thoại: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct17_dthoai"/>
					</td>
					<td>
						<b>[18] </b>Fax: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct18_fax"/>
					</td>
					<td>
						<b>[19]</b> E-mail: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct19_email"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[20] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[21] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[20] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[21] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[22] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày:
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 04_DTV_TNCN 283 (TT80/2021)-->
	<xsl:template name="tkhaiHeader_04_DTV_TNCN_283">
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
						<xsl:if test="$kieuKy='Q'">[10b] 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='M'">[01b]  
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">[01a] Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
					</td>	
				</tr>	
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'true'"> [X] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'false'">[&#32;] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= '1'"> [X] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= '0'">[&#32;] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
					</td>

				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/toChucKhaiThayChoCaNhan= 'true'"> [X] Tổ chức khai thuế thay cho nhiều cá nhân
						</xsl:if>
						<xsl:if test="$tkchinh/Header/toChucKhaiThayChoCaNhan= 'false'">[&#32;] Tổ chức khai thuế thay cho nhiều cá nhân
						</xsl:if>
					</td>
					</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/toChucKhaiThayChoCaNhan= '1'"> [X] Tổ chức khai thuế thay cho nhiều cá nhân
						</xsl:if>
						<xsl:if test="$tkchinh/Header/toChucKhaiThayChoCaNhan= '0'">[&#32;] Tổ chức khai thuế thay cho nhiều cá nhân
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
					<td>
						<b>[06] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
					<!-- <td>
						<b>[07]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td> -->
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
				<tr>
					<td colspan="3">
						<b>[12] Tên tổ chức, cá nhân khai thay (nếu  có): </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct12_ten_caNhanKhaiThay"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13] Mã số thuế: </b>
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct13_mst_caNhanKhaiThay"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[14] </b> Địa chỉ: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct14_dchi_caNhankhaiThay"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[15]</b> Xã/phường/đặc khu: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct15_tenXa"/>
					</td>
					<!-- <td>
						<b>[15]</b> Quận/Huyện: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct15_tenQuanHuyen"/>
					</td> -->
					<td colspan="2">
						<b>[16]</b> Tỉnh/Thành phố: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct16_tenTinh"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[17] </b> Điện thoại: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct17_dthoai"/>
					</td>
					<td>
						<b>[18] </b>Fax: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct18_fax"/>
					</td>
					<td>
						<b>[19]</b> E-mail: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct19_email"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[20] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[21] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[20] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[21] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[22] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày:
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header phụ luc 04-1/DTV-TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_04_1_DTV_TNCN">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='Q'">[10b] 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='M'">[01b]  
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">[01a] Lần phát sinh 
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
				<tr>
					<td>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên tổ chức, cá nhân khai thay: </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct12_ten_caNhanKhaiThay"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] Mã số thuế: </b>
									<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct13_mst_caNhanKhaiThay"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 04_NNG_TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_04_NNG_TNCN_283">
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
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
					</td>	
				</tr>	
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
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
					<td>
						<b>[06] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
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
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[12] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[12] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] </b>Mã số thuế:
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày:
                        </td>
					</tr>				
				</xsl:if>
				<tr>
					<td colspan="3">
						<b>[15] Tên tổ chức tại Việt Nam nơi cá nhân phát sinh hoạt động có thu nhập: </b>
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct15_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[16] </b>Mã số thuế:
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct16_mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[17] </b> Địa chỉ: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct17_dchi"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[18]</b> Xã/phường/đặc khu: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct18_tenXa"/>
					</td>
					<td colspan="2">
						<b>[18]</b> Tỉnh/Thành phố: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct19_tenTinh"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[20] </b> Điện thoại: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct20_dthoai"/>
					</td>
					<td>
						<b>[21] </b>Fax: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct21_fax"/>
					</td>
					<td>
						<b>[22]</b> E-mail: 
							<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct22_email"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 04_TKQT_TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_04_TKQT_TNCN_283">
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
						<xsl:if test="$kieuKy='D'">Lần phát sinh 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>	
					</td>	
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'true'"> [X] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
						<xsl:if test="$tkchinh/Header/caNhanDuocMienGiamThue= 'false'">[&#32;] Cá nhân được miễn, giảm thuế theo Hiệp định tránh đánh thuế hai lần (*) 
						</xsl:if>
					</td>
				</tr>
			</table>
			<br></br>
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>I. THÔNG TIN CÁ NHÂN NHẬN THỪA KẾ, QUÀ TẶNG</b>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[04] Họ và tên: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
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
						<b>[06] </b>Số CMND/CCCD/Hộ chiếu: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct06_cmt"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[07] </b>Quốc tịch: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct07_ten_quocTich"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[08] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[09]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
					<td colspan="2">
						<b>[10]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[11] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[12] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[13]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[14] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[15] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[16] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[14] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[15] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[16] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày: 
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 02_KK_TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_02_KK_TNCN_TT80_283">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
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
					<td>
						<b>[06] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
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
				<tr>
					<td colspan="3">
						<b>[12] Tên tổ chức trả thu nhập: </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct12_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13] </b>Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct13_mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[14] </b> Địa chỉ: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct14_dchi"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[15]</b> Xã/phường/đặc khu: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/tenXa"/>
					</td>
					<td colspan="2">
						<b>[16]</b> Tỉnh/Thành phố: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct16_tenTinh"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[17] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[18] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[17] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[18] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày:
                        </td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
<!-- start header 06_TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_06_TNCN_TT80_283">
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
						<b>[05] </b>Mã số thuế: 
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
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
					<!-- <td>
						<b>[07]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td> -->
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
				<tr>
					<td><b>[12] Tên tổ chức khai thay (nếu  có):</b> <xsl:value-of select="$tkchinh/Header/ct12"/></td>
				</tr>
				<tr>
				<td colspan="3">
							<b>[13] </b>Mã số thuế: 
						 <xsl:value-of select="$tkchinh/Header/ct13"/></td>
				</tr>
					<tr colspan="3">
						<td>
							<b>[14]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ct14"/>
                        </td>
					</tr>
					<tr>
						<td>
						<b>[15]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/Header/ct15_tenXa"/>
					</td>
						<!-- <td>
							<b>[15]</b> Quận/Huyện: <xsl:value-of select="$tkchinh/Header/ct15_ten"/>
                        </td> -->
						<td colspan="2">
							<b>[16]</b>Tỉnh/Thành phố:  <xsl:value-of select="$tkchinh/Header/ct16_ten"/>
                        </td>
					</tr>
					<tr>
						<td>
							<b>[17] </b>Điện thoại: <xsl:value-of select="$tkchinh/Header/ct17"/>
                        </td>
						<td>
							<b>[18] </b>Fax: <xsl:value-of select="$tkchinh/Header/ct18"/>
                        </td>
						<td>
							<b>[19]</b> E-mail: <xsl:value-of select="$tkchinh/Header/ct19"/>
                        </td>
					</tr>
					<xsl:if test="$ttkthue/DLyThue">
						<tr>
							<td><b>[20] Tên đại lý thuế (nếu có):</b><xsl:value-of select="$ttkthue/DLyThue/tenDLythue"/></td>
						</tr>
						<tr>
							<td><b>[21]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
						</tr>
						<tr>
							<td><b>[22] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/></td>
							<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/></td>
						</tr>
					</xsl:if>
					<xsl:if test="not($ttkthue/DLyThue)">
						<tr>
							<td><b>[20] Tên đại lý thuế (nếu có):</b></td>
						</tr>
						<tr>
							<td><b>[21]</b> Mã số thuế: </td>
						</tr>
						<tr>
							<td><b>[22] </b> Hợp đồng đại lý thuế: Số  </td>
							<td colspan="2"> Ngày: </td>
						</tr>
					</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	<!-- start tkhai header 01/TKN_CNKD (TT40/2021)-->
	<xsl:template name="tkhaiHeader_01TKN_CNKD_283">
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
			<table class="ttinnnt_table" with="100%" border="0" cellpadding="0" cellspacing="0" stype="width:1100px;" >
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] </b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<b>[06] </b>Địa chỉ: </td>
				</tr>
				<tr>
					<td colspan="3">[06a] Số nhà, đường phố/xóm/ấp/thôn: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[06b] Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[06c] Quận/Huyện/Thị xã/Thành phố thuộc tỉnh: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[06d] Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b>E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<b>[10]</b> Trường hợp cá nhân kinh doanh chưa đăng ký thuế thì khai thêm các thông tin sau: 
					</td>
				</tr>
				<tr>
					<td colspan="2">[10a] Ngày sinh: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct10a_ngaySinh"/></td>
					<td colspan="2">[10b] Quốc tịch: <xsl:value-of select="$tkchinh/Header//CNKDChuaDangKyThue/ct10b_tenQuocTich"/></td>
				</tr>
				<tr>
					<td colspan="3">[10c] Số CMND/CCCD: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct10c_soCMND_CCCD"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10c.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CNKDChuaDangKyThue/ct10c_1_ngayCap, 'dd/mm/yyyy')"/>

					</td>
					<td colspan="2">[10c.2] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct10c_2_noiCap_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"> Trường hợp cá nhân kinh doanh chưa đăng ký thuế thì khai thêm các thông tin sau: 
					</td>
				</tr>
				<tr>
					<td colspan="3">[10d] Số hộ chiếu: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10d_soHoChieu"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10d.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CNKDKhongCoCMND_CCCD/ct10d_1_ngayCap, 'dd/mm/yyyy')"/>
					</td>
					<td colspan="2">[10d.2] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10d_2_noiCap_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10đ] Số giấy thông hành (đối với thương nhân nước ngoài): <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10dd_soGiayThongHanh"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10đ.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CNKDKhongCoCMND_CCCD/ct10dd_1_ngayCap, 'dd/mm/yyyy')"/>
					</td>
					<td colspan="2">[10đ.2] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10dd_2_noiCap_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10e] Số CMND biên giới (đối với thương nhân nước ngoài): <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10e_soCMNDBienGioi"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10e.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CNKDKhongCoCMND_CCCD/ct10e_1_ngayCap, 'dd/mm/yyyy')"/>
					</td>
					<td colspan="2">[10e.2] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10e_2_noiCap_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10f] Số Giấy tờ chứng thực cá nhân khác: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10f_soGiayToKhac"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10f.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CNKDKhongCoCMND_CCCD/ct10f_1_ngayCap, 'dd/mm/yyyy')"/>
					</td>
					<td colspan="2">[10f.2] Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct10f_2_noiCap_ten"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10g] Nơi đăng ký thường trú: </td>
				</tr>
				<tr>
					<td colspan="3">[10g.1] Số nhà, đường phố/xóm/thôn: <xsl:value-of select="$tkchinh/Header/CT10g/ct10g_soNha"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10g.2] Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/Header/CT10g/ct10g_tenPhuong"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10g.3] Quận/Huyện/Thị xã/ Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT10g/ct10g_tenQuan"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10g.4] Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT10g/ct10g_tenTinh"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10h] Chỗ ở hiện tại: </td>
				</tr>
				<tr>
					<td colspan="3">[10h.1] Số nhà, đường phố/xóm/thôn: <xsl:value-of select="$tkchinh/Header/CT10h/ct10h_soNha"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10h.2] Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/Header/CT10h/ct10h_tenPhuong"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10h.3] Quận/Huyện/Thị xã/ Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT10h/ct10h_tenQuan"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10h.4] Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT10h/ct10h_tenTinh"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10i] Giấy chứng nhận đăng ký hộ kinh doanh (nếu có): Số: <xsl:value-of select="$tkchinh/Header/CT10i/ct10i_soGiayTo"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">[10i.1] Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/CT10i/ct10i_ngayCap, 'dd/mm/yyyy')"/>
					</td>
					<td colspan="2">[10i.2] Cơ quan cấp: <xsl:value-of select="$tkchinh/Header/CT10i/ct10i_coQuanCap"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[10k] Vốn kinh doanh (đồng): <xsl:value-of select="ihtkk:formatNumber($tkchinh/Header/ct10k)"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
				    <tr>
						<td colspan="3"><br/><b>[11] Tên đại lý thuế (nếu có): </b></td>
				    </tr>
					<tr>
						<td colspan="3"><b>[12] </b>Mã số thuế: </td>
					</tr>		
					<tr>
						<td>
							<b>[13] </b>Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
					<tr>
					<td>
					<b>[14]</b> Văn bản uỷ quyền (nếu có): Số <xsl:value-of select="$tkchinh/Header/CT14/soVanBanUQ"/>
					</td>
					<td colspan="2">  Ngày  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT14/ngayVanBanUQ,'dd')"/> tháng  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct14_ngay,'mm')"/> năm  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct14_ngay,'yyyy')"/>
					</td> 
					</tr>
				</xsl:if>
				
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[11] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[12] </b>Mã số thuế:
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[13] </b>Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
					<tr>
					<td>
					<b>[14]</b> Văn bản uỷ quyền (nếu có): Số  <xsl:value-of select="$tkchinh/Header/CT14/soVanBanUQ"/>
					</td>
					<td colspan="2"> Ngày  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT14/ngayVanBanUQ,'dd')"/> tháng  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct14_ngay,'mm')"/> năm  <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct14_ngay,'yyyy')"/>
					</td> 
					</tr>
				</xsl:if>
					
			</table>
		</div>
	</xsl:template>
	
	
<!-- start tkhai header 01/CNKD TT40-->
	<xsl:template name="tkhaiHeader_01_CNKD_283">
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
					<td class="align-l">
						[<xsl:if test="$tkchinh/Header/hkdcnkdnopthuekhoan='true' or $tkchinh/Header/hkdcnkdnopthuekhoan='1' ">x</xsl:if>]: HKD, CNKD nộp thuế theo phương pháp khoán<br/>
						[<xsl:if test="$tkchinh/Header/cnkdnopps='true' or $tkchinh/Header/cnkdnopps='1'">x</xsl:if>]: CNKD nộp thuế theo từng lần phát sinh<br/>
						[<xsl:if test="$tkchinh/Header/tccnkhainopthay='true' or $tkchinh/Header/tccnkhainopthay='1'">x</xsl:if>]: Tổ chức, cá nhân khai thuế thay, nộp thuế thay<br/>
						[<xsl:if test="$tkchinh/Header/hkdcnkdnopkekhai='true' or $tkchinh/Header/hkdcnkdnopkekhai='1'">x</xsl:if>]: HKD, CNKD nộp thuế theo phương pháp kê khai<br/>
						[<xsl:if test="$tkchinh/Header/hkdcnkdnnxddoanhthu='true' or $tkchinh/Header/hkdcnkdnnxddoanhthu='1'">x</xsl:if>]: HKD, CNKD trong lĩnh vực ngành nghề có căn cứ xác định được doanh thu theo xác nhận của cơ quan chức năng<br/>
						[<xsl:if test="$tkchinh/Header/hkdchuyendoipptinhthue='true' or $tkchinh/Header/hkdchuyendoipptinhthue='1'">x</xsl:if>]: Hộ khoán chuyển đổi phương pháp tính thuế<br/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Y'">
							<b>[01]</b> Kỳ tính thuế: <b>[01a] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)   
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <b>[01b] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Q'">
							<b>[01]</b> Kỳ tính thuế: <b>[01c] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>   (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D'">
							<b>[01]</b> Kỳ tính thuế: <b>[01d] </b> Lần phát sinh:  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
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
			<br/>
			<!--<table class="ttinnnt_table">-->
			<table class="ttinnnt_table" width="100%" border="0" cellpadding="0" cellspacing="0" style="width:1100px;">
				<tr>
					<td colspan="3">
					<!--<td colspan="1"> bỏ colspan để hệ thống tự căn chỉnh-->
						<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<!--<td colspan="1"> bỏ colspan để hệ thống tự căn chỉnh-->
						<b>[05] Tên cửa hàng/thương hiệu</b>: <xsl:value-of select="$tkchinh/Header/ct05"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<!--<td colspan="1"> bỏ colspan để hệ thống tự căn chỉnh-->
						<b>[06] Tài khoản ngân hàng</b>: <xsl:value-of select="$tkchinh/Header/ct06"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[07] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><b>[08]</b> Ngành nghề kinh doanh:</td>
					<td><b>[08a]</b> Thay đổi thông tin: [<xsl:if test="$tkchinh/Header/ct08a='true'">x</xsl:if>]</td>
				</tr>
			
						<xsl:for-each select="$tkchinh/Header/CT08/NNgheKDoanh">
												<!--<xsl:variable name="currentRows" select='position()' />áp dụng cho bảng tự đánh số thứ tự-->
										<tr>
										  <!--<td><xsl:value-of select="$currentRows" /></td>áp dụng cho bảng tự đánh số thứ tự-->
										  <td><xsl:value-of select="tenNNgheKDoanh" /></td>
										</tr>
						</xsl:for-each>
				<tr>
				<tr>
					<td colspan="2"><b>[09]</b> Diện tích kinh doanh: <xsl:value-of select="$tkchinh/Header/ct09"/></td>
					<td><b>[09a]</b> Đi thuê: [<xsl:if test="$tkchinh/Header/ct09a='true'">x</xsl:if>]</td>
				</tr>
				<tr>
					<td colspan="3"><b>[10]</b> Số lượng lao động sử dụng thường xuyên: <xsl:value-of select="$tkchinh/Header/ct10"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[11]</b> Thời gian hoạt động trong ngày từ <xsl:value-of select="$tkchinh/Header/CT11/tuGio"/>:<xsl:value-of select="$tkchinh/Header/CT11/tuPhut"/> giờ đến <xsl:value-of select="$tkchinh/Header/CT11/denGio"/>:<xsl:value-of select="$tkchinh/Header/CT11/denPhut"/></td>
				</tr>
				<tr>
					<td colspan="2"><b>[12] </b> Địa chỉ kinh doanh: </td>
					<td><b>[12a]</b> Thay đổi thông tin: [<xsl:if test="$tkchinh/Header/CT12/ct12a_tdtt='true'">x</xsl:if>]</td>
				</tr>
				<tr>
					<td colspan="3"><b>[12b]</b> Số nhà, đường phố/xóm/ấp/thôn: <xsl:value-of select="$tkchinh/Header/CT12/ct12b_soNha"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[12c]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/Header/CT12/ct12c_tenPhuong"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[12d]</b> Quận/Huyện/Thị xã/ Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT12/ct12d_tenQuan"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[12đ]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT12/ct12d_tenTinh"/> </td>
				</tr>
				<tr>
					<td colspan="3"><b>[12e]</b> Kinh doanh tại chợ biên giới: [<xsl:if test="$tkchinh/Header/CT12/ct12e_kdbiengioi='true'">x</xsl:if>] </td>
				</tr>
				<tr>
					<td colspan="3"><b>[13] </b> Địa chỉ cư trú: </td>
				</tr>
				<tr>
					<td colspan="3"><b>[13a]</b> Số nhà, đường phố/xóm/ấp/thôn: <xsl:value-of select="$tkchinh/Header/CT13/ct13a_soNha"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[13b]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$tkchinh/Header/CT13/ct13b_tenPhuong"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[13c]</b> Quận/Huyện/Thị xã/ Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT13/ct13c_tenQuan"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[13d]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT13/ct13d_tenTinh"/> </td>
				</tr>
				<tr>
					<td>
						<b>[14] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[15] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[16]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<b>[17]</b> Văn bản uỷ quyền (nếu có): <xsl:value-of select="$tkchinh/Header/ct17"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct17_ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct17_ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct17_ngay,'yyyy')"/>
					</td>
				</tr>
					<td colspan="3"><b>[18]</b> Trường hợp cá nhân kinh doanh chưa đăng ký thuế thì khai thêm các thông tin sau:</td>
				</tr>
				<tr>
					<td colspan="3"><b>[18a]</b> Ngày sinh: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct18a_ngaySinh"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18b]</b> Quốc tịch: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct18b_tenQuocTich"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18c]</b> Số CMND/CCCD: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct18c_soCMND_CCCD" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18c.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CNKDChuaDangKyThue/ct18c_1_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18c.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDChuaDangKyThue/ct18c_2_noiCap_ten" /></td>
				</tr> 
				<tr>
					<td colspan="3"> Trường hợp cá nhân kinh doanh thuộc đối tượng không có CMND/CCCD tại Việt Nam thì kê khai thông tin tại một trong các thông tin sau: </td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18d]</b> Số hộ chiếu: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18d_soHoChieu" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18d.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18d_1_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18d.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18d_2_noiCap_ten" /></td>
				</tr>   
				<tr>			
					<td colspan="3"><b>[18đ]</b> Số giấy thông hành (đối với thương nhân nước ngoài): <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18dd_soGiayThongHanh" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18đ.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18dd_1_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18đ.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18dd_2_noiCap_ten" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18e]</b> Số CMND biên giới (đối với thương nhân nước ngoài): <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18e_soCMNDBienGioi" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18e.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18e_1_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18e.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18e_2_noiCap_ten" /></td>
				</tr>	
				<tr>			
					<td colspan="3"><b>[18f]</b> Số Giấy tờ chứng thực cá nhân khác: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18f_soGiayToKhac" /></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18f.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18f_1_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>			
					<td colspan="3"><b>[18f.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CNKDKhongCoCMND_CCCD/ct18f_2_noiCap_ten" /></td>
				</tr>	
				<tr>
					<td colspan="3"><b>[18g]</b> Nơi đăng ký thường trú:</td>
				</tr>
				<tr>
					<td colspan="3"><b>[18g.1]</b> Số nhà, đường phố/xóm/ấp/thôn: <xsl:value-of select="$tkchinh/Header/CT18g/ct18g_soNha"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18g.2]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$tkchinh/Header/CT18g/ct18g_tenPhuong"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18g.3]</b> Quận/Huyện/Thị xã/Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT18g/ct18g_tenQuan"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18g.4]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT18g/ct18g_tenTinh"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18h]</b> Chỗ ở hiện tại:</td>
				</tr>
				<tr>
					<td colspan="3"><b>[18h.1]</b> Số nhà, đường phố/xóm/ấp/thôn: <xsl:value-of select="$tkchinh/Header/CT18h/ct18h_soNha"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18h.2]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$tkchinh/Header/CT18h/ct18h_tenPhuong"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18h.3]</b> Quận/Huyện/Thị xã/Thành phố thuộc tỉnh: <xsl:value-of select="$tkchinh/Header/CT18h/ct18h_tenQuan"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18h.4]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/CT18h/ct18h_tenTinh"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18i]</b> Giấy chứng nhận đăng ký hộ kinh doanh (nếu có): Số: <xsl:value-of select="$tkchinh/Header/CT18i/ct18i_soGiayTo"/> </td>
				</tr>   
				<tr>
					<td colspan="3"><b>[18i.1]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/CT18i/ct18i_ngayCap,'dd/mm/yyyy')"/></td>
				</tr>   
				<tr>
					<td colspan="3"><b>[18i.2]</b> Nơi cấp: <xsl:value-of select="$tkchinh/Header/CT18i/ct18i_coQuanCap"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[18k]</b> Vốn kinh doanh (đồng): <xsl:value-of select="$tkchinh/Header/ct18k"/></td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[19] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[20] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[21] </b> Hợp đồng đại lý thuế: Số  
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
							<b>[19] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[20] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[21] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<tr>
					<td colspan="3"><b>[22] Tên của tổ chức khai thay (nếu có): </b><xsl:value-of select="$tkchinh/Header/ToChucKThay/ct22"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[23]</b> Mã số thuế: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct23"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[24]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct24"/></td>
				</tr>
				<tr>
					<td><b>[25]</b> Điện thoại: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct25"/></td>
					<td><b>[26]</b> Fax: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct26"/></td>
					<td><b>[27]</b> Email: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct27"/></td>
				</tr>
			</table>
		</div>		
	</xsl:template>

<!-- start tkhai header 01/TTS TT40 -->
	<xsl:template name="tkhaiHeader_01TTSTT40_283">
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
					
Cá nhân cho thuê tài sản trực tiếp khai thuế/ Tổ chức, cá nhân khai thuế thay, nộp thuế thay cho cá nhân ủy quyền theo quy định của pháp luật dân sự<xsl:if test="$tkchinh/Header/khaiTheoPLuatDanSu= 'true' or $tkchinh/Header/khaiTheoPLuatDanSu='1'">[x]</xsl:if> 
                        </td>
                </tr>
                
                 <tr>
					<td class="align-c">
Doanh nghiệp, tổ chức kinh tế khai thuế thay, nộp thuế thay theo pháp luật thuế <xsl:if test="$tkchinh/Header/khaiTheoPLuatThue= 'true' or $tkchinh/Header/khaiTheoPLuatThue='1'">[x]</xsl:if> 
                        </td>
                </tr>
             
				<tr>
				   <td class="align-c" >
					<b>[01]</b> Kỳ tính thuế:
				  	<xsl:if test="$kieuKy='Y'">  <xsl:value-of select= "ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
						
					</xsl:if>
				
					
					<xsl:if test="$kieuKy='Q'">  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  <br/>
					
					 Kỳ thanh toán: Từ ngày: <xsl:value-of select="$tuNgay"/> 	
              &#160;	
              &#160;	
              &#160;	
             &#160; Đến ngày: <xsl:value-of select="$denNgay"/>

					
					</xsl:if>
					
						<xsl:if test="$kieuKy='M'">  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>  <br/>
						</xsl:if>
						
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D'">
						  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
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
					<td colspan="2">
						<b>[06] </b> Địa chỉ liên hệ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<b>[10]</b>Số CMND (trường hợp cá nhân quốc tịch Việt Nam): <xsl:value-of select="$tkchinh/Header/ct10"/>
					</td>
				</tr>
				<tr>
					<td>
					<b>[11]</b> Hộ chiếu (trường hợp cá nhân không có quốc tịch Việt nam): <xsl:value-of select="$tkchinh/Header/ct11"/>
					</td>
				</tr>
				
				<tr>
						<td>
						<b>[12]</b>Trường hợp cá nhân kinh doanh chưa đăng ký thuế thì khai thêm các thông tin sau: <xsl:value-of select="$tkchinh/Header/TruongHopCNKDChuaDKT"/>
						</td>
					</tr>
					<tr>
					
						<td>
						<b>[12a]</b>Ngày sinh <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct16"/><xsl:value-of select="ihtkk:stringDatetime(ct12a,'dd/mm/yyyy')" />
						</td>
					</tr>
				<tr>
						<td>
						<b>[12b]</b> Quốc tịch <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct12b"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12c]</b> Số CMND/CCCD <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct12c"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12c.1]</b> Ngày cấp <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct12c_1"/><xsl:value-of select="ihtkk:stringDatetime(ct12a,'dd/mm/yyyy')" />
						</td>
					</tr>
					<tr>
						<td>
						<b>[12c.2]</b> Số CMND/CCCD <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct12c_2"/>
						</td>
					</tr>
					<tr>
						<td>
						<b></b>Trường hợp cá nhân kinh doanh thuộc đối tượng không có CMND/CCCD tại Việt Nam thì kê khai thông tin tại một trong các thông tin sau:
						</td>
					</tr>
					<tr>
						<td>
						<b>[12d]</b> Số hộ chiếu <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12d"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12d.1]</b> Ngày cấp <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12d_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12d.2]</b> Nơi cấp <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12d_2"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12đ]</b> Số giấy thông hành (đối với thương nhân nước ngoài):  <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12dd"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12đ.1]</b>Ngày cấp <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12dd_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12đ.2]</b>Nơicấp <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12dd_2"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12e]</b>Số CMND biên giới (đối với thương nhân nước ngoài) <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12e"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12e.1]</b>Ngày cấp<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12e_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12e.2]</b>Nơi cấp<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12e_2"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12f]</b>Số Giấy tờ chứng thực cá nhân khác<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12f"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12f.1]</b>Ngày cấp<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12f_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12f.2]</b>Nơi cấp<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12f_2"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12g]</b>Nơi đăng ký thường trú<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12g"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12g.1]</b>Số nhà, đường phố/xóm/ấp/thôn<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12g_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12g.2]</b>Xã/phường/đặc khu<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12g_2"/>
						</td>
					</tr>
						<tr>
						<td>
						<b>[12g.3]</b>Quận/Huyện/Thị xã/Thành phố thuộc tỉnh<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12g_3"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12g.4]</b>Tỉnh/ Thành phố: <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12g_4"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12h]</b>Chỗ ở hiện tại <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12h"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12h.1]</b>Số nhà, đường phố/xóm/ấp/thôn <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12h_1"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12h.2]</b>Xã/phường/đặc khu <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12h_2"/>
						</td>
					</tr>
						<tr>
						<td>
						<b>[12h.3]</b>Quận/Huyện/Thị xã/Thành phố thuộc tỉnh <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12h_3"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12h.4]</b>Tỉnh/Thành phố <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12h_4"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[12i]</b>Giấy chứng nhận đăng ký hộ kinh doanh (nếu có): Số<xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12i"/>
						</td>
					</tr>
					<tr>
					<td>
						<b>[12i.1]</b>Ngày cấp: <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12i_1"/>
						</td>
					</tr>
					<tr>
					<td>
						<b>[12i.2]</b>Cơ quan cấp <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12i_2"/>
						</td>
					</tr>
					<tr>
					<td>
						<b>[12k]</b>Vốn kinh doanh (đồng) <xsl:value-of select="$tkchinh/Header/TruongHopCNKDThuocDoiTuongKhongCoCMNDCCCDTaiVietNam/ct12k"/>
						</td>
					</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<b>[15] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
					
					<tr>
						<td>
						<b>[16]</b>Tổ chức nộp thuế thay (nếu có): <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct16"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[17]</b> Mã số thuế: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct17"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[18]</b> Địa chỉ: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct18"/>
						</td>
					</tr>
				    <tr>
						<td>
						<b>[19]</b> Điện thoại: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct19"/>
						</td>
						<td>
						<b>[20]</b>] Fax: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct20"/>
						</td>
						<td>
						<b>[21]</b> Email: <xsl:value-of select="$tkchinh/Header/ToChucNopThueThay/ct21"/>
						</td>
					</tr>
			<tr>
					<td>
					<b>[22]</b> Văn bản uỷ quyền (nếu có): Số: <xsl:value-of select="$tkchinh/Header/CT22/so"/> ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ngay,'yyyy')"/>
					</td> 
					</tr>
				
		
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc-->
	<xsl:template name="tkhaiHeader-pluc01">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL1"/>
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
				<tr>
					<td class="align-l">
						<b>[04] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 02TTS TT40-->
	<xsl:template name="tkhaiHeader-pluc02_283">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL2"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
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
				<tr>
					<td class="align-l">
						<b>[04] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
			</table>
		</div>
	</xsl:template>
	
	<!-- start tkhai header 01/XSBHDC (TT40/2021) -->
	<xsl:template name="tkhaiHeader_01_XSBHDC_TT40_283">
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
						<b>[05] </b>Mã số thuế:
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06] </b>Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<b>[07] </b>Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[08] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[09]</b>E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
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
							<b>[11] </b>Mã số thuế:
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[12] </b>Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2">  Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
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
							<b>[11] </b> Mã số thuế: 
						</td>
					</tr>
					<tr>
						<td>
							<b>[12] </b>Hợp đồng đại lý thuế: Số 
						</td>
						<td colspan="2"> Ngày: 
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
		
	</xsl:template>
	
	<!-- start header Phuluc 01-1/BK-XSBHĐC (TT40/2021)-->
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
	
	<!-- start tkhai 01/TMDN TT80 header -->
	<xsl:template name="tkhaiHeader_01TMDN_TT80_283">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
					<td class="tentkhai" style="text-align: center;">
						<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<tr>
					<td class="mtatentkhai">
						<div style="width:100% ">
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
			<div><b>1. Người nộp thuế </b></div>
			<table class="ttinnnt_table">
				<tr>
					<td>	<b>[04]</b> Tên tổ chức/Họ và tên: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
				</tr>
				<tr>
					<td>	<b>[05]</b> Ngày/tháng/năm sinh (nếu là cá nhân): <xsl:value-of select="ihtkk:stringDatetime($tkchinh/NguoiNopThue/ct05,'dd/mm/yyyy')"/></td>
				</tr>
				<tr>
					<td> <b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
				</tr>
				<tr>
					<td> <b>[07]</b> Số CMND/hộ chiếu/CCCD: <xsl:value-of select="$tkchinh/NguoiNopThue/ct07"/></td>
				</tr>
				<tr>
					<td> <b>[08]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/NguoiNopThue/ct08,'dd/mm/yyyy')"/></td>
					<td> <b>[09]</b> Nơi cấp: <xsl:value-of select="$tkchinh/NguoiNopThue/ct09"/></td>
				</tr>
				<tr>
					<td> <b>[10]</b> Địa chỉ trụ sở/Địa chỉ cư trú:</td>
				</tr>
				<tr>
					<td><b>[10.1]</b> Số nhà: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_1"/></td>
					<td><b>[10.2]</b> Đường/phố: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_2"/></td>
				</tr>
				<tr>
					<td><b>[10.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_3"/></td>
					<td><b>[10.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_4_ten"/></td>
				</tr>
				<tr>
					<td><b>[10.5]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>				</td>
					<td><b>[10.6]</b>  Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>					</td>
				</tr>
				<tr>
					<td colspan="2"><b>[11]</b> Địa chỉ nhận thông báo thuế: <xsl:value-of select="$tkchinh/NguoiNopThue/ct11"/>				</td>
				</tr>
				<tr>
					<td><b>[12]</b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>				</td>
				</tr>
				<tr>
					<td><b>2. Đại lý thuế (nếu có)</b></td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="2"><b>[13]</b> Tên tổ chức: 	</td>
					</tr>
					<tr>
						<td colspan="2"><b>[14]</b> Mã số thuế: 	</td>
					</tr>
					<tr>
						<td><b>[15]</b>  Hợp đồng đại lý thuế: Số                          </td>
						<td> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="2">
							<b>[13]</b> Tên đại lý thuế (nếu có): 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14]</b> Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[15]</b>  Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	
	
	<!-- start tkhai 02SDDPNN TT80 header -->
	<xsl:template name="tkhaiHeader_02TK_SDDPNN_TT80_283">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
			<!-- <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div> -->
			<div><b>1. Người nộp thuế </b></div>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="2">	<b>[04a]</b> Mã phi nông nghiệp: <xsl:value-of select="$tkchinh/NguoiNopThue/ct04a"/></td>
				</tr>
				<tr>
					<td colspan="2">	<b>[04]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
				</tr>
				<tr>
					<td colspan="2"> <b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
				</tr>
				<tr>
					<td colspan="2"> <b>[06]</b> Địa chỉ trụ sở: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>	</td>
				</tr>
				<tr>
					<td><b>[06.1]</b> Số nhà: <xsl:value-of select="$tkchinh/NguoiNopThue/ct06_1"/></td>
					<td><b>[06.2]</b> Đường/phố: <xsl:value-of select="$tkchinh/NguoiNopThue/ct06_2"/></td>
				</tr>
				<tr>
					<td><b>[06.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/NguoiNopThue/ct06_3"/></td>
					<td><b>[06.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>	</td>
				</tr>
				<tr>
					<td><b>[06.5]</b>Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>				</td>
					<td><b>[06.6]</b>  Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>					</td>
				</tr>
				<tr>
					<td><b>2. Đại lý thuế (nếu có)</b></td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="2"><b>[07]</b> Tên đại lý thuế: 	</td>
					</tr>
					<tr>
						<td colspan="2"><b>[08]</b> Mã số thuế: 	</td>
					</tr>
					<tr>
						<td><b>[09]</b>  Hợp đồng đại lý thuế: Số                          </td>
						<td> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="2">
							<b>[07]</b> Tên đại lý thuế (nếu có): 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[08]</b> Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[09]</b>  Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>

<!-- start tkhai header 05QTTTT80 -->
	<xsl:template name="tkhaiHeader_05TT_tt80_283">
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
						<b>[04]</b> Tổ chức có quyết toán thuế theo uỷ quyền của cá nhân được điều chuyển từ tổ chức cũ đến tổ chức mới do tổ chức cũ thực hiện sáp nhập, hợp nhất, chia, tách, chuyển đổi loại hình doanh nghiệp hoặc điều chuyển trong cùng hệ thống  [<xsl:if test="$tkchinh/Header/toChucCoQTTTheoUyQuyen='true' or $tkchinh/Header/toChucCoQTTTheoUyQuyen='1'">x</xsl:if>]
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[07] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b></b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
					<td>
						<b>[08]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td>
					<td colspan="2">
						<b>[09]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[10] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[11] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td>
						<b>[12]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							[14] Mã số thuế: 
						</td>
					</tr>
					
					
					<tr>
						<td>
							[15]  Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							[14] Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
								
				
					<tr>
						<td>
							[15] Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
		
	</xsl:template>

	<!-- start tkhai 03/SDDNN TT80 header -->
	<xsl:template name="tkhaiHeader_03SDDNN_TT80_283">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
						<div style="width:100% ">
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
						<b>[01a]</b> Ngày khai thác sản lượng: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct01a,'dd/mm/yyyy')"/>
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
			<div><b>1. Người nộp thuế </b></div>
			
					<b>[04]</b> Tên tổ chức/Họ và tên: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
				<br/>
					<b>[05]</b> Ngày tháng năm sinh (nếu là cá nhân): <xsl:value-of select="ihtkk:stringDatetime($tkchinh/NguoiNopThue/ct05,'dd/mm/yyyy')"/>
				<br/>
				<b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
				<br/>
				<b>[07]</b> Số CMND/hộ chiếu/CCCD: <xsl:value-of select="$tkchinh/NguoiNopThue/ct07"/>
				<br/>
				<b>[08]</b> Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/NguoiNopThue/ct08,'dd/mm/yyyy')"/> &#160; <b>[09]</b> Nơi cấp: <xsl:value-of select="$tkchinh/NguoiNopThue/ct09"/>
				<br/>
				<b>[10]</b> Địa chỉ trụ sở/Địa chỉ cư trú:
				<br/>
				<b>[10.1]</b> Số nhà: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_1"/> &#160;
					<b>[10.2]</b> Đường/phố: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_2"/>
					<br/>
				<b>[10.3]</b> Tổ/thôn: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_3"/>&#160;
				<b>[10.4]</b> Xã/phường/đặc khu: <xsl:value-of select="$tkchinh/NguoiNopThue/DiaChi/ct10_4_ten"/>
				<br/>
				<b>[10.5]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>&#160;				
				<b>[10.6]</b>  Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>					
				<br/>
				<b>[11]</b> Địa chỉ nhận thông báo thuế: <xsl:value-of select="$tkchinh/NguoiNopThue/ct11"/>	
				<br/>
					<b>[12]</b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>				
				<br/>
				<tr>
					<td><b>2. Đại lý thuế (nếu có)</b></td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<br/><b>[13]</b> Tên tổ chức: 	
					<br/><b>[14]</b> Mã số thuế: 	
					<br/><b>[15]</b>  Hợp đồng đại lý thuế: Số                          &#160;
						Ngày:
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="2">
							<b>[13]</b> Tên tổ chức: 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14]</b> Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[15]</b>  Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			
		</div>
	</xsl:template>

<!-- start header 01_GTGT(TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_GTGT_TT80_283">
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
						<b>[01a]</b> Tên hoạt động sản xuất kinh doanh: <xsl:value-of select="$tkchinh/ten_NganhNghe"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01b]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
						<b>[05] </b>Mã số thuế: 
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
							<b>[07]  </b>Mã số thuế:
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
						<b>&#160;&#160;&#160;&#160;&#160;[11a]</b> Xã/phường/đặc khu:  
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
	
<!-- start header 05_KK_TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_05_KK_TNCN_TT80_283">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] </b>Mã số thuế: 
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
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
					</td>
					<!-- <td>
						<b>[07]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>
					</td> -->
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
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[12] Tên đại lý thuế (nếu có): </b>
								<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] </b> Mã số thuế:
								<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td > Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[12] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[13] </b>Mã số thuế: 
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[14] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td> Ngày:
                        </td>
					</tr>
				</xsl:if>
				<tr>
					<td colspan="3"> 
						<b>[15] </b> Phân bổ thuế do có đơn vị hạch toán phụ thuộc tại địa bàn cấp tỉnh khác nơi có trụ sở chính: 
						<xsl:if test="$tkchinh/ct15= 'true'"> [X] 
						</xsl:if>
						<xsl:if test="$tkchinh/ct15= '1'"> [X] 
						</xsl:if>
						<xsl:if test="$tkchinh/ct15= 'false'"> [&#32;] 
						</xsl:if>
						<xsl:if test="$tkchinh/ct15= '0'"> [&#32;] 
						</xsl:if>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>

	<!-- start header 01_TAIN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_TAIN_283">
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
			<br></br>
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b><xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b><xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] </b>Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
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
							<b>[07] </b>Mã số thuế:
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
						<b>[09]</b> Địa chỉ nơi khai thác tài nguyên khác tỉnh với nơi đóng trụ sở chính: 
					</td>
				</tr>
				<tr>
					<td>
						<b>&#160;&#160;&#160;&#160;&#160;[09a]</b> Xã/phường/đặc khu:  
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09a_phuongXa_ten"/>
					</td>
					<td>
						<b>[09b]</b> Quận/Huyện:  
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09b_quanHuyen_ten"/>
					</td>
					<td>
						<b>[09c] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09c_tinhTP_ten"/>
					</td>
				</tr>
			</table>		
		</div>
	</xsl:template>
	<!-- start header phụ luc 01-1/TAIN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_TAIN_TT80">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03]</b> Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
<!-- start header 02_TAIN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_02_TAIN_283">
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
					<td class="align-c"><b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
			<br></br>
			<table class="ttinnnt_table"  width="100%">
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] Mã số thuế: </b><xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[06] Tên đại lý thuế (nếu có): </b><xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] </b>Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2"><b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
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
							<b>[07] </b>Mã số thuế:
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
						<b>[09]</b> Địa chỉ nơi khai thác tài nguyên khác tỉnh với nơi đóng trụ sở chính: 
					</td>
				</tr>
				<tr>
					<td>
						<b>&#160;&#160;&#160;&#160;&#160;[09a]</b> Xã/phường/đặc khu:  
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09a_phuongXa_ten"/>
					</td>
					<td>
						<b>[09b]</b> Quận/Huyện:  
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09b_quanHuyen_ten"/>
					</td>
					<td>
						<b>[09c] </b>Tỉnh/Thành phố:
                            <xsl:value-of select="$tkchinh/Header/CT09/ct09c_tinhTP_ten"/>
					</td>
				</tr>
			</table>		
		</div>
	</xsl:template>
	
	<!-- start header 01_TTĐB (TT80/2021)-->
	<xsl:template name="tkhaiHeader_01_TTDB_TT80_283">
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
						<b>&#160;&#160;&#160;&#160;&#160;[11a]</b> Xã/phường/đặc khu:  
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
	
	<!-- start tkhai header 01/TBVMT (TT80/2021)-->
	<xsl:template name="tkhaiHeader-TBVMT-TT80">
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
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
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
										<b>[10]</b> Mã số thuế: 
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[11] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[09] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[10] Mã số thuế: </b>
									</td>
								</tr>
								<tr>
									<td>
										<b>[11] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
						<tr>
								<td colspan="3">
									<b>[09]</b> Tên đơn vị phụ thuộc/địa điểm kinh doanh của hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở chính: <xsl:value-of select="$tkchinh/Header/ct09"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[10]</b> Mã số thuế đơn vị phụ thuộc/Mã số địa điểm kinh doanh: <xsl:value-of select="$tkchinh/Header/ct10"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[11]</b> Địa chỉ nơi có hoạt động sản xuất kinh doanh khác tỉnh nơi đóng trụ sở chính:
								</td>
							</tr>
							<table>
							<tr>
								<td colspan="2">
									<b>[11a]</b> Số nhà, đường phố: <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKD/ct11a"/>
								</td>
								<td>
									<b>[11b]</b> Xã/phường/đặc khu <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKD/ct11b_ten"/>
								</td>
							</tr>
							<tr>
								
								<td>
									<b>[11d]</b> Tỉnh/Tp <xsl:value-of select="$tkchinh/Header/DiaChiHDSXKD/ct11d_ten"/>
								</td>
							</tr>
							</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
<!-- start tkhai header 02/GTGT TT80-->
	<xsl:template name="tkhaiHeader_02GTGT_TT80_283">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<xsl:call-template name="BieuNguDatNuoc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template>
				<tr>
					<td class="align-c"><b>[01a]</b> Mã hồ sơ khai dự án đầu tư: <xsl:value-of select="$tkchinh/Header/ct01a"/> </td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01b]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] &#160;&#160;&#160;&#160;&#160;&#160;<b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] &#160;&#160;&#160;&#160;&#160;&#160;<b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<table>
				<tr>
					<td colspan="2">
						<b>[04]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<b>[05] </b>Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><b>[06]</b> Tên dự án đầu tư:  <xsl:value-of select="$tkchinh/Header/ct06"/> </td>
				</tr>
				<tr>
					<td ><b>[07]</b> Địa chỉ thực hiện dự án đầu tư: <xsl:value-of select="$tkchinh/Header/ct07"/> &#160;&#160; &#160;&#160;&#160;&#160; &#160;&#160;
					<b>[08]</b> Xã/ phường/đặc khu: <xsl:value-of select="$tkchinh/Header/ct08_ten"/></td>
					
				</tr>
				<tr>
					<td><b>[09]</b> Quận/huyện: <xsl:value-of select="$tkchinh/Header/ct09_ten"/>&#160;&#160; &#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;
					<b>[10]</b> Tỉnh/thành phố: <xsl:value-of select="$tkchinh/Header/ct10_ten"/>
					 </td>
				</tr>
				<tr>
					<td colspan="2"><b>[11]</b> Văn bản phê duyệt dự án đầu tư: Số: <xsl:value-of select="$tkchinh/Header/VBPheDuyetDuAnDauTu/so"/> &#160;&#160;
					ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/VBPheDuyetDuAnDauTu/ngay,'dd/mm/yyyy')"/>&#160;&#160;
					của: <xsl:value-of select="$tkchinh/Header/VBPheDuyetDuAnDauTu/cua"/>
					 </td>
				</tr>
				<tr>
					<td colspan="2"><b>[12]</b> Tên chủ dự án đầu tư:  <xsl:value-of select="$tkchinh/Header/tenChuDuAnDauTu"/> 
					 </td>
				</tr>
				<tr>
					<td colspan="2"><b>[13] </b>Mã số thuế:  <xsl:value-of select="$tkchinh/Header/maSoThueDuAnDauTu"/> 
					 </td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="2">
							
							<b>[14]</b> Tên đại lý thuế (nếu có): 
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[15] </b>Mã số thuế: 
						</td>
					</tr>
					
					<tr>
						<td>
							<b>[16] </b> Hợp đồng đại lý thuế: Số  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                        Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="2">
							<br/>
							<b>[14] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[15] </b>Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
					<tr>
						<td >
							<b>[16] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
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

<!-- start header 04_GTGT_TT80-->
	<xsl:template name="tkhaiHeader_04_GTGT_TT80_283">
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
					<td class="align-c"><xsl:if test="$tkchinh/Header/khaiRiengThuHo= 'true' ">[x]</xsl:if> <xsl:if test="$tkchinh/Header/khaiRiengThuHo= 'false' ">[&#32;]</xsl:if>
Khai riêng đối với khoản thu hộ do cơ quan nhà nước có thẩm quyền giao
                        </td>
                </tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: Lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] &#160;&#160;<b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] &#160;&#160;<b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			
			</table>
						<br/>
						<table class="ttinnnt_table"  width="100%">
						
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế:</b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<!-- <tr>
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
							</tr> -->
						
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07]</b> Mã số thuế:
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr> -->
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
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07]</b> Mã số thuế:
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr> -->
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
                                    <xsl:value-of select="$tkchinh/Header/ct11"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[11a]</b> Xã/ phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/Header/ct11a_ten"/>
								</td>
								<td>
									<b>[11b]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/Header/ct11b_ten"/>
								</td>
								<td> <b>[11c] </b>Tỉnh/Thành phố:
                                    <xsl:value-of select="$tkchinh/Header/ct11c_ten"/>
								</td>
							</tr>
							
						</table>
					
		</div>
	</xsl:template>
	
	<!-- start header 05_GTGT_TT80-->
	<xsl:template name="tkhaiHeader_05_GTGT_TT80_283">
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
						<b>[01]</b> Kỳ tính thuế: Lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
									<b>[04] Tên người nộp thuế:</b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<!-- <tr>
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
							</tr> -->
						
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07] </b>Mã số thuế:
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr> -->
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
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07]</b> Mã số thuế:
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr> -->
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
									<b>[09]</b> Địa chỉ nơi có hoạt động xây dựng, chuyển nhượng BĐS: 
                                    <xsl:value-of select="$tkchinh/Header/ct09"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09a]</b> Xã/ phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/Header/ct09a_ten"/>
								</td>
								<td>
									<b>[09b]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/Header/ct09b_ten"/>
								</td>
								<td> <b>[09c] </b>Tỉnh/Thành phố:
                                    <xsl:value-of select="$tkchinh/Header/ct09c_ten"/>
								</td>
							</tr>
							
						</table>
					
		</div>
	</xsl:template>
	
	<!-- start header 02_TTĐB (TT80/2021)-->
	<xsl:template name="tkhaiHeader_02_TTDB_TT80_283">
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
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
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
						<b>&#160;&#160;&#160;&#160;&#160;[11a]</b> Xã/ phường/đặc khu:  
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
	
<!-- start header 02/TNDN TT80-->
	<xsl:template name="tkhaiHeader-02TNDN-TT80_283">
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
						<b>[01]</b> Kỳ tính thuế: Lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
				<tr/>
				</table>
				<table>
				<!-- <tr>
					<td class="align-c">       
                        [<xsl:if test="$tkchinh/dnQuiMoVuaVaNho = 'true' "> x </xsl:if>]  Doanh nghiệp có quy mô vừa và nhỏ
                    </td>
				</tr> -->
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>1. Bên chuyển nhượng:</b>
								</td>
								<tr/>
							</tr>
							<tr>
								<td colspan="3">
									<b>[04] </b>Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<!-- <tr>
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
							</tr> -->
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng: </b>
								</td>
							</tr>
							<tr>
                            </tr>
							<tr>
								<td colspan="3">
									<b>[06]</b> Tên tổ chức/cá nhân nhận chuyển nhượng:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct06"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" width="100%">
									<b>[07]</b> Mã số thuế/số chứng minh nhân dân/ số căn cước công dân (đối với cá nhân chưa có mã số thuế):  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct07"/>
								</td>
							</tr>
							<tr>
					<td colspan="4">
						<b>[08]</b> Địa chỉ: 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/diaChi"/>&#160;&#160;
						Xã/ phường/đặc khu 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/xaPhuong_ten"/>&#160;&#160;
						Quận/huyện: 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/quanHuyen_ten"/>&#160;&#160;
					Tỉnh/Thành phố
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/tinhTP_ten"/>
					</td>
				</tr>
								<!-- <td width="50px">
									Phường/xã: 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/xaPhuong_ten"/>
								</td>
								<td width="50px">
									Quận/huyện: 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/quanHuyen_ten"/>
								</td>
								<td width="100px"> Tỉnh/TP: 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/tinhTP_ten"/>
								</td> -->
							
							<tr>
								<td colspan="4">
									<b>[09]</b> Địa chỉ bất động sản được chuyển nhượng: <b>[09a]</b> Số nhà, đường phố 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09a"/>&#160;&#160;
								</td>
								</tr>
								<tr>
								<td colspan="3">
									<b>[09b]</b> Xã/ phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09b_ten"/>&#160;&#160;
									<b>[09c]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09c_ten"/>&#160;&#160;
									<b>[09d] </b>Tỉnh/Tp:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09d_ten"/>&#160;&#160;
								</td>
							</tr>
							<!-- <tr>
								<td colspan="3">
									<b>[09b]</b> Phường/xã:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09b_ten"/>
								</td>
								<td>
									<b>[09c]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09c_ten"/>
								</td>
								<td> <b>[09d] </b>Tỉnh/Tp:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09d_ten"/>
								</td>
							</tr> -->
							<tr>
								<td colspan="4">
									Theo Hợp đồng chuyển nhượng bất động sản:  Số:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/so_hd"/>
                                    Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_hd,'dd/mm/yyyy')"/>
				
                                    <!-- có công chứng hoặc chứng thực tại UBND phường (xã) xác nhận ngày 
                                    <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'dd/mm/yyyy')"/> -->
                                  		
											 
                                    có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'yyyy')"/>											
											 									
                                </td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr> -->
								<tr>
									<td>
										<b>[12] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] Mã số thuế: </b>
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr> -->
								<tr>
						<td colspan="3">
							<b>[12] </b> Hợp đồng đại lý thuế: Số  &#160;&#160;
						Ngày:
						</td>
					</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header 06/TNDN TT80-->
	<xsl:template name="tkhaiHeader-06TNDN-TT80">
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
						<b>[01]</b> Kỳ tính thuế: Từng lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
				<tr/>
				<!-- <tr>
					<td class="align-c">       
                        [<xsl:if test="$tkchinh/dnQuiMoVuaVaNho = 'true' "> x </xsl:if>]  Doanh nghiệp có quy mô vừa và nhỏ
                    </td>
				</tr> -->
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>1. Bên chuyển nhượng:</b>
								</td>
								<tr/>
							</tr>
							<!-- <tr>
								<td colspan="3">
									<b>[04]</b> Tên người nộp thuế:
								</td>
								<tr/> -->
							
							<tr>
								<td colspan="3">
									<b>[04] </b>Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<!-- <tr>
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
							</tr> -->
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng vốn: </b>
								</td>
							</tr>
							<tr>
                            </tr>
							<tr>
								<td colspan="3">
									<b>[06]</b> Tên tổ chức/cá nhân nhận chuyển nhượng:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct06"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" width="100%">
									<b>[07]</b> Mã số thuế/số chứng minh nhân dân/ số căn cước công dân (đối với cá nhân chưa có mã số thuế):  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/ct07"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
						<b>[08]</b> Địa chỉ: 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/diaChi"/>&#160;&#160;
						Xã/ phường/đặc khu: 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/xaPhuong_ten"/>&#160;&#160;
						Quận/huyện: 
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/quanHuyen_ten"/>&#160;&#160;
					Tỉnh/Thành phố
						<xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT08/tinhTP_ten"/>
					</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[09]</b> Địa chỉ bất động sản được chuyển nhượng: <b>[09a]</b> Số nhà, đường phố 
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09a"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09b]</b> Xã/ phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09b_ten"/>
								</td>
								<td>
									<b>[09c]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09c_ten"/>
								</td>
								<td> <b>[09d] </b>Tỉnh/Tp:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/CT09/ct09d_ten"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									Theo Hợp đồng chuyển nhượng bất động sản:  Số:
                                    <xsl:value-of select="$tkchinh/ThongTinChuyenNhuong/so_hd"/>
                                    Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_hd,'dd/mm/yyyy')"/>
				
                                    <!-- có công chứng hoặc chứng thực tại UBND phường (xã) xác nhận ngày 
                                    <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'dd/mm/yyyy')"/> -->
                                  		
											 
                                    có công chứng hoặc chứng thực tại UBND phường (xã)  xác nhận ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/ThongTinChuyenNhuong/ngay_congChung,'yyyy')"/>											
											 									
                                </td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế </b>(nếu có): 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] </b>Mã số thuế: 
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[22]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[23]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr> -->
								<tr>
									<td>
										<b>[12] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[10] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[11] </b>Mã số thuế: 
									</td>
								</tr>
								<!-- <tr colspan="3">
									<td>
										<b>[18]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[19]</b> Quận/Huyện: 
                                    </td>
									<td colspan="2">
										<b>[20] </b>Tỉnh/Thành phố: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[21]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[22]</b> Fax:
                                    </td>
									<td>
										<b>[23]</b> E-mail:
                                    </td>
								</tr> -->
								<tr>
									<td colspan="3">
										<b>[12] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td> Ngày:
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>

	<!-- start header 01_PBVMT_TT80-->
	<xsl:template name="tkhaiHeader_01_PBVMT_TT80_283">
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
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			
			</table>
						<br/>
						<table class="ttinnnt_table"  width="100%">
						
							<tr>
								<td colspan="3">
									<b>[04] </b>Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07] Mã số thuế: </b>
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
										<br/>
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
									<b>[09]</b> Địa chỉ nơi khai thác khoáng sản khác tỉnh với nơi đóng trụ sở chính: 
                                    <xsl:value-of select="$tkchinh/Header/ct09"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09a]</b> Xã/phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/Header/ct09a_ten"/>
								</td>
								<td>
									<b>[09b]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/Header/ct09b_ten"/>
								</td>
								<td> <b>[09c] </b>Tỉnh/Thành phố:
                                    <xsl:value-of select="$tkchinh/Header/ct09c_ten"/>
								</td>
							</tr>
							
						</table>
					
		</div>
	</xsl:template>
	
	<!-- start header 02_PBVMT_TT80-->
	<xsl:template name="tkhaiHeader_02_PBVMT_TT80">
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
                        <b>[01]</b> Kỳ tính thuế: Từ 
                     <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> đến  <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
                     <!--<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> -->
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
						<table class="ttinnnt_table"  width="100%">
						
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế: </b> <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
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
										<br/>
										<b>[06] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[07] </b> Mã số thuế: 
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
									<b>[09]</b> Địa chỉ nơi khai thác khoáng sản khác tỉnh với nơi đóng trụ sở chính: 
                                    <xsl:value-of select="$tkchinh/Header/ct09"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[09a]</b> Xã/ phường/đặc khu:  
                                    <xsl:value-of select="$tkchinh/Header/ct09a_ten"/>
								</td>
								<td>
									<b>[09b]</b> Quận/Huyện:  
                                    <xsl:value-of select="$tkchinh/Header/ct09b_ten"/>
								</td>
								<td> <b>[09c] </b>Tỉnh/Thành phố:
                                    <xsl:value-of select="$tkchinh/Header/ct09c_ten"/>
								</td>
							</tr>
							
						</table>
					
		</div>
	</xsl:template>
	
	<!-- start header phụ luc 01-2/GTGT (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_2_GTGT_TT80">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03]</b> Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header phụ luc 01-3/GTGT (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_3_GTGT_TT80">
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
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
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
							<tr>
								<td colspan="3">
									<b>[06]</b> Tổng doanh thu thực tế: 
									<xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_GTGT/ct07)"/> đồng
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header phụ luc 01-6/GTGT (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_6_2_GTGT_TT80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:param name="ghiChuPL1"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
					<xsl:with-param name="ghiChuPL1_" select="$ghiChuPL1"/>
				</xsl:call-template>
				<tr>
					<td class="align-l"><b>[01a]</b> Hoạt động phân bổ: 
					[&#32;&#32;] Đơn vị phụ thuộc, địa điểm kinh doanh là cơ sở sản xuất.
						<br></br>
						&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[X] Đơn vị phụ thuộc kinh doanh dịch vụ viễn thông cước trả sau.
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01b]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<table class="ttinnnt_table">
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
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>	
	<!-- start header phụ luc 01-6/GTGT (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_6_1_GTGT_TT80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:param name="ghiChuPL1"/>
		<div class="header_div">
			<table>
				<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
					<xsl:with-param name="ghiChuPL1_" select="$ghiChuPL1"/>
				</xsl:call-template>
				<tr>
					<td class="align-l"><b>[01a]</b> Hoạt động phân bổ: 
						[X] Đơn vị phụ thuộc, địa điểm kinh doanh là cơ sở sản xuất.
						<br></br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;&#32;] Đơn vị phụ thuộc kinh doanh dịch vụ viễn thông cước trả sau.
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01b]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<table class="ttinnnt_table">
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
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!--Header tờ khai MBAI - TT80-->
<xsl:template name="tkhaiHeader_MBAI_TT80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td style="width:73%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
            </td>
					<td style="width:27% ; vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>
								<span class="mtatentkhai" style="font-size:9pt">(<xsl:value-of select="$moTaBieuMau"/>) </span>
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
						<b>[01]</b> Kỳ tính lệ phí: Năm <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
				
		<!-- <tr>
	  	     <td class="align-c">
[<xsl:if test="$tkchinh/ChonToKhai/tkChinhThucLanDau = 'true' ">x</xsl:if> <xsl:if test="$tkchinh/ChonToKhai/tkChinhThucLanDau = '1' ">x</xsl:if>] Khai phí môn bài chính thức lần đầu
			</td>
		</tr>
		<tr>
	  	     <td class="align-c">
[<xsl:if test="$tkchinh/ChonToKhai/boSung_tkChinhThucLanDau = 'true' ">x</xsl:if> <xsl:if test="$tkchinh/ChonToKhai/boSung_tkChinhThucLanDau = '1' ">x</xsl:if>] Khai phí môn bài bổ sung cho tờ khai chính thức lần đầu
			</td>
		</tr>
		
			<tr>
	  	     <td class="align-c">
[<xsl:if test="$tkchinh/ChonToKhai/tkChiNhanhMoiThanhLap = 'true' ">x</xsl:if> <xsl:if test="$tkchinh/ChonToKhai/tkChiNhanhMoiThanhLap = '1' ">x</xsl:if>] Khai phí môn bài  cho chi nhánh mới thành lập
			</td>
		</tr>
				<tr>
	  	     <td class="align-c">
[<xsl:if test="$tkchinh/ChonToKhai/boSung_tkChiNhanhMoiThanhLap = 'true' ">x</xsl:if> <xsl:if test="$tkchinh/ChonToKhai/boSung_tkChiNhanhMoiThanhLap = '1' ">x</xsl:if>] Khai phí môn bài  bổ sung cho tờ khai của các chi nhánh 
			</td>
		</tr> -->
					
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[04] Người nộp lệ phí</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">[05] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<!-- <tr>
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
				</tr> -->
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[06] Đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3"> <b>[07] Mã số thuế: </b> </td>
					</tr>
					<!-- <tr colspan="3">
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
					</tr> -->
					<tr>
						<td>
							[08] Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[06] Đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[07] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<!-- <tr colspan="3">
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
					</tr> -->
					<tr>
						<td>
							<b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
		<!-- <div class="giahan_div">
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
		</div> -->
	</xsl:template>	
	<!-- start header phụ luc 01-3/TTDB(TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_3_TTDB_TT80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				
				
				<tr>
            <td class="align-c" colspan="3"  style="width:80%">
                <b>PHỤ LỤC</b>
            </td>
            <td style="width:17% vertical-align: top;"  rowSpan="5" align="top">
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
                            <xsl:value-of select="$mauTKhai"/>
                        </b>
                        <br/>(<i>
                            <xsl:value-of select="$moTaBieuMau"/>
                        </i>)
                    </div>
                </div>	
            </td>
			 
        </tr>
		 <tr>
                <td class="align-c" colspan="3" >
					<b>
						<xsl:value-of select="$tenPL"/>
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung lần thứ: [&#32;] 
								<br/>
								<br/>
								<br/>
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]  
								<br/>
								<br/>
								<br/>
                        </xsl:if>
					</td>
				</tr>
				<tr>
					<td>
						<table class="ttinnnt_table">
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
							<tr>
								<td colspan="3">
									<b>[06]</b> Tổng số thuế TTĐB phải nộp trên tờ khai:
									<xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_TTDB/BangPhanBoDoiVoiHDKDXSDT/ct06)"/> đồng
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[07]</b> Tổng doanh thu thực tế:
									<xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_3_TTDB/BangPhanBoDoiVoiHDKDXSDT/ct07)"/> đồng
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start phụ lục tkhai header 01-1/TBVMT (TT80/2021)-->
<xsl:template name="tkhaiHeader-Pluc01-TBVMT-TT80">
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
							<div>Mẫu số: <b>0
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
					<td class="align-c"><b>BẢNG XÁC ĐỊNH SỐ THUẾ BẢO VỆ MÔI TRƯỜNG PHẢI NỘP ĐỐI VỚI THAN</b> 
					<br/><i>(Kèm theo Tờ khai thuế bảo vệ môi trường mẫu số 01/TBVMT)</i>
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
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
						</table>
												
					</td>
				</tr>			
			</table>
			<br/>
		</div>
	</xsl:template>
	<!-- start phụ lục tkhai header 01-2/TBVMT (TT80/2021)-->
<xsl:template name="tkhaiHeader-Pluc02-TBVMT-TT80">
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
					<td class="align-c"><b>BẢNG PHÂN BỔ SỐ THUẾ BẢO VỆ MÔI TRƯỜNG PHẢI NỘP ĐỐI VỚI XĂNG DẦU</b> 
					<br/><i>(Kèm theo Tờ khai thuế bảo vệ môi trường mẫu số 01/TBVMT)</i>
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
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
						</table>
												
					</td>
				</tr>			
			</table>
			<br/>
		</div>
	</xsl:template>
	<!-- start header PL 05-1/PBT-KK-TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PLuc_05_1_PBT_KK_TNCN_TT80">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>				
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[01a]</b> Lần đầu: [X] <b>[01b] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[01a]</b> Lần đầu: [&#32;] <b>[01b] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						<b>[02] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[03] </b>Mã số thuế: 
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header tờ khai Quyết toán LNCL 01/QT-LNCL-->
  <xsl:template name="tkhaiHeader_QT_LNCL_01">
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
                     <i>Áp dụng đối với: </i> <xsl:value-of select="$tkchinh/Header/apDung_ten"/>	
                    </td>   	 
           	    </tr>	
				 <tr>   
                    <td class="align-c">
                     [01] Kỳ tính lợi nhuận sau thuế còn lại sau khi trích lập các quỹ: Từ 
                     <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> đến  <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
                     <!--<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> -->
                    </td>   	 
           	   </tr>	
           	   <tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							[02] Lần đầu: [x] [03] Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							[02] Lần đầu: [&#32;] [03] Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
        
                
				<tr>
					<td>
						<br/>
						
						<table class="ttinnnt_table">
						   <tr>
                    <td colspan="3">
                        <b>[04] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        [05] Mã số thuế:
                        <xsl:value-of select="$ttkthue/NNT/mst"/>
                    </td>
                </tr>
                
                
                <xsl:if test="not($ttkthue/DLyThue)">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[06] Tên đại lý thuế (nếu có): </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            [07] Mã số thuế:
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <b>[08] </b> Hợp đồng đại lý thuế: Số  
                        </td>
                        <td colspan="2"> Ngày: 
                        </td>
                    </tr>
                </xsl:if>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[06] Tên đại lý thuế (nếu có): </b>
                            <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                           [07] Mã số thuế:
                            <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <b>[08] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
                        </td>
                        <td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
                        </td>
                    </tr>
		     </xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header phụ luc 01-1/QT-LNCL(TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_1_QT_LNCL_TT80">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính lợi nhuận sau thuế còn lại sau khi trích lập các quỹ: Từ 
                     <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> đến  <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>
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
					<td>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[02] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[03]</b> Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[04]</b> ] Tổng số lợi nhuận sau thuế còn lại phải nộp NSNN trên tờ khai quyết toán:
									<xsl:value-of select="ihtkk:formatNumber (HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_QT_LNCL/ct04)"/> đồng
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Tổng doanh thu bán vé thực tế:
									<xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/Pluc_01_1_QT_LNCL/ct05)"/> đồng
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>	
	
	<!-- start tkhai header 03/TNDN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_03TNDN_TT80">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> Từ <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>) 
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
					<td class="align-l">
                        <b>[04]</b> Ngành nghề có tỷ lệ doanh thu cao nhất: <xsl:value-of select="$tkchinh/Header/ct04_ten"/> 
                    </td>
				</tr>
				<tr>
					<td class="align-l">
                        <b>[05]</b> Tỷ lệ (%):  <xsl:value-of select="ihtkk:formatNumber($tkchinh/Header/ct05)"/> %
                    </td>
				</tr>
							<tr>
								<td colspan="3">
									<b>[06] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[07] </b>Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[08] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[09] </b>Mã số thuế: 
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[10] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[08] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[09] </b>Mã số thuế: 
									</td>
								</tr>
								<tr>
									<td>
										<b>[10] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 03-1A-TNDN (TT80/2021)-->
	<xsl:template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL1"/>
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">
						<b>[03]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header KHBS01 theo TT80-->
	<xsl:template name="tkhaiHeader-KHBS01">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS"/>	
		<xsl:variable name="KHBS01" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_KHBS' />
		<div class="header_div">
			<table class="ttinnnt_table" style="width:100%">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
						<br/><b>TỜ KHAI BỔ SUNG</b>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
					<td class="mtatentkhai">
						<div style="width:80% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>[01]</b> Mẫu tờ khai: <xsl:value-of select="$KHBS01/Header/tenTKhai"/></td>
				</tr>
				<tr>
					<td colspan="3"><b>[02]</b> Mã giao dịch điện tử: <xsl:value-of select="$KHBS01/Header/maGiaoDich"/></td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[03]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>[04] </b>Bổ sung lần thứ:  <xsl:value-of select="$KHBS01/Header/soLan"/></td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06]</b> Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td><b>[07]</b> Tên đại lý thuế (nếu có): </td>
					</tr>
					<tr>
						<td><b>[08]</b> Mã số thuế: </td>
					</tr>
					<tr>
						<td><b>[09]</b>  Hợp đồng đại lý thuế: Số </td>
						<td> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<b>[07]</b> Tên đại lý thuế (nếu có): 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[08]</b> Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[09]</b>  Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</xsl:template>
	<!-- hết header tờ khai KHBS01-->

<!-- start header 01-1/KHBS TT80-->
	<xsl:template name="tkhaiHeader-KHBS01_1-PNN">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>

		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS"/>	
		<xsl:variable name="KHBS01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS' />
		<div class="header_div">
			<table class="ttinnnt_table" style="width:100%">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
						<br/><b>BẢN GIẢI TRÌNH KHAI BỔ SUNG</b>
						<br/><i>(Kèm theo Tờ khai bổ sung mẫu số 01/KHBS)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
					<td class="mtatentkhai">
						<div style="width:80% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<!-- <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div> -->
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>[01]</b> Mẫu tờ khai: 
						<xsl:value-of select="$KHBS01_1/Header/tenTKhai"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>[02]</b> Mã giao dịch điện tử: 
					<xsl:value-of select="$KHBS01_1/Header/maGiaoDich"/>
				</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[03]</b> Kỳ tính thuế: 
						<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>[04] </b>Bổ sung lần thứ:  <xsl:value-of select="$KHBS01_1/Header/soLan"/></td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[06]</b> Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start header 01-1/KHBS của tờ khai 02/SDDPNN-->
	<xsl:template name="tkhaiHeader-KHBS01_1">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		   <!-- Phụ lục 01-1/KHBS tờ khai 02/TK-SDDPNN TT80 -->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS"/>	
		<xsl:variable name="KHBS01_1" select='HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_KHBS' />
		<div class="header_div">
			<table class="ttinnnt_table" style="width:100%">
				<tr>
					<td style="width:77%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>-------------------------
						<br/><b>BẢN GIẢI TRÌNH KHAI BỔ SUNG</b>
						<br/><i>(Kèm theo Tờ khai bổ sung mẫu số 01/KHBS)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="5" align="top">
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
					<td class="mtatentkhai">
						<div style="width:80% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
			</table>
			<br/>
			<!-- <div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div> -->
			<div><b>[01] </b>Mẫu tờ khai: <xsl:value-of select="$KHBS01_1/Header/tenTKhai"/></div>
			<table class="ttinnnt_table">
				<tr>
					<td>	<b>[02]</b> Mã giao dịch điện tử: <xsl:value-of select="$KHBS01_1/Header/maGiaoDich"/></td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[03]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td> <b>[04] </b>Bổ sung lần thứ:  <xsl:value-of select="$KHBS01_1/Header/soLan"/></td>
				</tr>
				<tr>
					<td>
						<b>[05]</b> Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06]</b> Mã số thuế: 
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- hết header phụ lục 01-1KHBS-->
	<!-- start tkhai header -->
	<xsl:template name="tkhaiHeader_02qtt_TT92">
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
						<b>[07]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
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
				<tr>
					<td><b>[12]</b> Số tài khoản ngân hàng (nếu có): <xsl:value-of select="$tkchinh/Header/ct12"/></td>
					<td><b>[12a]</b> Mở tại: <xsl:value-of select="$tkchinh/Header/ct12a"/></td>
				</tr>
				
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: 
                        </td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: 
                        </td>
						<td>
							<b>[19]</b> Fax: 
                        </td>
						<td>
							<b>[20]</b> E-mail: 
                        </td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[13] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<b>[14] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr colspan="3">
						<td>
							<b>[15]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[16]</b> Quận/Huyện: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
						</td>
						<td colspan="2">
							<b>[17] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[18]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
						</td>
						<td>
							<b>[19]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
						</td>
						<td>
							<b>[20]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
						</td>
					</tr>
					<tr>
						<td>
							<b>[21] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
									</xsl:if>
					<tr>
						<td colspan="3">
							<b>[22] Tên tổ chức trả thu nhập: </b> 
							<xsl:value-of select="$tkchinh/Header/tenTCCT"/>
						</td>
					</tr>
					<tr>
						<td colspan="3"><b>[23]  Mã số thuế: </b> 
							<xsl:value-of select="$tkchinh/Header/maTCCT"/>
						</td>
					</tr>
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
	
	<!-- start header Phuluc 02-1/BK-QTT-TNCN-->
	<xsl:template name="tkhaiHeader-pluc-02-1-BK-QTT-TNCN_TT92">
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[02] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l"><b>[03] </b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
					<tr>
						<td colspan="3">
							 <b>[04]</b>Họ và tên vợ (chồng) nếu có:  <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct04"/>
							
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[05]</b> Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct05"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[06]</b> Số CMND/ Số hộ chiếu vợ (chồng): <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct06"/></td>
					</tr>
					
					<tr>
						<td colspan="3">
							<br/>
							<b>[07] Tên đại lý thuế (nếu có): </b><xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start tkhai header -->
	<xsl:template name="tkhaiHeader_02qtt_tt80">
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
					<td class="align-c"><b>TỜ KHAI QUYẾT TOÁN THUẾ THU NHẬP CÁ NHÂN</b>
						<!--<xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>-->
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
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>:  
						(Từ <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> đến <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)
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
					Tờ khai quyết toán thuế kèm theo hồ sơ giảm thuế do thiên tai, hoả hoạn, tai nạn, bệnh hiểm nghèo: [<xsl:if test="$tkchinh/Header/qTTTheoHSGiamThue='true' or $tkchinh/Header/qTTTheoHSGiamThue='1'">x</xsl:if>]
				</td>
			</tr>
			
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
						<b>[07]</b> Xã/phường/đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
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
							<b>[13]</b> Mã số thuế: 
						</td>
					</tr>
					
					<tr>
						<td>
							<b>[14] </b> Hợp đồng đại lý thuế: Số  
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
							[13] Mã số thuế: 
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					
					
					
					<tr>
						<td>
							<b>[14] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
						</td>
						<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
						</td>
					</tr>
					</xsl:if>
					<tr>
						<td colspan="3">
							<b>[15] Tên tổ chức trả thu nhập:  </b>
							<xsl:value-of select="$tkchinh/Header/tenTCCT"/>
						</td>
					</tr>
					<tr>
						<td colspan="3"><b>[16]</b> Mã số thuế:  
							<xsl:value-of select="$tkchinh/Header/MST"/>
						</td>
					</tr>
					<tr>
						<td colspan="3"><b>[17]</b> Địa chỉ:  
							<xsl:value-of select="$tkchinh/Header/dchiTCCT"/>
						</td>
					</tr>
					<tr>
						<td>
						<b>[18]</b> Quận/Huyện:  
							<xsl:value-of select="$tkchinh/Header/tenHuyenTCCT"/>
						</td>
					
						<td colspan="2"><b>[19]</b> Tỉnh/Thành:  
							<xsl:value-of select="$tkchinh/Header/tenTinhTCCT"/>
						</td>
					</tr>
				
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
	
	<!-- start header Phuluc-->
	<!-- start header Phuluc 02-1/BK-QTT-TNCN-->
	<xsl:template name="tkhaiHeader-pluc-02-1-BK-QTT-TNCN_tt80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
					<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
				</xsl:call-template>
				
				<tr>
					<td class="mtatentkhai">
						<div style="width:100% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>:  
						(Từ <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuThang"/> đến <xsl:value-of select="$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenThang"/>)
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
					<td class="align-l"><b>[05] </b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
					<tr>
						<td colspan="3">
							 <b>[06]</b>Họ và tên vợ (chồng) nếu có:  <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct06"/>
							
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[07]</b> Mã số thuế: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct07"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Số CMND/ Số hộ chiếu vợ (chồng): <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_02_1_BK_QTT_TNCN/Header/ct08"/></td>
					</tr>
					<xsl:if test="$ttkthue/DLyThue">
					<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="3">
							<br/>
							<b>[07] Tên đại lý thuế (nếu có): </b><xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="3">
							<b>[07] Tên đại lý thuế (nếu có):</b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
					
					
					
				</xsl:if>
			
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header plucNQ142GTGT -->
		<xsl:template name="tkhaiHeader-pluc142GTGT_TTS">
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
				<!--<tr>
					
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>-->
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
							
							
							
							
							
							
							<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D' and ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'yyyy')&gt;='2025'and ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'mm')&lt;='06' and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&lt;='2024'">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 142/2024/QH15 VÀ NGHỊ QUYẾT SỐ 174/2024/QH15
							</xsl:if>
							<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D' and ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'mm')&lt;='12'and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'mm')&gt;='01'and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&gt;='2025'">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 174/2024/QH15 VÀ NGHỊ QUYẾT SỐ 204/2025/QH15
							</xsl:if>
<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D' and ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'yyyy')&gt;='2026'and ihtkk:stringDatetime($kkthue/kyKKhaiDenNgay,'mm')&lt;='12' and ihtkk:stringDatetime($kkthue/kyKKhaiTuNgay,'yyyy')&lt;='2024'">GIẢM THUẾ GIÁ TRỊ GIA TĂNG THEO NGHỊ QUYẾT SỐ 142/2024/QH15 VÀ NGHỊ QUYẾT SỐ 174/2024/QH15 VÀ NGHỊ QUYẾT SỐ 204/2025/QH15
							</xsl:if>
							
							
							
							
							
						</b>
					</td>
				</tr>
				<!-- <tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPLGTGT"/>
						</b>
					</td>
				</tr>-->
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
	<!--start header Phuluc 01-2/HDKD_TT40-->
	<xsl:template name="tkhaiHeader_pluc_01_2_CNKD_TT40">
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
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Y'">
							<b>[01]</b> Kỳ tính thuế: <b>[01a] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)   
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <b>[01b] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Q'">
							<b>[01]</b> Kỳ tính thuế: <b>[01c] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>   (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D'">
							<b>[01]</b> Kỳ tính thuế: <b>[01d] </b> Lần phát sinh:  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
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
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[04] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l"><b>[05] </b>Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!--start header Phuluc 01-1/CNKD_TT40-->
	<xsl:template name="tkhaiHeader_pluc_01_1_CNKD_TT40">
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
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Y'">
							<b>[01]</b> Kỳ tính thuế: <b>[01a] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/> (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)   
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <b>[01b] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Q'">
							<b>[01]</b> Kỳ tính thuế: <b>[01c] </b> <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>   (từ tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,'dd/mm/yyyy')"/> &#160;đến tháng <xsl:value-of select="ihtkk:stringDatetime(HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay,'dd/mm/yyyy')"/>)
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='D'">
							<b>[01]</b> Kỳ tính thuế: <b>[01d] </b> Lần phát sinh:  <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>    
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
						<br/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[04] Tổ chức, cá nhân khai thay: </b>
						<xsl:value-of select="$tkchinh/Header/ToChucKThay/ct22"/>
					</td>
					<!--style:height="25"-->
				</tr>
				<tr>
					<td class="align-l">[05] Mã số thuế: <xsl:value-of select="$tkchinh/Header/ToChucKThay/ct23"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header phụ luc 04-1/CNV-TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_04_1_CNV_TNCN">
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
					<td class="align-c">
						<b>[01] Kỳ tính thuế: </b>
						<xsl:if test="$kieuKy='Q'">[10b] 
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='M'">[01b]  
							<xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/><br/>
						</xsl:if>
						<xsl:if test="$kieuKy='D'">[01a] Lần phát sinh 
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
				<tr>
					<td>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Tên tổ chức, cá nhân khai thay: </b><xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct12_ten_caNhanKhaiThay"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] Mã số thuế: </b>
									<xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct13_mst_caNhanKhaiThay"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start tkhai header 01/HT-->
	<xsl:template name="tkhaiHeader_01HT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<xsl:variable name="kskthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
                    <td><b><xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/> </b><br/>Số: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/so"/></td>					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
						<br/>
						<i><xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($kskthue/TKhaiThue/ngayKy,'yyyy')"/></i>
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
				<br/>
				<tr>
					<td class="tentkhai" colspan="4">
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
				
			</table>
			<br/>
			<div style="width:90%;text-align:center">Kính gửi: <xsl:value-of select="$tkchinh/Header/tenCoQuanThu"/></div><br/><br/>
			<div><b>I- Thông tin về tổ chức, cá nhân đề nghị hoàn trả: </b></div>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="4">
						<b>[01] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<b>[02] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[03] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<b>[04]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$ttkthue/NNT/phuongXa"/>
					</td>
					<td colspan="2">
						<b>[05]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[06] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					</td>
					<td>
						<b>[07] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					<td colspan="2">
						<b>[08]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
					</td>
				</tr>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td colspan="4">
							<br/>
							<b>[09] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<b>[10] Mã số thuế: </b>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  
                        </td>
						<td colspan="2"> Ngày: 
                        </td><br/>
					</tr>
				</xsl:if>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td colspan="4">
							<br/>
							<b>[09] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<b>[10] Mã số thuế: </b>
							<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<b>[19] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
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
	
	<!-- start header PL 06-1/BK-TNCN (TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_06_1_BK_TNCN">
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
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>				
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[02]</b> Lần đầu: [X] <b>[03] </b>Bổ sung  lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[02]</b> Lần đầu: [&#32;] <b>[03] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<table class="ttinnnt_table"  width="100%">
				<br></br>
				<tr>
					<td colspan="3">
						<b>[04] Tên người nộp thuế: </b><xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[05] </b>Mã số thuế: 
							<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start header phụ luc 01-2/TTDB(TT80/2021)-->
	<xsl:template name="tkhaiHeader_PL_01_2_TTDB_TT80">
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
	<tr>
	<td>
	<table class="ttinnnt_table">
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
	</td>
	</tr>
	</table>
	</div>
	</xsl:template>
<!-- start header Phuluc 05-1/BK-QTT-TNCN-->
	<xsl:template name="tkhaiHeader-pluc-05QTT_tt80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
					<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
				</xsl:call-template>
				
				<tr>
					<td class="mtatentkhai">
						<div style="width:100% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>:  
						
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
					<td class="align-l"><b>[05] </b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				
			
			</table>
		</div>
	</xsl:template>
	<!-- start header Phuluc 05-2/BK-QTT-TNCN va 3-->
	<xsl:template name="tkhaiHeader-pluc_tt80">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="ghiChuPL"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table>
					<xsl:call-template name="BieuNguPhuLuc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="tenPL_" select="$tenPL"/>
					<xsl:with-param name="ghiChuPL_" select="$ghiChuPL"/>
				</xsl:call-template>
				
				<tr>
					<td class="mtatentkhai">
						<div style="width:100% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>:  
						
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
					<td class="align-l"><b>[05] </b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				
				
			
			</table>
		</div>
	</xsl:template>

<!-- start header 01/GHAN (373/2025/NĐ-CP)-->
	<xsl:template name="tkhaiHeader_01_GHAN_373">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<div style="text-align:right"><b>Mẫu số: <xsl:value-of select="$mauTKhai"/></b></div><br/>
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

<!-- start tkhai header 01/TK-DK ND373  -->
	<xsl:template name="tkhaiHeader-01TK-DK">
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
				        
						<td class="align-c"><b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/Header/LoaiDauKhi/ct01 = 'true' or $tkchinh/Header/LoaiDauKhi/ct01 = '1' "> X </xsl:if>]     
                       <b> [02]</b> Condensate: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct02 = 'true' or $tkchinh/Header/LoaiDauKhi/ct02 = '1' "> X </xsl:if>]      
                       <b>  [03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct03 = 'true' or $tkchinh/Header/LoaiDauKhi/ct03 = '1'"> X </xsl:if>]  </td>  
				</tr>
				<tr>
					<td class="align-c">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td  class="align-c"><b>[05]</b> Lần xuất bán thứ: <xsl:value-of select="$tkchinh/Header/ct05"/></td>
					<td></td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[06]</b> Lần đầu: [x] <b>[07] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[06]</b> Lần đầu: [&#32;] <b>[07] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			<tr>
					<td class="align-c">
						<b>[08]</b> Xuất khẩu: [<xsl:if test="$tkchinh/Header/ct08 = 'true' or $tkchinh/Header/ct08 = '1'  ">x</xsl:if>]      
                        <b>[09]</b> Xuất bán tại Việt Nam: [<xsl:if test="$tkchinh/Header/ct09= 'true' or $tkchinh/Header/ct09 = '1' "> x </xsl:if>]     
                    </td>
				</tr>
					<tr>
					<td  class="align-c"><b>[10]</b> Ngày xuất hóa đơn đối với xuất bán tại Việt Nam: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/ct10,'dd/mm/yyyy')" /></td>
					<td></td>
				</tr>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[11] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[12] Mã số thuế: </b>
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[13] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>[14]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/>
								</td>
								<td colspan="2">
									<b>[15]</b> Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[16] </b> Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>&#160;&#160;
								
									<b>[17] </b>Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>&#160;&#160;
								
									<b>[18]</b> E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[19]</b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/Header/ct19"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/Header/ct20/donViUyQuyen = 'true' or $tkchinh/Header/ct20/donViUyQuyen = '1' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/ct20/daiLyThue = 'true' or $tkchinh/ct20/daiLyThue = '1' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/ct20/donViUyQuyen = 'true' or $tkchinh/ct20/donViUyQuyen = '1'">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/> 
											</xsl:if>
											<xsl:if test="$tkchinh/ct20/daiLyThue = 'true'  or $tkchinh/ct20/daiLyThue = '1' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[25]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>&#160;&#160;
									
										<b>[26]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>&#160;&#160;
									
										<b>[27]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"><b>[29]</b> ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/ct20/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/ct20/daiLyThue = 'true' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/ct20/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tendonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/ct20/daiLyThue = 'true' "> </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Xã/Phường/Đặc khu:
                                    </td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố:
                                    </td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[25]</b> Điện thoại: &#160;&#160;
                                    
										<b>[26]</b> Fax: &#160;&#160;
                                    
										<b>[27]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: &#160;&#160;
                                  
									<b>[29]</b> ngày
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
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
	
	<!-- start header Phuluc 01/PL-DK ND373-->
	<xsl:template name="tkhaiHeader-pl01-dk">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="tKhai"/>
		<xsl:param name="tenPL"/>
		<xsl:param name="tenPL1"/>
		<xsl:param name="ghiChuPL"/>
		<div class="header_div">
			<table>
				<!-- mới -->
				<tr>
					<td class="align-c" colspan="3" style="width:80%">
						<b>PHỤ LỤC</b>
					</td>
					<td style="width:17% vertical-align: top;" rowSpan="5" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số: <b>
									<xsl:value-of select="$mauTKhai"/>
								</b>
								<br/>(<i>
									<xsl:value-of select="$moTaBieuMau"/>
								</i>)
                    </div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL"/>
						</b>
					</td>
				</tr>
				<tr>
					<td class="bketitle" colspan="3">
						<b>
							<xsl:value-of select="$tenPL1"/>
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
<tr>
				        
						<td colspan="3" class="align-c"><b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/Header/LoaiDauKhi/ct01 = 'true' or $tkchinh/Header/LoaiDauKhi/ct01 = '1' "> X </xsl:if>]     
                       <b> [02]</b> Condensate: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct02 = 'true' or $tkchinh/Header/LoaiDauKhi/ct02 = '1' "> X </xsl:if>]      
                       <b>  [03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct03 = 'true' or $tkchinh/Header/LoaiDauKhi/ct03 = '1'"> X </xsl:if>]  </td>  
				</tr>
				<tr>
					<td class="align-c" colspan="3">
						<b>[04]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">
						<b>[05] Tên người nộp thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>

				</tr>
				<tr>
					<td class="align-l">
						<b>[06]</b> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<xsl:if test="$ttkthue/DLyThue">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
							<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
						</td>
					</tr>
				</xsl:if>
				<xsl:if test="not($ttkthue/DLyThue)">
					<tr>
						<td class="align-l">
							<b>[07] Tên đại lý thuế (nếu có): </b>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<b>[08]</b> Mã số thuế: </td>
					</tr>
				</xsl:if>
				<tr>
					<td class="align-l">
						<b>[09]</b> Số thuế Tài nguyên phải nộp: <xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_DK/ct09)"/> &#160; <xsl:value-of select="($tkchinh/ma_DonVi)"/>
					</td>
				</tr>
				<tr>
					<td class="align-l">						
						<b>[10]</b> Số thuế thu nhập doanh nghiệp phải nộp: <xsl:value-of select="ihtkk:formatNumber(HSoThueDTu/HSoKhaiThue/PLuc/PLuc_01_DK/ct10)"/> &#160; <xsl:value-of select="($tkchinh/ma_DonVi)"/>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- start tkhai header 01/TBH ND373-->
	<xsl:template name="tkhaiHeader-01TBH-ND373">
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
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='Q'">
							<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>[04] Bên Việt Nam khấu trừ và nộp thuế thay</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05]</b> Mã số thuế nộp thay của bên Việt Nam: <xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[09] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[10]</b> Mã số thuế: 
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[11] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[09] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[10] Mã số thuế: </b>
									</td>
								</tr>
								<tr>
									<td>
										<b>[11] </b> Hợp đồng đại lý thuế: Số  
                                    </td>
									<td colspan="2"> Ngày: 
                                    </td>
								</tr>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	
	<!-- start phụ lục tkhai header 01-1/TBH (ND373)-->
<xsl:template name="tkhaiHeader-Pluc01-TBH-ND373">
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
					<td class="align-c"><b>DANH MỤC HỢP ĐỒNG TÁI BẢO HIỂM</b> 
					<br/><i>(Kèm theo Tờ khai thuế mẫu: 01/TBH)</i>
					</td>
				</tr>
				
				<!-- <tr>
					<td class="mtatentkhai">
						<div style="width:80% ">
							<xsl:value-of select="$ghuchuTK"/>
						</div>
					</td>
				</tr> -->
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy='M'">
							<b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
			<br/>
		</div>
	</xsl:template>


<!-- start tkhai header 01/LNCL_VSP-TT80  -->
	
	<xsl:template name="tkhaiHeader-01-LNCL-VSP">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<xsl:call-template name="BieuNguDatNuoc">
					<xsl:with-param name="mauTKhai_" select="$mauTKhai"/>
					<xsl:with-param name="moTaBieuMau_" select="$moTaBieuMau"/>
					<xsl:with-param name="ttkthue_" select="$ttkthue"/>
					<xsl:with-param name="ghuchuTK_" select="$ghuchuTK"/>
				</xsl:call-template>
				<tr>
						<td class="align-c"><b>[01]</b> Dầu thô: [ <xsl:if test="$tkchinh/Header/LoaiDauKhi/ct01 = 'true' or $tkchinh/Header/LoaiDauKhi/ct01 = '1' "> X </xsl:if>]     
                       <b> [02]</b> Condensate: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct02 = 'true' or $tkchinh/Header/LoaiDauKhi/ct02 = '1' "> X </xsl:if>]    
                       <b> [03]</b> Khí thiên nhiên: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct03 = 'true' or $tkchinh/Header/LoaiDauKhi/ct03 = '1' "> X </xsl:if>]  </td> 
                       </tr>
                       <tr>
                   <td class="align-c"><b> [04]</b> Kết dư dầu: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct04 = 'true' or $tkchinh/Header/LoaiDauKhi/ct04 = '1' "> X </xsl:if>]     
                       <b> [05]</b> Kết dư condensate: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct05 = 'true' or $tkchinh/Header/LoaiDauKhi/ct05 = '1' "> X </xsl:if>]    
                       <b> [06]</b> Kết dư khí: [<xsl:if test="$tkchinh/Header/LoaiDauKhi/ct06 = 'true' or $tkchinh/Header/LoaiDauKhi/ct06= '1' "> X </xsl:if>]      </td> 
				</tr>
				<tr>
					<td class="align-c">
						<b>[07]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b>[08]</b> Lần đầu: [X] <b>[09] </b>Bổ sung lần thứ: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b>[08]</b> Lần đầu: [&#32;] <b>[09] </b>Bổ sung lần thứ: [<xsl:value-of select="$ttkthue/TKhaiThue/soLan"/>]    
                        </xsl:if>
					</td>
				</tr>
			</table>
			<br/>
			<table class="ttinnnt_table">
				<tr>
					<td colspan="3">
						<b>[10] Tên người nộp thuế</b>: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[11] Mã số thuế: </b>
						<xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[12]</b> Hợp đồng dầu khí (PSC) lô: <xsl:value-of select="$tkchinh/Header/ct12"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<b>[13]</b> Mã số thuế hợp đồng dầu khí: <xsl:value-of select="$tkchinh/Header/ct13"/>
					</td>
					</tr>
				<tr>
					<td>
						<b>[14] </b> Địa chỉ nhà điều hành PSC: <xsl:value-of select="$tkchinh/Header/ct14"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[15]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$tkchinh/Header/ct15_ten_xa"/>
					</td>
					<td colspan="2">
						<b>[16]</b> Tỉnh/Thành phố: <xsl:value-of select="$tkchinh/Header/ct16"/>
					</td>
				</tr>
				<tr>
					<td>
						<b>[17] </b> Điện thoại: <xsl:value-of select="$tkchinh/Header/ct17"/>
					</td>
					<td>
						<b>[18] </b>Fax: <xsl:value-of select="$tkchinh/Header/ct18"/>
					</td>
					<td>
						<b>[19]</b> E-mail: <xsl:value-of select="$tkchinh/Header/ct19"/>
					</td>
				</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/Header/CT17/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/Header/CT17/daiLyThue = 'true' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/Header/CT17/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/Header/tenDonViUyQuyen"/> 
											</xsl:if>
											<xsl:if test="$tkchinh/Header/CT17/daiLyThue = 'true' ">
												<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
											</xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: <xsl:value-of select="$ttkthue/DLyThue/dchiDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Xã/Phường/Đặc khu: <xsl:value-of select="$ttkthue/DLyThue/tenHuyenDLyThue"/>
									</td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/DLyThue/tenTinhDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại: <xsl:value-of select="$ttkthue/DLyThue/dthoaiDLyThue"/>
									</td>
									<td>
										<b>[26]</b> Fax: <xsl:value-of select="$ttkthue/DLyThue/faxDLyThue"/>
									</td>
									<td>
										<b>[27]</b> E-mail: <xsl:value-of select="$ttkthue/DLyThue/emailDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> ngày <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										
										<b>[20] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/Header/CT17/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/Header/CT17/daiLyThue = 'true' "> X </xsl:if>]:
                                            <xsl:if test="$tkchinh/Header/CT17/donViUyQuyen = 'true' ">
												<xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
											</xsl:if>
											<xsl:if test="$tkchinh/Header/CT17/daiLyThue = 'true' "> </xsl:if>
										</b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[21] Mã số thuế: </b>
									</td>
								</tr>
								<tr colspan="3">
									<td>
										<b>[22]</b> Địa chỉ: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[23]</b> Xã/Phường/Đặc khu: 
                                    </td>
									<td colspan="2">
										<b>[24] </b>Tỉnh/Thành phố:
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[25]</b> Điện thoại: 
                                    </td>
									<td>
										<b>[26]</b> Fax: 
                                    </td>
									<td>
										<b>[27]</b> E-mail: 
                                    </td>
								</tr>
								<tr>
									<td>
										<b>[28] </b> Hợp đồng uỷ quyền hoặc Hợp đồng đại lý thuế, số: 
                                    </td>
									<td colspan="2"> ngày  tháng  năm 
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
	
	
	<!-- start header 02/TNDN TT21/2026-->
	<xsl:template name="tkhaiHeader-02TNDN-TT21">
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
						<td class="align-l">
							<br></br>
							<xsl:if test="$tkchinh/cnbds ='true' or $tkchinh/cnbds='1'">
								[X]&#160;&#160;&#160;&#160;Tổ chức áp dụng phương pháp tỷ lệ trên doanh thu theo quy định của pháp luật về thuế TNDN có hoạt động chuyển nhượng bất động sản 	
								<br></br>[&#32;]&#160;&#160;&#160;&#160; Cơ quan thi hành án hoặc tổ chức có thẩm quyền bán đấu giá bất động sản, tài sản khác là tài sản bảo đảm thi hành án 
								<br></br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;]&#160;&#160;&#160;&#160; Bất động sản    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; [&#32;]&#160;&#160;&#160;&#160; Tài sản khác
							</xsl:if>
							
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<xsl:if test="$tkchinh/bds ='true' or $tkchinh/bds='1'">
								[&#32;]&#160;&#160;&#160;&#160;Tổ chức áp dụng phương pháp tỷ lệ trên doanh thu theo quy định của pháp luật về thuế TNDN có hoạt động chuyển nhượng bất động sản 
								<br></br>[X]&#160;&#160;&#160;&#160; Cơ quan thi hành án hoặc tổ chức có thẩm quyền bán đấu giá bất động sản, tài sản khác là tài sản bảo đảm thi hành án 
								<br></br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[X]&#160;&#160;&#160;&#160; Bất động sản    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; [&#32;]&#160;&#160;&#160;&#160; Tài sản khác
							</xsl:if>
						</td>
					</tr>
					<tr>
						<td class="align-l">
							<xsl:if test="$tkchinh/tsk ='true' or $tkchinh/tsk='1'">
								[&#32;]&#160;&#160;&#160;&#160;Tổ chức áp dụng phương pháp tỷ lệ trên doanh thu theo quy định của pháp luật về thuế TNDN có hoạt động chuyển nhượng bất động sản 
								<br></br>[X]&#160;&#160;&#160;&#160; Cơ quan thi hành án hoặc tổ chức có thẩm quyền bán đấu giá bất động sản, tài sản khác là tài sản bảo đảm thi hành án 
								<br></br>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&#32;]&#160;&#160;&#160;&#160; Bất động sản    &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; [X]&#160;&#160;&#160;&#160; Tài sản khác
							</xsl:if>	
						</td>
					</tr>
					<tr>
						<td class="align-c">
							<br/>
							<b>[01]</b> Kỳ tính thuế: Lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
			<table>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<b>1. Bên chuyển nhượng:</b>
								</td>
								<tr/>
							</tr>
							<tr>
								<td colspan="3">
									<b>[04] </b>Tên tổ chức chuyển nhượng: 
									<xsl:value-of select="$tkchinh/ThongTinBenChuyenNhuong/ct04"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Mã số thuế: 
									<xsl:value-of select="$tkchinh/ThongTinBenChuyenNhuong/ct05"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng: </b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[06]</b> Tên tổ chức/cá nhân nhận chuyển nhượng:
                                    <xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/ct06"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" width="100%">
									<b>[07]</b> Mã số thuế/số định danh cá nhân/giấy tờ định danh của cá nhân:  
                                    <xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/ct07"/>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<b>[08]</b> Địa chỉ: 
								</td>
							</tr>
							<tr>
								<td colspan="4">	
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08a]</b> Số nhà, đường phố: 
									<xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT08/diaChi"/>&#160;&#160;
								</td>
							</tr>
							<tr>
								<td colspan="4">	
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08b]</b> Xã/phường/đặc khu: 
									<xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT08/xaPhuong_ten"/>&#160;&#160;
								</td>
							</tr>
							<tr>
								<td colspan="4">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[08c]</b>Tỉnh/Thành phố: 
									<xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT08/tinhTP_ten"/>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<b>[09]</b> Địa chỉ bất động sản được chuyển nhượng:
								</td>
							</tr>
							<tr>
								<td colspan="4">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[09a]</b> Số nhà, đường phố: 
                                    <xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT09/ct09a"/>&#160;&#160;	
								</td>
							</tr>
							<tr>
								<td colspan="4">
								 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[09b]</b> Xã/phường/đặc khu: 
								 <xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT09/ct09b_ten"/>&#160;&#160;</td>
							</tr>
							<tr>
								<td colspan="4">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[09c] </b>Tỉnh/Tp:
                                    <xsl:value-of select="$tkchinh/ThongTinBenNhanChuyenNhuong/CT09/ct09c_ten"/>&#160;&#160;</td>
							</tr>
							<tr>
								<td colspan="4">
									<br/>
									Theo Hợp đồng chuyển nhượng bất động sản, tài sản khác:									
                                </td>
							</tr>
							<table class="tkhai_table">
										<tr>
											<td class="align-c"><b>STT</b></td>
											<td class="align-c"><b>Số hợp đồng</b></td>
											<td class="align-c"><b>Ngày hợp đồng</b></td>
											<td class="align-c"><b>Ngày UBND xã/phường/đặc khu hoặc văn phòng công chứng xác nhận</b></td>
										</tr>
										<xsl:for-each select="$tkchinh/ThongTinBenNhanChuyenNhuong/BangChiTietBDS/NoiDungBatDongSan">
											<xsl:variable name="currentRows" select='position()' />
											<tr>
												<td class="align-c"><xsl:value-of select="$currentRows"/></td>
												<td class="align-c"><xsl:value-of select="so_hd"/></td>
												<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_hd,'dd/mm/yyyy')"/></td>
												<td class="align-c"><xsl:value-of select="ihtkk:stringDatetime(ngay_congChung,'dd/mm/yyyy')"/></td>
											</tr>
										</xsl:for-each>
							</table>
							<tr>
								<td colspan="3">
									<br/>
									<b>3. Cơ quan thi hành án, tổ chức có thẩm quyền bán đấu giá bất động sản, tài sản khác là tài sản bảo đảm thi hành án</b>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[10]</b> Tên cơ quan/tổ chức:
                                    <xsl:value-of select="$tkchinh/ThongTinCoQuanThiHanhAn/ct10"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" width="100%">
									<b>[11]</b> Mã số thuế của cơ quan/tổ chức:  
                                    <xsl:value-of select="$tkchinh/ThongTinCoQuanThiHanhAn/ct11"/>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<b>[12]</b> Địa chỉ:
								</td>
							</tr>
							<tr>
								<td colspan="4">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12a]</b> Số nhà, đường phố: 
                                    <xsl:value-of select="$tkchinh/ThongTinCoQuanThiHanhAn/CT12/diaChi"/>&#160;&#160;	
								</td>
							</tr>
							<tr>
								<td colspan="4">
								 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12b]</b> Xã/phường/đặc khu: 
								 <xsl:value-of select="$tkchinh/ThongTinCoQuanThiHanhAn/CT12/xaPhuong_ten"/>&#160;&#160;</td>
							</tr>
							<tr>
								<td colspan="4">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>[12c] </b>Tỉnh/Tp:
                                    <xsl:value-of select="$tkchinh/ThongTinCoQuanThiHanhAn/CT12/tinhTP_ten"/>&#160;&#160;</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đại lý thuế (nếu có): </b>
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								<tr>
									<td>
										<b>[15] </b> Hợp đồng đại lý thuế: Số  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
									</td>
								</tr>
							</xsl:if>
							<xsl:if test="not($ttkthue/DLyThue)">
								<tr>
									<td colspan="3">
										<br/>
										<b>[13] Tên đại lý thuế (nếu có): </b>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[14] Mã số thuế: </b>
									</td>
								</tr>
								<td colspan="3">
								<b>[15] </b> Hợp đồng đại lý thuế: Số  &#160;&#160;
										Ngày:
								</td>
							</xsl:if>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- hết header 02TNDN TT80-->
	
	<!-- start header 05/TNDN TT21-->
	<xsl:template name="tkhaiHeader-05TNDN-TT21">
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
						<b>[01]</b> Kỳ tính thuế: Từng lần phát sinh <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>
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
				<tr/>
				<tr>
					<td>
						<br/>
						<table class="ttinnnt_table">
							<tr>
								<td colspan="3">
									<br/>
									<b>1. Bên chuyển nhượng vốn:</b>
								</td>
								<tr/>
							</tr>
												
							<tr>
								<td colspan="3">
									<b>[04] </b>Tên tổ chức có vốn chuyển nhượng: <xsl:value-of select="$tkchinh/BenCNVon/ct04"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[05] </b>Quốc tịch: 
									<xsl:value-of select="$tkchinh/BenCNVon/ct05_ten"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[06] </b>Địa chỉ trụ sở chính: 
									<xsl:value-of select="$tkchinh/BenCNVon/ct06"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<br/>
									<b>2. Bên nhận chuyển nhượng vốn</b>
								</td>
								<tr/>
							</tr>
							
							<tr>
								<td colspan="3">
									<b>[07] </b>Tên tổ chức/cá nhân nhận vốn chuyển nhượng: <xsl:value-of select="$tkchinh/BenNhanCNVon/ct07"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[08] </b>Quốc tịch: 
									<xsl:value-of select="$tkchinh/BenNhanCNVon/ct08_ten"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[09] </b>Địa chỉ trụ sở chính: 
									<xsl:value-of select="$tkchinh/BenNhanCNVon/ct09"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[10] </b>Mã số thuế (nếu có): 
									<xsl:value-of select="$tkchinh/BenNhanCNVon/ct10"/>
								</td>
							</tr>
							<xsl:if test="$ttkthue/DLyThue">
								<tr>
									<td colspan="3">
										<br/>
										<b>[11] Tên đại lý thuế </b>(nếu có): 
										<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<b>[12] </b>Mã số thuế: 
										<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
									</td>
								</tr>
								
								<tr>
									<td>
										<b>[13] </b> Hợp đồng đại lý thuế: Số:  <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
									</td>
									<td colspan="2"> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
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
										<b>[12] </b>Mã số thuế: 
									</td>
								</tr>
								
								<tr>
									<td colspan="3">
										<b>[13] </b> Hợp đồng đại lý thuế: Số: <xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/> 
                                    </td>
									<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($ngayKyHDDLyThue,'dd/mm/yyyy')"/>
                                    </td>
								</tr>
							</xsl:if>
							<tr>
                            </tr>
							<tr>
								<td colspan="3">
									<b>[14] Tên doanh nghiệp có vốn được chuyển nhượng: </b>
                                    <xsl:value-of select="$tkchinh/DNCoVonDuocCN/ct14"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" width="100%">
									<b>[15]</b> Mã số thuế (nếu có):  
                                    <xsl:value-of select="$tkchinh/DNCoVonDuocCN/ct15"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<b>[16]</b> Hợp đồng chuyển nhượng: Số:
                                    <xsl:value-of select="$tkchinh/DNCoVonDuocCN/ct16_so"/>
                                &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;   Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DNCoVonDuocCN/ct16_ngay,'dd/mm/yyyy')"/>
						 									
                                </td>
							</tr>
							
							<!-- <tr>
									<td colspan="3">
										<b>[16] </b> Hợp đồng chuyển nhượng: Số: <xsl:value-of select="$tkchinh/DNCoVonDuocCN/ct16_so"/>					
                                    </td>
									<td> Ngày: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/DNCoVonDuocCN/ct16_ngay,'dd/mm/yyyy')"/>
                                    </td>
							</tr> -->
							
						</table>
					</td>
				</tr>
			</table>
		</div>
	</xsl:template>
	<!-- hết header 05TNDN TT21-->	
	
</xsl:stylesheet>