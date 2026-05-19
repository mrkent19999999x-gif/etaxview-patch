<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/TBaoHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>    
<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:variable name="tbThue" select='TBaoThueDTu/TBaoThue/TTinChung/TTinTBaoThue' />
		<xsl:variable name="NNhanTBaoThue" select='TBaoThueDTu/TBaoThue/TTinChung/NNhanTBaoThue' />
		<xsl:variable name="ndungTBao" select='TBaoThueDTu/TBaoThue/NDungTBao' />
		<xsl:variable name="moTaBieuMau" select="'Ban hành kèm theo Thông tư số 66/2019/TT-BTC ngày 20/9/2019 của Bộ Tài chính'"/>

		<xsl:call-template name="tbaoHeader_01_TDT">
			<xsl:with-param name="mauTBao"   select="'01-1/TB-TĐT'"/>
			<xsl:with-param name="soTBao"   select="$tbThue/soTBao" />
			<xsl:with-param name="ngayTBao"   select="$tbThue/ngayTBao" />
		  <xsl:with-param name="moTaBieuMau"   select="$moTaBieuMau"/>
			<xsl:with-param name="motaTBao"   select="$tbThue/tenTBao" />

		</xsl:call-template>
		<br/>
		
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Kính gửi: <xsl:value-of select="$NNhanTBaoThue/tenNNT"/></div>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <xsl:value-of select="$NNhanTBaoThue/mst"/></div> <br/>
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ hồ sơ đăng ký thuế điện tử của người nộp thuế (NNT) gửi tới cơ quan thuế lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>, cơ quan thuế tiếp nhận hồ sơ đăng ký thuế điện tử của NNT, cụ thể như sau:</div><br/>
						<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+  <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/tokhai-phuluc"/> mẫu <xsl:value-of select="$ndungTBao/HoSoThue/CTietHoSoThue/mauSo"/> và các tài liệu đính kèm </div><br/> 
						
						<!--
						<table class="tkhai_table">
				<tr>
					<td class="align-c"><b>STT</b></td>
					<td class="align-c"><b>Tờ khai/Phụ lục</b></td>
					<td class="align-c"><b>Mẫu số</b></td>
					<td class="align-c"><b>Lần nộp</b></td>
					<td class="align-c"><b>Nơi nộp</b></td>
				</tr>
				<tr>
					<td class="align-c">(1)</td>
					<td class="align-c">(2)</td>
					<td class= "align-c">(3)</td>
				   <td class="align-c">(4)</td>
					<td class="align-c">(5)</td>
				</tr>
				
				 <xsl:for-each select="$ndungTBao/HoSoThue/CTietHoSoThue">
									<xsl:variable name="currentRows" select='position()' />
							<tr>
							  <td class="align-c"><xsl:value-of select="$currentRows" /></td>
							  <td class="align-l"><xsl:value-of select="tokhai-phuluc"/></td>
							  <td class="align-c"><xsl:value-of select="mauSo"/></td>
							  <td class="align-c"><xsl:value-of select="lanNop"/></td>
							   <td class="align-l"><xsl:value-of select="noiNop"/></td>
							</tr>
						</xsl:for-each>
			</table>	<br/>

-->

			
									<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;+ Mã giao dịch điện tử: <xsl:value-of select="$ndungTBao/maGiaoDichDTu"/></div> <br/>
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Hồ sơ đăng ký thuế điện tử của người nộp thuế đã được cơ quan thuế tiếp nhận vào lúc <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'hh')"/> giờ <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mi')"/> phút <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'ii')"/> giây ngày <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'dd')"/> tháng <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'mm')"/> năm <xsl:value-of select="ihtkk:stringDatetime($ndungTBao/ngayHoSo,'yyyy')"/>. Hồ sơ đăng ký thuế điện tử của người nộp thuế sẽ được cơ quan thuế tiếp tục kiểm tra. </div> <br/>

									<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp qua kiểm tra hồ sơ không đầy đủ theo quy định cơ quan thuế sẽ trả Thông báo nêu rõ lý do không chấp nhận hồ sơ và hướng dẫn hoàn thiện hồ sơ cho người nộp thuế trong thời hạn 02 (hai) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo. </div> <br/>		
									
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp qua kiểm tra hồ sơ đầy đủ theo quy định: <xsl:if test="$ndungTBao/HoSo_DKTCapMoi/HoSoToChuc='true' ">đề nghị người nộp thuế nộp hồ sơ đăng ký thuế bản giấy đến cơ quan thuế đã nộp hồ sơ theo địa chỉ nêu tại phần cuối Thông báo này và nhận Giấy chứng nhận ĐKT hoặc Thông báo MST trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên Thông báo này.</xsl:if>
	 <xsl:if test="$ndungTBao/HoSo_DKTCapMoi/HoSoDaCoMST='true' ">đề nghị người nộp thuế nộp hồ sơ đăng ký thuế bản giấy đến cơ quan thuế đã nộp hồ sơ theo địa chỉ nêu tại phần cuối Thông báo này và nhận Giấy chứng nhận ĐKT hoặc Thông báo MST trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên Thông báo này.<br/><br/>
	 &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp NNT có đề nghị nhận tại địa chỉ khác thì CQT sẽ gửi kết quả qua bưu chính cho NNT đến địa chỉ mà NNT đã kê khai trên hồ sơ ĐKT.</xsl:if>
	 
	<xsl:if test="$ndungTBao/HoSo_DKTCapMoi/HoSoCaNQuaCQChiTra='true' ">Cơ quan thuế sẽ trả Thông báo danh sách mã số thuế của cá nhân đăng ký thuế qua cơ quan chi trả thu nhập mẫu 14-MST hoặc Thông báo về việc &lt;không cấp MST cho &lt;cá nhân/người phụ thuộc&gt; đăng ký thuế qua cơ quan chi trả thu nhập&gt;/&lt;không cập nhật thông tin ĐKT thay đổi cho &lt;cá nhân/người phụ thuộc&gt; đăng ký qua cơ quan chi trả thu nhập&gt; mẫu 01-3/TB-TĐT vào thư điện tử của người nộp thuế trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này.</xsl:if>
	<xsl:if test="$ndungTBao/HoSo_DKTCapMoi/HoSoNguoiPT='true' ">Cơ quan thuế sẽ trả Thông báo danh sách mã số thuế của người phụ thuộc đăng ký thuế qua cơ quan chi trả thu nhập mẫu 22-MST hoặc Thông báo về việc &lt;không cấp MST cho &lt;cá nhân/người phụ thuộc&gt; đăng ký thuế qua cơ quan chi trả thu nhập&gt;/&lt;không cập nhật thông tin ĐKT thay đổi cho &lt;cá nhân/người phụ thuộc&gt; đăng ký qua cơ quan chi trả thu nhập&gt; mẫu 01-3/TB-TĐT vào thư điện tử của người nộp thuế trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này.</xsl:if>
	<xsl:if test="$ndungTBao/hoSo_TDTTKhongCQT='true' ">Cơ quan thuế sẽ cập nhật thông tin ĐKT thay đổi cho NNT trong thời hạn 02 (hai) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này.</xsl:if>
		<xsl:if test="$ndungTBao/hoSo_TDTTThayDoiGCN='true' ">đề nghị người nộp thuế đến cơ quan thuế trực tiếp quản lý theo địa chỉ nêu tại phần cuối thông báo này để nhận Giấy chứng nhận ĐKT hoặc Thông báo MST trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này. Trường hợp người nộp thuế đăng ký nhận kết quả tại nơi khác, cơ quan thuế sẽ gửi kết quả qua bưu điện đến địa chỉ người nộp thuế đã khai báo trên hồ sơ.</xsl:if>
	<xsl:if test="$ndungTBao/hoSo_TDTTChuyenDi='true' ">Cơ quan thuế trực tiếp quản lý sẽ gửi Thông báo chuyển địa điểm vào thư điện tử của NNT trong thời hạn 10 (mười) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này.</xsl:if>
		<xsl:if test="$ndungTBao/hoSo_TDTTChuyenDen='true' ">đề nghị người nộp thuế đến cơ quan thuế nơi nộp hồ sơ theo địa chỉ nêu tại phần cuối thông báo nàyđể nhận Giấy chứng nhận ĐKT hoặc Thông báo MST trong thời hạn 03 (ba) ngày làm việc kể từ ngày cơ quan thuế tiếp nhận hồ sơ ghi trên thông báo này. Trường hợp người nộp thuế đăng ký nhận kết quả tại nơi khác, cơ quan thuế sẽ gửi kết quả qua bưu điện đến địa chỉ người nộp thuế đã khai báo trên hồ sơ.</xsl:if>
			<xsl:if test="$ndungTBao/hoSo_KDTruocHan='true' ">Cơ quan thuế sẽ cập nhật thông tin tiếp tục kinh doanh trước thời hạn đã thông báo cho người nộp thuế theo quy định. Trường hợp có mã số thuế nộp thay được tự động khôi phục tạm ngừng kinh doanh trước thời hạn theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế khôi phục tạm ngừng kinh doanh trước thời hạn theo đơn vị chủ quản trong quá trình giải quyết hồ sơ.</xsl:if>	
			<xsl:if test="$ndungTBao/hoSo_TamNgungKD='true' ">Cơ quan thuế sẽ cập nhật thông tin tạm ngừng kinh doanh cho người nộp thuế theo quy định. Trường hợp có đơn vị trực thuộc, mã số thuế nộp thay bị tự động tạm ngừng kinh doanh theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế tạm ngừng kinh doanh theo đơn vị chủ quản trong quá trình giải quyết hồ sơ.</xsl:if>		
				<xsl:if test="$ndungTBao/hoSo_ChamDutHL_MST_DN='true' ">Cơ quan thuế sẽ trả Thông báo người nộp thuế ngừng hoạt động và đang làm thủ tục chấm dứt hiệu lực mã số thuế vào thư điện tử của người nộp thuế trong thời hạn 02 (hai) ngày làm việc kể từ ngày tiếp nhận hồ sơ ghi trên thông báo này. Trường hợp có đơn vị trực thuộc, mã số thuế nộp thay bị tự động đóng theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế bị đóng theo đơn vị chủ quản trong quá trình giải quyết hồ sơ. Sau khi người nộp thuế hoàn thành nghĩa vụ thuế, hóa đơn với cơ quan thuế, người nộp thuế nộp hồ sơ giải thể tại cơ quan đăng ký kinh doanh để giải thể doanh nghiệp.</xsl:if>		
				<xsl:if test="$ndungTBao/hoSo_ChamDutHL_MST_ToChuc='true' ">Cơ quan thuế sẽ trả Thông báo người nộp thuế ngừng hoạt động và đang làm thủ tục chấm dứt hiệu lực mã số thuế vào thư điện tử của người nộp thuế trong thời hạn 02 (hai) ngày làm việc kể từ ngày tiếp nhận hồ sơ ghi trên thông báo này và trả Thông báo người nộp thuế chấm dứt hiệu lực mã số thuế trong thời hạn 03 ngày làm việc kể từ ngày người nộp thuế hoàn thành nghĩa vụ thuế, hóa đơn. Trường hợp có đơn vị trực thuộc, mã số thuế nộp thay bị tự động đóng theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế bị đóng theo đơn vị chủ quản trong quá trình giải quyết hồ sơ.</xsl:if>		
				
	<xsl:if test="$ndungTBao/hoSo_KhoiPhucMST_1b='true' ">Cơ quan thuế sẽ trả Thông báo khôi phục mã số thuế vào thư điện tử của người nộp thuế trong thời hạn 03 (ba) ngày làm việc kể từ ngày người nộp thuế chấp hành đầy đủ hành vi vi phạm hành chính về thuế và hóa đơn, nộp đủ số tiền còn nợ ngân sách. Trường hợp có đơn vị trực thuộc, mã số thuế nộp thay được tự động khôi phục mã số thuế theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế được khôi phục theo đơn vị chủ quản trong quá trình giải quyết hồ sơ.</xsl:if>		
	<xsl:if test="$ndungTBao/hoSo_KhoiPhucMST_1a='true' ">Cơ quan thuế sẽ trả Thông báo khôi phục mã số thuế vào thư điện tử của người nộp thuế trong thời hạn 03 (ba) ngày làm việc kể từ ngày tiếp nhận hồ sơ ghi trên thông báo này. Trường hợp có đơn vị trực thuộc, mã số thuế nộp thay được tự động khôi phục mã số thuế theo đơn vị chủ quản, cơ quan thuế sẽ trả thêm Thông báo về việc mã số thuế được khôi phục theo đơn vị chủ quản trong quá trình giải quyết hồ sơ.</xsl:if>																
		
	</div> 
	<br/>									
					
	
	<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp NNT cần biết thêm thông tin chi tiết, xin vui lòng truy cập theo đường dẫn: <xsl:value-of select="$ndungTBao/duongDan"/> hoặc liên hệ với <xsl:value-of select="TBaoThueDTu/TBaoThue/TTinChung/CQT/tenCQTQuanLy"/> theo địa chỉ: <xsl:value-of select="$ndungTBao/diChiCQT"/> để được hỗ trợ.</div> <br/>
	
<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Cơ quan thuế thông báo để người nộp thuế biết và thực hiện./.</div>		
<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>	
	</xsl:template>		
</xsl:stylesheet>