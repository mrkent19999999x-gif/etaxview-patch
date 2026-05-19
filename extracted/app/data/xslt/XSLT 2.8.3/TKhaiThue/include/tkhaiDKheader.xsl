<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
	<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:include href="../common/common.xsl"/>
	<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
	<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
	<xsl:variable name="ttchungtb" select="TBaoThue/TTinChung"/>
	<xsl:variable name="ttchungdk" select="DKyThue/TTinChung"/>
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
    
<xsl:template name="tbaoHeader">	
	<xsl:param name="mauTBao" />
	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td style="vertical-align: top;"   align="right"   colspan="2">
					<div></div>
					<div class="bieu_mau_div" style="width: auto; float: right;">
						<div >Mẫu số: <b>
								<xsl:value-of select="$mauTBao"/>
							</b>
						</div>
					</div>	
				</td>
			</tr>
			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>
<xsl:template name="tbaoHeader_koMauSo">	

	<xsl:param name="soTBao" />
	<xsl:param name="ngayTBao" />
	<xsl:param name="motaTBao" />
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>

			<tr>
				<td width="30%">
					<div align="center" style="margin:0; padding:0;">
						TỔNG CỤC THUẾ <br/>
						 ----------------------<br/>
						 Số: <xsl:value-of select="$soTBao" />
					</div>
				</td>
				<td width="70%">
					<div align="center" style="margin:0; padding:0;">
					CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>
					Độc lập-Tự do-Hạnh phúc<br/>
					----------oOo----------<br/>
					<i>Ngày <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ngayTBao,'yyyy')"/></i>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br/><br/><br/>
					<b>THÔNG BÁO</b><br/>
					<b><xsl:value-of select="$motaTBao" /></b>
				</td>
			</tr>
		</tbody>
	</table>
</xsl:template>        
<xsl:template name="tkhaiHeader_01_TNCN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TCtrathunhap' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
        <div class="header_div">			
            <table  class="ttinnnt_table" width="100%">						
                <tr>
                    <td style="width:100%;text-align:center" >	
                        <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                        <br/>-------------------------
                    </td>
                    <td></td>			 
                </tr> 
                 <tr>
                 <td class="tentkhai">
				<xsl:value-of select="translate($ttkthue/tenTKhai,$smallcase,$uppercase)"/>
			</td>
                    
                </tr>
                <tr>
                    <td  class="mtatentkhai"> 
                        <div style="width:80% " >
                            <xsl:value-of select="$ghuchuTK"/>
                        </div>
                    </td>						
                </tr>
            </table>
            <br/>
            <table class="ttinnnt_table">
                <tr>
                    <td colspan="2"><b>Tổ chức trả thu nhập:</b></td>
                </tr>
                <tr>
                    <td colspan="2"><b>Mã số thuế: </b><xsl:value-of select="$ttkthue/mst"/></td>
                </tr>
                <tr >
                    <td colspan="2"><b>Tên: </b> <xsl:value-of select="$ttkthue/ten"/></td>
                </tr>
                <tr >
                    <td colspan="2"><b>Cơ quan thuế quản lý: </b> <xsl:value-of select="$ttkthue/tenCQTQuanLy"/></td>
                </tr>
                <tr >
                    <td colspan="2"><b>Số hiệu tệp: </b> <xsl:value-of select="$ttkthue/sohieutep"/></td>
                </tr>
                <tr >
                    <td><b>Ngày tạo tệp: </b> <xsl:value-of select="$ttkthue/ngayTao"/></td>
                    <td><b>Số lượng: </b> <xsl:value-of select="$ttkthue/soluong"/></td>
                </tr>
            </table>
        </div>
    </xsl:template>
	<!--20DK-TCT-->
		<xsl:template name="tkhaiHeader_20DK_TCT">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ NGƯỜI PHỤ THUỘC CỦA CÁ NHÂN CÓ THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG </b> 
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
					<td colspan="3">1. Họ và tên cá nhân có thu nhập: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">2. Mã số thuế: <xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">3. Địa chỉ cá nhân nhận thông báo mã số NPT: <xsl:value-of select="$tkchinh/diaChiNhanTB"/>
					</td>
				</tr>
				<tr>
					<td>4. Nơi đăng ký giảm trừ người phụ thuộc (tổ chức, cá nhân trả thu nhập/cơ quan quản lý): <xsl:value-of select="$tkchinh/NoiDangKyGiamTru/ten_CQT"/>
					</td>
				</tr>
				<tr>
					<td>5. Mã số thuế của tổ chức, cá nhân trả thu nhập (nếu có): <xsl:value-of select="$tkchinh/mst_ToChucCaNhan"/>
					</td>
				</tr>
				<tr>
					<td>6. Thông tin về người phụ thuộc và thông tin đăng ký giảm trừ gia cảnh như sau:
					</td>
				</tr>
			</table>
		</div>
		
	</xsl:template> 
		<!--20DK_TH-TCT-->
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ TỔNG HỢP CHO NGƯỜI PHỤ THUỘC CỦA CÁ NHÂN CÓ THU NHẬP <br>TỪ TIỀN LƯƠNG, TIỀN CÔNG THÔNG QUA CƠ QUAN CHI TRẢ THU NHẬP</br></b> 
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
<!--05-DK-TCT-->
<xsl:template name="tkhaiHeader_05_DK">
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
					<td style="width:20% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ</b> 
					</td>
				</tr>
				<tr>
					<td class="align-c"><i>(Dùng cho cá nhân không kinh doanh)</i> 
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
			
		</div>
	</xsl:template>	
<!--03-DK-TCT-->
<!--03-DK-TCT-BK01-->
<xsl:template name="tkhaiHeader_03_DK_TCT_BK01">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Cửa hàng, cửa hiệu, kho hàng phụ thuộc</b> 
					<br/><i>(Kèm theo Mẫu số 03-ĐK-TCT)</i>
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>Tên người nộp thuế:</b> <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>Mã số thuế (nếu có):</b><xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
<!--03-DK-TCT-BK02-->
<xsl:template name="tkhaiHeader_03_DK_TCT_BK02">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Tài khoản ngân hàng</b> 
					<br/><i>(Kèm theo Mẫu số 03-ĐK-TCT)</i>
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>Tên người nộp thuế:</b> <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3"><b>Mã số thuế (nếu có):</b><xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
	<!--01-DK-TCT-->
<!--01-DK-TCT-BK01-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK01">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Các công ty con, công ty thành viên</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
	<!--01-DK-TCT-BK02-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK02">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Các đơn vị phụ thuộc (chi nhánh, văn phòng đại diện)</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:32% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
	
<!--01-DK-TCT-BK03-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK03">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các địa điểm kinh doanh, kho hàng</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:32% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
<!--01-DK-TCT-BK04-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK04">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các nhà thầu nước ngoài, nhà thầu phụ nước ngoài</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
	<!--01-DK-TCT-BK05-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK05">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các nhà thầu, nhà đầu tư dầu khí</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
	<!--01-DK-TCT-BK06-->
<xsl:template name="tkhaiHeader_01_DK_TCT_BK06">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Góp vốn của tổ chức, cá nhân</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 01-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
<!--02-DK-TCT-->

<!--02-DK-TCT-BK01-->
<!--02-DK-TCT-BK02-->
<xsl:template name="tkhaiHeader_02_DK_TCT_BK02">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Các đơn vị phụ thuộc (chi nhánh, văn phòng đại diện)</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 02-ĐK-TCT)</i>
					</td>
					<td style="width:32% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
<!--02-DK-TCT-BK03-->
<xsl:template name="tkhaiHeader_02_DK_TCT_BK03">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các địa điểm kinh doanh, kho hàng</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 02-ĐK-TCT)</i>
					</td>
					<td style="width:32% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
	<!--02-DK-TCT-BK04-->
<xsl:template name="tkhaiHeader_02_DK_TCT_BK04">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các nhà thầu nước ngoài, nhà thầu phụ nước ngoài</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 02-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
	
	<!--02-DK-TCT-BK05-->
<xsl:template name="tkhaiHeader_02_DK_TCT_BK05">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các nhà thầu, nhà đầu tư dầu khí</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 02-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>		
	<!--04-DK-TCT-->
<!--04-DK-TCT-BK04-->
<xsl:template name="tkhaiHeader_04_DK_TCT_BK04">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Các nhà thầu nước ngoài, nhà thầu phụ nước ngoài</b> 
					<br/><i>(Kèm theo tờ khai mẫu số 04-ĐK-TCT)</i>
					</td>
					<td style="width:23% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):<xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>	
	<!--04.1-DK-TCT-BK-->
<xsl:template name="tkhaiHeader_04_1_DK_TCT_BK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ <br/>Các hợp đồng nhà thầu, nhà thầu phụ nước ngoài nộp thuế thông qua Bên Việt Nam </b> 
					<br/><i>(Kèm theo Mẫu số 04.1-ĐK-TCT)</i>
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3">Tên người nộp thuế:&#160;<xsl:value-of select="$ttkthue/tenNNT"/>
					
					</td>
				</tr>
				<tr>
					<td colspan="3">Mã số thuế (nếu có):&#160;<xsl:value-of select="$ttkthue/mst"/>
					 
					</td>
				</tr>
				
			</table>
			
		</div>
	</xsl:template>
	<!--06-DK-TCT-->
	<!--06-DK-TCT-BK01-->
<xsl:template name="tkhaiHeader_06_DK_TCT_BK">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
			<table class="ttinnnt_table" width="100%">
				<tr>
					<td class="align-c"><b>BẢNG KÊ<br/>Viên chức ngoại giao thuộc đối tượng được hoàn thuế giá trị gia tăng</b> 
					<br/><i>(Kèm theo Mẫu số 06-ĐK-TCT)</i>
					<br/><b>List of Diplomatic staff entitled to VAT refund</b>
					</td>
					<td style="width:20% ; vertical-align: top;" rowSpan="4" align="top">
						<div class="bieu_mau_div">
							<div>Mẫu số:<b>
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
			</table>
				<table class="ttinnnt_table">
				<tr>
					<td colspan="3"><b>Tên cơ quan:</b> <xsl:value-of select="$tkchinh/ct1_tenCoQuan"/>
					</td>
				</tr>
				<!--<tr>
					<td colspan="3"><b>Mã số thuế (nếu có):</b><xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>-->
				
			</table>
			
		</div>
	</xsl:template>
	<!--24-DK-TCT-->
<xsl:template name="tkhaiHeader_24_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
		<table class="ttinnnt_table">
				<tr>
				<td style="width:10%; text-align:right;">
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
				<td style="width:20%;text-align:center;">
						<b>TÊN NGƯỜI NỘP THUẾ</b>
						<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
						<label>Số: <xsl:value-of select="$tkchinh/so"/></label>
				</td>
				<td style="width:60%;text-align:center;">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
				<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
				<label><i>, ngày <xsl:value-of select="substring($tkchinh/ngay,9,2)"/> tháng <xsl:value-of select="substring($tkchinh/ngay,6,2)"/> năm <xsl:value-of select="substring($tkchinh/ngay,0,5)"/> </i></label>
				</td>		
				</tr>
								
			</table>
		</div>
		
		
	</xsl:template> 
<!--23-DK-TCT-->
<xsl:template name="tkhaiHeader_23_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
		<table class="ttinnnt_table">
				<tr>
				<td style="width:10%; text-align:right;">
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
				<td style="width:20%;text-align:center;">
						<b>TÊN NGƯỜI NỘP THUẾ</b>
						<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
						<label>Số: <xsl:value-of select="$tkchinh/so"/></label>
				</td>
				<td style="width:60%;text-align:center;">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
				<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
				<label><i>, ngày <xsl:value-of select="substring($tkchinh/ngay,9,2)"/> tháng <xsl:value-of select="substring($tkchinh/ngay,6,2)"/> năm <xsl:value-of select="substring($tkchinh/ngay,0,5)"/> </i></label>
				</td>		
				</tr>
				<tr>
					<td class="align-c"><b>THÔNG BÁO</b> 
					</td>
				</tr>
				<tr>
					<td class="align-c">Về việc tạm ngừng kinh doanh/tiếp tục kinh doanh trước thời hạn
					<br/>đã thông báo của người nộp thuế
					<br/>-----------------------
					</td>
				</tr>
								
			</table>
		</div>
		
		
	</xsl:template> 
<!--25-DK-TCT-->
<xsl:template name="tkhaiHeader_25_DK_TCT">
		<xsl:param name="mauTKhai"/>
		<xsl:param name="moTaBieuMau"/>
		<xsl:param name="ghuchuTK"/>
		<div class="header_div">
		<table class="ttinnnt_table">
				<tr>
				<td style="width:10%; text-align:right;">
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
				<td style="width:20%;text-align:center;">
						<b>TÊN NGƯỜI NỘP THUẾ</b>
						<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
						<label>Số: <xsl:value-of select="$tkchinh/so"/></label>
				</td>
				<td style="width:60%;text-align:center;">
						<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
				<p style="text-decoration: overline;">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </p>
				<label><i>, ngày <xsl:value-of select="substring($tkchinh/ngay,9,2)"/> tháng <xsl:value-of select="substring($tkchinh/ngay,6,2)"/> năm <xsl:value-of select="substring($tkchinh/ngay,0,5)"/> </i></label>
				</td>		
				</tr>
			</table>
			<table>
				<tr>
					<td class="align-c"><b>VĂN BẢN ĐỀ NGHỊ KHÔI PHỤC MÃ SỐ THUẾ</b></td>
				</tr>									
			</table>
		</div>
		
		
	</xsl:template> 
	
	
	<!--DKT_TT105-->
	<!--20-DK_TCT-->
		<xsl:template name="tkhaiHeader_20DK_TCT_105">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ </b> 
					<br/><i>(Dùng cho người phụ thuộc của cá nhân có thu nhập từ tiền lương, tiền công) </i>
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
					<td colspan="3">1. Họ và tên cá nhân có thu nhập: <xsl:value-of select="$ttkthue/tenNNT"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">2. Mã số thuế: <xsl:value-of select="$ttkthue/mst"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">3. Địa chỉ cá nhân nhận thông báo mã số NPT: <xsl:value-of select="$tkchinh/diaChiNhanTB"/>
					</td>
				</tr>
				<tr>
					<td>4. Nơi đăng ký giảm trừ người phụ thuộc (tổ chức, cá nhân trả thu nhập/cơ quan quản lý): <xsl:value-of select="$tkchinh/NoiDangKyGiamTru/ten_CQT"/>
					</td>
				</tr>
				<tr>
					<td>5. Mã số thuế của tổ chức, cá nhân trả thu nhập (nếu có): <xsl:value-of select="$tkchinh/mst_ToChucCaNhan"/>
					</td>
				</tr>
				<tr>
					<td>6. Thông tin về người phụ thuộc và thông tin đăng ký giảm trừ gia cảnh như sau:
					</td>
				</tr>
			</table>
		</div>
		
	</xsl:template> 
<!--20DK_TH-TCT-->
<xsl:template name="tkhaiHeader_20DK_TH_105">
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
					<td class="align-c"><b>TỜ KHAI ĐĂNG KÝ THUẾ TỔNG HỢP NGƯỜI PHỤ THUỘC CỦA CÁ NHÂN CÓ THU NHẬP TỪ TIỀN LƯƠNG, TIỀN CÔNG</b> 
					<br/><i>(Dùng cho cơ quan chi trả thu nhập đăng ký cho người phụ thuộc có ủy quyền)</i>
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
					<td>3. Thông tin về người phụ thuộc và thông tin đăng ký giảm trừ gia cảnh như sau:
					</td>
				</tr>
			</table>
		</div>
		
	</xsl:template>  	
	
</xsl:stylesheet>