<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
<xsl:include href="../../include/tkhaiDKheader.xsl"/>
 <xsl:include href="../../include/TKhaiFooter.xsl"/> 
 <xsl:include href="../../common/common.xsl"/> 
<xsl:template match="/">
	    <xsl:variable name="ttkthue" select='HSoThueDTu/HSoKhaiThue/TTinChung/TTinTKhaiThue' />		
		<xsl:variable name="tkchinh" select='HSoThueDTu/HSoKhaiThue/CTieuTKhaiChinh' />

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
	height: auto;
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
	width: 75%;
}

.col-md-8 {
	width: 66.66666667%;
}

.col-md-7 {
	width: 58.33333333%;
}

.col-md-6 {
	width: 50%;
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
    border-bottom: solid 1px #444;
   
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
    width: 49%;
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

</style>
   <div class="ndungtkhai_div">
	<table class="ttinnnt_table">
	<tr><td>
	<div class="col-md-12 parent-div">
			<div class="dv-title col-md-12">
				<table>
				   <tr>
						<td style="width:70%;text-align:center">
							<div class="col-md-3" >&#160;</div>
			            </td>
						<td style="width:30% ; vertical-align: top;" rowSpan="5" align="top">
							<div class="dv-mau-so" style="height: 80px;">
								<b>Mẫu số: 25/ĐK-TCT</b><br />
								<i>(Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ trưởng Bộ Tài chính)</i>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="dv-title">
				<div style="width:100%">
				 <table >
				   <tr>
					<td width="25%">
						<table>
							<tr>
							 <td align="center" border="1px">
								 <label class="f-bold" style="text-transform: uppercase;"><xsl:value-of select="$ttkthue/tenNNT" /></label>
								 <br></br>
								 <label class="lbl-gach-chan">-----------------------</label>
								 <br/>
								 <div class="vl" style="width:40% ; vertical-align: top;"></div>
							 </td>
							</tr>
						<!--	<tr>
							 <td>&#160;</td>
							</tr>-->
							<tr>
							 <td align="left" ><label class="lbl-noi-nhan">&#160;&#160;&#160;Số:</label><xsl:value-of select="$tkchinh/so" /></td>
						
							</tr>
							</table>
					</td>
					<td >
						<table align="center">
							<tr>
								<td style="width:75%;text-align:center">
									<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
									<br/>-------------------------
									<br/>
									<label><i>Ngày <xsl:value-of select="substring($tkchinh/ngay,9,2)"/> tháng <xsl:value-of select="substring($tkchinh/ngay,6,2)"/> năm <xsl:value-of select="substring($tkchinh/ngay,0,5)"/> </i></label>
								</td>
							</tr>
				   		</table>
					</td>
				   </tr>
				 </table>  		 
				</div>
			</div>
			<div class="col-md-12" style="text-align: center;">
					<label class="f-bold">VĂN BẢN
					<br></br>
					<br/>Đề nghị khôi phục mã số thuế
					</label>
					<br></br>
			</div>
			<div class="col-md-12 no-p col-sm-offset-1" style="text-align: center; margin-top: 30px;  padding: 2px 0px 0px 0px !important">&#160;
				<label>Kính gửi: </label>&#160;
					<xsl:value-of select="$ttkthue/tenCQTQuanLy" />
			</div>
		</div>
		<div class="col-md-12 full-header" style="margin-top: 30px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">1. Tên người nộp thuế <i>(ghi theo tên NNT đã đăng ký thuế hoặc đăng ký doanh nghiệp):</i>
							</label>
						</div>
						<div class="col-md-6">
								<xsl:value-of select="$ttkthue/tenNNT" />
							
						</div>
					</div>
				</div>
		</div>
		<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">2. Mã số thuế: </label>
						</div>
						<div class="col-md-6">
								<xsl:value-of select="$ttkthue/mst" />
						</div>
					</div>
					</div>
		</div>
		<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">3. Địa chỉ trụ sở chính <i>(ghi theo địa chỉ trụ sở của tổ chức đã đăng ký thuế hoặc của doanh nghiệp, hợp tác xã đã đăng ký doanh nghiệp, đăng ký hợp tác xã):</i>
							</label>
						</div>
						<div class="col-md-6">
							<xsl:value-of select="$tkchinh/diaChiTSChinh" />
						</div>
					</div>
				</div>
			</div>
		<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">4. Địa chỉ kinh doanh <i>(ghi địa chỉ kinh doanh của hộ kinh doanh, cá nhân kinh doanh đã đăng ký thuế): </i></label>
						</div>
						<div class="col-md-6">
							<xsl:if test="$tkchinh/DiaChiKD/soNha != ''"><xsl:value-of select="$tkchinh/DiaChiKD/soNha" />, <xsl:value-of select="$tkchinh/DiaChiKD/tenPhuong" />, <xsl:value-of select="$tkchinh/DiaChiKD/tenTinh" /></xsl:if>
							<xsl:if test="$tkchinh/DiaChiKD/soNha = ''"></xsl:if>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<label class="col-md-12">5. Địa chỉ hiện tại <i>(nếu khác địa chỉ đã đăng ký): </i></label>
							</div>
							<div class="col-md-6">
								<xsl:if test="$tkchinh/DiaChiHT/soNha != ''"><xsl:value-of select="$tkchinh/DiaChiHT/soNha" />, <xsl:value-of select="$tkchinh/DiaChiHT/tenPhuong" />, <xsl:value-of select="$tkchinh/DiaChiHT/tenTinh" /></xsl:if>
								<xsl:if test="$tkchinh/DiaChiHT/soNha = ''"></xsl:if>
							</div>
						</div>
					</div>
			</div>

		<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">6. Lý do đề nghị khôi phục mã số thuế:
							</label>
						</div>
						<div class="col-md-6" style="word-wrap:break-word; ">
							<xsl:value-of select="$tkchinh/lyDoDNKhoiPhucMST" />
						</div>
					</div>
				</div>
			</div>
		<div class="col-md-12 full-header" style="margin-top: 15px; width:100%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<label class="col-md-12">7. Hồ sơ đính kèm:</label>
							
						</div>
				
						<!--<div class="col-md-6" style="word-wrap:break-word; ">
							<xsl:value-of select="$tkchinh/HoSoDK/ChiTietHS/tenHS" />
						</div>		-->
						<div class="col-md-6" style="word-wrap:break-word; ">
							<xsl:for-each select="$tkchinh/HoSoDK/ChiTietHS">
									<xsl:variable name="currentRows" select='position()' />
								<label id="hSoDKem"> - </label> <xsl:value-of select="tenHS"/><br/>
							</xsl:for-each>
						</div>
					</div>
				</div>
			</div>	
		</td>
		</tr>
		<tr>
			<td>	  	
				<xsl:call-template name="tkhaiFooter_24DK_TCT">   
				</xsl:call-template>
				<div id="sigDiv"></div>
			</td>
		</tr>
</table>
</div>

</xsl:template>		
</xsl:stylesheet>