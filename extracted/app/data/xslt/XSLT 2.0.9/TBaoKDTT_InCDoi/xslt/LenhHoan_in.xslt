<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../include/LenhHoanHeader.xsl"/>
<xsl:include href="../include/TBaoFooter.xsl"/>  
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="tbThue" select="./TBaoThue" />
			<xsl:variable name="ttinChung" select="$tbThue/TTinChung" />
			<xsl:variable name="ndungTBao" select="$tbThue/NDungTBao" />
			<xsl:if test="$ndungTBao/HDR/LOAI_LENH_HOAN ='1'">
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'C1-04/NS'"/>
				<xsl:with-param name="soTBao"   select="$ndungTBao/HDR/SO_LENH_HOAN" />
				<xsl:with-param name="ngayTBao"   select="$ndungTBao/HDR/NGAY_LENH_HOAN" />
				<xsl:with-param name="kieuTBao"   select="''" />
				<xsl:with-param name="motaTBao"   select="'LỆNH HOÀN TRẢ KHOẢN THU NGÂN SÁCH NHÀ NƯỚC'" />
				<xsl:with-param name="motaTBao_1"   select="''" />
				<xsl:with-param name="motaTBao_2"   select="''" />
				<xsl:with-param name="coquanthuecaptren"   select="$ttinChung/CQT/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="''" />
			</xsl:call-template>
			<div class="content" >
			<br/>
			<br/>
				<div style="margin-left:30px;">Căn cứ Quyết định về việc hoàn thuế số: <span><xsl:if test="$ndungTBao/HDR/SO_QD_HOAN !=''"><xsl:value-of select="$ndungTBao/HDR/SO_QD_HOAN" /></xsl:if></span>&#160;  <span>ngày: <xsl:if test="$ndungTBao/HDR/NGAY_QD_HOAN !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_QD_HOAN,'dd/mm/yyyy')" /></xsl:if></span> của cơ quan quản lý thu <span><xsl:if test="$ttinChung/CQT/tenCQT !=''"><xsl:value-of select="$ttinChung/CQT/tenCQT" /></xsl:if></span>. Mã CQ thu: <span><xsl:if test="$ndungTBao/HDR/CQ_QD_HOAN !=''"><xsl:value-of select="$ndungTBao/HDR/CQ_QD_HOAN" /></xsl:if></span></div>
				<div style="margin-left:30px;">Đề nghị KBNN A (Nơi trực tiếp hoàn trả): <span><xsl:if test="$ndungTBao/HDR/TEN_KBNN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN_KBNN" /></xsl:if></span>. Tỉnh/TP: <span><xsl:if test="$ndungTBao/HDR/TINH_KBNN !=''"><xsl:value-of select="$ndungTBao/HDR/TINH_KBNN" /></xsl:if></span></div>
				<div style="margin-left:30px;">Hoàn trả cho: <span><xsl:if test="$ndungTBao/HDR/TEN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN" /></xsl:if></span>. Mã số thuế: <span><xsl:if test="$ndungTBao/HDR/MST !=''"><xsl:value-of select="$ndungTBao/HDR/MST" /></xsl:if></span></div>
				<div style="margin-left:30px;">Địa chỉ: <span><xsl:if test="$ndungTBao/HDR/DIA_CHI !=''"><xsl:value-of select="$ndungTBao/HDR/DIA_CHI" /></xsl:if></span>. Quận/Huyện: <span><xsl:if test="$ndungTBao/HDR/QUAN_HUYEN !=''"><xsl:value-of select="$ndungTBao/HDR/QUAN_HUYEN" /></xsl:if></span>. Tỉnh/TP: <span><xsl:if test="$ndungTBao/HDR/TINH_TP !=''"><xsl:value-of select="$ndungTBao/HDR/TINH_TP" /></xsl:if></span>.</div>
				<div style="margin-left:30px;">Hình thức hoàn trả bằng:  <span>Tiền mặt <xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'">[X]</xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">[ ]</xsl:if></span> <span> Chuyển khoản <xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'">[X]</xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">[ ]</xsl:if></span></div>
				<div style="margin-left:30px;">Chuyển khoản vào tài khoản số: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$ndungTBao/HDR/STK !=''"><xsl:value-of select="$ndungTBao/HDR/STK" /></xsl:if><xsl:if test="$ndungTBao/HDR/STK =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span>. Tại Ngân hàng KBNN (B): <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$ndungTBao/HDR/TEN_NH !=''"><xsl:value-of select="$ndungTBao/HDR/TEN_NH" /></xsl:if><xsl:if test="$ndungTBao/HDR/MA_NH =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span>.</div>
				<div style="margin-left:30px;">(hoặc) trả tiền mặt cho: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/TEN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN" /></xsl:if><xsl:if test="$ndungTBao/HDR/TEN =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Số CMND/HC: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/SO_CMND !=''"><xsl:value-of select="$ndungTBao/HDR/SO_CMND" /></xsl:if><xsl:if test="$ndungTBao/HDR/SO_CMND =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Cấp ngày: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC = '1'"><xsl:if test="$ndungTBao/HDR/NGAY_CAP !=''"><xsl:value-of select="$ndungTBao/HDR/NGAY_CAP" /></xsl:if><xsl:if test="$ndungTBao/HDR/NGAY_CAP =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Nơi cấp: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/NOI_CAP !=''"><xsl:value-of select="$ndungTBao/HDR/NOI_CAP" /></xsl:if><xsl:if test="$ndungTBao/HDR/NOI_CAP =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span></div>
				<div style="margin-left:30px;">Lý do hoàn trả: <span><xsl:if test="$ndungTBao/HDR/LY_DO !=''"><xsl:value-of select="$ndungTBao/HDR/LY_DO" /></xsl:if></span></div>
				<div style="margin-left:30px;">Chi tiết nội dung khoản hoàn trả:</div>
				<div align="center" style="text-align:center;margin-left:30px;">
				<table align="center" class="tkhai_table fz14px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
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
										<xsl:for-each select="$ndungTBao/DTL/ROW">
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
												<td id="td_table" class="align-l">
													<br/>
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
												<xsl:if test="$ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
													<xsl:value-of select="ihtkk:formatNumber($ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" />
												</xsl:if>
											</td>
										</tr>
									</tbody>
				</table>
				</div>
				<br/>
				<div style="margin-left:30px;">Tổng số tiền được hoàn trả ghi bằng chữ: 
				<xsl:if test="$ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" /> đồng
				</xsl:if>
				</div>
				<div align="center">
				<table style="page-break-inside: avoid;width:100%">
				<tr>
				<td style="width:60%;text-align:center;">
				<div style="font-weight:bold;">NGƯỜI LẬP</div>
				<div><xsl:if test="$ndungTBao/HDR/NGUOI_LAP !=''"><xsl:value-of select="$ndungTBao/HDR/NGUOI_LAP" /></xsl:if></div>
				</td>
				<td>
				<div class="align-c"><xsl:if test="$ndungTBao/HDR/NGAY_PHE_DUYET !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_PHE_DUYET,'dmy')"/></xsl:if><xsl:if test="$ndungTBao/HDR/NGAY_PHE_DUYET =''">Ngày....tháng....năm....</xsl:if></div>
				<div class="align-c" style="font-weight:bold;text-transform:uppercase;"><xsl:if test="$ndungTBao/HDR/CHUC_VU !=''"><xsl:value-of select="$ndungTBao/HDR/CHUC_VU" /></xsl:if><xsl:if test="$ndungTBao/HDR/CHUC_VU =''">THỦ TRƯỞNG</xsl:if></div>
				<div class="align-c">(Ký tên, ghi họ tên, đóng dấu)</div>
				<div class="align-c"><xsl:if test="$ndungTBao/HDR/NGUOI_PHE_DUYET !=''"><xsl:value-of select="$ndungTBao/HDR/NGUOI_PHE_DUYET" /></xsl:if></div>
				</td>
				</tr>
				</table>
				</div>			
				<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:60%;text-align:center;">
								<div style="font-weight:bold;">CỤC THUẾ TỈNH <xsl:if test="$ndungTBao/HDR/TINH_TP !=''"><xsl:value-of select="$ndungTBao/HDR/TINH_TP" /></xsl:if></div>
								<div>- Số: <span><xsl:if test="$ndungTBao/HDR/SO_QD_HOAN !=''"><xsl:value-of select="$ndungTBao/HDR/SO_QD_HOAN" /></xsl:if></span>/CĐ-HC <span>Ngày: <xsl:if test="$ndungTBao/HDR/NGAY_QD_HOAN !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_QD_HOAN,'dd/mm/yyyy')" /></xsl:if></span>
									của <cơ quan thuế> sang văn bản giấy.</div>	
							</td>
							<td style="width:60%;text-align:center;">
								<div style="font-weight:bold;">Văn bản chuyển đổi từ văn bản điện tử </div>
								<div>Ngày chuyển đổi: <xsl:if test="$ndungTBao/HDR/NGAY_QD_HOAN !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_QD_HOAN,'dd/mm/yyyy')" /></xsl:if></div>
								<div style="font-weight:bold;">Thông tin người chuyển đổi</div>
								<div style="text-align:center;">(Ký tên, đóng dấu)</div>
								<div><xsl:if test="$ndungTBao/HDR/NGUOI_LAP !=''"><xsl:value-of select="$ndungTBao/HDR/NGUOI_LAP" /></xsl:if></div>	
							</td>				
						</tr>
					</table>				
				</div>				
			</xsl:if>
			<xsl:if test="$ndungTBao/HDR/LOAI_LENH_HOAN ='2'">
			<xsl:call-template name="tbaoHeader">
				<xsl:with-param name="mauTBao"   select="'C1-05/NS'"/>
				<xsl:with-param name="soTBao"   select="$ndungTBao/HDR/SO_LENH_HOAN" />
				<xsl:with-param name="ngayTBao"   select="$ndungTBao/HDR/NGAY_LENH_HOAN" />
				<xsl:with-param name="kieuTBao"   select="''" />
				<xsl:with-param name="motaTBao"   select="'LỆNH HOÀN TRẢ KIÊM BÙ TRỪ THU NSNN'" />
				<xsl:with-param name="motaTBao_1"   select="''" />
				<xsl:with-param name="motaTBao_2"   select="''" />
				<xsl:with-param name="coquanthuecaptren"   select="$ttinChung/CQT/coQuanCapTren" />
				<xsl:with-param name="coquanthue"   select="$ttinChung/CQT/tenCQT" />
				<xsl:with-param name="diaDanh"   select="''" />
			</xsl:call-template>
			<div class="content" >
			<br/>
			<br/>
				<div style="margin-left:30px;" >Căn cứ Quyết định về việc hoàn thuế kiêm bù trừ ngân sách nhà nước số: <span><xsl:if test="$ndungTBao/HDR/SO_QD_HOAN !=''"><xsl:value-of select="$ndungTBao/HDR/SO_QD_HOAN" /></xsl:if></span>&#160;<span>ngày: <xsl:if test="$ndungTBao/HDR/NGAY_QD_HOAN !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_QD_HOAN,'dd/mm/yyyy')" /></xsl:if></span> của cơ quan quản lý thu <span><xsl:if test="$ttinChung/CQT/tenCQT !=''"><xsl:value-of select="$ttinChung/CQT/tenCQT" /></xsl:if></span>. Mã CQ thu: <span><xsl:if test="$ndungTBao/HDR/CQ_QD_HOAN !=''"><xsl:value-of select="$ndungTBao/HDR/CQ_QD_HOAN" /></xsl:if></span></div>
				<div style="margin-left:30px;">Đề nghị KBNN A: <span><xsl:if test="$ndungTBao/HDR/TEN_KBNN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN_KBNN" /></xsl:if></span>. Tỉnh, TP: <span><xsl:if test="$ndungTBao/HDR/TINH_KBNN !=''"><xsl:value-of select="$ndungTBao/HDR/TINH_KBNN" /></xsl:if></span></div>
				<div style="margin-left:30px;"><span style="font-weight:bold">1) Hoàn trả cho: </span> <span><xsl:if test="$ndungTBao/HDR/TEN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN" /></xsl:if></span>. Mã số thuế: <span><xsl:if test="$ndungTBao/HDR/MST !=''"><xsl:value-of select="$ndungTBao/HDR/MST" /></xsl:if></span></div>
				<div style="margin-left:30px;">Địa chỉ: <span><xsl:if test="$ndungTBao/HDR/DIA_CHI !=''"><xsl:value-of select="$ndungTBao/HDR/DIA_CHI" /></xsl:if></span>. Quận/Huyện: <span><xsl:if test="$ndungTBao/HDR/QUAN_HUYEN !=''"><xsl:value-of select="$ndungTBao/HDR/QUAN_HUYEN" /></xsl:if></span>. Tỉnh/TP: <span><xsl:if test="$ndungTBao/HDR/TINH_TP !=''"><xsl:value-of select="$ndungTBao/HDR/TINH_TP" /></xsl:if></span></div>
				<div style="margin-left:30px;">Lý do hoàn trả: <span><xsl:if test="$ndungTBao/HDR/LY_DO !=''"><xsl:value-of select="$ndungTBao/HDR/LY_DO" /></xsl:if></span></div>
				<div style="margin-left:30px;">Chi tiết nội dung khoản hoàn trả:</div>
				<div align="center" style="text-align:center;margin-left:30px;">
				<table align="center" class="tkhai_table fz14px" cellpadding="0" cellspacing="0"  border ="1px" width="100%">
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
										
										<xsl:for-each select="$ndungTBao/DTL/ROW[LOAI_TT ='1' or LOAI_TT='4']">
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
												<xsl:if test="$ndungTBao/HDR/TONG_TIEN_DUOC_HOAN !=''">
													<xsl:value-of select="ihtkk:formatNumber($ndungTBao/HDR/TONG_TIEN_DUOC_HOAN)" />
												</xsl:if>
											</td>
										</tr>
										
									</tbody>
				</table>
				</div>
				<br/>
				<div style="margin-left:30px;">Tổng số tiền được hoàn trả ghi bằng chữ: 
				<xsl:if test="$ndungTBao/HDR/TONG_TIEN_DUOC_HOAN !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($ndungTBao/HDR/TONG_TIEN_DUOC_HOAN)" /> đồng
				</xsl:if>
				</div>
				<br/>
				<div style="margin-left:30px;font-weight:bold;">2) Khấu trừ khoản hoàn trả để thu NSNN:</div>
				<div style="margin-left:30px;">Chi tiết nội dung khoản thu:</div>
				<div align="center" style="text-align:center;width:100%;margin-left:30px;">
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
										<xsl:for-each select="$ndungTBao/DTL/ROW[LOAI_TT ='2']">

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
												<xsl:if test="$ndungTBao/HDR/TONG_TIEN_KHAU_TRU !=''">
													<xsl:value-of select="ihtkk:formatNumber($ndungTBao/HDR/TONG_TIEN_KHAU_TRU)" />
												</xsl:if>
											</td>
										</tr>
									</tbody>
				</table>
				
				</div>
				<div style="margin-left:30px;">Tổng số tiền nộp Ngân sách ghi bằng chữ: 
				<xsl:if test="$ndungTBao/HDR/TONG_TIEN_KHAU_TRU !=''">
						<xsl:value-of select="ihtkk:DocTienBangChu($ndungTBao/HDR/TONG_TIEN_KHAU_TRU)" /> đồng
				</xsl:if>
				</div>
				<div style="margin-left:30px;"><span style="font-weight:bold;">3. Hoàn trả số tiền còn lại sau khi đã bù trừ khoản phải nộp NSNN: </span>Bằng số: 
				<xsl:if test="$ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:formatNumber($ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" />
				</xsl:if>
				</div>
				<div style="margin-left:30px;">Bằng chữ: 
				<xsl:if test="$ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI !=''">
					<xsl:value-of select="ihtkk:DocTienBangChu($ndungTBao/HDR/TONG_TIEN_HOAN_CONLAI)" /> đồng
				</xsl:if>
				</div>
				<div style="margin-left:30px;">Hình thức hoàn trả bằng:  <span>Tiền mặt <xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'">[X]</xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">[ ]</xsl:if></span> <span> Chuyển khoản <xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'">[X]</xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">[ ]</xsl:if></span></div>
				<div style="margin-left:30px;">Chuyển tiền vào tài khoản số: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$ndungTBao/HDR/STK !=''"><xsl:value-of select="$ndungTBao/HDR/STK" /></xsl:if><xsl:if test="$ndungTBao/HDR/STK =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span>. Tại Ngân hàng KBNN (B): <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='2'"><xsl:if test="$ndungTBao/HDR/TEN_NH !=''"><xsl:value-of select="$ndungTBao/HDR/TEN_NH" /></xsl:if><xsl:if test="$ndungTBao/HDR/TEN_NH =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='2'">......</xsl:if></span></div>
				<div style="margin-left:30px;">(hoặc) trả tiền mặt cho: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/TEN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN" /></xsl:if><xsl:if test="$ndungTBao/HDR/TEN =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Số CMND/HC: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/SO_CMND !=''"><xsl:value-of select="$ndungTBao/HDR/SO_CMND" /></xsl:if><xsl:if test="$ndungTBao/HDR/SO_CMND =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Cấp ngày: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC ='1'"><xsl:if test="$ndungTBao/HDR/NGAY_CAP !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_CAP,'dd/mm/yyyy')" /></xsl:if><xsl:if test="$ndungTBao/HDR/NGAY_CAP =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>. Nơi cấp: <span><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'"><xsl:if test="$ndungTBao/HDR/NOI_CAP !=''"><xsl:value-of select="$ndungTBao/HDR/NOI_CAP" /></xsl:if><xsl:if test="$ndungTBao/HDR/NOI_CAP =''">......</xsl:if></xsl:if><xsl:if test="$ndungTBao/HDR/HINH_THUC !='1'">......</xsl:if></span>.</div>
				<div align="center">
				<table style="page-break-inside: avoid;width:100%">
				<tr>
				<td style="width:60%;text-align:center;">
				<div style="font-weight:bold;">NGƯỜI NHẬN TIỀN</div>
				<div class="align-c">(Ký, ghi họ tên)</div>
				<div><xsl:if test="$ndungTBao/HDR/TEN !=''"><xsl:value-of select="$ndungTBao/HDR/TEN" /></xsl:if></div>
				</td>
				<td>
				<table>
				<tr>
				<td class="align-c" colspan="2" style="font-weight:bold;"><xsl:if test="$ttinChung/CQT/tenCQT!=''"><xsl:value-of select="$ttinChung/CQT/tenCQT" /></xsl:if></td>
				</tr>
				<tr>
				<td class="align-c" colspan="2"><xsl:if test="$ndungTBao/HDR/NGAY_PHE_DUYET !=''"><xsl:value-of select="ihtkk:stringDatetime($ndungTBao/HDR/NGAY_PHE_DUYET,'dmy')"/></xsl:if><xsl:if test="$ndungTBao/HDR/NGAY_PHE_DUYET =''">Ngày....tháng....năm....</xsl:if></td>
				</tr>
				<tr>
				<td class="align-c"><div style="font-weight:bold;">Người lập</div>
				<div><xsl:if test="$ndungTBao/HDR/NGUOI_LAP !=''"><xsl:value-of select="$ndungTBao/HDR/NGUOI_LAP" /></xsl:if></div>
				</td>
				<td class="align-c"><div class="align-c" style="font-weight:bold;"><xsl:if test="$ndungTBao/HDR/CHUC_VU !=''"><xsl:value-of select="$ndungTBao/HDR/CHUC_VU" /></xsl:if><xsl:if test="$ndungTBao/HDR/CHUC_VU =''">Thủ trưởng</xsl:if></div>
				<div class="align-c" style="top:0px;"><xsl:if test="$ndungTBao/HDR/NGUOI_PHE_DUYET !=''"><xsl:value-of select="$ndungTBao/HDR/NGUOI_PHE_DUYET" /></xsl:if><xsl:if test="$ndungTBao/HDR/NGUOI_PHE_DUYET =''"><br/></xsl:if></div>
				</td>
				</tr>
				</table>
				</td>
				</tr>
				</table>
				</div>
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