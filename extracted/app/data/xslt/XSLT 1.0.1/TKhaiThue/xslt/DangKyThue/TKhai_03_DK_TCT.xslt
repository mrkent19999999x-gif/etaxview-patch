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
				<!--<div class="col-md-3">
				
						<label class="lbl-cbt">Dành cho cơ quan thuế ghi</label>
						    <br></br>
							<label class="lbl-ngay-nhan">Ngày nhận tờ khai</label>
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
							</table>
							
						<label class="lbl-noi-nhan">Nơi nhận:................
						</label>
				
				</div>-->
				<!-- /Title left -->

				<!-- Center title -->
				<div class="col-md-12">
				  <table>
				   <tr>
						<td style="width:75%;text-align:center">
							<b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM<br/>Độc lập-Tự do-Hạnh phúc</b>
							<br/>-------------------------
			            </td>
						<td style="width:25% ; vertical-align: top;" rowSpan="5" align="top">
							<div class="bieu_mau_div">
								<div>Mẫu số: <b>03-ĐK-TCT</b>
									<br/>
									<span class="mtatentkhai" style="font-size:9pt"><i>(Ban hành kèm theo Thông tư số 105/2020/TT-BTC ngày
									03/12/2020
									của Bộ Tài chính)</i> </span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="tentkhai">
							TỜ KHAI ĐĂNG KÝ THUẾ
							<br/>
							<i>(Dùng cho hộ kinh doanh, cá nhân kinh doanh)</i>
						</td>
						
					</tr>
				  </table>
				  <br></br>
				</div>
				<!-- /Center title -->
			
			</div>
			<br />
			<br />
			<br />
			<br />
		</div>
		
			<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:49%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9 ; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										1. Tên người nộp thuế:
										<label class="content-label">
										<xsl:value-of select="$ttkthue/tenNNT" />
										</label>
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											2. Mã số thuế (nếu có):
											<label class="content-label">
											<xsl:value-of select="$tkchinh/CT2/ct2a_soNha" />
										</label>
										</label>
									</div>
									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											3. Thông tin đại lý thuế (nếu có):
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											3a. Tên:
											<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											3b. Mã số thuế:  
											<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												3c. Hợp đồng đại lý thuế: Số: 
												<xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue" />
											</span>
											<span class="content-label-child">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												ngày:
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
							<td rowSpan="2" style="width:49%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											4. Địa chỉ kinh doanh
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4a. Số nhà, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT4/ct4a_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4b. Phường/Xã/Thị trấn:
											<xsl:value-of select="$tkchinh/CT4/ct4b_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4c. Quận/Huyện/Thị xã/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT4/ct4c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4d. Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT4/ct4d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												4đ. Điện thoại:
												<xsl:value-of select="$tkchinh/CT4/ct4d_dienThoai" />
											</span>
											<span class="content-label-child">
												/Fax:
												<xsl:value-of select="$tkchinh/CT4/ct4d_fax" />
											</span>
										</label>
									</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Email:
											<xsl:value-of select="$tkchinh/CT4/ct4d_email" />
										</label>
									</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											5. Địa chỉ nhận thông báo thuế (chỉ kê khai nếu địa chỉ nhận thông báo thuế khác địa chỉ trụ sở chính)
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5a. Số nhà, đường phố/xóm/ấp/thôn hoặc hòm thư bưu điện:
											<xsl:value-of select="$tkchinh/CT5/ct5a_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5b. Phường/Xã/Thị trấn:
											<xsl:value-of select="$tkchinh/CT5/ct5b_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5c. Quận/Huyện/Thị xã/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT5/ct5c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5d. Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT5/ct5d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												5đ. Điện thoại:
												<xsl:value-of select="$tkchinh/CT5/ct5d_dienThoai" />
											</span>
											<span class="content-label-child">
												/Fax:
												<xsl:value-of select="$tkchinh/CT5/ct5d_fax" />
											</span>
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5e. Email:
											<xsl:value-of select="$tkchinh/CT5/ct5d_email" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											7. Giấy chứng nhận đăng ký hộ kinh doanh/Giấy chứng nhận đăng ký kinh doanh (nếu có):
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7a. Số:
											<xsl:value-of select="$tkchinh/CT7/ct7a_so" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7b. Ngày cấp:
											<xsl:value-of select="$tkchinh/CT7/ct7b_ngayCap" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											7c. Cơ quan cấp:
											<xsl:value-of select="$tkchinh/CT7/ct7c_coQuanCap" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											9.Vốn kinh doanh (đồng):
										</label>
									</div>
									<div class="align-r" style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label" style="text-align: right">
										<xsl:value-of select="$tkchinh/ct9" />		
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
										10. Ngành nghề kinh doanh chính
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label three-line">&#160;
										<xsl:value-of select="$tkchinh/CT10/ct10_ten" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										11. Ngày bắt đầu hoạt động
										</label>
									</div>									
									<div style="width: 100%; height: 4; padding: 2px 0px 0px 10px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct11,'dd/mm/yyyy')"/>	
										</label>
									</div>
								</div>
							</td>	
							
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
								     	<label class="parent-label two-line">6. Thông tin về đại diện hộ kinh doanh</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6a. Họ và tên:
											<xsl:value-of select="$tkchinh/CT6/ct6a_ten" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6b. Địa chỉ nơi đăng ký thường trú:
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Số nhà, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT6/CT6B/ct6b_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Phường/Xã/Thị trấn:
											<xsl:value-of select="$tkchinh/CT6/CT6B/ct6b_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Quận/Huyện/Thị xã/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT4/CT6B/ct6b_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT6/CT6B/ct6b_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6c. Địa chỉ hiện tại:
										</label>
									</div>	
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Số nhà, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT6/CT6C/ct6c_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Phường/Xã/Thị trấn:
											<xsl:value-of select="$tkchinh/CT6/CT6C/ct6c_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Quận/Huyện/Thị xã/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT6/CT6C/ct6c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT6/CT6C/ct6c_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6d. Thông tin khác:
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												Điện thoại:
												<xsl:value-of select="$tkchinh/CT6/CT6D/ct6d_dienThoai" />
											</span>
											<span class="content-label-child">
											&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												/Fax:
												<xsl:value-of select="$tkchinh/CT6/CT6D/ct6d_fax" />
											</span>
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
											
												Email:
												<xsl:value-of select="$tkchinh/CT6/CT6D/ct6d_email" />
											</span>
											<span class="content-label-child">
											&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												Website:
												<xsl:value-of select="$tkchinh/CT6/CT6D/ct6d_website" />
											</span>
										</label>
									</div>

									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label two-line">8. Thông tin về giấy tờ của đại diện hộ kinh
										doanh
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												8a. Ngày sinh: 
												<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/ct8a_ngaySinh,'dd/mm/yyyy')"/>
											</span>&#160;&#160;&#160;&#160;
											<span class="content-label-child">
												8b. Quốc tịch:
												<xsl:value-of select="$tkchinh/CT8/ct8b_tenQuocTich" />
											</span>
										</label>
									</div>
									<label class="parent-label two-line">
										<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
											<label class="content-label" style="border-bottom: solid 1px #fff;">&#160;
												8c. Số CMND:
												<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[1]/ct8_soGiayTo" />
											</label>
										</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
											<label class="content-label">&#160;
												<span class="content-label-child">
													Ngày cấp:
													<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/TTinGiayTo[1]/ct8_ngayCap,'dd/mm/yyyy')"/>
												</span>&#160;&#160;&#160;&#160;
												<span class="content-label-child">
													Nơi cấp:
													<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[1]/ct8_noiCap_ten" />
												</span>
											</label>
										</div>
									</label>
									<label class="parent-label two-line">			
										<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
											<label class="content-label" style="border-bottom: solid 1px #fff;">&#160;
												8d. Số Hộ chiếu:
												<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[2]/ct8_soGiayTo" />
											</label>
									    </div>
									    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
									    	<label class="content-label">&#160;
												<span class="content-label-child">
													Ngày cấp:
													<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/TTinGiayTo[2]/ct8_ngayCap,'dd/mm/yyyy')"/>
												</span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												<span class="content-label-child">
													Nơi cấp:
													<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[2]/ct8_noiCap_ten" />
												</span>
											</label>
										</div>										
									</label>
									<label class="parent-label two-line">
									    <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										   <label class="content-label" style="border-bottom: solid 1px #fff;">&#160;
												8e. Số giấy thông hành (đối với
												thương nhân
												nước
												ngoài):
												<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[3]/ct8_soGiayTo" />
											</label>
									    </div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
											<label class="content-label">&#160;
												<span class="content-label-child">
													Ngày cấp:
													<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/TTinGiayTo[3]/ct8_ngayCap,'dd/mm/yyyy')"/>
													
												</span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												<span class="content-label-child">
													Nơi cấp:
													<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[3]/ct8_noiCap_ten" />
												</span>
											</label>
										</div>										
									</label>
									<label class="parent-label two-line">
									    <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
											<label class="content-label" style="border-bottom: solid 1px #fff;">&#160;
												8g. Số CMND biên giới (đối với
												thương nhân
												nước
												ngoài) :
												<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[4]/ct8_soGiayTo" />
											</label>
										</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
											<label class="content-label">&#160;
												<span class="content-label-child">
													Ngày cấp:
													<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/TTinGiayTo[4]/ct8_ngayCap,'dd/mm/yyyy')"/>
												</span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												<span class="content-label-child">
													Nơi cấp:
													<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[4]/ct8_noiCap_ten" />
												</span>
											</label>
										</div>
									</label>
									<label class="parent-label two-line">
									    <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
											<label class="content-label" style="border-bottom: solid 1px #fff;">&#160;
												8h. Số Giấy tờ chứng thực cá nhân khác (nếu không có CMND):
												<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[5]/ct8_soGiayTo" />
											</label>
										</div>
										<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
											<label class="content-label">&#160;
												<span class="content-label-child">
													Ngày cấp:
													<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT8/TTinGiayTo[5]/ct8_ngayCap,'dd/mm/yyyy')"/>
												</span>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
												<span class="content-label-child">
													Nơi cấp:
													<xsl:value-of select="$tkchinh/CT8/TTinGiayTo[5]/ct8_noiCap_ten" />
												</span>
											</label>
										</div>
									</label>
								</div>
							</td>
						</tr>
					</table>
					
				</div>
			<!--<div class="parent-100 col-md-12">-->
			<div class="col-md-12 sparent">&#160;</div>
			<div class="col-md-12 sparent">
				<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
					<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
						<label class="parent-label no-b">12. Tình trạng đăng ký thuế</label>
					</div>
					<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
						<span class="content-span list-check">
							<table style="width: 100%; PAGE-BREAK-inside: avoid;">
								<tr>
								 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
								 	<label>
										<xsl:if test="$tkchinh/CT12/ct12_ma = '01' ">
											X
										</xsl:if>
										<xsl:if test="$tkchinh/CT12/ct12_ma != '01' ">
											&#160;
										</xsl:if>
									</label>
								 </td>
								 <td style="width:45%;"><label class="check-content">&#160;Cấp mới</label></td>
								 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
									<label>
										<xsl:if test="$tkchinh/CT12/ct12_ma = '03' ">
											X
										</xsl:if>
										<xsl:if test="$tkchinh/CT12/ct12_ma != '03' ">
											&#160;
										</xsl:if>
									</label>
								 </td>
								 <td style="width:45%;"><label class="check-content">&#160;Tái hoạt động địa điểm kinh doanh đã chấm dứt hoạt động</label></td>
								 <td><label class="check-content">&#160;</label></td>
								</tr>
								<tr>
								 <td><label class="check-content">&#160;</label></td>
								 <td><label class="check-content">&#160;</label></td>
								</tr>
							</table>
							</span>
						</div>
					</div>
			</div>
			<!--<div class="parent-100 col-md-12">-->
			<div class="col-md-12 sparent">&#160;</div>
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">13. Thông tin về
						các đơn vị liên quan
					</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
					<span class="content-span list-check">
						<table style="width: 100%; PAGE-BREAK-inside: avoid;">
							<tr>
							 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
							 	<label>
									<xsl:if test="$tkchinh/CT13/ct13_ma = 'BK01' ">
										X
									</xsl:if>
									<xsl:if test="$tkchinh/CT13/ct13_ma != 'BK01' ">
										&#160;
									</xsl:if>
								</label>
							 </td>
							 <td style="width:20%;"><label class="check-content">&#160;Có cửa hàng, cửa hiệu, kho hàng phụ thuộc
									</label>
							 </td>
							 <td><label class="check-content">&#160;</label></td>
							</tr>
							<tr>
							 <td><label class="check-content">&#160;</label></td>
							 <td><label class="check-content">&#160;</label></td>
							 <td><label class="check-content">&#160;</label></td>
							</tr>
						</table>
					</span>
				</div>
			</div>
			</div>
			<xsl:if test="$ttkthue/mst != ''">
				<xsl:if test="$ttkthue/nhanKQQuaBuuDien = 'true'">
					<input type="checkbox" checked="true" disabled="disabled"></input>
				</xsl:if>
				<xsl:if test="$ttkthue/nhanKQQuaBuuDien != 'true'">
					<input type="checkbox" disabled="disabled"></input>
				</xsl:if>
				<b>&#160;Không nhận kết quả tại trụ sở cơ quan thuế</b>
			</xsl:if>
		</td></tr>
		<tr>
			<td>	  	
			<xsl:call-template name="tkhaiFooter_03DK_TCT_105">   
			</xsl:call-template>
			<div id="sigDiv"></div>
			</td>
		</tr>	
</table>
</div>
</xsl:template>		
</xsl:stylesheet>
	


			