<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="tTinKhaiThue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="cTieuTKhaiChinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />

<style type="text/css">
.box_common_content1 {
	border-left: 1px solid #D8ECFF;
	border-right: 1px solid #D8ECFF;
	padding: 10px 10px 10px 10px;
	background-color: white;
	width: 100%;
}

.div-cbt {
	border: solid 1px #ccc;
}

.parent-div div {
	/* border: solid 1px #ccc; */
	/* min-height: 100px; */
	padding: 5px;
}

.dv-ngay-nhan span {
	width: 25px !important;
	height: 25px !important;
	display: inline-block;
	border: solid 1px #555;
}

.div-ngay-nhan {
	border: solid 1px #444 !important;
	height: 75px !important;
}

.form-ctl-2.dv-lvl2.has-cbt>div {
	padding: 0px 10px !important;
}

label.lbl-noi-nhan {
	text-align: left !important;
	width: 100%;
	padding-left: 12px;
}

label {
	font-weight: normal !important;
}

label.lbl-cbt {
	font-weight: bold !important;
}

label.lbl-ngay-nhan {
	display: block;
}

.dv-ngay-nhan {
	margin: 25px 0px 5px 0px;
	border: unset !important;
}

.dv-chxh.tal-c label {
	display: block;
	margin-bottom: unset;
}

.f-bold {
	font-weight: bold !important;
}

.dv-mau-so {
	border: solid 1px #444 !important;
}

.dv-chxh .h4-ten-tkhai {
	text-transform: uppercase;
	margin-top: 15px !important;
}

.cb-to-chuc span.check-box {
	display: inline-block;
	margin: 0px 10px;
}

.dv-mst-cqt-ghi .lbl-mst-cqt-ghi {
	padding-right: 22px;
}

.dv-mst-cqt-ghi .lbl-cqt-ghi {
	padding-left: 20px;
}

.dv-mst-cqt-ghi label {
	margin-bottom: 0px !important;
}

.dv-mst-cqt-ghi {
	padding: 10px 0px;
/* 	border: solid 1px #444 !important; */
}

.cb-to-chuc {
	padding: 10px 0px;
}

.dv-title div {
	text-align: center;
}

.tc.f-bold {
	border: solid 1px #444 !important;
	width: 24%;
	margin-left: 5px;
	height: 82px;
}

.tc.f-bold div {
	border: solid 1px #444 !important;
}

.tc.f-bold div label {
	font-weight: bold !important;
}

.w-100 {
	width: 100%;
}

.w-50 {
	width: 50%;
}

.dv-lvl12 .col-md-12 input {
	width: 28%;
}

.dv-lvl2.dv-ct-13 .form-ctl-2.dv-lvl2 .col-md-12 {
	padding: 0px 10px 0px 0px !important;
}

.dv-ct-14e .col-md-6.no-p,.dv-ct-14 .col-md-6.no-p {
	padding: 0px !important;
}

.div-view {
	display: inline-block;
}

.div-hidden {
	display: none;
}

.dkt-phu-luc {
	width: 100%;
	float: left;
	margin: 15px 0px;
}

.dkt-phu-luc span {
	margin: 0px 5px;
	text-decoration: underline;
	font-size: 13px;
	font-weight: bold;
	color: #0e60c5;
}

.dkt-phu-luc span.active {
	color: #333;
	text-decoration: none;
}
body, div, td, span, input, select, p {

    font-family: Times New Roman, Helvetica, sans-serif;
    font-size: 14px !important;

}
span.font-size {
 	font-size: 13px !important;
 	font-weight: bold !important;
}
span.font-size-14 {
 	font-size: 14px !important;
 	font-weight: bold !important;
}
.box_common_content.dky-thue {

    display: table;
    box-shadow: 0px 0px 15px #ccc;
    width: 936px;
    padding: 15px 20px;
    margin: 0 auto;
    float: none;

}
.dv-mst-cqt-ghi .lbl-cqt-ghi {
	padding-left: 20px;
	font-size: 10px;
}
.dv-mau-so-05dk {
	border: solid 1px #444 !important;
	text-align: center;	
}
.dv-mau-so-03dk {
   border: solid 1px #444 !important;
	text-align: center;	
}
.tc.f-bold-05dk {
	border: solid 1px #444 !important;
	width: 23.5%;
	margin-left: 5px;
 	margin-top: 45px;
	height: auto;
}
.dv-ngay-nhan-05dk {
/* 	margin: 25px 0px 5px 0px; */
	border: unset !important;
}

body,.box_common_content.dky-thue,.box_common_content.dky-thue .frm_inputCtl,.box_common_content.dky-thue .frm_inputCtl form
	{
	width: 100%;
	float: left;
}

.tieudelon.v2 img {
	width: 20px;
	height: 20px;
	padding: 0px;
	margin-left: 15px;
}

.tieudelon.v2 span.text_tt label.tree-tieude {
	color: #777;
	font-weight: normal;
}

.tieudelon.v2 {
	height: 27px;
}

.box_common_content.dky-thue {
	width: 100%;
	float: left;
}

.dky-thue {
	margin-top: 10px;
	color: #333 !important;
	font-size: 13px;
}

.tieudelon.v2 span.text_tt label {
	font-style: italic;
}

.parent-div input[type="text"],.parent-div select {
	height: 27px;
	border-radius: 2px;
	font-size: 13px;
	height: 27px;
	border-radius: 2px;
	font-size: 13px;
	border-color: #bbb;
	background: none;
}

.form-group {
	width: 100%;
	float: left;
}

label.col-md-3.control-label {
	height: 27px !important;
	line-height: 27px;
	margin: 0px;
}

.tal-r {
	text-align: right;
}

.tal-l {
	text-align: left;
}

.tal-c {
	text-align: center;
}

.btn-dky-thue {
	height: 27px;
	border-radius: 2px !important;
	line-height: 1px !important;
	font-size: 13px !important;
	font-weight: bold !important;
	border: solid 1px #77aff5 !important;
	color: #01405d !important;
}

.btn-gr {
	width: 100%;
	float: left;
	text-align: center;
}

.div-chon-dt {
	margin-top: 15px;
}

.dky-thue input.empty-error {
	border: solid 1px red;
}

.lbl-error {
	color: red;
}

.box_common_content.dky-thue .frm_inputCtl form .parent-div {
	padding: 0px;
}

.no-p {
	padding: 0px !important;
}

.form-ctl-2 {
	width: 100%;
	float: left;
	padding: 0px !important;
}

.form-ctl-2 label {
	margin-bottom: 0px;
	padding-left: 0px !important;
}

.form-ctl-2.dv-lvl1 div {
	padding: 0px 30px 0px 0px !important;
}

.form-ctl-2.dv-lvl2 div,.form-ctl-2 div.not-child {
	padding: 0px 35px 0px 0px !important;
}

.form-ctl-2 div.not-child {
	padding: 0px 20px 0px 0px !important;
}

.parent-ctrl-2 label.lbl-title-ctrl-2 {
	font-weight: bold !important;
	color: #0d50a1;
}

.parent-ctrl-2 label.lbl-title-ctrl-2aa {
	font-weight: bold !important;
	color: #0d50a1;
	width: 20%
}

.form-ctl-2.dv-lvl1 label {
	font-weight: bold !important;
}

.form-ctl-2.dv-lvl2 {
	margin: 2px 0px 2px 10px;
}

label.lbl-title-ctrl-3 {
	display: block;
	padding-left: 10px;
	font-weight: bold !important;
	margin-bottom: 0px;
}

.parent-ctrl-2 .lbl-title-ctrl-4 {
	padding-left: 20px !important;
}

.lbl-title-ctrl-4 {
	height: 27px;
	line-height: 27px;
}

.ctrl-3-db {
	width: 46%;
}

.form-ctrl-lvl3 {
	margin-bottom: 3px;
}

.dv-ct-10 .col-md-3 label {
	/* Chrome */
	display: contents;
	/* IE */
	/* display: ruby-base-container; */
}

label.active-tieude {
	font-weight: bold !important;
}

.list-cbx label {
	/* Chrome */
	display: contents;
	/* IE */
	/* display:  ruby-base-container; */
}

.list-cbx {
	margin: 3px 0px;
}

.div-cbt {
	border: solid 1px #ccc;
}

.form-control[disabled],.form-control[readonly],fieldset[disabled] .form-control
	{
	background-color: #eee !important;
	opacity: 1;
}

.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,.col-md-11,.col-md-12
	{
	float: left;
}

.col-md-12 {
	width: 100%;
}

.col-md-11 {
	width: 91.66666667%;
}

.col-md-10 {
	width: 83.33333333%;
}

.col-md-9 {
	width: 70%;
}

.col-md-8 {
	width: 66.66666667%;
}

.col-md-7 {
	width: 58.33333333%;
}

.col-md-6 {
	width: 100%;
}

.col-md-5 {
	width: 41.66666667%;
}

.col-md-4 {
	width: 33.33333333%;
}

.col-md-3 {
	width: 25%;
}

.col-md-2 {
	width: 16.66666667%;
}

.col-md-1 {
	width: 8.33333333%;
}

.col-md-pull-12 {
	right: 100%;
}

.col-md-pull-11 {
	right: 91.66666667%;
}

.col-md-pull-10 {
	right: 83.33333333%;
}

.col-md-pull-9 {
	right: 75%;
}

.col-md-pull-8 {
	right: 66.66666667%;
}

.col-md-pull-7 {
	right: 58.33333333%;
}

.col-md-pull-6 {
	right: 50%;
}

.col-md-pull-5 {
	right: 41.66666667%;
}

.col-md-pull-4 {
	right: 33.33333333%;
}

.col-md-pull-3 {
	right: 25%;
}

.col-md-pull-2 {
	right: 16.66666667%;
}

.col-md-pull-1 {
	right: 8.33333333%;
}

.col-md-pull-0 {
	right: auto;
}

.col-md-push-12 {
	left: 100%;
}

.col-md-push-11 {
	left: 91.66666667%;
}

.col-md-push-10 {
	left: 83.33333333%;
}

.col-md-push-9 {
	left: 75%;
}

.col-md-push-8 {
	left: 66.66666667%;
}

.col-md-push-7 {
	left: 58.33333333%;
}

.col-md-push-6 {
	left: 50%;
}

.col-md-push-5 {
	left: 41.66666667%;
}

.col-md-push-4 {
	left: 33.33333333%;
}

.col-md-push-3 {
	left: 25%;
}

.col-md-push-2 {
	left: 16.66666667%;
}

.col-md-push-1 {
	left: 8.33333333%;
}

.col-md-push-0 {
	left: auto;
}

.col-md-offset-12 {
	margin-left: 100%;
}

.col-md-offset-11 {
	margin-left: 91.66666667%;
}

.col-md-offset-10 {
	margin-left: 83.33333333%;
}

.col-md-offset-9 {
	margin-left: 75%;
}

.col-md-offset-8 {
	margin-left: 66.66666667%;
}

.col-md-offset-7 {
	margin-left: 58.33333333%;
}

.col-md-offset-6 {
	margin-left: 50%;
}

.col-md-offset-5 {
	margin-left: 41.66666667%;
}

.col-md-offset-4 {
	margin-left: 33.33333333%;
}

.col-md-offset-3 {
	margin-left: 25%;
}

.col-md-offset-2 {
	margin-left: 16.66666667%;
}

.col-md-offset-1 {
	margin-left: 8.33333333%;
}

.col-md-offset-0 {
	margin-left: 0;
}

.dv-chxh.tal-c label {
	display: block;
	margin-bottom: unset;
}

.f-bold {
	font-weight: bold !important;
}

label {
    word-break: break-word;
}
label.tick-x.ct0 {
text-align: center;
    border: solid 1px #333;
    font-weight: bold !important;
    min-width: 15px;
    max-height: 15px;
    margin-right: 5px;
    line-height: 14px;
    display: inline-block;
}
input[type="text"] {
    border-color: #eee !important;
}
.parent-ctrl-2 label.lbl-title-ctrl-2 {
    color:  #333 !important;
}
.dv-title {
    width: 100%;
    float: left;
}
.div-ngay-nhan {
    height: 120px;
}
label.comment-label {
    font-weight: bold !important;
    margin-top: 15px;
    font-style: italic;
}
.dv-mau-so div {
    vertical-align: middle;
    display: table-cell;
}
label.txt-ten-tkhai {
    padding-top: 20px;
}

.dv-chxh {
    height: 120px;
}
.dv-mau-so {
    height: 120px;
    display: table;
}
.mst-ghi-child {
    width: 90%;
    margin: 0 auto;
    border: solid 1px #444;
    padding-bottom: 15px !important;
}

.dv-mst-cqt-ghi {
    border: 0px !important;
}
.dv-ngay-nhan span {
    border-top: 0px;
}
.dv-mst-cqt-ghi .lbl-cqt-ghi {
    padding-left: 0px;
}
.ct0 {
    margin: 5px 0px;
    text-align: center;
}

.ct0 span {
    margin: 5px 0px 0px 0px;
}
label.lbl-mst-cqt-ghi {
    padding-right: 20px !important;
    font-size: 12px;
}
.div-tkhai-xslt.col-md-12 {
    padding: 0px 15px;
}
.parent-100 {
	margin-top: 15px;
    border: solid 1px #444;
    padding: 5px 0px 0px 0px;
}
.parent-50 {
	margin-top: 10px;
    border: solid 1px #444;
    padding: 5px 0px 0px 0px;
}
label.parent-label {
    width: 100%;
    font-weight: bold !important;
	
   
} 
label.content-label {
    padding: 0px 10px;
    margin-bottom: 0px;
    padding-top: 5px;
    min-height: 24px;
}
span.content-span{
	width: 100%;
    display: inline-block;
        padding: 0px 10px;
    margin-bottom: 0px;
    padding-top: 5px;
    min-height: 24px;
    border-bottom: solid 1px #444;
}
div span.content-span:last-child {
    border-bottom: 0px;
}
.parent-50 label.content-label {
    width: 100%;
    border-bottom: solid 1px #444;
}
.parent-50 label.content-label:last-child {
    border: 0px;
}
.div-tkhai-xslt div {
    padding-right: 0px;
    padding-left: 0px;
}
span.content-label-child {
    padding-left: 0px;
}
.parent-50.l-div {
    width: 100%;
    margin-right: 1%;
}
.parent-50.r-div {
    width: 49%;
    margin-left: 1%;
}
i {
    font-weight: normal;
}
label.parent-label.two-line {
    min-height: 37px;
}
label.parent-label.three-line {
    min-height: 55px;
}

label.content-label.two-line {
    min-height: 37px;
}
label.content-label.three-line {
    min-height: 55px;
}
label.content-label-lvl2 {
    width: 100%;
    padding: 0px 20px;
}
span.check-span {
    padding-left: 0;
}
.ct8-label{
	border-left: solid 1px #444;
    padding-left: 10px;
}
label.check-content {
    display: inline;
}

.parent-50.no-b2 label.content-label {
    border-right: solid 1px #444;
    border-left: solid 1px #444;
}

.parent-50.no-b2 label.content-label:last-child {
    border-bottom: solid 1px #444;
}
span.list-check span.check-span {
    margin-bottom: 10px;
}
.no-b {
    border-bottom: 0px !important;
}
.no-b2 {
    border: 0px !important;
}
span.content-span-lvl3 {
    width: 100%;
    display: inline-block;
    padding: 5px 20px;
}
span.span-mst span {
    width: 25px !important;
    height: 25px !important;
    display: inline-block;
    border: solid 1px #555;
    text-align: center;
    line-height: 25px;
    
}
label.content-label-lvl2 {
    min-height: 18px;
}
.chu-ky-div {
    text-align: center;
    padding: 10px 25px;
}

.chu-ky-div label.ngay, .comment-ky {
    font-style: italic;
}

.chu-ky-div label.content-ky {
    font-weight: bold !important;
    width: 100%;
}

.chu-ky-div {
    padding: 10px 25px !important;
}
.ct-l-margin label.content-label-lvl2 {
    padding-bottom: 5px;
}
.parent-50.no-b2 label.parent-label.no-b {
    padding-bottom: 0px !important;
    margin-bottom: 0px;
}
.col-md-12.sparent {
    padding-bottom: 0px !important;
}

.ngay_nhan {
    padding:0px;
    background: white;
    border: 1px solid black;
    width: 20px;
    align: center;
}
.ngay_nhan_right {
    padding:0px;
    background: white;
    border: 1px solid black;
    width: 20px;
    align: right;
}
.parent-label1 {
    width: 100%;
    font-weight: bold !important;
    border-bottom: solid 1px #444;
   
}
</style>
<div class="col-md-12">
				  <table>
				   <tr>
						<td style="width:75%;text-align:center">
							<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
							<br/>-------------------------
			            </td>
						<td style="width:25% ; vertical-align: top;" rowSpan="5" align="top">
							<div class="bieu_mau_div">
								<div>Mẫu số: <b>08-MST</b>
									<br/>
									<span class="mtatentkhai" style="font-size:9pt"><i>(Ban hành kèm theo Thông tư số 105/2020/TT-BTC ngày 03/12/2020 của Bộ Tài chính)</i> </span>
								</div>
							</div>
						</td>
					</tr>
					
					
			
					<!-- /Title left -->

				  </table>
			</div>
			<!--<div align="right" width="500px">
				<div align="center"
					style="border: 1px solid; width:200px; padding:2px 2px 2px 2px; margin-right:25px;font-family: Times New Roman; !important">
					Mẫu số:
					<b>08-MST</b>
					<br />
					<i>
						(Ban hành kèm theo Thông tư số 105/2020/TT-BTC ngày 03/12/2020 của Bộ Tài chính)
					</i>
				</div>
			</div>-->
			<!--<table width="100%" cellspacing="0" cellpadding="3">
				<tr>
					<td class="align-c">
						<font class="qhieutkhai" style="font-size: 15px; font-family: Times New Roman; ">
							<b>
								CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM
								<br />
								Độc lập-Tự do-Hạnh phúc
							</b>
							<br />
							
						</font>
					</td>
				</tr>
			</table>-->
			<table width="100%" cellspacing="2" cellpadding="0">
				<tr>
					<td class="align-c" colspan="6">
						<b class="upperLetter"><span style="font-size: 15px; font-family: Times New Roman; "> TỜ KHAI
						</span></b>
					</td>
				</tr>
				<tr>
					<td class="align-c" colspan="6">
						<b class="upperLetter"><span style="font-size: 15px; font-family: Times New Roman; ">ĐIỀU CHỈNH, BỔ SUNG THÔNG TIN ĐĂNG KÝ THUẾ
						</span></b>
					</td>
				</tr>
				<tr>
					<td>
						<xsl:if test="$cTieuTKhaiChinh/DoanhNghiepHTX = 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled" checked="checked"/>
						</xsl:if>
						<xsl:if test="$cTieuTKhaiChinh/DoanhNghiepHTX != 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled" />
						</xsl:if>
						<span style="font-size: 15px; font-family: Times New Roman; ">Doanh nghiệp, hợp tác xã</span>						
					</td>
					<td>
						<xsl:if test="$cTieuTKhaiChinh/ToChuc = 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled" checked="checked"/>
						</xsl:if>
						<xsl:if test="$cTieuTKhaiChinh/ToChuc != 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled"/>
						</xsl:if>
						<span style="font-size: 15px; font-family: Times New Roman; ">Tổ chức
						</span>
					</td>
					<td width="250px"> 
						<xsl:if test="$cTieuTKhaiChinh/HoKDCanhanKD = 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled" checked="checked"/>
						</xsl:if>
						<xsl:if test="$cTieuTKhaiChinh/HoKDCanhanKD != 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled"/>
						</xsl:if>
						<span style="font-size: 15px; font-family: Times New Roman; ">Hộ kinh doanh, cá nhân kinh doanh
						</span>
					</td>
					<td>
						<xsl:if test="$cTieuTKhaiChinh/CaNhan = 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled" checked="checked"/>
						</xsl:if>
						<xsl:if test="$cTieuTKhaiChinh/CaNhan != 'true'">
							<input type="checkbox" name="dangKyThue" id="dangKyThue" disabled="disabled"/>
						</xsl:if>
						<span style="font-size: 15px; font-family: Times New Roman; ">Cá nhân</span>
					</td>
					<td >
						<xsl:if test="$cTieuTKhaiChinh/Khac = 'true'">
							<input type="checkbox" name="thayDoiTTin" id="thayDoiTTin" disabled="disabled" checked="checked"/>
						</xsl:if>
						<xsl:if test="$cTieuTKhaiChinh/Khac != 'true'">
							<input type="checkbox" name="thayDoiTTin" id="thayDoiTTin" disabled="disabled"/>
						</xsl:if>						
						<span style="font-size: 15px; font-family: Times New Roman; ">Khác
						</span>
						<br />
					</td>
				</tr>

			</table>
			<p
				style="line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt; text-align: center">&#160;</p>
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span style="font-size: 15px; font-family: Times New Roman; ">
					1. Tên người nộp thuế:
					<xsl:value-of select="$cTieuTKhaiChinh/TenNNT" />
				</span>
			</p>
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span style="font-size: 15px; font-family: Times New Roman; ">
					2. Mã số thuế:
					<xsl:value-of select="$cTieuTKhaiChinh/mst" />
				</span>
			</p>
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span style="font-size: 15px; font-family: Times New Roman; ">
					3. Địa chỉ trụ sở chính: <xsl:value-of select="$cTieuTKhaiChinh/DiaChiTS" />
				</span>
			</p>
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span style="font-size: 15px; font-family: Times New Roman; ">Đăng ký bổ sung, thay đổi
					các chỉ tiêu đăng ký thuế
					như sau:
				</span>
			</p>
			<table cellpadding="0" cellspacing="0" width="800px"
				style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; float: left; margin-top: 10px">
				<tbody>
					<tr
						style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt; text-align: center;">
						<td
							style="width: 33%; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
							<span
								style="align: center; font-size: 15px; font-family: Times New Roman;font-weight: bold">
								Chỉ tiêu
								<br />
								(1)
							</span>
						</td>
						<td
							style="width: 33%; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
							<span
								style="align: center; font-size: 15px; font-family: Times New Roman;font-weight: bold">
								Thông tin đăng ký cũ
								<br />
								(2)
							</span>
						</td>
						<td
							style="width: 34%; border-style: solid; border-color: #000000 !important; border-width: 0.5pt; padding: 2px;text-align: center !important">
							<span
								style="align: center; font-size: 15px; font-family: Times New Roman;font-weight: bold">
								Thông tin đăng ký mới
								<br />
								(3)
							</span>
						</td>
					</tr>
					<tr>
						<td>
							<b><span style="font-size: 15px; font-family: Times New Roman; ">I - Điều chỉnh thông tin đã đăng ký</span></b>
						</td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="$cTieuTKhaiChinh/ThongTinDCMa">
						<tr
							style="border-collapse: collapse; border-color: #000000; border-style: solid; border-width: 1pt;">
							<xsl:variable name="currentRows" select='position()' />
							<td
								style="text-align: left;border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
								<xsl:if test="substring(CTieuDC/MaCT,1,2) = 'CT'"><b><span style="font-size: 15px; font-family: Times New Roman;">

									&#160;&#160;<xsl:value-of select="CTieuDC/TenCT" />

								</span></b></xsl:if>
								<xsl:if test="substring(CTieuDC/MaCT,1,2) != 'CT'"><span style="font-size: 15px; font-family: Times New Roman;">

									&#160;&#160;<xsl:value-of select="CTieuDC/TenCT" />

								</span></xsl:if>
								
							</td>
							<td
								style="text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
								<span style="font-size: 15px; font-family: Times New Roman;">
									&#160;&#160;&#160;<xsl:value-of select="ChiTietCTieuDC/TenCu" />
								</span>
							</td>
							<td
								style="text-align: left; border-style: solid; border-color: #000000 !important; border-width: 0.5pt;">
								<span style="font-size: 15px; font-family: Times New Roman;">
									&#160;&#160;&#160;<xsl:value-of select="ChiTietCTieuDC/TenMoi" />
								</span>
							</td>

						</tr>
					</xsl:for-each>
				</tbody>
			</table>
		<br />
		
		<div style="float: left; margin: auto; position: relative; width: 100%;">
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span
					style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					<xsl:if test="$tTinKhaiThue/nhanKQQuaBuuDien ">
			<xsl:if test="$tTinKhaiThue/nhanKQQuaBuuDien = 'true'">
				<input type="checkbox" checked="true" disabled="disabled"></input>
			</xsl:if>
			<xsl:if test="$tTinKhaiThue/nhanKQQuaBuuDien != 'true'">
				<input type="checkbox" disabled="disabled"></input>
			</xsl:if>
		 	<span style="font-size: 15px; font-family: Times New Roman;">Không nhận kết quả tại trụ sở cơ quan thuế</span> 
		</xsl:if>
				</span>
			</p>
		</div>

		
		<div style="float: left; margin: auto; position: relative; width: 100%;">
			<p
				style="line-height: 1.5; padding-top: 6pt; direction: ltr; padding-bottom: 0pt">
				<span
					style="font-size: 15px; font-family: Times New Roman; line-height: 1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt">
					Người nộp thuế cam đoan những thông
					tin kê khai trên là hoàn
					toàn chính xác và chịu trách nhiệm trước
					pháp luật về những thông
					tin đã khai./.
				</span>
				<div class="footer_div">
			<table width="100%" cellpadding="3" cellspacing="0" border="0">
				<tr>
					<td width="100"></td>
					<td colspan="1">
					</td>

					<td width="35%" style="text-align:right;font-family: Times New Roman;" colspan="2">
						<i>
							, ngày
							<xsl:value-of select="substring($tTinKhaiThue/ngayKy,9,2)" />
							tháng
							<xsl:value-of select="substring($tTinKhaiThue/ngayKy,6,2)" />
							năm
							<xsl:value-of select="substring($tTinKhaiThue/ngayKy,0,5)" />
						</i>
					</td>

				</tr>
				<tr>
					<td width="10%"></td>
					<td width="25%"><b>NHÂN VIÊN ĐẠI LÝ THUẾ</b>
						<br/>Họ và tên:
					</td>
					<td colspan="1" width="30%"></td>
					<td width="45%" style="text-align:center" rowspan="2">

						<b><span style="font-size: 15px; font-family: Times New Roman;">
							NGƯỜI NỘP THUẾ hoặc ĐẠI DIỆN
							HỢP PHÁP CỦA NGƯỜI NỘP THUẾ
							</span>
						</b>
						<br />
						<i><span style="font-size: 15px; font-family: Times New Roman;">(Ký, ghi rõ họ tên)</span></i>

					</td>
				</tr>
				<tr>
					<td width="10%"></td>
					<td width="25%">Chứng chỉ hành nghề số:</td>
				</tr>
				<tr>
					<td width="10%"></td>
					<td width="25%"></td>
					<td width="35%"></td>
					<td colspan="1" width="30%" style="text-align:center">
						<label>
							<xsl:value-of select="$tTinKhaiThue/nguoiKy" />
						</label>
					</td>
				</tr>
			</table>
			<br />
		</div>
			</p>
		</div>

		
		<!-- <div align="center" -->
		<!-- style="border: 0px solid; float: right; height: 130px; padding: 10px; 
			position: relative; top: 10px; width: 250px;"> -->
		<!-- <span -->
		<!-- style="font-size: 15px; font-family: Times New Roman; line-height: 
			1.5; padding-top: 6pt; height: 11pt; direction: ltr; padding-bottom: 0pt"> -->
		<!-- <i> -->
		<!-- (diaChi), ngày -->
		<!-- <xsl:value-of select="substring($tTinChung/ngayKy,9,2)" /> -->
		<!-- tháng -->
		<!-- <xsl:value-of select="substring($tTinChung/ngayKy,6,2)" /> -->
		<!-- năm -->
		<!-- <xsl:value-of select="substring($tTinChung/ngayKy,0,5)" /> -->
		<!-- </i> -->
		<!-- <br /> -->
		<!-- <b>NGƯỜI NỘP THUẾ hoặc ĐẠI DIỆN</b> -->
		<!-- <br /> -->
		<!-- <b>HỢP PHÁP CỦA NGƯỜI NỘP THUẾ</b> -->
		<!-- <br /> -->
		<!-- Ký, ghi họ tên và đóng dấu (nếu có) -->
		<!-- <br /> -->
		<!-- </span> -->
		<!-- </div> -->
		<div style="clear: both;">&#160;</div>
	</xsl:template>
</xsl:stylesheet>



	


			