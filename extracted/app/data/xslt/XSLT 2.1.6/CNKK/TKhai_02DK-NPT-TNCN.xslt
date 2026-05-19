<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 156/2013/TT-BTC ngày
6/11/2013 của Bộ Tài chính'" />
		 <xsl:call-template name="tkhaiHeader-02-ĐK-NPT-TNCN">
		<xsl:with-param name="mauTKhai"   select="'02/ĐK-NPT-TNCN'"/>
		<xsl:with-param name="moTaBieuMau"   select="'(Ban hành kèm theo Thông tư số 92/2015/TT-BTC ngày
15/6/2015 của Bộ Tài chính)'"/>
		<xsl:with-param name="ghuchuTK"   select="''"/>
	  </xsl:call-template>

		<div class="ndungtkhai_div">
            <div class="content">
            
                   	 
							 
						
                      <table  class="tkhai_table">
  <tr>
    <td colspan="13"><b>I.Người phụ thuộc đã có MST/CMND/Hộ chiếu</b></td>
  </tr>

  <tr>
    <td class="align-c" ><b>STT</b></td>
    <td class="align-c"  ><b>Họ Và tên</b></td>
    <td class="align-c" ><b>Ngày sinh</b></td>
    <td class="align-c" colspan="2"><b>Mã số thuế</b></td>
    <td class="align-c" colspan="2"><b>Quốc tịch</b></td>
    <td class="align-c" colspan="2"><b>Số CMND/Hộ chiếu</b></td>
    <td class="align-c" colspan="2"><b>Quan hệ với người nộp thuế</b></td>
    <td class="align-c" ><b>Thời điểm bắt đầu tính giảm trừ (tháng/năm)</b></td>
    <td class="align-c" ><b>Thời điểm kết thúc tính giảm trừ (tháng/năm)</b></td>
  </tr>
  	<tr>
	<td class="align-c"><b>[08]</b></td>
    <td class="align-c"><b>[09]</b></td>
    <td class="align-c" ><b>[10]</b></td>
    <td class="align-c" colspan="2"><b>[11]</b></td>
    <td class="align-c" colspan="2"><b>[12]</b></td>
    <td class="align-c"  colspan="2"><b>[13]</b></td>
    <td class="align-c" colspan="2"><b>[14]</b></td>
    <td class="align-c"><b>[15]</b></td>
    <td class="align-c"><b>[16]</b></td>
    </tr>
              <xsl:for-each select="$tkchinh/NPTCoCMND_MST/CTiet">
	                <xsl:variable name="currentRows" select='position()' />
	<tr>
	<td class="align-c"><xsl:value-of select="$currentRows" /></td>
   <td><xsl:value-of select="ct09" /></td>
      <td class="align-c" ><xsl:value-of select="ihtkk:stringDatetime(ct10, 'dd/mm/yyyy')" /></td>
      <td class="align-c" colspan="2"><xsl:value-of select="ct11" /></td>
      <td colspan="2"><xsl:value-of select="ct12_ten" /></td>
      <td colspan="2"><xsl:value-of select="ct13" /></td>
      <td  colspan="2"><xsl:value-of select="ct14_ten" /></td>
      <td class="align-c" ><xsl:value-of select="ct15" /></td>
      <td class="align-c" ><xsl:value-of select="ct16" /></td>
    </tr>
    	</xsl:for-each>
      <tr>
    <td colspan="13"><b>II. Người phụ thuộc chưa có MST/CMND/Hộ chiếu</b></td>
  </tr>
  <tr>
    <td rowspan="3" class="align-c" ><b>STT</b></td>
    <td rowspan="3"  align="c"><b>Họ và tên</b></td>
    <td colspan="7" class="align-c" ><b>Thông tin trên giấy khai sinh</b></td>
    <td rowspan="3" class="align-c" ><b>Quốc tịch</b></td>
    <td rowspan="3"  class="align-c" ><b>Quan hệ với người nộp thuế</b></td>
    <td rowspan="3"  class="align-c" ><b>Thời điểm bắt đầu tính giảm trừ (tháng/năm)</b></td>
    <td rowspan="3"  class="align-c" ><b>Thời điểm kết thúc tính giảm trừ(tháng/năm)</b></td>
  </tr>
  <tr>
    <td rowspan="2"  class="align-c" ><b>Ngày sinh</b></td>
    <td rowspan="2"  class="align-c" ><b>Số</b></td>
    <td rowspan="2" class="align-c" ><b>Quyển số</b></td>
    <td colspan="4" class="align-c" ><b>Nơi đăng ký</b></td>
  </tr>
  <tr>
    <td class="align-c" ><b>Quốc gia</b></td>
    <td class="align-c" ><b>Tỉnh/ Thành phố</b></td>
    <td class="align-c"  ><b>Quận/ Huyện</b></td>
    <td class="align-c" ><b>Phường/ Xã</b></td>
  </tr>
  <tr>
    <td class="align-c" ><b>[17]</b></td>
    <td class="align-c"><b>[18]</b></td>
    <td class="align-c"  ><b>[19]</b></td>    
    <td class="align-c" ><b>[20]</b></td>
    <td class="align-c"  ><b>[21]</b></td>   
    <td class="align-c"  ><b>[22]</b></td>   
    <td class="align-c"  ><b>[23]</b></td> 
    <td class="align-c" ><b>[24]</b></td>   
    <td class="align-c" ><b>[25]</b></td>  
    <td class="align-c"  ><b>[26]</b></td>
    <td class="align-c" ><b>[27]</b></td>
    <td class="align-c"  ><b>[28]</b></td>   
    <td class="align-c"  ><b>[29]</b></td>
  </tr>
    <xsl:for-each select="$tkchinh/NPTChuaCoCMND_MST/CTiet">
	<xsl:variable name="currentRows" select='position()' />
	<tr>
	<td class="align-c"><xsl:value-of select="$currentRows" /></td>
       <td><xsl:value-of select="ct18" /></td>
       <td class="align-c"  ><xsl:value-of select="ihtkk:stringDatetime(ct19,  'dd/mm/yyyy')" /></td>
      <td class="align-c" ><xsl:value-of select="ct20" /></td>
     <td class="align-c"  ><xsl:value-of select="ct21" /></td>
      <td class="align-c"  ><xsl:value-of select="ct22_ten" /></td>
      <td><xsl:value-of select="ct23_ten" /></td>
     <td ><xsl:value-of select="ct24_ten" /></td>
      <td ><xsl:value-of select="ct25_ten" /></td>
      <td><xsl:value-of select="ct26_ten" /></td>
      <td><xsl:value-of select="ct27_ten" /></td>
      <td class="align-c"  ><xsl:value-of select="ct28 " /></td>
      <td class="align-c"  ><xsl:value-of select="ct29" /></td>
  </tr>
  	</xsl:for-each>
 
</table>
					    <div><i>(MST: Mã số thuế; CMND: Chứng minh nhân dân)</i></div>
                      			
		</div>	
		</div>		
	<xsl:call-template name="tkhaiFooter"></xsl:call-template>
	</xsl:template>		
</xsl:stylesheet>