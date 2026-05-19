<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
 <xsl:include href="../../include/TKhaiHeader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/>    
 <xsl:include href="../../common/common.xsl"/> 
	<xsl:template match="/">
		<xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />
			<xsl:call-template name="tkhaiHeader_01_TB_DVHT">
				<xsl:with-param name="mauTKhai"   select="'01/TB-ĐVHT'"/>
			</xsl:call-template>
	    
		<div style="width:90%;padding-top: 6pt;text-align:center"><b>THÔNG BÁO<br/> 
		Đơn vị hợp thành chịu trách nhiệm kê khai và danh sách các đơn vị hợp thành<br/>
		thuộc đối tượng áp dụng Nghị quyết số 107/2023/QH15</b>
		</div><br/>
		
		<div>
			<div style="padding-top: 6pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/LoaiThongBao/nnt_ThongBaoLanDau= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/nnt_ThongBaoLanDau= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/cqt_ThongBaoLanDau= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo lần đầu sau khi cơ quan thuế chỉ định</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/cqt_ThongBaoLanDau= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo lần đầu sau khi cơ quan thuế chỉ định</xsl:if>
					
					<xsl:if test="$tkchinh/LoaiThongBao/nnt_ThongBaoLanDau= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/nnt_ThongBaoLanDau= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo lần đầu</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/cqt_ThongBaoLanDau= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo lần đầu sau khi cơ quan thuế chỉ định</xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/cqt_ThongBaoLanDau= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo lần đầu sau khi cơ quan thuế chỉ định</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/LoaiThongBao/thong_BaoThayDoi= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiThongBao/thay_DoiLanThu"/></xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/thong_BaoThayDoi= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiThongBao/thay_DoiLanThu"/></xsl:if>
					
					<xsl:if test="$tkchinh/LoaiThongBao/thong_BaoThayDoi= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiThongBao/thay_DoiLanThu"/></xsl:if>
					<xsl:if test="$tkchinh/LoaiThongBao/thong_BaoThayDoi= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thông báo thay đổi
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Thay đổi lần thứ: <xsl:value-of select="$tkchinh/LoaiThongBao/thay_DoiLanThu"/></xsl:if>
				</label>
			</div>
			<div style="padding-top: 15pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungQDMTT= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về thuế thu nhập doanh nghiệp bổ sung tối thiểu nội địa đạt chuẩn (QDMTT)
					</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
			&#160;&#160;&#160;&#160;&#160;Thông tin về loại đối tượng áp dụng quy định QDMTT:</div>	
			<div style="padding-top: 4pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanDaQuocGia= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành của Tập đoàn đa quốc gia</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanDaQuocGia= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành của Tập đoàn đa quốc gia</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanDaQuocGia= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành của Tập đoàn đa quốc gia</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanDaQuocGia= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành của Tập đoàn đa quốc gia</xsl:if>
				</label>
			</div>	
			<div style="padding-top: 4pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/lien_DoanhKhongThanhVien= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Liên doanh không phải thành viên của Tập đoàn liên doanh</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/lien_DoanhKhongThanhVien= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Liên doanh không phải thành viên của Tập đoàn liên doanh</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/lien_DoanhKhongThanhVien= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Liên doanh không phải thành viên của Tập đoàn liên doanh</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/lien_DoanhKhongThanhVien= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Liên doanh không phải thành viên của Tập đoàn liên doanh</xsl:if>
				</label>
			</div>	
			<div style="padding-top: 4pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/cong_TyThanhVienLienDoanh= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Công ty thành viên thuộc Tập đoàn liên doanh</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/cong_TyThanhVienLienDoanh= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Công ty thành viên thuộc Tập đoàn liên doanh</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/cong_TyThanhVienLienDoanh= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Công ty thành viên thuộc Tập đoàn liên doanh</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/cong_TyThanhVienLienDoanh= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Công ty thành viên thuộc Tập đoàn liên doanh</xsl:if>
				</label>
			</div>	
			<div style="padding-top: 4pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanCon= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanCon= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanCon= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanCon= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
				</label>
			</div>	
			<div style="padding-top: 4pt">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_KhongThanhVienTapDoanCon= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành có công ty mẹ tối cao là chủ sở hữu thiểu số không phải là thành viên của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_KhongThanhVienTapDoanCon= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành có công ty mẹ tối cao là chủ sở hữu thiểu số không phải là thành viên của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_KhongThanhVienTapDoanCon= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2612; Đơn vị hợp thành có công ty mẹ tối cao là chủ sở hữu thiểu số không phải là thành viên của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_KhongThanhVienTapDoanCon= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					&#160;&#160;&#160;&#160;&#160;&#x2610; Đơn vị hợp thành có công ty mẹ tối cao là chủ sở hữu thiểu số không phải là thành viên của Tập đoàn con có công ty mẹ tối cao là chủ sở hữu thiểu số</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
					
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
					<xsl:if test="$tkchinh/DoiTuongApDung/doi_TuongApDungIIR= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Tập đoàn đa quốc gia thuộc đối tượng áp dụng quy định về tổng hợp thu nhập chịu thuế tối thiểu (IIR)
					</xsl:if>
				</label>
			</div>
			<div style="padding-top: 15pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Nội dung thông báo thay đổi:</div>	
			<div style="padding-top: 6pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiDVHTKeKhai= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi đơn vị hợp thành chịu trách nhiệm kê khai
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiDVHTKeKhai= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi đơn vị hợp thành chịu trách nhiệm kê khai
					</xsl:if>
					
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiDVHTKeKhai= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi đơn vị hợp thành chịu trách nhiệm kê khai
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiDVHTKeKhai= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi đơn vị hợp thành chịu trách nhiệm kê khai
					</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinQDMTT= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định QDMTT
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinQDMTT= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định QDMTT
					</xsl:if>
					
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinQDMTT= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định QDMTT
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinQDMTT= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định QDMTT
					</xsl:if>
				</label>
			</div>
			<div style="padding-top: 6pt;text-align:justify">
				<label class="align-l">
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinIIR= 'true'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinIIR= 'false'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR
					</xsl:if>
					
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinIIR= '1'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2612; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR
					</xsl:if>
					<xsl:if test="$tkchinh/NoiDungThayDoi/thay_DoiThongTinIIR= '0'">
					&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#x2610; Thay đổi thông tin đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR
					</xsl:if>
				</label>
			</div>	
		</div><br/>

		
		<div style="width:90%;padding-top: 6pt;text-align:center">Kính gửi: <xsl:value-of select="$ttkthue/TKhaiThue/tenCQTNoiNop"/></div><br/>
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>I. Thông tin chung</b></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tên đơn vị thông báo: <xsl:value-of select="$tkchinh/TT_DonViThongBao/ten_DonViThongBao"/></div>
		
		<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) 
		tại quốc gia nơi thành lập của đơn vị thông báo: <xsl:value-of select="$tkchinh/TT_DonViThongBao/mst_DonViThongBao"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Địa chỉ trụ sở chính của đơn vị thông báo: <xsl:value-of select="$tkchinh/TT_DonViThongBao/diaChi_DonViThongBao"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4. Số điện thoại của đơn vị thông báo: <xsl:value-of select="$tkchinh/TT_DonViThongBao/sdt_DonViThongBao"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Email của đơn vị thông báo: <xsl:value-of select="$tkchinh/TT_DonViThongBao/email_DonViThongBao"/></div>
		
		<table class="tkhai_table">
					<tr>
						<td rowspan="2" class="align-c"><b>TT</b></td>
						<td rowspan="2" class="align-c"><b>5. Tên Công ty mẹ tối cao</b></td>
						<td rowspan="2" class="align-c"><b>6. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) tại quốc gia nơi thành lập của Công ty mẹ tối cao</b></td>
						<td rowspan="2" class="align-c"><b>7. Địa chỉ trụ sở chính của Công ty mẹ tối cao</b></td>
						<td colspan="2" class="align-c"><b>8. Năm tài chính của Công ty mẹ tối cao</b></td>
					</tr>
					<tr>
						<td class="align-c"><b>Từ</b></td>
						<td class="align-c"><b>Đến</b></td>
					</tr>						
					<xsl:for-each select="$tkchinh/DS_CongTyMeToiCao/ChiTietDanhSach">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-j"><xsl:value-of select="ten_CongTyMeToiCao"/></td>
							<td class="align-c"><xsl:value-of select="mst_CongTyMeToiCao"/></td>
							<td class="align-j"><xsl:value-of select="diaChi_CongTyMeToiCao"/></td>
							<td class="align-c"><xsl:value-of select="nam_TCCongTyMeToiCaoTu"/></td>
							<td class="align-c"><xsl:value-of select="nam_TCCongTyMeToiCaoDen"/></td>
						</tr>														 
					</xsl:for-each>
		</table>
		
		<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/lien_DoanhKhongThanhVien= 'true'">
		
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;9. Tên Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/ten_LienDoanh"/></div>
			
			<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;10. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) 
			tại quốc gia nơi thành lập của của Liên doanh, Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/mst_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;11. Địa chỉ trụ sở chính của Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/diaChi_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;12. Năm tài chính của Liên doanh, Công ty mẹ có sở hữu thiểu số: 
			Từ <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhTu"/> 
			đến <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhDen"/></div>
		</xsl:if>
		
		<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/cong_TyThanhVienLienDoanh= 'true'">
		
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;9. Tên Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/ten_LienDoanh"/></div>
			
			<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;10. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) 
			tại quốc gia nơi thành lập của của Liên doanh, Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/mst_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;11. Địa chỉ trụ sở chính của Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/diaChi_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;12. Năm tài chính của Liên doanh, Công ty mẹ có sở hữu thiểu số: 
			Từ <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhTu"/> 
			đến <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhDen"/></div>
		</xsl:if>
		
		<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_TapDoanCon= 'true'">
		
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;9. Tên Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/ten_LienDoanh"/></div>
			
			<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;10. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) 
			tại quốc gia nơi thành lập của của Liên doanh, Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/mst_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;11. Địa chỉ trụ sở chính của Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/diaChi_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;12. Năm tài chính của Liên doanh, Công ty mẹ có sở hữu thiểu số: 
			Từ <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhTu"/> 
			đến <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhDen"/></div>
		</xsl:if>
		
		<xsl:if test="$tkchinh/DoiTuongApDung/loai_ApDungQDMTT/dvht_KhongThanhVienTapDoanCon= 'true'">
		
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;9. Tên Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/ten_LienDoanh"/></div>
			
			<div style="padding-top: 6pt;text-align:justify">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;10. Mã số thuế/Mã số doanh nghiệp (hoặc tương tự) 
			tại quốc gia nơi thành lập của của Liên doanh, Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/mst_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;11. Địa chỉ trụ sở chính của Liên doanh, 
			Công ty mẹ có sở hữu thiểu số: <xsl:value-of select="$tkchinh/TT_LienDoanh/diaChi_LienDoanh"/></div>
			
			<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;12. Năm tài chính của Liên doanh, Công ty mẹ có sở hữu thiểu số: 
			Từ <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhTu"/> 
			đến <xsl:value-of select="$tkchinh/TT_LienDoanh/nam_TCLienDoanhDen"/></div>
		</xsl:if>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>II. Thông tin về đơn vị hợp thành 
		chịu trách nhiệm kê khai</b></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. Tên đơn vị hợp thành 
		chịu trách nhiệm kê khai: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/ten_DVHTKeKhai"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2. Mã số thuế đã được cấp tại 
		Việt Nam: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/mst_DVHTKeKhai"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3. Địa chỉ 
		trụ sở chính: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/diaChi_DVHTKeKhai"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Xã/Phường/Đặc khu: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/ten_XaDVHTKeKhai"/>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tỉnh: <xsl:value-of select="$tkchinh/TT_DVHTKeKhai/ten_TinhDVHTKeKhai"/></div>
		
		<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>III. Danh sách các đơn vị hợp thành thuộc đối tượng áp dụng Nghị quyết số 107/2023/QH15</b></div>
		
		<div class="ndungtkhai_div">
            <div class="content">
               <div style="padding-top: 6pt;padding-bottom: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>1. Danh sách đơn vị hợp thành thuộc đối tượng áp dụng quy định QDMTT</b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>TT</b></td>
						<td class="align-c"><b>Mã số thuế đã được cấp tại Việt Nam</b></td>
						<td class="align-c"><b>Tên đơn vị hợp thành</b></td>
						<td class="align-c"><b>Địa chỉ trụ sở chính</b></td>
					</tr>				
					<xsl:for-each select="$tkchinh/DS_DVHT_QDMTT/ChiTietDanhSach">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-c"><xsl:value-of select="maSoThue"/></td>
							<td class="align-j"><xsl:value-of select="ten_DVHT"/></td>
							<td class="align-j"><xsl:value-of select="dia_Chi"/></td>
						</tr>														 
					</xsl:for-each>
				</table>
				
				<div style="padding-top: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2. Danh sách đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR</b></div>
				<div style="padding-top: 6pt;padding-bottom: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.1. Thông tin về các công ty mẹ thuộc đối tượng áp dụng quy định IIR</b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>TT</b></td>
						<td class="align-c"><b>Loại hình công ty mẹ</b></td>
						<td class="align-c"><b>Mã số thuế đã được cấp tại Việt Nam</b></td>
						<td class="align-c"><b>Tên Công ty mẹ</b></td>
						<td class="align-c"><b>Địa chỉ trụ sở chính</b></td>
					</tr>				
					<xsl:for-each select="$tkchinh/DS_CongTyMe_IIR/ChiTietDanhSach">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-j"><xsl:value-of select="ten_LoaiHinhCongTyMe"/></td>
							<td class="align-c"><xsl:value-of select="maSoThue"/></td>
							<td class="align-j"><xsl:value-of select="ten_CongTyMe"/></td>
							<td class="align-j"><xsl:value-of select="dia_Chi"/></td>
						</tr>														 
					</xsl:for-each>
				</table>
			
				<div style="padding-top: 6pt;padding-bottom: 6pt">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>2.2. Thông tin về các đơn vị hợp thành thuộc đối tượng áp dụng quy định IIR </b></div>
				<table class="tkhai_table">
					<tr>
						<td class="align-c"><b>TT</b></td>
						<td class="align-c"><b>Mã số thuế/Mã số doanh nghiệp (hoặc tương tự)</b></td>
						<td class="align-c"><b>Tên đơn vị hợp thành</b></td>
						<td class="align-c"><b>Quốc gia cư trú</b></td>
						<td class="align-c"><b>Địa chỉ trụ sở chính</b></td>
					</tr>				
					<xsl:for-each select="$tkchinh/DS_DVHT_IIR/ChiTietDanhSach">
						<xsl:variable name="currentRows1" select='position()'/>																
						<tr>
							<td class="align-c"><xsl:value-of select="$currentRows1" /></td>							
							<td class="align-c"><xsl:value-of select="maSoThue"/></td>
							<td class="align-j"><xsl:value-of select="ten_DVHT"/></td>
							<td class="align-j"><xsl:value-of select="ten_QuocGiaCuTru"/></td>
							<td class="align-j"><xsl:value-of select="dia_Chi"/></td>
						</tr>														 
					</xsl:for-each>
				</table>
			
			</div>
		</div><br/>			
		
		<div>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="$tkchinh/TT_DonViThongBao/ten_DonViThongBao"/> cam kết về tính chính xác, 
			trung thực và hoàn toàn chịu trách nhiệm trước pháp luật về nội dung của văn bản này.</div>
		
		<xsl:call-template name="tkhaiFooter_01_TB_DVHT"></xsl:call-template>
		<table style="page-break-inside: avoid;" >
			<tr>
				<td>
					<div id="sigDiv"></div>
				</td>
			</tr>
		</table>
	</xsl:template>		
	
</xsl:stylesheet>
