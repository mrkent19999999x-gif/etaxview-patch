<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../common/common.xsl"/>
	<xsl:template match="/">
		<xsl:for-each select="TBaoThueDTu">
			<xsl:variable name="TTinChung" select="TBaoThue/TTinChung" />
			<xsl:variable name="NDungTBao" select="TBaoThue/NDungTBao" />
			<html>
				<body>
					<div class="content_kdt" >
						<!--<table cellpadding="0" cellspacing="0" class="table_hd1">
							<tr>
								<td>
								<br></br>
									<div class="box_mau_so fz13px" >
										Phụ lục số 05
										<br />
										<i>(Ban hành kèm theo Quyết định số 
										<br />
										1939/QĐ-TCT ngày 06/11/2017 của 
										<br />
										Tổng cục Thuế)</i>
									</div>
								</td>
							</tr>
						</table>-->
						
						    <p class="line1_5 align-c fz18_5px">
									<b ><xsl:value-of select="$TTinChung/TTinTBaoThue/tenTBao" /></b>
									 <br/>
									  <xsl:if test="$NDungTBao/KyBaoCao !=''">
									 <xsl:if test="contains($NDungTBao/KyBaoCao,'CN')">
									   Năm <xsl:value-of select="concat('20',substring-before($NDungTBao/KyBaoCao,'CN'))"/>
									 </xsl:if>
									 <xsl:if test="not(contains($NDungTBao/KyBaoCao,'CN'))">
									   Quý <xsl:value-of select="substring-after($NDungTBao/KyBaoCao,'Q')"/> năm <xsl:value-of select="concat('20',substring-before($NDungTBao/KyBaoCao,'Q'))"/>
									 </xsl:if>
									 </xsl:if>
									 
						   </p>
						   <table class="tkhai_table" border ="solid 1px" width="100%">
									<tbody>
										<tr class="align-c" style="height:50px;">
											<td id="td_table" width="4%" rowspan="2">
												<b>STT</b>
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												<b>Địa bàn</b>
											</td>
											<td id="td_table"  width="5%" rowspan="2">
												<b>Mục</b>
											</td>
											<td id="td_table"  width="10%" rowspan="2" >
												<b>Số giao thu  trong quý/năm</b>
											</td>
											<td id="td_table"  width="40%" colspan="3">
												<b>Số thuế thu được của CNKD theo quý/năm</b>
											</td>
											<td id="td_table"  width="10%" rowspan="2">
												<b>Tỷ lệ</b>
											</td>
											
										</tr>
										<tr class="align-c" style="height:50px;">
											<td  id="td_table" width="10%">
												<b>Tổng số</b>
											</td>
											<td  id="td_table"  width="20%">
												<b>CNKD nộp trực tiếp NSNN</b>
											</td>
											<td  id="td_table"  width="20%">
												<b>Tổ chức được UNTT thu</b>
											</td>
										</tr>
										<tr class="align-c">
											<td class="align-c" id="td_table" >
												<i>(1)</i>
											</td>
											<td id="td_table" >
												<i>(2)</i>
											</td>
											<td id="td_table" >
												<i>(3)</i>
											</td>
											<td id="td_table" >
												<i>(4)</i>
											</td>
											<td id="td_table" >
												<i>(5)=(6)+(7)</i>
											</td>
											<td id="td_table" >
												<i>(6)</i>
											</td>
											<td id="td_table" >
												<i>(7)</i>
											</td>
											<td id="td_table" >
												<i>(8)=(5)/(4)</i>
											</td>
											
										</tr>
										<xsl:for-each select="$NDungTBao/ChiTiet">
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
														<xsl:if test="diaBan !=''">
															<xsl:value-of select="diaBan" />
														</xsl:if>
													</span>
												</td>
												
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="muc !=''">
															<xsl:value-of select="muc" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="tongSoThuCNKD !=''">
															<xsl:value-of select="tongSoThuCNKD" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soNopTrucTiep !=''">
															<xsl:value-of select="soNopTrucTiep" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soUNTTThu !=''">
															<xsl:value-of select="soUNTTThu" />
														</xsl:if>
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:if test="soUNTTThu !=''">
															<xsl:value-of select="soUNTTThu" />
														</xsl:if>
													</span>
												</td>
												<td class="align-c" id="td_table" >
													<span >
														<xsl:if test="tyLe !=''">
															<xsl:value-of select="tyLe" />
														</xsl:if>
													</span>
												</td>
											</tr>
										</xsl:for-each>
										<tr>
										<td id="td_table"  class="align-c" width="40%" colspan="3">
												Tổng cộng
									     </td>
										 <td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												<td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
										</tr>
										<xsl:for-each select="$NDungTBao/TongDiaBan">
										<tr>
										 <td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												 <td class="align-l" id="td_table" >
													<span >
														<xsl:value-of select="TenDiaBan" />
													</span>
												</td>
												 <td class="align-l" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="TongTienDiaBan4" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="TongTienDiaBan5" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="TongTienDiaBan6" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="TongTienDiaBan7" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
											</tr>
										</xsl:for-each>
										<tr>
										 <td class="align-c" id="td_table" colspan="3" >
													<span >
														Tổng cộng
													</span>
												</td>
												 <td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="$NDungTBao/TongCong4" />
													</span>
												</td>
												 <td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="$NDungTBao/TongCong5" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="$NDungTBao/TongCong6" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														<xsl:value-of select="$NDungTBao/TongCong7" />
													</span>
												</td>
												<td class="align-r" id="td_table" >
													<span >
														&#160;
													</span>
												</td>
											</tr>
									</tbody>
								</table>
					
					</div>
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