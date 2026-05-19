<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt">
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
.parent-label1 {
    width: 100%;
    font-weight: bold !important;
    border-bottom: solid 1px #444;
   
}



</style>
   <div class="ndungtkhai_div">
	<table class="ttinnnt_table">
	<tr><td>
	<div class="col-md-12 parent-div">
	<div class="dv-title">
				<!-- Left title -->
				<div class="col-md-3">
					<!--<div class="div-ngay-nhan">-->
					<!--<div class="div-ngay-nhan">-->
						<!-- <label class="lbl-cbt">Dành cho cơ quan thuế ghi</label>&#160;
						<label class="lbl-cbt">For tax office only</label>
						    <br></br>
							<label class="lbl-ngay-nhan">Ngày nhận tờ khai</label>
							<label class="lbl-ngay-nhan">Date of receive</label>
							<table >
							<tr>
							 <td></td>
							 <td class="ngay_nhan">&#160;</td>
							 <td class="ngay_nhan">&#160;</td>
							 <td class="ngay_nhan">&#160;</td>
							 <td class="ngay_nhan">&#160;</td>
							 <td class="ngay_nhan">&#160;</td>
							 <td class="ngay_nhan">&#160;</td>
							  <td></td>
							</tr>
							</table> -->
							
						<!--<label class="lbl-noi-nhan">Nơi nhận:................
						</label>-->
						<!--</div>-->
					<!--</div>-->
				</div>
				<!-- /Title left -->

				<!-- Center title -->
				<div class="col-md-9">
				  <table>
				   <tr>
						<td style="width:67%;text-align:center">
							<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
							<br/>-------------------------
			            </td>
						<td style="width:33% ; vertical-align: top;" rowSpan="5" align="top">
							<div class="bieu_mau_div">
								<div>Mẫu số: <b>04-ĐK-TCT</b>
									<br/>
									<span class="mtatentkhai" style="font-size:9pt"><i>(Ban hành kèm theo Thông tư số 105/2020/TT-BTC ngày 03/12/2020 của Bộ Tài chính)</i> </span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<b>Tờ khai đăng ký thuế</b>
							<br/>TAX REGISTRATION FORM
							<br/><i>(Dùng cho các nhà thầu nước ngoài, nhà thầu phụ nước ngoài, Ban điều hành liên danh)</i>
							<br/>(Use for contractor/sub-contractor/management board)
						</td>
					</tr>
					<!-- /Title left -->

				  </table>
				  <table>
				   <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
								<span class="content-span">&#160;
									<table style="width: 100%">
										<tr>
											<td ><label>&#160;</label></td>
											<td class="ngay_nhan">	
											<label>
												<xsl:if test="$tkchinh/kKhai_NopThueNT = 'true'">
													X
												</xsl:if>
												<xsl:if test="$tkchinh/kKhai_NopThueNT = 'false'">
													&#160;
												</xsl:if>
											</label>
											</td>
											<td><label class="check-content">Kê khai - nộp thuế nhà thầu</label></td>
											<td ><label>&#160;</label></td>
											<td class="ngay_nhan">
											<label>
												<xsl:if test="$tkchinh/kKhai_NopThueKhac = 'true'">
													X
												</xsl:if>
												<xsl:if test="$tkchinh/kKhai_NopThueKhac = 'false'">
													&#160;
												</xsl:if>
												</label>
											</td>
											<td ><label class="check-content">Kê khai-nộp các loại thuế khác</label></td>
										</tr>	
									</table>
								</span>
							</div>
				  </table>
				</div>
			</div>
		</div>
				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:49%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4;  padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										1. Tên nhà thầu nước ngoài/nhà thầu phụ nước ngoài/Ban điều hành liên danh:
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Name of contractor/ sub-contractor/management board
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="$tkchinh/ct1_tenNhaThau" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label>
										<b>2. Thông tin đại lý thuế (nếu có):</b> 
										<br/>
										&#160; &#160; Tax agent (if any)
										</label>
									</div> 
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											2a. Tên (Name):
											<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue" />
										</label>
									</div>		
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											2b. Mã số thuế (TIN of Tax agent)  : 
											<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												2c. Hợp đồng đại lý thuế: Số: 
												<br/>
												Tax agent contract: Number
												<xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue" />
											</span>
											<span class="content-label-child">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												ngày (Date):
												<xsl:value-of select="ihtkk:stringDatetime($ttkthue/DLyThue/ngayKyHDDLyThue, 'dd/mm/yyyy')" />
											</span>
										</label>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="2" style="width:1%;vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label>
											<b>3. Quốc tịch</b> (Nationality): 
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label three-line">&#160;
										<xsl:value-of select="$tkchinh/CT3/ct3_tenQuocTich" />
										</label>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
					<table>
						<tr>
							<td rowSpan="2" style="width:50%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4;  padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											4. Địa chỉ trụ sở chính:
										</label>
										<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Address of the head office
										</label>
									</div>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="$tkchinh/CT4/ct4_diaChi" />
										</label>
									</div>		
									
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Điện thoại (Tel):
											<xsl:value-of select="$tkchinh/CT4/ct4_dienThoai" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Fax:											
											<xsl:value-of select="$tkchinh/CT4/ct4_fax" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 120px 0px !important;">
										<label class="content-label">&#160;
											Email: 											
											<xsl:value-of select="$tkchinh/CT4/ct4_email" />
										</label>
									</div>
								</div>
							</td>
							<td  rowSpan="2">&#160;</td>
							<td style="width:50%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											4. Địa chỉ văn phòng điều hành tại Việt Nam 
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Address of management office in Vietnam
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5a. Số nhà, đường phố, thôn, xóm:
											<xsl:value-of select="$tkchinh/CT5/ct5a_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Street number, Street name or Commune
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5b. Phường/ xã: 
											<xsl:value-of select="$tkchinh/CT5/ct5b_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Ward
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5c. Quận/Huyện: 
											<xsl:value-of select="$tkchinh/CT5/ct5c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											District
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5d. Tỉnh/Thành phố:
											<xsl:value-of select="$tkchinh/CT5/ct5d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Province/ City
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												5e. Điện thoại (Tel):
												<xsl:value-of select="$tkchinh/CT5/ct5e_dienThoai" />
											</span>
											<span class="content-label-child">
												/Fax:
												<xsl:value-of select="$tkchinh/CT5/ct5e_fax" />
											</span>
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Email:
											<xsl:value-of select="$tkchinh/CT5/ct5e_email" />
										</label>
									</div>

								</div>
							</td>
							</tr>
					</table>
					
					
					<table>
						<tr>
							<td rowSpan="2" style="width:49%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											6. Giấy phép hoạt động kinh doanh tại Việt Nam 
										</label>
									</div>	
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Business licence in Vietnam
										</label>
									</div>									
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6a. Số giấy phép:
											<xsl:value-of select="$tkchinh/CT6/ct6a_so" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Number
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6b. Ngày cấp: 
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT6/ct6b_ngayCap, 'dd/mm/yyyy')" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Date
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6c. Cơ quan cấp:
											<xsl:value-of select="$tkchinh/CT6/ct6c_coQuanCap" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Granted by
										</label>
									</div>
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											7. Hoạt động tại Việt Nam theo hợp đồng Nhà thầu hoặc Nhà thầu phụ
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Contract for Contractor/Sub-Contractor operation in Vietnam
										</label>
									</div>	
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7a. Số:
											<xsl:value-of select="$tkchinh/CT7/ct7a_so" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Number
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7b. Ngày
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT7/ct7b_ngay, 'dd/mm/yyyy')" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Date
											<br/>
										</label>
									</div>
								</div>
							</td>
							</tr>
					</table>
					<div class="col-md-12 sparent">
				</div>
					<table>
						<tr>
							<!-- <td rowSpan="2" style="width:49%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											7. Đăng ký xuất nhập khẩu
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Registration of import, export activities
										</label>
									</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<span class="content-span">&#160;
											<table style="width: 100%">
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="ngay_nhan">	
												 	<label>
													 	<xsl:if test="$tkchinh/ct7 = 'true'">
															X
														</xsl:if>
														<xsl:if test="$tkchinh/ct7 = 'false'">
															&#160;
														</xsl:if>
													</label>
												 </td>
												 <td><label class="check-content">&#160;Có (Yes)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</label>
												 
												 </td>
												 <td class="ngay_nhan">
													<label>
													 	<xsl:if test="$tkchinh/ct7 = 'true'">
															&#160;
														</xsl:if>
														<xsl:if test="$tkchinh/ct7 = 'false'">
															X
														</xsl:if>
													</label>
												 </td>
												 <td ><label class="check-content">&#160;Không (No)</label></td>
												</tr>
											</table>
										</span>
									</div>									
								</div>
							</td> -->
							<td style="width: 1%;" rowSpan="2">&#160;&#160;&#160;</td>
							<td style="vertical-align: top;">
							<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7c. Ký với:
											<xsl:value-of select="$tkchinh/CT7/ct7c_kyVoi" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Signed with
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Mã số NNT tại Việt Nam (nếu có):
											<xsl:value-of select="$tkchinh/CT7/ct7c_mstTaiVN" />
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Tax payers identification number in Vietnam (if any)
										</label>
									</div>
							</div>
							</td>
							
							</tr>
							
					</table>

				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:1%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4;  padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										8. Mục tiêu hoạt động tại Việt Nam theo hợp đồng
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Contract objectives
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="$tkchinh/ct8" />
										</label>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>	
				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:1%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4;  padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										9. Địa điểm tiến hành công việc theo hợp đồng
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Location of according to the contract
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="$tkchinh/ct9" />
										</label>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>	
				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:1%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4;  padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										10. Thời gian thực hiện hợp đồng
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Contract duration
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<span class="content-label-child">
												Từ (From): 
												<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT10/tuNgay, 'dd/mm/yyyy')" />
										</span>
										<span class="content-label-child">
												đến (to):
												<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT10/denNgay, 'dd/mm/yyyy')" />
										</span>
										
										</label>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>	
				
				<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">11. Nhà thầu phụ nước ngoài</label>
				</div>
				<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Do you have sub-contractor?
										</label>
									</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT11 = 'true'">
															X
								</xsl:if>
								<xsl:if test="$tkchinh/CT11 = 'false'">
															&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Có (Yes  )</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
						 
							<label>
							<xsl:if test="$tkchinh/CT11 = 'true'">
															&#160;
							</xsl:if>
							<xsl:if test="$tkchinh/CT11 = 'false'">
															X
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Không (No)</label></td>
						 </tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
					</table>
				</span>
				</div>
			</div>
			</div>

				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:49%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										12. Thông tin người đại diện của nhà thầu nước ngoài (hoặc nhà thầu phụ nước ngoài): 
										</label>
									</div>  
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Information of representative of contractor (or sub-contractor)
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											12a. Tên người đại diện theo pháp luật:
											<xsl:value-of select="$tkchinh/CT12/ct12a_ten" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Name of representative of contractor (or sub-contractor)
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											12b. Chức vụ:
											<xsl:value-of select="$tkchinh/CT12/ct12b_chucVu" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Possition
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											12c. Chứng từ chứng thực cá nhân: 
										</label>
										<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
										<span class="content-label-child">&#160;
											<table style="width: 100%">
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="content-label">	
												 	<label>
													 	Số giấy chứng thực cá nhân: <xsl:value-of select="$tkchinh/CT12/CT12C/so" />
														<br/>Passport or Identify number
													</label>
													
												 </td>
												 <td class="content-label">	
												 	<label>
													 	Ngày cấp: <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/CT12C/ngayCap, 'dd/mm/yyyy')" />
														<br/>Date of Issue 
													</label>
												 </td>
												</tr>
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="content-label">	
												 	<label>
													 	Ngày hết hạn:<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/CT12C/ngayHetHan, 'dd/mm/yyyy')" />
														<br/>Date of Expiration 
													</label>
													
												 </td>
												 <td class="content-label">	
												 	<label>
													 	Nơi cấp: <xsl:value-of select="$tkchinh/CT12/CT12C/noiCap_ten" />
														<br/>Place of Issue
													</label>
												 </td>
												</tr>
											</table>
										</span>
									</div>			
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											12d. Địa chỉ tại Việt Nam:
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Address of representative of contractor (or sub-contractor) in Vietnam
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Số nhà/ Đường phố:
											<xsl:value-of select="$tkchinh/CT12/CT12D/ct12d_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Street number, Street name or Commune
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Phường/xã:           
											<xsl:value-of select="$tkchinh/CT12/CT12D/ct12d_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Ward
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Quận/Huyện:          
											<xsl:value-of select="$tkchinh/CT12/CT12D/ct12d_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											District
										</label>
									</div>	
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Tỉnh/Thành phố:          
											<xsl:value-of select="$tkchinh/CT12/CT12D/ct12d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
											Province/City
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											12e. Thông tin khác:
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Others
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<span class="content-label-child">&#160;
											<table style="width: 100%">
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="content-label">	
												 	<label>
													 	Điện thoại (tel):                                   
														<xsl:value-of select="$tkchinh/CT12/CT12E/ct12e_dienThoai" />
													</label>
													
												 </td>
												 <td class="content-label">	
												 	<label>
													 	/Fax:
														<xsl:value-of select="$tkchinh/CT12/CT12E/ct12e_fax" /> 
													</label>
												 </td>
												</tr>
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="content-label">	
												 	<label>
													 	Email:                                                                             
												<xsl:value-of select="$tkchinh/CT12/CT12E/ct12e_email" />
													</label>
													
												 </td>
												 <td class="content-label">	
												 	<label>
													 	Website:
												<xsl:value-of select="$tkchinh/CT12/CT12E/ct12e_website" />
													</label>
												 </td>
												</tr>
											</table>
										</span>
									</div>			
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>	
			
			<!--ct13-->
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">13. Phương pháp tính thuế GTGT</label>
				</div>
				<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											VAT calculation method
										</label>
									</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT13/ct13_ma = '1'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT13/ct13_ma != '1'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Khấu trừ (Deduction method)</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
						 
							<label>
							<xsl:if test="$tkchinh/CT13/ct13_ma = '2'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT13/ct13_ma != '2'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Trực tiếp trên GTGT (Directly method)</label></td>
						 </tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
					</table>
				</span>
				</div>
			</div>
			</div>
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">14. Phương pháp tính thuế TNDN</label>
				</div>
				<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											CIT calculation method
										</label>
									</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT14/ct14_ma = '3'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT14/ct14_ma != '3'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Trực tiếp trên doanh thu (Directly method)</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
						 
							<label>
							<xsl:if test="$tkchinh/CT14/ct14_ma = '5'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT14/ct14_ma != '5'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Doanh thu, chi phí (Revenues, expenses)</label></td>
						 </tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
					</table>
				</span>
				</div>
			</div>
			</div>
							
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">15. Năm tài chính</label>
				</div>
				<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Finacial year
										</label>
									</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						<td>
							<label class="content-label">&#160;
											Từ ngày (From):  
								<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT15/tuNgay, 'dd/mm/yyyy')" />
							</label>
						
							<label class="content-label">
											đến ngày (to):
								<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT15/denNgay, 'dd/mm/yyyy')" />
						 </label>
						  </td>
						
						 </tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
					</table>
				</span>
				</div>
			</div>
			</div>
			
			<!-- <div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">16. Tài khoản ngân hàng</label>
				</div>
				<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Bank account
										</label>
									</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/ct16 = 'true'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/ct16 = 'false'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Có (Yes)</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
						 
							<label>
							<xsl:if test="$tkchinh/ct16 = 'true'">
									&#160;
								</xsl:if>
								<xsl:if test="$tkchinh/ct16 = 'false'">
									X
								</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Không (No)</label></td>
						 </tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
					</table>
				</span>
				</div>
			</div>
			</div> -->
			<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:1%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4;  padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										16. Tài liệu kèm theo
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Attachments
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="$tkchinh/ct16" />
										</label>
									</div>
								</div>
							</td>
							
						</tr>
						
					</table>
				</div>	
			
			
			
			
		</td></tr>
		<tr>
			<td>	  	
			<xsl:call-template name="tkhaiFooter_pluc_01_105">   
			</xsl:call-template>
			<div id="sigDiv"></div>
			</td>
		</tr>	
</table>
</div>
</xsl:template>		
</xsl:stylesheet>
	


			