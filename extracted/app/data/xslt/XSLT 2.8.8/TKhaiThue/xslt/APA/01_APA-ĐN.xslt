<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
	<xsl:include href="../../include/TKhaiHeader.xsl"/>
	<xsl:include href="../../include/TKhaiFooter.xsl"/>
	<xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select="HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue"/>
		<xsl:variable name="ttdlythue" select="HSoThueDTu/HSoKhaiThue/TTinChung/DLyThue"/>
		<xsl:variable name="tkchinh" select="HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh"/>
		<xsl:variable name="moTaBieuMau" select="'(Ban hành kèm theo ……)'"/>
		<style type="text/css">
	span.content-span{
	width: 100%;
    display: inline-block;
        padding: 0px 10px;
    margin-bottom: 0px;
    padding-top: 5px;
    min-height: 24px;
    border-bottom: solid 1px #444;
	}
	.ngay_nhan {
		padding:0px;
		background: white;
		border: 1px solid black;
		width: 20px;
		align: center;
	}
	</style>
	
		<xsl:call-template name="tkhaiHeader_01_APA_DN">
			<xsl:with-param name="mauTKhai" select="'01/APA-ĐN'"/>
			<xsl:with-param name="moTaBieuMau" select="$moTaBieuMau"/>
		</xsl:call-template>
		
		<div style="width:100%;padding-top: 6pt;text-align:center">
			<b>ĐỀ NGHỊ ÁP DỤNG APA</b>
		</div>
		<div style="width:100%;padding-top: 6pt;text-align:center">Kính gửi: Cục thuế
    </div>
		<br/>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      [01] Tên người nộp thuế :  
      <xsl:value-of select="$ttkthue/NNT/tenNNT"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      [02] Mã số thuế: <xsl:value-of select="$ttkthue/NNT/mst"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      [03] Địa chỉ: 
      <xsl:value-of select="$ttkthue/NNT/dchiNNT"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      [04] Xã/phường/đặc khu:  
      <xsl:value-of select="$ttkthue/NNT/tenXaNNT"/> 
	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
	  [05] Tỉnh/thành phố: 
	  <xsl:value-of select="$ttkthue/NNT/tenTinhNNT"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      [06] Điện thoại:  
      <xsl:value-of select="$ttkthue/NNT/dthoaiNNT"/> 
	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
	  [07] Fax: 
	  <xsl:value-of select="$ttkthue/NNT/faxNNT"/> 
	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
	  [08] Email: 
	  <xsl:value-of select="$ttkthue/NNT/emailNNT"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Căn cứ Luật Quản lý thuế số 38/2019/QH14 ngày 13/6/2019;
    </div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Căn cứ Nghị định số 126/2020/NĐ-CP ngày 19/10/2020 của Chính phủ quy định chi tiết một số Điều của Luật Quản lý thuế;
    </div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
  Công ty <xsl:value-of select="$ttkthue/NNT/tenNNT"/> nộp hồ sơ:
</div>

<!-- Bỏ padding-top, kéo sát bảng vào -->
<div style="width: 100%; height: 4; padding: 0px 0px 0px 60px !important;">
  <span class="content-span" style="border-bottom:none">&#160;
    <table style="width: 100%">
      <tr>
        <td><label>&#160;</label></td>
        <td class="ngay_nhan">
          <label>
            <xsl:if test="$tkchinh/dn_APA_ChinhThuc = 'true' ">X</xsl:if>
            <xsl:if test="$tkchinh/dn_APA_ChinhThuc = 'false' ">&#160;</xsl:if>
          </label>
        </td>
        <td class="align-l">
          &#160;&#160;&#160; Đề nghị áp dụng APA chính thức
          <xsl:if test="$tkchinh/dn_APA_ChinhThuc = 'true'">
            [<xsl:value-of select="$tkchinh/ten_Phuong_Thuc"/>]
          </xsl:if>
        </td>
      </tr>
      <tr>
        <td><label>&#160;</label></td>
        <td class="ngay_nhan">
          <label>
            <xsl:if test="$tkchinh/dn_GiaHan_APA = 'true' ">X</xsl:if>
            <xsl:if test="$tkchinh/dn_GiaHan_APA = 'false' ">&#160;</xsl:if>
          </label>
        </td>
        <td class="align-l">
          &#160;&#160;&#160;Đề nghị gia hạn APA
          <xsl:if test="$tkchinh/dn_GiaHan_APA = 'true'">
            [<xsl:value-of select="$tkchinh/ten_Phuong_Thuc"/>]
          </xsl:if>
        </td>
      </tr>
      <tr>
        <td><label>&#160;</label></td>
        <td class="ngay_nhan">
          <label>
            <xsl:if test="$tkchinh/deNghiSuaDoiAPA = 'true' ">X</xsl:if>
            <xsl:if test="$tkchinh/deNghiSuaDoiAPA= 'false' ">&#160;</xsl:if>
          </label>
        </td>
        <td class="align-l">
          &#160;&#160;&#160;Đề nghị sửa đổi APA
          <xsl:if test="$tkchinh/deNghiSuaDoiAPA = 'true'">
            [<xsl:value-of select="$tkchinh/ten_Phuong_Thuc"/>]
          </xsl:if>
        </td>
      </tr>
      <tr>
        <td><label>&#160;</label></td>
        <td class="ngay_nhan">
          <label>
            <xsl:if test="$tkchinh/deNghiHuyBoAPA = 'true' ">X</xsl:if>
            <xsl:if test="$tkchinh/deNghiHuyBoAPA= 'false' ">&#160;</xsl:if>
          </label>
        </td>
        <td class="align-l">
          &#160;&#160;&#160;Đề nghị hủy bỏ APA
          <xsl:if test="$tkchinh/deNghiHuyBoAPA = 'true'">
            [<xsl:value-of select="$tkchinh/ten_Phuong_Thuc"/>]
          </xsl:if>
        </td>
      </tr>
    </table>
  </span>
</div>

<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
  đối với giao dịch liên kết sau đây:
</div>

		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Giao dịch đề nghị áp dụng [09]: <br></br>
	  <xsl:for-each select="$tkchinh/GD_DNghi_ApDung/CTiet">
      <div style="padding-left:60pt;">
        <xsl:value-of select="mta_GD_LKet"/> 
		giữa <xsl:value-of select="$ttkthue/NNT/tenNNT"/> 
		và <xsl:value-of select="ben_LKet_TaiNN"/> 
      </div>
    </xsl:for-each>
	  <!--<xsl:value-of select="$tkchinh/mta_GD_LKet"/> giữa <xsl:value-of select="$ttkthue/NNT/tenNNT"/> và <xsl:value-of select="$tkchinh/ben_LKet_TaiNN"/> -->
	  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
	  cho giai đoạn <xsl:value-of select="$tkchinh/so_Nam"/> năm bắt đầu từ <xsl:value-of select="ihtkk:stringDatetime($tkchinh/tu_Ngay,'dd/mm/yyyy')"/> 
	  và kết thúc vào <xsl:value-of select="ihtkk:stringDatetime($tkchinh/den_Ngay,'dd/mm/yyyy')"/>
		</div>
		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Các tài liệu gửi kèm [10]: 
    </div>
		<xsl:for-each select="$tkchinh/Tlieu_DinhKem/CTiet">
  <div style="padding-left:60pt;">
				<xsl:value-of select="position()"/>. 
    <xsl:value-of select="ten_TaiLieu"/>
			</div>
		</xsl:for-each>
		
		<xsl:choose>
  <!-- Nhánh đơn phương -->
  <xsl:when test="$tkchinh/ma_Phuong_Thuc = 1">
     <!-- Không xuất ra nội dung -->
  </xsl:when>

  <!-- Nhánh song phương / đa phương -->
  <xsl:when test="$tkchinh/ma_Phuong_Thuc = 2 or $tkchinh/ma_Phuong_Thuc = 3">
	<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Căn cứ Hiệp định thuế giữa Việt Nam và <xsl:value-of select="$tkchinh/dtac_Ky_HDThue"/>
	</div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Công ty <xsl:value-of select="$ttkthue/NNT/tenNNT"/> đề nghị cơ quan thuế tiến hành thủ tục Thỏa thuận song phương (MAP) theo quy định 
      tại Điều <xsl:value-of select="$tkchinh/qd_Tai_Dieu"/> và các điều khoản khác của Hiệp định thuế giữa Việt Nam và <xsl:value-of select="$tkchinh/dtac_Ky_HDThue"/> 
      nêu trên liên quan đến đề nghị áp dụng APA
      &#160;<xsl:value-of select="$tkchinh/ten_Phuong_Thuc"/>
      giữa <xsl:value-of select="$ttkthue/NNT/tenNNT"/> và <xsl:value-of select="$tkchinh/ben_LKet_TaiNN"/>, cụ thể như sau:
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      1. Lý do đề nghị áp dụng APA song phương hoặc đa phương: <xsl:value-of select="$tkchinh/ly_Do_DNAD"/>
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      2. Tóm tắt nội dung mô tả về lý do cần trợ giúp: <xsl:value-of select="$tkchinh/tom_Tat_Ly_Do"/>
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      3. Tiến trình đề nghị áp dụng APA song phương của <xsl:value-of select="$tkchinh/ben_LKet_TaiNN"/> tại <xsl:value-of select="$tkchinh/dtac_Ky_HDThue"/>.
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Ý kiến của cơ quan thuế nước, vùng lãnh thổ ký Hiệp định thuế về các vấn đề liên quan tới APA được đề xuất (nếu có):
      <xsl:value-of select="$tkchinh/y_Kien"/>
    </div>
    <div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      4. Tài liệu gửi kèm khác (nếu có).
    </div>
    <xsl:for-each select="$tkchinh/Tlieu_DinhKem_Khac/CTiet[ten_TaiLieu and normalize-space(ten_TaiLieu)!='']">
	  <div style="padding-left:60pt;">
		<xsl:value-of select="position()"/>. <xsl:value-of select="ten_TaiLieu"/>
	  </div>
	</xsl:for-each>
  </xsl:when>
</xsl:choose>

		<div style="padding-top: 5pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
      Công ty <xsl:value-of select="$ttkthue/NNT/tenNNT"/> xin cam đoan tất cả thông tin đã khai trong Đơn này và Hồ sơ đề nghị áp dụng APA chính thức là đúng và chịu trách nhiệm trước pháp luật về thông tin đã khai./.
    </div>
	
	
		<xsl:call-template name="tkhaiFooter_01_APA_DN"/>
		<table style="page-break-inside: avoid;">
			<tr>
				<td>
					<div id="sigDiv"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>
