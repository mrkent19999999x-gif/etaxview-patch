<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/XSL/Transform"
                xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" exclude-result-prefixes="xsl xsi ihtkk">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/> 
    <xsl:include href="../common/common.xsl"/> 
    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />
    <xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
    <xsl:variable name="ttchungtb" select='TBaoThueDTu/TBaoThue/TTinChung' />


    <xsl:variable name="ttchungdk" select='TBaoThueDTu/DKyThue/TTinChung' />

    <xsl:param name="ngayKyHDDLyThue" select='$ttkthue/DLyThue/ngayKyHDDLyThue' />
    <xsl:param name="kyKKhai" select='$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhai' />
    <xsl:param name="kieuKy" select='$ttkthue/TKhaiThue/KyKKhaiThue/kieuKy' />
	<xsl:param name="tuNgay" select='$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay' />
	<xsl:param name="denNgay" select='$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay' />


    <xsl:param name="smallcase" select="'abcdefghijklmnopqrstuvwxyzàèìòùáéíóúýâêîôûãñõäëïöüÿåæœçđøặằắậầấụờớợựừứệềếọộồốịỳủơ'" />
    <xsl:param name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÈÌÒÙÁÉÍÓÚÝÂÊÎÔÛÃÑÕÄËÏÖÜŸÅÆŒÇÐØẶẰẮẬẦẤỤỜỚỢỰỪỨỆỀẾỌỘỒỐỊỲỦƠ'" />

    <xsl:template name="BieuNguDatNuoc">
        <xsl:param name="mauTKhai_" />
        <xsl:param name="moTaBieuMau_" />
        <xsl:param name="ttkthue_" />
        <xsl:param name="ghuchuTK_" />
        <xsl:param name="mauTBao" />
        
        <tr>
            <td style="width:80%;text-align:center" >	
                <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                <br/>-------------------------
            </td>
            <td style="width:17% ; vertical-align: top;"  rowSpan="5" align="top"  >
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
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
                <xsl:value-of select="translate($ttkthue_/TKhaiThue/tenTKhai,$smallcase,$uppercase)" />
            </td>
        </tr>
        <tr>
            <td  class="mtatentkhai">
                <div style="width:80% " >
                    <xsl:value-of select="$ghuchuTK_"/>
                </div>
            </td><td/>					
        </tr>
    </xsl:template>
    <xsl:template name="BieuNguPhuLuc">
        <xsl:param name="mauTKhai_" />
        <xsl:param name="moTaBieuMau_" />
        <xsl:param name="tenPL_" />
        <xsl:param name="ghiChuPL_" />
        
        <tr>
            <td class="align-c" colspan="3"  style="width:80%">
                <b>PHỤ LỤC</b>
            </td>
            <td style="width:15%" rowSpan="2">
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
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
            <td class="bketitle" colspan="3" >
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="header_div">			
            <table  class="ttinnnt_table">						
                <tr>
            <td style="width:80%;text-align:center" >	
                <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                <br/>-------------------------
            </td>
            <td style="width:17% ; vertical-align: top;"  rowSpan="5" align="top"  >
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
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

    <!-- start tkhai header (ko có lần xuất bán) VSP-->	
    <xsl:template name="tkhaiHeader-VSP1">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <b>[14] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/> </b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                <tr >
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
                            <b>[15] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT15/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT15/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />	
        <div class="header_div">			
            <table class="tb_header">           
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[02] Tên người nộp thuế: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">		
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[04] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT14/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT14/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/> </b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
      
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td  colspan="3">
                        <b>[16] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct16"/>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3">
                        <b>[17]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct17"/>
                    </td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[18] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT18/nguoiNopThueThay='true' ">x</xsl:if>] Hoặc đại lý thuế [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/> </b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td  colspan="3">
                        <b>[15] </b> Hợp đồng dầu khí lô: <xsl:value-of select="$tkchinh/ct15"/>
                    </td>
                </tr>
                <tr>
                    <td  colspan="3">
                        <b>[16]</b> Mã số thuế nhà điều hành hợp đồng dầu khí: <xsl:value-of select="$tkchinh/ct16"/>
                    </td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td colspan="3">
                            <br/>
                            <b>[17] Tên người nộp thuế thay [<xsl:if test="$tkchinh/CT17/nguoiNopThueThay='true' ">x</xsl:if>]  Hoặc đại lý thuế  [<xsl:if test="$tkchinh/CT18/daiLyThue='true' ">x</xsl:if>]: <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/> </b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td class="align-c" >       
                        [<xsl:if test="$tkchinh/dnQuiMoVuaVaNho = 'true' "> X </xsl:if>]  Doanh nghiệp có quy mô nhỏ và vừa
                    </td>
                </tr>
                <tr>
                    <td class="align-c" >
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                     <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td class="align-c" >
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                     <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td class="align-c" >
                        [<xsl:if test="$tkchinh/doanhNghiepCoQuyMoVuaVaNho = 'true' ">x</xsl:if>]  Doanh nghiệp có quy mô vừa và nhỏ
                    </td>
                </tr>	
                        <tr>
                    <td class="align-c" >
                        [<xsl:if test="$tkchinh/doanhNghiepCoCSoHToanPThuoc = 'true' ">x</xsl:if>]  Doanh nghiệp có cơ sở sản xuất hạch toán phụ thuộc
                    </td>
                </tr>	
                       <tr>
                    <td class="align-c" >
                        [<xsl:if test="$tkchinh/doanhNghiepKeKhaiTTinLienKet = 'true' ">x</xsl:if>]  Doanh nghiệp thuộc đối tượng kê khai thông tin giao dịch liên kết
                    </td>
                </tr>	
                    <tr>
                    <td class="align-c" > <b>[04]</b> Ngành nghề có tỷ lệ doanh thu cao nhất: <xsl:value-of select="$tkchinh/ct_04"/></td>
                </tr>	
                    <tr>
                    <td class="align-c"> <b>[05]</b> Tỷ lệ (%): <span class="number"><xsl:value-of select="$tkchinh/ct_05"/></span>%</td>
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
						<i>
                            (Bổ sung, điều chỉnh các thông tin đã khai tại <xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>, 
                            mẫu số <xsl:value-of select="$mauTKhaiChinh"/>,  
                            kỳ tính thuế <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>, ngày <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ttkthue/TKhaiThue/ngayLapTKhai,'yyyy')"/>)
                        </i>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
                <br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
        </div>
	
        <div class="header_div">			
            <table class="tb_header">						
                <tr>
                    <td class="tentkhai">
                        <xsl:value-of select="$ttkthue/TKhaiThue/tenTKhai"/>
                    </td>
                </tr>
                <tr>
                    <td  class="mtatentkhai">
                        <xsl:value-of select="$ghuchuTK"/>
                    </td>						
                </tr>
            </table>
        </div>
    </xsl:template>

    <!-- start tkhai header 01/VTNN-->	
    <xsl:template name="tkhaiHeader-01VTNN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                        <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                        <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                        <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                        <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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

    <!-- start tkhai header 01/HKNN-->	
    <xsl:template name="tkhaiHeader-01HKNN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start tkhai header 01/TBH-->	
    <xsl:template name="tkhaiHeader-01TBH">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start header 2-->	
    <xsl:template name="tkhaiHeader2">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />

	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start header 3-->		
    <xsl:template name="tkhaiHeader3">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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
			
    <!-- start header 4-->	
    <xsl:template name="tkhaiHeader4">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <xsl:param name="tenPL" />
	
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
                <br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
                    <td  class="mtatentkhai" colspan="2">
                        <xsl:value-of select="$ghuchuTK"/> 
                    </td>						
                </tr>		
            </table>
        </div>
    </xsl:template>	

    <!--start header Thong bao thue -TVAN -->	
    <xsl:template name="tkhaiHeaderTBThue-TVAN">	
    
        <div class="header_div">	
            <table class="tb_header">
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
                 <div class="bieu_mau_div">
                    <div> <b><i>Mẫu số: 
                            <xsl:value-of select="TBaoThueDTu/TBaoThue/NDungTBao/GDich/mauLoaiThongBao"/>
                        </i> </b>
                    </div>
                </div>	
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

                       <tr>
                <xsl:value-of select="translate($ttchungtb/TBaoThue/tenLoaiThongBao,$smallcase,$uppercase)" />
            <td class="tentkhai">
            </td>
        </tr>
                </tr>
            </table>
        </div>
    </xsl:template>			
		
    <!--start header Dang ky thue -->	
    <xsl:template name="tkhaiHeaderDKThue">	
        <xsl:param name="mauTKhai" />
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
                    <td colspan="2"  class="align-c">
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
        <xsl:param name="mauTKhai" />
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
                <tr>
                    <td class="align-c">								
                        <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                        <br/>--------------oOo-----------<br/>

                    </td>

                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                </tr>
                <tr>
                    <td colspan="2" class="align-c">
                        <b>HỒ SƠ</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"  class="align-c">
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
        <xsl:param name="mauTKhai" />
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
        <div style="padding-left:167px;"> Mã số thuế: <xsl:value-of select="$ttchungtb/NNhanTBaoThue/maNNhan"/></div>
        <br/>
    </xsl:template>		
			
    <!--start header XNhan_TNCN_01XNCG-->	
    <xsl:template name="tkhaiTNCN-01XNCG">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
	
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
                <br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
                    <td  class="mtatentkhai" colspan="2">
                        <xsl:value-of select="$ghuchuTK"/> 
                    </td>						
                </tr>		
            </table>
        </div>
    </xsl:template>		

    <!--start header XNhan_TNCN_02XNMT-->
    <xsl:template name="tkhaiHeaderTNCN-02XNMT">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
                <br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
        </div>
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />	
        <div class="bieu_mau_div">
            <div >Mẫu số: <b>
                    <xsl:value-of select="$mauTKhai"/>
                </b>
                <br/>(<xsl:value-of select="$moTaBieuMau"/>)
            </div>
        </div>	
        <br/>	
        <div class="header_div">	
            <table class="tb_header">
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
                    <td  class="mtatentkhai" colspan="2">
                        <xsl:value-of select="$ghuchuTK"/> 
                    </td>						
                </tr>		
            </table>
        </div>
    </xsl:template>		
		
    <!-- start header 02TNDN-->
    <xsl:template name="tkhaiHeader-02TNDN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                    <td class="align-c" >       
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       	
	
        <div class="header_div">			
            <table class="tb_header">
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
			
    <!--Start Header 24/KK-TNCN--> 	
    <xsl:template name="tkhaiHeader-24KK-TNCN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />

        
	
        <div class="header_div">			
            <table class="tb_header">
                <tr>
                    <td></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                                    <b>1. Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       
        <div class="header_div">			
            <table class="tb_header">						
                <tr>
            <td style="width:80%;text-align:center" >	
                <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                <br/>-------------------------
            </td>
            <td style="width:17% ; vertical-align: top;"  rowSpan="5" align="top"  >
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
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
                    <td class="bketitle" colspan="1" >
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
                                    <b>1. Tên tổ chức, cá nhân: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
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

    <!-- Start tkhai header TB01-->
    <xsl:template name="tkhaiHeader-TB01">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                                    <b>1. Tên đơn vị phát hành: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ trụ sở: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>4. Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/></b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
      
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                                    <b>[02] Tên tổ chức, cá nhân trả thu nhập : <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>[04] Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/></b>
                                </td>
                                <td>
                                    <b>[05] Quận/Huyện: <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/></b>
                                </td>
                                <td>
                                    <b>[06] Tỉnh/Thành phố: <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>[07] Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/></b>
                                </td>
                                <td>
                                    <b>[08] Fax: <xsl:value-of select="$ttkthue/NNT/faxNNT"/></b>
                                </td>
                                <td>
                                    <b>[09] E-mail: <xsl:value-of select="$ttkthue/NNT/emailNNT"/></b>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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
                            <tr >
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
	
    <!-- start tkhai header 01A/DK-TNDN, 01/DK-TAIN  -->	
    <xsl:template name="tkhaiHeader-DK1">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start tkhai header 01B/DK-TNDN -->	
    <xsl:template name="tkhaiHeader-DK2">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
  
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start tkhai header 02/DK-TAIN  -->	
    <xsl:template name="tkhaiHeader-DK3">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
        
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start tkhai header 01/BCTL-DK  -->	
    <xsl:template name="tkhaiHeader-DK4">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr >
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

    <!-- start tkhai header 03/TD-TAIN-->	
    <xsl:template name="tkhaiHeader-03tain">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                                    <b>[21]</b> Tên loại tài nguyên: <xsl:value-of select="ihtkk:getTenTN($tkchinh/ct21)"/>
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

    <!-- start header Phuluc-->
    <xsl:template name="tkhaiHeader-pluc">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="tenPL1" />	
        <xsl:param name="ghiChuPL" />
        
        <div class="header_div">			
            <table style="width:100%">
			
			<!-- mới -->
			<tr>
            <td class="align-c"  style="width:80%">
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
                <td class="bketitle" >
					<b>
						<xsl:value-of select="$tenPL"/>
					</b>
                </td>
          </tr>
        <tr>
            <td class="bketitle"  >
                <b>
                    <xsl:value-of select="$tenPL1"/>
                </b>
            </td>
        </tr>
        <tr>
            <td class="align-c" >
                <i>
                    <xsl:value-of select="$ghiChuPL"/>
                </i>
            </td>
        </tr>
			<!-- end -->
                <tr>
                    <td class="align-c" colspan="2">
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>								
                      
                    </td>
                </tr>
                <tr>
                    <td  class="align-l">
                        <b>[02] Tên người nộp thuế: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
        
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[05] Tên người nộp thuế: </b>  
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
     	
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[05] Tên người nộp thuế: </b>  
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
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
                                <xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "></xsl:if>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
      
        <div class="header_div">			
            <table class="tb_header">
               <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[02] Tên người nộp thuế: </b>  
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
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
                                <xsl:if test="$tkchinh/CT13/daiLyThue = 'true' "></xsl:if>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[05] Tên người nộp thuế: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
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
                        <td class="align-l">[08] Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
                    </tr>
                </xsl:if>
                <xsl:if test="not($ttkthue/DLyThue)">	
                    <tr>
                        <td>
                            <b>[07] Tên đơn vị được uỷ quyền [<xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' "> X </xsl:if>] hoặc Đại lý thuế [<xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "> X </xsl:if>]: 
                                <xsl:if test="$tkchinh/CT16/donViUyQuyen = 'true' ">
                                    <xsl:value-of select="$tkchinh/tenDonViUyQuyen"/>
                                </xsl:if>
                                <xsl:if test="$tkchinh/CT16/daiLyThue = 'true' "></xsl:if>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="mauSo" />
        <div class="header_div">			
            <table class="tb_header">
                <tr>
                    <td class="align-c" colspan="3">
                        <b>PHỤ LỤC</b>
                    </td>
					<td style="width:17% ; vertical-align: top;"  rowSpan="3" align="top"  >
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
                    <td class="bketitle" colspan="3" >
                        <b>BẢNG KÊ KHAI ĐIỀU CHỈNH THUẾ GTGT ĐƯỢC KHẤU TRỪ NĂM <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_4B_GTGT/namKTru"/></b>
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
                    <td  class="align-l">
                        <b>[02] Tên người nộp thuế:</b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td class="align-l">[03] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       	
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct02"/></td>
                    <td  class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct03"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_1_VTNN/ct04"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
                </tr>
                <tr>
                    <td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></td>
                    </tr>
                    <tr>
                        <td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       	
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct02"/></td>
                    <td  class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct03"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_2_VTNN/ct04"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
                </tr>
                <tr>
                    <td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></td>
                    </tr>
                    <tr>
                        <td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       	
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">[02] Tên hãng vận tải nước ngoài: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct02"/></td>
                    <td  class="align-l">[03] Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct03"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[04] Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL_01_3_VTNN/ct04"/></td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">[05] Bên Việt Nam khấu trừ và nộp thuế thay: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></td>
                </tr>
                <tr>
                    <td class="align-l" colspan="2">[06] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td class="align-l" colspan="2">[07] Tên đại lý thuế (nếu có): <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/></td>
                    </tr>
                    <tr>
                        <td class="align-l" colspan="2">[08] Mã số thuế <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
       
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[02] Tên Hãng hàng không nước ngoài: </b> 
                        <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct04"/>
                    </td>
                    <td  class="align-l">
                        <b>[03]</b> Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct05"/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">
                        <b>[04]</b> Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_1_HKNN/ct04"/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
      	
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>[02] Tên Hãng hàng không nước ngoài: </b> 
                        <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct04"/>
                    </td>
                    <td  class="align-l">
                        <b>[03]</b> Nước cư trú: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh/ct05"/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">
                        <b>[04]</b> Tên/hô hiệu phương tiện vận tải: <xsl:value-of select="HSoThueDTu/HSoKhaiThue/PLuc/PL01_2_HKNN/ct04"/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">
                        <b>[05] Tên văn phòng/đại lý tại Việt Nam: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l" colspan="2">
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
        
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
                </xsl:call-template>
                <tr>
                    <td colspan="3">
                        <br/>
                    </td>
                </tr>
                <tr>
                    <td  class="align-l">
                        <b>[01] Tên tổ chức nhận tái bảo hiểm nước ngoài hoặc tổ chức được uỷ quyền: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td>
                </tr>
                <tr>
                    <td class="align-l">[02] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <tr>
                    <td class="align-l">[03] Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">
                    <tr>
                        <td class="align-l">
                            <b>[04] Tên đại lý thuế (nếu có): </b> 
                            <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="align-l">[05] Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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

    <!-- start header Phuluc 09-3KK/TNCN-->
    <xsl:template name="tkhaiHeaderPL09-3KK_TNCN">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
        
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    </td><!--style:height="25"-->
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
				<xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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

    <!-- start tkhai header 02/NTNN, 04NTNN -->	
    <xsl:template name="tkhaiHeader02_NTNN">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
               <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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

    <!-- start header Phuluc 02-1/NTNN-->
    <xsl:template name="tkhaiHeader-pluc02-1_NTNN">	
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
      	
        <div class="header_div">			
            <table class="tb_header">
				<xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>Bên Việt nam khấu trừ và nộp thuế thay: </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td class="align-l">
                            <b>Tên đại lý thuế (nếu có): </b> 
                            <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="tKhai" />
        <xsl:param name="tenPL" />
        <xsl:param name="ghiChuPL" />
      
        <div class="header_div">			
            <table class="tb_header">
                <xsl:call-template name="BieuNguPhuLuc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="tenPL_"   select="$tenPL"/>
                    <xsl:with-param name="ghiChuPL_"   select="$ghiChuPL"/>
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
                    <td  class="align-l">
                        <b>Bên Việt Nam khấu trừ và nộp thuế thay (hoặc nhà thầu nước ngoài): </b> 
                        <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                    </td><!--style:height="25"-->
                </tr>
                <tr>
                    <td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></td>
                </tr>
                <xsl:if test="$ttkthue/DLyThue">	
                    <tr>
                        <td class="align-l">
                            <b>Tên đại lý thuế (nếu có): </b> 
                            <xsl:value-of select="$ttkthue/DLyThue/tenDLyThue"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="align-l"> Mã số thuế: <xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/></td>
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
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
	
        <div class="header_div">			
            <table class="tb_header">						
                  <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
                    <td class="align-c">
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>								
                      
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="tb_header">
                            <tr>
                                <td class="align-r">Hình thức kê khai:</td>
                                <td>+ Quyết toán riêng cho từng năm [<xsl:if test="$tkchinh/HinhThucKeKhai/quyetToanRiengTungNam = 'true' ">X</xsl:if>]</td>
                            </tr>
                            <tr>
                                <td></td>
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
                                <td colspan="2"> Ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT21/ngayVBUQ,'yyyy')"/></td>
                            </tr>
                        </table>
                    </td>
                </tr>
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
			
    <!-- start tkhai header BVMT_01 -->	
    <xsl:template name="tkhaiHeaderBVMT_01">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
     
	
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuoc">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
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
                            <tr>
                                <td>
                                    <b>[12]</b> Số tài khoản: <xsl:value-of select="$tkchinh/Header/ct12"/>
                                </td>
                                <td colspan="2">
                                    <b>[13]</b> tại Ngân hàng / KBNN: <xsl:value-of select="$tkchinh/Header/ct13"/>
                                </td>
                            </tr>
                            <tr >
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
    <!-- end tkhai header BVMT_01 -->	
    
        <xsl:template name="BieuNguDatNuocBL">
        <xsl:param name="mauTKhai_" />
        <xsl:param name="moTaBieuMau_" />
        <xsl:param name="ttkthue_" />
        <xsl:param name="ghuchuTK_" />
        <xsl:param name="mauTBao" />
        
        <tr>
            <td style="width:80%;text-align:center" >	
                <b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
                <br/>-------------------------
            </td>
            <td style="width:17% ; vertical-align: top;"  rowSpan="5" align="top"  >
                <div class="bieu_mau_div">
                    <div >Mẫu số: <b>
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
    </xsl:template>
    
        <!-- Start tkhai header BC01 biên lai-->
    <xsl:template name="tkhaiHeader-BC01-BL">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuocBL">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
					<td class="align-c"><b>BÁO CÁO</b></td>
				</tr>      
				<tr>
					<td class="align-c"><b>Về việc nhận in/cung cấp phần mềm tự in biên lai/cung cấp giải pháp biên lai điện tử</b></td>
				</tr>           
                <tr>
                    <td class="align-c"><br/>
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>	
                       
                    </td>
                </tr>
                <tr>
                    <td>	
                        <br/>
                        <table class="ttinnnt_table">
                            <tr>
                                <td colspan="3">
                                    <b>1. Tên tổ chức: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>2. Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>
    
            <!-- Start tkhai header BC7 biên lai-->
    <xsl:template name="tkhaiHeader-BC7-BL">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuocBL">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
					<td class="align-c"><b>BÁO CÁO</b></td>
				</tr>      
				<tr>
					<td class="align-c"><b>Tình hình sử dụng biên lai thu phí, lệ phí</b></td>
				</tr>           
                <tr>
                    <td class="align-c"><br/>
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>	
                       
                    </td>
                </tr>
                <tr>
                    <td>	
                        <br/>
                        <table class="ttinnnt_table">
                            <tr>
                                <td colspan="3">
                                    <b>1. Tên đơn vị: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>2. Mã số thuế (nếu có): <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>
    
                <!-- Start tkhai header BC21 biên lai-->
    <xsl:template name="tkhaiHeader-BC21-BL">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuocBL">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
					<td class="align-c"><b>BÁO CÁO</b></td>
				</tr>      
				<tr>
					<td class="align-c"><b>mất, cháy, hỏng biên lai</b></td>
				</tr>           
                <tr>
                    <td class="align-c"><br/>
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>	
                       
                    </td>
                </tr>
                <tr>
                    <td>	
                        <br/>
                        <table class="ttinnnt_table">
                            <tr>
                                <td colspan="3">
                                    <b>1. Tên tổ chức, cá nhân làm mất, cháy, hỏng biên lai: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b>2. Mã số thuế (nếu có): <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>
    
        <xsl:template name="tkhaiHeader-TB01-BL">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuocBL">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
					<td class="align-c"><b>THÔNG BÁO</b></td>
				</tr>      
				<tr>
					<td class="align-c"><b>phát hành biên lai</b></td>
				</tr>           
                <tr>
                    <td class="align-c"><br/>
                        <b>[01]</b> Kỳ tính thuế: <xsl:value-of select="ihtkk:kyTinhThue($kyKKhai,$kieuKy,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiTuNgay,$ttkthue/TKhaiThue/KyKKhaiThue/kyKKhaiDenNgay)"/>	
                       
                    </td>
                </tr>
<tr>
                    <td>
                        <br/>
                        <table class="ttinnnt_table">
                            <tr>
                                <td>
                                    <b>1. Tên đơn vị phát hành Biên lai: <xsl:value-of select="$ttkthue/NNT/tenNNT"/></b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>2. Mã số thuế (nếu có): <xsl:value-of select="$ttkthue/NNT/mst"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>3. Địa chỉ trụ sở chính: <xsl:value-of select="$ttkthue/NNT/dchiNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenHuyenNNT"/> - <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/></b>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                    <b>4. Điện thoại: <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

            </table>
        </div>
    </xsl:template>
    
            <xsl:template name="tkhaiHeader-TB03-BL">
        <xsl:param name="mauTKhai" />
        <xsl:param name="moTaBieuMau" />
        <xsl:param name="ghuchuTK" />
       
        <div class="header_div">			
            <table class="tb_header">						
                 <xsl:call-template name="BieuNguDatNuocBL">
                    <xsl:with-param name="mauTKhai_"   select="$mauTKhai"/>
                    <xsl:with-param name="moTaBieuMau_"   select="$moTaBieuMau"/>
                    <xsl:with-param name="ttkthue_"   select="$ttkthue"/>
                    <xsl:with-param name="ghuchuTK_"   select="$ghuchuTK"/>
                </xsl:call-template>
                <tr>
					<td class="align-c"><b>THÔNG BÁO</b></td>
				</tr>      
				<tr>
					<td class="align-c"><b>Kết quả huỷ biên lai thu tiền phí, lệ phí</b></td>
				</tr>           
                <tr>
                    <td class="align-c"><br/>
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
                                    <b>1. Tên cơ quan thu phí, lệ phí: </b>
                                    <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>2. Mã số thuế (nếu có): </b>
                                    <xsl:value-of select="$ttkthue/NNT/mst"/>
                                </td>
                            </tr>
                            <tr >
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
    
</xsl:stylesheet>