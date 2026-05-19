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
						<span class="mtatentkhai" style="font-size:9pt">(
                            <xsl:value-of select="$moTaBieuMau_"/>
                            ) </span>
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
	
	<xsl:template name="tkhaiHeaderGH">
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
            <td>
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
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='C'">
							<b></b> Lần đầu: [X] <b></b>Thay thế: [&#32;]    
                        </xsl:if>
						<xsl:if test="$ttkthue/TKhaiThue/loaiTKhai='B'">
							<b></b> Lần đầu: [&#32;] <b></b>Thay thế: [X]    
                        </xsl:if>
					</td>
				</tr>
        <tr>
			<td class="align-c">Kính gửi: <xsl:value-of select="$tkchinh/KinhGui/tenCQT"/></td>
			</tr>

                
            </table>
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
                <tr >
                    <td>
                        <b>[03] </b> Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>[04] </b> Số điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
                    </td>
                </tr>
                <xsl:if test="not($ttkthue/DLyThue)">	
                    <tr>
                        <td colspan="3">
                                           <b>[05] Tên đại lý thuế (nếu có): </b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <b>[06] Mã số thuế: </b>
                        </td>
                    </tr>

                </xsl:if>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td colspan="3">
           
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
<!-- start header 01/TEM (TT23/2021)-->
	<xsl:template name="tkhaiHeader_01_TEM">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
		<table class="ttinnnt_table">
				<tr>
					
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
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
		
						TỜ KHAI <br/><xsl:value-of select="translate($ttkthue/TKhaiThue/tenTKhai,$smallcase,$uppercase)"/>
					</td>
				</tr>
				<tr>
					<td class="align-c">
						[<xsl:if test="$tkchinh/Header/dangKyMoi='true' or $tkchinh/Header/dangKyMoi='1' ">x</xsl:if>] Đăng ký mới<br/>
						[<xsl:if test="$tkchinh/Header/thayDoiThongTin='true' or $tkchinh/Header/thayDoiThongTin='1'">x</xsl:if>] Thay đổi thông tin<br/>						
					</td>
				</tr>
				
				<!--<tr>
					<td class="align-c" colspan="4"> [01] Trường hợp hoàn thuế trước, kiểm tra sau [<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct01_1='true'">x</xsl:if>] <br/>     Trường hợp kiểm tra trước, hoàn thuế sau  [<xsl:if test="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/Header/ct01_2='true'">x</xsl:if>]
						
					</td>
				</tr>-->
				
			</table>
			
						<br/>
						<table class="ttinnnt_table"  width="100%">
						
							<tr>
								<td>
									Tên người nộp thuế: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									Mã số thuế: 
									<xsl:value-of select="$ttkthue/NNT/mst"/>
								</td>
							</tr>
							<tr>
								<td>
									Cơ quan thuế quản lý: 
									<xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/>
								</td>
							</tr>							
							<tr>
								<td>
									Người liên hệ: 
									<xsl:value-of select="$tkchinh/Header/nguoilLienHe"/>
								</td>
							</tr>
							<tr>
								<td>
									Địa chỉ liên hệ: 
									<xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, 
									<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>, 
									<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
								</td>
							</tr> 
							<tr>
								<td>
									Địa chỉ thư điện tử: 
                                    <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
								</td>
							</tr>
							<tr>
								<td>
									Điện thoại liên hệ: 
                                    <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
								</td>
							</tr>
							
							
						</table>
					
		</div>
	</xsl:template>	
	<!-- start header 03/TEM (TT23/2021)-->
	<xsl:template name="tkhaiHeader_03_TEM">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table">
				<tr>
					<td class="align-c" rowSpan='2'>
					<b><xsl:value-of select="translate($ttkthue/NNT/tenNNT,$smallcase,$uppercase)"/></b>
					
					<br/>-------------------
					 <br/>Số: <xsl:value-of select="$tkchinh/Header/so"/>
					</td>
					<td style="width:60%;text-align:center">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
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
					</td>
				</tr>
				
			</table>
						<br/>
			<table with='100%'>
				<tr>
					<td>
					Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/> (1)
					</td>
					</tr>
					<tr>
					<td>
					Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
					</td>
					</tr>
					<tr>
					<td>
					Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
					</td>
					</tr>
					<tr>
					<td>
					Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>, 
							<xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/>, 
							<xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
					</td>
					</tr>
					<tr>
					<td>
					Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/>
					</td>
					</tr>
					<tr>
					<td>
					Giấy phép sản xuất: <xsl:value-of select="$tkchinh/Header/giayPhepSX"/>
					</td>
					</tr>
					<tr>
					<td>
					Tên người được giới thiệu đến mua tem (2): <xsl:value-of select="$tkchinh/Header/NguoiMuaTem/tenNguoiMuaTem"/>
					</td>
					</tr>
					<tr>
					<td>
					Số CMND/Căn cước/Hộ chiếu: <xsl:value-of select="$tkchinh/Header/NguoiMuaTem/soGiayTo"/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/Header/NguoiMuaTem/ngayCap,'dd/mm/yyyy')"/>
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					Nơi cấp: <xsl:value-of select="$tkchinh/Header/NguoiMuaTem/noiCap"/>
					</td>
					</tr>
					<tr>
					<td>
					Căn cứ kế hoạch đăng ký nhận tem, Chúng tôi đề nghị mua tem như sau:
					</td>
					</tr>
					
				
			</table>
		</div>
	</xsl:template>	
</xsl:stylesheet>
