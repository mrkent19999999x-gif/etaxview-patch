<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/LenhHoanHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>  
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="TTinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="$tbThue/NDungTBao" />
			<xsl:if test="$NDungTBao/HDR/LOAI_LENH_HOAN ='1'">
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'C1-04/NS'"/>
				<xsl:with-param name="soTBao"   select="$NDungTBao/HDR/SO_LENH_HOAN" />
				<xsl:with-param name="ngayTBao"   select="$NDungTBao/HDR/NGAY_LENH_HOAN" />
				<xsl:with-param name="kieuTBao"   select="''" />
				<xsl:with-param name="motaTBao"   select="'LỆNH HOÀN TRẢ KHOẢN THU NGÂN SÁCH NHÀ NƯỚC'" />
				<xsl:with-param name="motaTBao_1"   select="''" />
				<xsl:with-param name="motaTBao_2"   select="''" />
				<xsl:with-param name="coquanthuecaptren"   select="$TTinChung/CQT/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$TTinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="''" />
			</xsl:call-template>
			
			<div class="content"  >
			<br/>
	
				Căn cứ Quyết định về việc hoàn thuế số: <span><xsl:if test="$NDungTBao/HDR/SO_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/SO_QD_HOAN" /></xsl:if></span>&#160;  <span>ngày: <xsl:if test="$NDungTBao/HDR/NGAY_QD_HOAN !=''"><xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_QD_HOAN,'dd/mm/yyyy')" /></xsl:if></span> của cơ quan quản lý thu <span><xsl:if test="$NDungTBao/HDR/TEN_CQ_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_CQ_QD_HOAN" /></xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Mã CQ thu: <span><xsl:if test="$NDungTBao/HDR/CQ_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/CQ_QD_HOAN" /></xsl:if></span>
				<br/>
				Đề nghị KBNN A (Nơi trực tiếp hoàn trả): <span><xsl:if test="$NDungTBao/HDR/TEN_KBNN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_KBNN" /></xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Tỉnh/TP: <span><xsl:if test="$NDungTBao/HDR/TINH_KBNN !=''"><xsl:value-of select="$NDungTBao/HDR/TINH_KBNN" /></xsl:if></span>
				<br/>
				Hoàn trả cho: <span><xsl:if test="$NDungTBao/HDR/TEN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN" /></xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Mã số thuế: <span><xsl:if test="$NDungTBao/HDR/MST !=''"><xsl:value-of select="$NDungTBao/HDR/MST" /></xsl:if></span><br/>
				Địa chỉ: <span><xsl:if test="$NDungTBao/HDR/DIA_CHI !=''"><xsl:value-of select="$NDungTBao/HDR/DIA_CHI" /></xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Quận/Huyện: <span><xsl:if test="$NDungTBao/HDR/QUAN_HUYEN !=''"><xsl:value-of select="$NDungTBao/HDR/QUAN_HUYEN" /></xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Tỉnh/TP: <span><xsl:if test="$NDungTBao/HDR/TINH_TP !=''"><xsl:value-of select="$NDungTBao/HDR/TINH_TP" /></xsl:if></span><br/>
				Hình thức hoàn trả bằng:  <span>&#160;&#160;&#160;&#160;&#160;&#160;Tiền mặt <xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'">[X]</xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">[ ]</xsl:if></span> <span> &#160;&#160;&#160;&#160;&#160;&#160;Chuyển khoản <xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'">[X]</xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">[ ]</xsl:if></span><br/>
				Chuyển khoản vào tài khoản số: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$NDungTBao/HDR/STK !=''"><xsl:value-of select="$NDungTBao/HDR/STK" /></xsl:if><xsl:if test="$NDungTBao/HDR/STK =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span>. Tại Ngân hàng KBNN (B): <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$NDungTBao/HDR/TEN_NH !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_NH" /></xsl:if><xsl:if test="$NDungTBao/HDR/MA_NH =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span><br/>
				(hoặc) trả tiền mặt cho: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN" /></xsl:if><xsl:if test="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Số CMND/HC: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/SO_CMND !=''"><xsl:value-of select="$NDungTBao/HDR/SO_CMND" /></xsl:if><xsl:if test="$NDungTBao/HDR/SO_CMND =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160;Cấp ngày: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC = '1'"><xsl:if test="$NDungTBao/HDR/NGAY_CAP !=''"><xsl:value-of select="$NDungTBao/HDR/NGAY_CAP" /></xsl:if><xsl:if test="$NDungTBao/HDR/NGAY_CAP =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Nơi cấp: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/NOI_CAP !=''"><xsl:value-of select="$NDungTBao/HDR/NOI_CAP" /></xsl:if><xsl:if test="$NDungTBao/HDR/NOI_CAP =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span><br/>
				Lý do hoàn trả: <span><xsl:if test="$NDungTBao/HDR/LY_DO !=''"><xsl:value-of select="$NDungTBao/HDR/LY_DO" /></xsl:if></span><br/>
			Chi tiết nội dung khoản hoàn trả:<br/><br/>
			
				<table align="center" class="tkhai_table fz14px" margin-left="10px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
				<tbody >
										<tr class="align-c" style="height:50px;">
											<td id="td_table" style="width:7%;">
												<b>STT</b>
											</td>
											<td id="td_table" style="width:20%;">
												<b>Nội dung khoản nộp NSNN/ Chi hoàn thuế GTGT</b>
											</td>
											<td id="td_table" style=" width:13%;">
												<b>Mã NDKT</b>
											</td>
											<td id="td_table" style="width:10%;">
												<b>Mã chương</b>
											</td>
											<td id="td_table" style="width:13%;">
												<b>KBNN nơi thu NSNN</b>
											</td>
											<td id="td_table" style="width:7%;">
												<b>Năm NS</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Số tiền đã nộp</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Số tiền được quyết định hoàn trả</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/DTL/ROW">
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="position()" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NOI_DUNG !=''">
														<xsl:value-of select="NOI_DUNG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NDKT !=''">
														<xsl:value-of select="NDKT" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="CHUONG !=''">
														<xsl:value-of select="CHUONG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-r">
													<xsl:if test="KBNN_THU !=''">
														<xsl:value-of select="KBNN_THU" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NAM_NS !=''">
														<xsl:value-of select="NAM_NS" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-r">
													<xsl:if test="SO_TIEN_DA_NOP !=''">
														<xsl:value-of select="SO_TIEN_DA_NOP" />
													</xsl:if>
												</td>
												
												<td id="td_table" class="align-c" >
													<xsl:if test="SO_TIEN !=''">
														<xsl:value-of select="ihtkk:formatNumber(SO_TIEN)" />
													</xsl:if>
												</td>
											</tr>
										</xsl:for-each>
										<tr style="width:80%;padding-right:30px;">
											<td id="td_table" class="align-r" colspan="7">
												<b>Tổng cộng</b>
											</td>
											<td class="align-c" style="border-width: 0px" >
												<xsl:if test="$NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
													<xsl:value-of select="ihtkk:formatNumber($NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" />
												</xsl:if>
											</td>
										</tr>
									</tbody>
				</table>
				<br/>
				<i>
				Tổng số tiền được hoàn trả ghi bằng chữ: 
				<xsl:if test="$NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" /> đồng
				</xsl:if>
				</i>
				<div align="center">
				<table style="page-break-inside: avoid;width:100%">
				<tr style= "border: none; vertical-align: top;">
				<td style="width:60%;text-align:center;">
				<br/><div style="font-weight:bold;">NGƯỜI LẬP</div>
				<br/><br/><br/><br/>
				<div><xsl:if test="$NDungTBao/HDR/NGUOI_LAP !=''"><b><xsl:value-of select="$NDungTBao/HDR/NGUOI_LAP" /></b></xsl:if></div>
				</td>
				<td style="width:60%;text-align:center;">
				<xsl:if test="$NDungTBao/HDR/NGAY_PHE_DUYET !=''"><xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_PHE_DUYET,'dmyhhmiss')"/></xsl:if><xsl:if test="$NDungTBao/HDR/NGAY_PHE_DUYET =''">Ngày....tháng....năm....</xsl:if>
				<br/>					
				<xsl:if test="$TTinChung/TTinKy/hThucTL !=''">
				<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/hThucTL" />TL.<xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTTL" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/hThucKT !=''">
				<span style="font-weight:bold;text-transform:uppercase;">KT. <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKT" /></span><br/>
				</xsl:if>
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
				<span style="font-weight:bold;text-transform:uppercase;">
				<xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
				</xsl:if> 
				<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy =''">
				<span style="font-size:13pt;font-weight:bold;text-transform:uppercase;">THỦ TRƯỞNG</span>
				<br/>
				
				(Ký, ghi rõ họ tên và đóng dấu)
				</xsl:if>
				
				<br/>
				<br/>
				<br/>
				<br/>
				<b><xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" /></b>
				</td>
				</tr>
				</table>
				</div>
			</div>
			</xsl:if>
			<xsl:if test="$NDungTBao/HDR/LOAI_LENH_HOAN ='2'">
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'C1-05/NS'"/>
				<xsl:with-param name="soTBao"   select="$NDungTBao/HDR/SO_LENH_HOAN" />
				<xsl:with-param name="ngayTBao"   select="$NDungTBao/HDR/NGAY_LENH_HOAN" />
				<xsl:with-param name="kieuTBao"   select="''" />
				<xsl:with-param name="motaTBao"   select="'LỆNH HOÀN TRẢ KIÊM BÙ TRỪ THU NSNN'" />
				<xsl:with-param name="motaTBao_1"   select="''" />
				<xsl:with-param name="motaTBao_2"   select="''" />
				<xsl:with-param name="coquanthuecaptren"   select="$TTinChung/CQT/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$TTinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="''" />
			</xsl:call-template>
			<div class="content" >
			<br/>
			
				Căn cứ Quyết định về việc hoàn thuế kiêm bù trừ ngân sách nhà nước số <span><xsl:if test="$NDungTBao/HDR/SO_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/SO_QD_HOAN" /></xsl:if></span>&#160;
				ngày <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_QD_HOAN,'dd')"/> 
				tháng <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_QD_HOAN,'mm')"/>
				năm <xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_QD_HOAN,'yyyy')"/>
				của cơ quan quản lý thu <span><xsl:if test="$NDungTBao/HDR/TEN_CQ_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_CQ_QD_HOAN" /></xsl:if></span>. &#160;&#160;&#160;&#160;Mã CQ thu: <span><xsl:if test="$NDungTBao/HDR/CQ_QD_HOAN !=''"><xsl:value-of select="$NDungTBao/HDR/CQ_QD_HOAN" /></xsl:if></span>
				<br/>
				Đề nghị KBNN A: <span><xsl:if test="$NDungTBao/HDR/TEN_KBNN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_KBNN" /></xsl:if></span>. Tỉnh, TP: <span><xsl:if test="$NDungTBao/TINH_KBNN !=''"><xsl:value-of select="$NDungTBao/TINH_KBNN" /></xsl:if></span><br/>
				<span style="font-weight:bold">1) Hoàn trả cho: </span> <span><xsl:if test="$NDungTBao/HDR/TEN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN" /></xsl:if></span>. &#160;&#160;&#160;&#160;&#160;&#160;Mã số thuế: <span><xsl:if test="$NDungTBao/HDR/MST !=''"><xsl:value-of select="$NDungTBao/HDR/MST" /></xsl:if></span><br/>
				Địa chỉ: <span><xsl:if test="$NDungTBao/HDR/DIA_CHI !=''"><xsl:value-of select="$NDungTBao/HDR/DIA_CHI" /></xsl:if></span>.&#160;&#160; Quận/Huyện: <span><xsl:if test="$NDungTBao/HDR/QUAN_HUYEN !=''"><xsl:value-of select="$NDungTBao/HDR/QUAN_HUYEN" /></xsl:if></span>.&#160;&#160; Tỉnh/TP: <span><xsl:if test="$NDungTBao/HDR/TINH_TP !=''"><xsl:value-of select="$NDungTBao/HDR/TINH_TP" /></xsl:if></span><br/>
				Lý do hoàn trả: <span><xsl:if test="$NDungTBao/HDR/LY_DO !=''"><xsl:value-of select="$NDungTBao/HDR/LY_DO" /></xsl:if></span>
				Chi tiết nội dung khoản hoàn trả:<br/><br/>
				
				<table align="center" class="tkhai_table fz14px" margin-left="10px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
				<tbody >
										<tr class="align-c" style="height:50px;">
											<td id="td_table" style="width:7%;">
												<b>STT</b>
											</td>
											<td id="td_table" style="width:20%;">
												<b>Nội dung khoản nộp NSNN/ Chi hoàn thuế GTGT</b>
											</td>
											<td id="td_table" style=" width:13%;">
												<b>Mã NDKT</b>
											</td>
											<td id="td_table" style="width:10%;">
												<b>Mã chương</b>
											</td>
											<td id="td_table" style="width:13%;">
												<b>KBNN nơi thu NSNN</b>
											</td>
											<td id="td_table" style="width:7%;">
												<b>Năm NS</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Số tiền đã nộp</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Số tiền được quyết định hoàn</b>
											</td>
										</tr>
										
										<xsl:for-each select="$NDungTBao/DTL/ROW[LOAI_TT ='1' or LOAI_TT='4']">
										<xsl:variable name="pos1" select="position()"/>
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="$pos1" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NOI_DUNG !=''">
														<xsl:value-of select="NOI_DUNG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NDKT !=''">
														<xsl:value-of select="NDKT" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="CHUONG !=''">
														<xsl:value-of select="CHUONG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-r">
													<xsl:if test="KBNN_THU !=''">
														<xsl:value-of select="KBNN_THU" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NAM_NS !=''">
														<xsl:value-of select="NAM_NS" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="SO_TIEN_DA_NOP !=''">
														<xsl:value-of select="SO_TIEN_DA_NOP" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-c" >
													<xsl:if test="SO_TIEN !=''">
														<xsl:value-of select="ihtkk:formatNumber(SO_TIEN)" />
													</xsl:if>
												</td>
											</tr>
										</xsl:for-each>
										
										<tr>
											<td id="td_table" class="align-r" colspan="7">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-c" style="width:100px;">
												<xsl:if test="$NDungTBao/HDR/TONG_TIEN_DUOC_HOAN !=''">
													<xsl:value-of select="ihtkk:formatNumber($NDungTBao/HDR/TONG_TIEN_DUOC_HOAN)" />
												</xsl:if>
											</td>
										</tr>
										
									</tbody>
				</table>
				
				<br/>
				Tổng số tiền được hoàn trả ghi bằng chữ: 
				<xsl:if test="$NDungTBao/HDR/TONG_TIEN_DUOC_HOAN !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/HDR/TONG_TIEN_DUOC_HOAN)" /> đồng
				</xsl:if>
				
				<br/>
				2) Khấu trừ khoản hoàn trả để thu NSNN:<br/>
				
				Chi tiết nội dung khoản thu:<br/>
				
				<table align="center" class="tkhai_table fz14px"  cellpadding="0" cellspacing="0"  border ="1px" width="100%">
				<tbody >
										<tr class="align-c" style="height:50px;">
											<td id="td_table" style="width:7%;">
												<b>STT</b>
											</td>
											<td id="td_table" style="width:20%;">
												<b>Nội dung khoản thu NSNN</b>
											</td>
											<td id="td_table" style=" width:13%;">
												<b>Mã số thuế</b>
											</td>
											<td id="td_table" style="width:10%;">
												<b>Số Tờ khai/Quyết định/Thông báo</b>
											</td>
											<td id="td_table" style="width:13%;">
												<b>Kỳ thuế/Ngày Tờ khai/Quyết định/Thông báo</b>
											</td>
											<td id="td_table" style="width:7%;">
												<b>Mã TKKT</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Mã NDKT</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Mã CQ thu</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>Mã chương</b>
											</td>
											<td id="td_table" style="width:15%;">
												<b>KBNN nơi thu NSNN</b>
											</td>
											<td id="td_table" style="width:50px;">
												<b>Số tiền thu NSNN</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/DTL/ROW[LOAI_TT ='2']">

										<xsl:variable name="pos2" select="position()"/>
											<tr>
												<td id="td_table" class="align-c">
													<countNo>
														<xsl:value-of select="$pos2" />
													</countNo>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NOI_DUNG !=''">
														<xsl:value-of select="NOI_DUNG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="TIN !=''">
														<xsl:value-of select="TIN" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="SO_TB_TK_QD !=''">
														<xsl:value-of select="SO_TB_TK_QD" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-r">
													<xsl:if test="NGAY_KYTHUE !=''">
														<xsl:value-of select="NGAY_KYTHUE" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="MA_TK !=''">
														<xsl:value-of select="MA_TK" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="NDKT !=''">
														<xsl:value-of select="NDKT" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="MA_CQT !=''">
														<xsl:value-of select="MA_CQT" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="CHUONG !=''">
														<xsl:value-of select="CHUONG" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="KBNN_THU !=''">
														<xsl:value-of select="KBNN_THU" />
													</xsl:if>
												</td>
												<td id="td_table" class="align-l">
													<xsl:if test="SO_TIEN !=''">
														<xsl:value-of select="ihtkk:formatNumber(SO_TIEN)" />
													</xsl:if>
												</td>
											</tr>

										</xsl:for-each>
										<tr>
											<td id="td_table" class="align-r" colspan="10">
												<b>Tổng cộng</b>
											</td>
											<td id="td_table" class="align-r" width="50px" style="width:50px;">
												<xsl:if test="$NDungTBao/HDR/TONG_TIEN_KHAU_TRU !=''">
													<xsl:value-of select="ihtkk:formatNumber($NDungTBao/HDR/TONG_TIEN_KHAU_TRU)" />
												</xsl:if>
											</td>
										</tr>
									</tbody>
				</table>
				
				<BR/>
				Tổng số tiền nộp Ngân sách ghi bằng chữ: 
				<xsl:if test="$NDungTBao/HDR/TONG_TIEN_KHAU_TRU !=''">
						<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/HDR/TONG_TIEN_KHAU_TRU)" /> đồng
				</xsl:if>
			<br/>
				<span style="font-weight:bold;">3. Hoàn trả số tiền còn lại sau khi đã bù trừ khoản phải nộp NSNN: </span>Bằng số: 
				<xsl:if test="$NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:formatNumber($NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" />
				</xsl:if>
				<br/>
				<i>Bằng chữ: 
				<xsl:if test="$NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($NDungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" /> đồng
				</xsl:if>
			</i><br/>
				Hình thức hoàn trả bằng:  <span>&#160;&#160;&#160;&#160;&#160;&#160;Tiền mặt <xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'">[X]</xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">[ ]</xsl:if></span> <span> &#160;&#160;&#160;&#160;&#160;&#160;Chuyển khoản <xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'">[X]</xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">[ ]</xsl:if></span>
				<br/>Chuyển tiền vào tài khoản số: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$NDungTBao/HDR/STK !=''"><xsl:value-of select="$NDungTBao/HDR/STK" /></xsl:if><xsl:if test="$NDungTBao/HDR/STK =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span>. Tại Ngân hàng KBNN (B): <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$NDungTBao/HDR/TEN_NH !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_NH" /></xsl:if><xsl:if test="$NDungTBao/HDR/TEN_NH =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span><br/>
				(hoặc) trả tiền mặt cho: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN" /></xsl:if><xsl:if test="$NDungTBao/HDR/TEN_NGUOI_NHAN_TIEN =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Số CMND/HC: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/SO_CMND !=''"><xsl:value-of select="$NDungTBao/HDR/SO_CMND" /></xsl:if><xsl:if test="$NDungTBao/HDR/SO_CMND =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Cấp ngày: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/NGAY_CAP !=''"><xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_CAP,'dd/mm/yyyy')" /></xsl:if><xsl:if test="$NDungTBao/HDR/NGAY_CAP =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>&#160;&#160;&#160;&#160;&#160;&#160; Nơi cấp: <span><xsl:if test="$NDungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$NDungTBao/HDR/NOI_CAP !=''"><xsl:value-of select="$NDungTBao/HDR/NOI_CAP" /></xsl:if><xsl:if test="$NDungTBao/HDR/NOI_CAP =''">......</xsl:if></xsl:if><xsl:if test="$NDungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>.
				<br/>
			<BR/>
					<table style="page-break-inside: avoid;width:100%">
						<tr style="vertical-align: top;">
							<td style="width:45%;text-align:center;">
								<span style="font-weight:bold;">NGƯỜI NHẬN TIỀN</span><br/>
								(Ký, ghi rõ họ tên)<br/><br/><br/><br/>
								<div><b><xsl:if test="$NDungTBao/HDR/TEN !=''"><xsl:value-of select="$NDungTBao/HDR/TEN" /></xsl:if></b></div>
							</td>
							<td>
								<table>
									<tr>
										<td class="align-c" colspan="2" style="font-weight:bold;"><xsl:if test="$TTinChung/CQT/tenCQT!=''"><xsl:value-of select="$TTinChung/CQT/tenCQT" /></xsl:if></td>
									</tr>
									<tr>
										<td class="align-c" colspan="2"><xsl:if test="$NDungTBao/HDR/NGAY_PHE_DUYET !=''"><xsl:value-of select="ihtkk:stringDatetime($NDungTBao/HDR/NGAY_PHE_DUYET,'dmyhhmiss')"/></xsl:if><xsl:if test="$NDungTBao/HDR/NGAY_PHE_DUYET =''">Ngày....tháng....năm....</xsl:if>
										</td>
									</tr>
									<tr style="vertical-align: top; ">
										<td  style="width:60%;text-align:center; ">
										<div style="font-size:13pt;font-weight:bold;text-transform:uppercase; margin-top: 3mm;">Người lập</div>
											<br/>
											<br/>
											<br/>
											<div style=" margin-top: 2mm;"><b><xsl:if test="$NDungTBao/HDR/NGUOI_LAP !=''"><xsl:value-of select="$NDungTBao/HDR/NGUOI_LAP" /></xsl:if></b></div>
										</td>
										<td style="width:60%;text-align:center;">
 										<br/>
											<xsl:if test="$TTinChung/TTinKy/hThucTL !=''">
											<span style="font-weight:bold;text-transform:uppercase;"><xsl:value-of select="$TTinChung/TTinKy/hThucTL" />TL.<xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTTL" /></span><br/>
											</xsl:if>
											<xsl:if test="$TTinChung/TTinKy/hThucKT !=''">
											<span style="font-weight:bold;text-transform:uppercase;">KT. <xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKT" /></span><br/>
											</xsl:if>
											<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy !=''">
											<span style="font-weight:bold;text-transform:uppercase;">
											<xsl:value-of select="$TTinChung/TTinKy/chucDanhCBTKy" /></span><br/>
											</xsl:if> 
											<xsl:if test="$TTinChung/TTinKy/chucDanhCBTKy =''">
											<span style="font-size:13pt;font-weight:bold;text-transform:uppercase;">THỦ TRƯỞNG</span>
											<br/>											
											(Ký, ghi rõ họ tên và đóng dấu)
											</xsl:if>
										
										<br/><br/><br/><br/>
										<b><xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" /></b>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				
			</div>
			</xsl:if>
			
			<br/>
		<br/>
		<br/>
		<br/>
		</xsl:for-each>
		
		
		<table style="page-break-inside: avoid;width:100%" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
		
	</xsl:template>
</xsl:stylesheet>