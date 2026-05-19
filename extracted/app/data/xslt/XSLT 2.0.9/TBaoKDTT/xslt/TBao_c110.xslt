<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<xsl:variable name="NDungGDich" select="TBaoThue/GIAODICH_XN" />
			<html>
				<body>
				<xsl:if test="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/KQUA_XN ='02'">
					<div class="content_kdt" >
						<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
								<br></br>
									<div class="box_mau_so fz13px" >
										Mẫu số C1-10b/NS-TĐT
										<br />
										<i>(Ban hành kèm theo Thông tư số  
										<br />
										…/2019/TT-BTC của Bộ Tài Chính 
										<br />
										</i>
									</div>
								</td>
							</tr>
						</table>
						<xsl:for-each select="$NDungTBao">
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr class="align-c">
											<td class="fz17px">
												
											</td>
											<td class="fz17px">
												
											</td>
										</tr>
										<tr class="align-c">
											<td class="fz17px">
												<b><xsl:value-of select="ihtkk:getTenUpperCT($TTinChung/CQT/maCQT)" />		
												</b>	
											</td>
											<td class="fz18_5px">
												
											</td>
										</tr>
										<tr>
											<td class="align-c">
												<hr class="table_hr1"/>
											</td>
											<td class="align-c">
												<hr class="table_hr2"/>
											</td>
										</tr>
										<tr class="align-c fz17px" >
											<td>
												Số:
												<span>
													<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
														<span>
															<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
														</span>
													</xsl:if>
												</span>
											</td>
											<td >	
												<i>
													<xsl:value-of select="ihtkk:getTenNganCT($TTinChung/CQT/maCQT)" />,												
													ngày
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,9,2)" />
													tháng
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,6,2)" />
													năm
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,4)" />
												</i>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="line1_5 align-c fz18_5px">
									<b >GIẤY XÁC NHẬN SỐ THUẾ ĐÃ NỘP NSNN</b>
								</p>
								<p class=" mtatentkhai fz18_5px">
                                    Kính gửi: <xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />. MST: <xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" />
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Giấy đề nghị xác nhận số thuế đã nộp ngân sách nhà nước số <xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/SO_XN" /> ngày <xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/NOP_TU_NGAY" /> của người nộp thuế gửi cơ quan thuế;
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ số liệu về số thuế đã nộp NSNN của người nộp thuế được theo dõi trên ứng dụng của cơ quan thuế, cơ quan thuế xác nhận số tiền thuế đã nộp vào NSNN từ ngày <xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/NOP_TU_NGAY" /> đến ngày <xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/NOP_DEN_NGAY" /> của <xsl:value-of select="$TTinChung/NNhanTBaoThue/tenNNhan" />, mã số thuế <xsl:value-of select="$TTinChung/NNhanTBaoThue/maNNhan" /> và các đơn vị phụ thuộc (nếu có), cụ thể như sau:
								</p>
								<xsl:if test="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/LOAI_XN ='01'">
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td rowspan="2" id="td_table" width="10%">
												<b>Số TT</b>
											</td>
											<td  rowspan="2" id="td_table"  width="20%">
												<b>Mã số thuế</b>
											</td>
											<td rowspan="2" id="td_table"  width="30%">
												<b>Tên NNT</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Loại thuế</b>
											</td>
											<td colspan="2" id="td_table"  width="20%">
												<b>Nội dung nộp nộp NSNN</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Số tiền</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Loại tiền</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Cơ quan quản lý thu</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Ghi chú</b>
											</td>
										</tr>
										<tr class="align-c" style="height:50px;">
											<td  id="td_table" width="10%">
												<b>Chương</b>
											</td>
											<td  id="td_table"  width="20%">
												<b>Tiểu mục</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_LOAI_THUE/ROW_CTIET">
											<tr>
												<td class="align-c" id="td_table" >
													<span id="stt">
														<countNo>
															<xsl:value-of select="position()" />
														</countNo>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="MST_NNT !=''">
															<xsl:value-of select="MST_NNT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_NNT !=''">
															<xsl:value-of select="TEN_NNT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="MA_LOAI_THUE !=''">
															<xsl:value-of select="MA_LOAI_THUE" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_CHUONG !=''">
															<xsl:value-of select="MA_CHUONG" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_TMUC !=''">
															<xsl:value-of select="TEN_TMUC" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="SO_TIEN !=''">
															<xsl:value-of select="SO_TIEN" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="MA_NGUYENTE !=''">
															<xsl:value-of select="MA_NGUYENTE" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_CQT !=''">
															<xsl:value-of select="TEN_CQT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="GHI_CHU !=''">
															<xsl:value-of select="GHI_CHU" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
										<tr class="align-c" style="height:50px;">
											<td colspan="6" rowspan="1" id="td_table" width="10%">
												<b>TỔNG: (TỔNG PHỤ)</b>
											</td>
											<td  rowspan="2" id="td_table"  width="20%">
												
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												
											</td>
											
											<td colspan="3"  rowspan="2" id="td_table"  width="30%">
												
											</td>
										</tr>
										<tr class="align-c" style="height:50px;">
											<td colspan="2" id="td_table" width="10%">
												<b>MST</b>
											</td>
											<td colspan="1"  id="td_table"  width="20%">
												<b>LOẠI THUẾ</b>
											</td>
											<td colspan="1" id="td_table"  width="30%">
												<b>LOẠI TIỀN</b>
											</td>
											<td colspan="2" id="td_table"  width="20%">
												<b>TỔNG TIỀN</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_LOAI_THUE/ROW_TONG">
											<tr>
												<td colspan="2" class="align-l" id="td_table" >
													<span >
														<xsl:if test="MST !=''">
															<xsl:value-of select="MST" />
														</xsl:if>
													</span>
												</td>
												<td colspan="1" class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_LOAI_THUE !=''">
															<xsl:value-of select="TEN_LOAI_THUE" />
														</xsl:if>
													</span>
												</td>
												<td colspan="1" class="align-l" id="td_table" >
													<span >
														<xsl:if test="SO_TIEN !=''">
															<xsl:value-of select="SO_TIEN" />
														</xsl:if>
													</span>
												</td>
												<td colspan="2" class="align-l" id="td_table" >
													<span >
														<xsl:if test="MA_NGUYENTE !=''">
															<xsl:value-of select="MA_NGUYENTE" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													
												</td>
												<td class="align-l" id="td_table" >
													
												</td>
												<td colspan="3" class="align-l" id="td_table" >
													
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
								</xsl:if>
										<xsl:if test="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/LOAI_XN ='02'">
								<table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
										    <td rowspan="2" id="td_table" width="10%">
												<b>Số TT</b>
											</td>
											<td  rowspan="2" id="td_table"  width="20%">
												<b>Mã số thuế</b>
											</td>
											<td rowspan="2" id="td_table"  width="30%">
												<b>Tên NNT</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Số chứng từ</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Ngày nộp thuế</b>
											</td>
											<td colspan="2" id="td_table"  width="20%">
												<b>Nội dung nộp nộp NSNN</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Số tiền</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Loại tiền</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Cơ quan quản lý thu</b>
											</td>
											<td rowspan="2" id="td_table"  width="20%">
												<b>Ghi chú</b>
											</td>
										</tr>
										<tr class="align-c" style="height:50px;">
											<td  id="td_table" width="10%">
												<b>Chương</b>
											</td>
											<td  id="td_table"  width="20%">
												<b>Tiểu mục</b>
											</td>
										</tr>
										<xsl:for-each select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET">
											<tr>
												<td class="align-c" id="td_table" >
													<span id="stt">
														<countNo>
															<xsl:value-of select="position()" />
														</countNo>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="MST_NNT !=''">
															<xsl:value-of select="MST_NNT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_NNT !=''">
															<xsl:value-of select="TEN_NNT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="SO_CTU !=''">
															<xsl:value-of select="SO_CTU" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="NGAY_CTU !=''">
															<xsl:value-of select="NGAY_CTU" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_CHUONG !=''">
															<xsl:value-of select="TEN_CHUONG" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_TMUC !=''">
															<xsl:value-of select="TEN_TMUC" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="SO_TIEN !=''">
															<xsl:value-of select="SO_TIEN" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="MA_NGUYENTE !=''">
															<xsl:value-of select="MA_NGUYENTE" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="TEN_CQT !=''">
															<xsl:value-of select="TEN_CQT" />
														</xsl:if>
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														<xsl:if test="GHI_CHU !=''">
															<xsl:value-of select="GHI_CHU" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
											<tr class="align-c" style="height:50px;">
										    <td colspan="7" id="td_table" width="60%">
												<b>TỔNG CỘNG</b>
											</td>
											<td rowspan="3" id="td_table"  width="20%">
												
											</td>
											<td rowspan="3" colspan="3" id="td_table"  width="20%">
												
											</td>
										</tr>
										<tr class="align-c" style="height:50px;">
											<td colspan="3"  id="td_table" width="20%">
												<b>VND</b>
											</td>
											<td colspan="4"  id="td_table" width="20%">
												<span >
														<xsl:if test="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_CHUNG_TU/ROW_TONG/TONG_TIEN !=''">
															<xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_CHUNG_TU/ROW_TONG/MA_NGUYENTE" />
														</xsl:if>
													</span>
													 
											</td>
											
										</tr>
										<tr class="align-c" style="height:50px;">
											<td colspan="3" id="td_table" width="20%">
												<b>USD</b>
											</td>
											
											<td colspan="4"  id="td_table" width="20%">
												<span >
														<xsl:if test="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_CHUNG_TU/ROW_TONG/TONG_TIEN !=''">
															<xsl:value-of select="$NDungTBao/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_DTL/ROW_CTIET_XN_THEO_CHUNG_TU/ROW_TONG/MA_NGUYENTE" />
														</xsl:if>
													</span>
													 
											</td>
										</tr>
									</tbody>
								</table>
								</xsl:if>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị người nộp thuế liên hệ với cơ quan thuế quản lý để rà soát, đối chiếu. 
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp có vướng mắc, người nộp thuế liên hệ với cơ quan thuế quản lý thu để được hỗ trợ trực tiếp.
								</p>
						</xsl:for-each>
						
					<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:45%;text-align:center;">
								
							</td>
							<td>
								<table>
									<tr>
										<td class="align-c" colspan="2" style="font-weight:bold;"><xsl:if test="$TTinChung/CQT/tenCQT!=''"><xsl:value-of select="$TTinChung/CQT/tenCQT" /></xsl:if></td>
									</tr>
									<tr>
										<td class="align-c" colspan="2">
										</td>
									</tr>
									<tr>
										<td class="align-c"><div style="font-weight:bold;">Người lập</div>
											<br/><br/><br/><br/>
											<div>......</div>
										</td>
										<td class="align-c">																			
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
										<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />BacLK
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
					</div>
				</xsl:if>
			<xsl:if test="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/KQUA_XN ='03'">
				<div class="content_kdt" >
						<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
								<br></br>
									<div class="box_mau_so fz13px" >
										Mẫu số C1-10b/NS-TĐT
										<br />
										<i>(Ban hành kèm theo Thông tư số  
										<br />
										…/2019/TT-BTC của Bộ Tài Chính 
										<br />
										</i>
									</div>
								</td>
							</tr>
						</table>
						<xsl:for-each select="$NDungTBao">
								<table cellpadding="0" cellspacing="0" class="table_hd1">
									<tbody>
										<tr class="align-c">
											<td class="fz17px">
												
											</td>
											<td class="fz17px">
												
											</td>
										</tr>
										<tr class="align-c">
											<td class="fz17px">
												<b><xsl:value-of select="ihtkk:getTenUpperCT($TTinChung/CQT/maCQT)" />		
												</b>	
											</td>
											<td class="fz18_5px">
												
											</td>
										</tr>
										<tr>
											<td class="align-c">
												<hr class="table_hr1"/>
											</td>
											<td class="align-c">
												<hr class="table_hr2"/>
											</td>
										</tr>
										<tr class="align-c fz17px" >
											<td>
												Số:
												<span>
													<xsl:if test="$TTinChung/TTinTBaoThue/soTBao !=''">
														<span>
															<xsl:value-of select="$TTinChung/TTinTBaoThue/soTBao" />
														</span>
													</xsl:if>
												</span>
											</td>
											<td >	
												<i>
													<xsl:value-of select="ihtkk:getTenNganCT($TTinChung/CQT/maCQT)" />,												
													ngày
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,9,2)" />
													tháng
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,6,2)" />
													năm
													<xsl:value-of select="substring($TTinChung/TTinTBaoThue/ngayTBao,1,4)" />
												</i>
											</td>
										</tr>
									</tbody>
								</table>
								<p class="line1_5 align-c fz18_5px">
									<b >GIẤY KHÔNG XÁC NHẬN SỐ THUẾ ĐÃ NỘP NSNN</b>
								</p>
								<p class=" mtatentkhai fz18_5px">
                                    Kính gửi: <xsl:value-of select="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/TEN_NNT" />. MST: <xsl:value-of select="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/MST_NNT" />
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ Giấy đề nghị xác nhận số thuế đã nộp ngân sách nhà nước số <xsl:value-of select="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/SO_XN" /> ngày <xsl:value-of select="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/NOP_TU_NGAY" /> của người nộp thuế gửi cơ quan thuế;
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ số liệu về số thuế đã nộp NSNN của người nộp thuế được theo dõi trên ứng dụng của cơ quan thuế, Cơ quan thuế không xác nhận đề nghị của người nộp thuế.
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Lý do không xác nhận: <xsl:value-of select="$NDungGDich/XACNHAN_THUE/NOIDUNG_XN/NOIDUNG_XACNHAN_HDR/LY_DO_KHONG_XN" />.
								</p>
								<p class="align-j fz18_5px">
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Đề nghị người nộp thuế liên hệ với cơ quan thuế quản lý để rà soát, đối chiếu. 
									<br />
									&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Trường hợp có vướng mắc, người nộp thuế liên hệ với cơ quan thuế quản lý thu để được hỗ trợ trực tiếp.
								</p>
						</xsl:for-each>
						
					<div align="center">
					<table style="page-break-inside: avoid;width:100%">
						<tr>
							<td style="width:45%;text-align:center;">
								
							</td>
							<td>
								<table>
									<tr>
										<td class="align-c" colspan="2" style="font-weight:bold;"><xsl:if test="$TTinChung/CQT/tenCQT!=''"><xsl:value-of select="$TTinChung/CQT/tenCQT" /></xsl:if></td>
									</tr>
									<tr>
										<td class="align-c" colspan="2">
										</td>
									</tr>
									<tr>
										<td class="align-c"><div style="font-weight:bold;">Người lập</div>
											<br/><br/><br/><br/>
											<div>......</div>
										</td>
										<td class="align-c">																			
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
										<xsl:value-of select="$TTinChung/TTinKy/tenCBTKy" />BacLK
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
					</div>
		    </xsl:if>
				</body>
			</html>
		</xsl:for-each>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>