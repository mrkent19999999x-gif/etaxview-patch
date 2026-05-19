<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
  <xsl:include href="../../common/common.xsl"/>
	<xsl:template match="/">
	<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
	<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 80/2021/TT-BTC ngày 29 tháng 9 năm 2021 của Bộ trưởng Bộ Tài chính'" />
	<xsl:variable name="ghiChuPL" select="''"/>

<!--start phu luc 03_1C_TNDN-->
		<xsl:if test="HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1C_TNDN">	
			<xsl:variable name="pl03-1c_tndn" select='HSoThueDTu/HSoKhaiThue/PLuc/PLuc_03_1C_TNDN' />
				<xsl:call-template name="tkhaiHeader-pluc-03-1a-tndn-tt80">
		<xsl:with-param name="mauTKhai"   select="'03-1C/TNDN'"/>
		<xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
		<xsl:with-param name="tenPL"   select="'KẾT QUẢ HOẠT ĐỘNG SẢN XUẤT KINH DOANH'"/>
<xsl:with-param name="tenPL1"   select="'Áp dụng đối với Công ty chứng khoán, Công ty quản lý quỹ đầu tư chứng khoán'"/>
		<xsl:with-param name="ghiChuPL"   select="'(Kèm theo tờ khai quyết toán thuế thu nhập doanh nghiệp số 03/TNDN)'"/>
	  </xsl:call-template>					
					<div class="ndungtkhai_div">	
			<div class="content">
							<div class="align-r"><i>Đơn vị tiền: Đồng Việt Nam</i></div>
							<table class="tkhai_table">
								 <tr>
								   <td class="align-c"><b>STT</b></td>
								   <td class="align-c"><b>Chỉ tiêu</b></td>
								   <td class="align-c"><b>Mã chỉ tiêu </b></td>
								   <td class="align-c"><b>Số tiền</b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><i>(1)</i></td>
								   <td class="align-c"><i>(2)</i></td>
								   <td class="align-c"><i>(3)</i></td>
								   <td class="align-c"><i>(4)</i></td>								   								   								   
								 </tr>
								 <tr>
								   <td></td>
								   <td colspan="1"><b>Kết quả kinh doanh ghi nhận theo báo cáo tài chính:</b></td>
								   <td></td>
								   <td></td>
								 </tr>
								<tr>
								   <td class="align-c"><b>I</b></td>
								   <td class="align-l"><b>Doanh thu hoạt động</b></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>1.1.</b></td>
								   <td class="align-l"><b>Lãi từ các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL)</b></td>
								   <td class="align-c"><b>1</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_1"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c">a.</td>
								   <td class="align-l">Lãi bán các tài sản tài chính FVTPL</td>
								   <td class="align-c">01.1</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_01_1"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">b.</td>
								   <td class="align-l">Chênh lệch tăng về đánh giá lại các TSTC FVTPL</td>
								   <td class="align-c">01.2</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_01_2"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">c.</td>
								   <td class="align-l">Cổ tức, tiền lãi phát sinh từ tài sản tài chính FVTPL</td>
								   <td class="align-c">01.3</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_01_3"/></td>
								 </tr>  
								  <tr>
								   <td class="align-c">1.2.</td>
								   <td class="align-l">Lãi từ các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
								   <td class="align-c">2</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_2"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.3.</td>
								   <td class="align-l">Lãi từ các khoản cho vay và phải thu</td>
								   <td class="align-c">3</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_3"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.4.</td>
								   <td class="align-l">Lãi từ tài sản tài chính sẵn sàng để bán (AFS)</td>
								   <td class="align-c">4</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_4"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.5.</td>
								   <td class="align-l">Lãi từ các công cụ phái sinh phòng ngừa rủi ro</td>
								   <td class="align-c">5</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_5"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.6.</td>
								   <td class="align-l">Doanh thu nghiệp vụ môi giới chứng khoán</td>
								   <td class="align-c">6</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_6"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.7.</td>
								   <td class="align-l">Doanh thu nghiệp vụ bảo lãnh, đại lý phát hành chứng khoán</td>
								   <td class="align-c">7</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_7"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.8.</td>
								   <td class="align-l">Doanh thu nghiệp vụ tư vấn đầu tư chứng khoán</td>
								   <td class="align-c">8</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_8"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.9.</td>
								   <td class="align-l">Doanh thu nghiệp vụ lưu ký chứng khoán</td>
								   <td class="align-c">9</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_9"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.10.</td>
								   <td class="align-l">Doanh thu hoạt động tư vấn tài chính</td>
								   <td class="align-c">10</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_10"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">1.11.</td>
								   <td class="align-l">Thu nhập hoạt động khác</td>
								   <td class="align-c">11</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_11"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Cộng doanh thu hoạt động</b> (20 = 01→11)</td>
								   <td class="align-c"><b>20</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_20"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>II</b></td>
								   <td class="align-l"><b>Chi phí hoạt động</b></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.1.</td>
								   <td class="align-l">Lỗ các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL)</td>
								   <td class="align-c">21</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_21"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">a.</td>
								   <td class="align-l">Lỗ bán các tài sản tài chính FVTPL</td>
								   <td class="align-c">21.1</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_21_1"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">b.</td>
								   <td class="align-l">Chênh lệch giảm đánh giá lại các TSTC FVTPL</td>
								   <td class="align-c">21.2</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_21_2"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">c.</td>
								   <td class="align-l">Chi phí giao dịch mua các tài sản tài chính FVTPL</td>
								   <td class="align-c">21.3</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_21_3"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.2.</td>
								   <td class="align-l">Lỗ các khoản đầu tư nắm giữ đến ngày đáo hạn (HTM)</td>
								   <td class="align-c">22</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_22"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.3.</td>
								   <td class="align-l">Lỗ và ghi nhận chênh lệch đánh giá theo giá trị hợp lý tài sản tài chính sẵn sàng để bán (AFS) khi phân loại lại</td>
								   <td class="align-c">23</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_23"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.4.</td>
								   <td class="align-l">Chi phí dự phòng tài sản tài chính, xử lý tổn thất các khoản phải thu khó đòi và lỗ suy giảm tài sản tài chính và chi phí đi vay của các khoản cho vay</td>
								   <td class="align-c">24</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_24"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.5.</td>
								   <td class="align-l">Lỗ từ các tài sản tài chính phái sinh phòng ngừa rủi ro</td>
								   <td class="align-c">25</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_25"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.6.</td>
								   <td class="align-l">Chi phí hoạt động tự doanh</td>
								   <td class="align-c">26</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_26"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.7.</td>
								   <td class="align-l">Chi phí nghiệp vụ môi giới chứng khoán</td>
								   <td class="align-c">27</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_27"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.8.</td>
								   <td class="align-l">Chi phí nghiệp vụ bảo lãnh, đại lý phát hành chứng khoán</td>
								   <td class="align-c">28</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_28"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.9.</td>
								   <td class="align-l">Chi phí nghiệp vụ tư vấn đầu tư chứng khoán</td>
								   <td class="align-c">29</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_29"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.10.</td>
								   <td class="align-l">Chi phí nghiệp vụ lưu ký chứng khoán</td>
								   <td class="align-c">30.</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_30"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.11.</td>
								   <td class="align-l">Chi phí hoạt động tư vấn tài chính</td>
								   <td class="align-c">31</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_31"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c">2.12.</td>
								   <td class="align-l">Chi phí các dịch vụ khác</td>
								   <td class="align-c">32</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_32"/></td>
								 </tr>  
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Cộng chi phí hoạt động </b>(40 = 21→32)</td>
								   <td class="align-c"><b>40</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_40"/></b></td>
								 </tr>  
								 <tr>
								   <td class="align-c"><b>III</b></td>
								   <td class="align-l"><b>Doanh thu hoạt động tài chính</b></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								 </tr>  
								 <tr>
								   <td class="align-c">3.1.</td>
								   <td class="align-l">Chênh lệch lãi tỷ giá hối đoái đã và chưa thực hiện</td>
								   <td class="align-c">41</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_41"/></td>
								 </tr>
								<tr>
								   <td class="align-c">3.2.</td>
								   <td class="align-l">Doanh thu, dự thu cổ tức, lãi tiền gửi ngân hàng không cố định</td>
								   <td class="align-c">42</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_42"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">3.3.</td>
								   <td class="align-l">Lãi bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
								   <td class="align-c">43</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_43"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">3.4.</td>
								   <td class="align-l">Doanh thu khác về đầu tư</td>
								   <td class="align-c">44</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_44"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Cộng doanh thu hoạt động tài chính </b>(50 = 41→44)</td>
								   <td class="align-c"><b>50</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_50"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>IV</b></td>
								   <td class="align-l"><b>Chi phí tài chính</b></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								 </tr>
								 <tr>
								   <td class="align-c">4.1.</td>
								   <td class="align-l">Chênh lệch lỗ tỷ giá hối đoái đã và chưa thực hiện</td>
								   <td class="align-c">51</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_51"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">4.2.</td>
								   <td class="align-l">Chi phí lãi vay</td>
								   <td class="align-c">52</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_52"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">4.3.</td>
								   <td class="align-l">Lỗ bán, thanh lý các khoản đầu tư vào công ty con, liên kết, liên doanh</td>
								   <td class="align-c">53</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_53"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">4.4.</td>
								   <td class="align-l">Chi phí dự phòng suy giảm giá trị các khoản đầu tư tài chính dài hạn</td>
								   <td class="align-c">54</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_54"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">4.5.</td>
								   <td class="align-l">Chi phí tài chính khác</td>
								   <td class="align-c">55</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_55"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Cộng chi phí tài chính </b>(60 = 51→55)</td>
								   <td class="align-c"><b>60</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_60"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>V.</b></td>
								   <td class="align-l"><b>Chi phí bán hàng</b></td>
								   <td class="align-c"><b>61</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_61"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>VI.</b></td>
								   <td class="align-l"><b>Chi phí quản lý công ty</b></td>
								   <td class="align-c"><b>62</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_62"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>VII.</b></td>
								   <td class="align-l"><b>Kết quả hoạt động </b>(70=20+50-40-60-61-62)</td>
								   <td class="align-c"><b>70</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_70"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>VIII.</b></td>
								   <td class="align-l"><b>Thu nhập khác và chi phí khác</b></td>
								   <td class="align-c"></td>
								   <td class="align-c"></td>
								 </tr>
								 <tr>
								   <td class="align-c">8.1.</td>
								   <td class="align-l">Thu nhập khác</td>
								   <td class="align-c">71</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_71"/></td>
								 </tr>
								 <tr>
								   <td class="align-c">8.2.</td>
								   <td class="align-l">Chi phí khác</td>
								   <td class="align-c">72</td>
								   <td class="number align-r"><xsl:value-of select="$pl03-1c_tndn/ct_72"/></td>
								 </tr>
								 <tr>
								   <td class="align-c"></td>
								   <td class="align-l"><b>Cộng kết quả hoạt động khác </b>(80 = 71 - 72)</td>
								   <td class="align-c"><b>80</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_80"/></b></td>
								 </tr>
								 <tr>
								   <td class="align-c"><b>IX.</b></td>
								   <td class="align-l"><b>Tổng lợi nhuận kế toán trước thuế </b>(90 = 70 + 80)</td>
								   <td class="align-c"><b>90</b></td>
								   <td class="align-r"><b class="number"><xsl:value-of select="$pl03-1c_tndn/ct_90"/></b></td>
								 </tr>
							   </table>
					    </div>
					</div>
		<table style="page-break-inside: avoid;width:100%" >
<tr>
<td>							
			<xsl:call-template name="tkhaiFooter"/>	
				<div><i><b><u>Ghi chú:</u></b>  Số liệu chỉ tiêu <b>90</b> được tổng hợp vào chỉ tiêu A1 của Tờ khai 03/TNDN </i></div>
			<div id="sigDiv"></div>
</td>
</tr>
</table>						
		</xsl:if>
<!--end phu luc 03_1C_TNDN-->	
	   
	</xsl:template>		
</xsl:stylesheet>