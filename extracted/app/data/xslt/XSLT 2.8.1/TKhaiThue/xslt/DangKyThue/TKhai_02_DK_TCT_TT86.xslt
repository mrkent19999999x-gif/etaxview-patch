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
					<!-- <div class="div-ngay-nhan">
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
						</div> -->
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
								<div>Mẫu số: <b>02-ĐK-TCT</b>
									<br/>
									<span class="mtatentkhai" style="font-size:9pt"><i>(Kèm theo Thông tư số 86/2024/TT-BTC ngày 23/12/2024 của Bộ trưởng Bộ Tài chính
)</i> </span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="tentkhai">
							Tờ khai đăng ký thuế
						</td>
					</tr>
					<tr>
						<td>
							<i>(Dùng cho đơn vị phụ thuộc, địa điểm kinh doanh trực tiếp phát sinh nghĩa vụ thuế)</i>
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
												<xsl:if test="$tkchinh/chiNhanh = 'true'">
													X
												</xsl:if>
												<xsl:if test="$tkchinh/chiNhanh = 'false'">
													&#160;
												</xsl:if>
											</label>
											</td>
											<td><label class="check-content">Chi nhánh</label></td>
											<td ><label>&#160;</label></td>
											<td class="ngay_nhan">
											<label>
												<xsl:if test="$tkchinh/vanPhongDD = 'true'">
													X
												</xsl:if>
												<xsl:if test="$tkchinh/vanPhongDD = 'false'">
													&#160;
												</xsl:if>
												</label>
											</td>
											<td ><label class="check-content">Văn phòng đại diện</label></td>
											<td ><label>&#160;</label></td>												
											<td class="ngay_nhan">
											<label>
												<xsl:if test="$tkchinh/diaDiemKD = 'true'">
													X
												</xsl:if>
												<xsl:if test="$tkchinh/diaDiemKD = 'false'">
													&#160;
												</xsl:if>
											</label>
											</td>
											<td ><label class="check-content">Địa điểm kinh doanh</label></td>
											<td ><label>&#160;</label></td>
										</tr>	
									</table>
								</span>
							</div>
					<tr>
								 <td style="width:100px;text-align:center"><i>NNT ghi MST 10 số của đơn vị chủ quản vào các ô này</i></td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
								 <td style="width:100px;text-align:center"><xsl:value-of select="substring($tkchinh/CT13/ct13a_mst,0,11)" /></td>
								 
								</tr>
							</table>
						</td>
					</tr>
				  </table>
				</div>
			</div>
			
			<br />
		</div>
				<div class="col-md-12 sparent">
					<table >
						<tr>
							<td rowSpan="1" style="width:1%; vertical-align: top;">
								<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										1. Tên người nộp thuế: 
										<label class="content-label">
										<xsl:value-of select="$ttkthue/tenNNT" />
										</label>
										</label>
									</div>  
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 2px 0px 0px 0px !important;">
										<label class="parent-label">
										2. Thông tin đại lý thuế (nếu có): 
										</label>
									</div> 
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											2a. Tên:
											<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue" />
										</label>
									</div>		
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											2b. Mã số thuế: 
											<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												2c. Hợp đồng đại lý thuế: Số: 
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
					<table>
						<tr>
							<td rowSpan="2" style="width:49%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											3. Địa chỉ trụ sở chính
											
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 3px 0px !important;">
										<label class="content-label">&#160;
											3a. Số nhà, ngách, hẻm, ngõ, đường/phố, tổ/xóm/ấp/thôn::
											<xsl:value-of select="$tkchinh/CT3/ct3a_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 3px 0px !important;">
										<label class="content-label">&#160;
											3b. Xã/phường/đặc khu:
											<xsl:value-of select="$tkchinh/CT3/ct3b_tenPhuong" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 3px 0px !important;">
										<label class="content-label">&#160;
											3c. Quận/Huyện/Thị xã/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT3/ct3c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 3px 0px !important;">
										<label class="content-label">&#160;
											3d. Tỉnh/Thành phố trực thuộc trung ương:
											
											<xsl:value-of select="$tkchinh/CT3/ct3d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 3px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												3đ. Điện thoại:
												<xsl:value-of select="$tkchinh/CT3/ct3d_dienThoai" />
											</span>
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 5px 0px !important;">
										<label class="content-label">&#160;
											3e. Fax:
											<xsl:value-of select="$tkchinh/CT3/ct3d_fax" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 5px 0px !important;">
										<label class="content-label">&#160;
											3g. E-mail:
											<xsl:value-of select="$tkchinh/CT3/ct3e_email" />
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											3h. Website (nếu có):
											<xsl:value-of select="$tkchinh/CT3/ct3h_website" />
										</label>
									</div>
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											4. Địa chỉ nhận thông báo thuế <i>((chỉ kê khai nếu địa chỉ nhận thông báo thuế khác địa chỉ trụ sở chính)</i>
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4a. Số nhà, ngách, hẻm, ngõ, đường/phố, tổ/xóm/ấp/thôn hoặc hòm thư bưu điện:
											<xsl:value-of select="$tkchinh/CT4/ct4a_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4b. Xã/phường/đặc khu:
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
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4e. Fax:
											<xsl:value-of select="$tkchinh/CT4/ct4d_fax" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											4g. E-mail:
											<xsl:value-of select="$tkchinh/CT4/ct4e_email" />
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
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											5. Quyết định thành lập

										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5a. Số quyết định:
											<xsl:value-of select="$tkchinh/CT5/ct5a_soQD" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5b. Ngày ký quyết định: 
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT5/ct5b_ngayQD, 'dd/mm/yyyy')" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											5c. Cơ quan ban hành quyết định:
											<xsl:value-of select="$tkchinh/CT5/ct5c_coQuanQD" />
										</label>
									</div>
	
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											6. Giấy phép thành lập và hoạt động hoặc Giấy tờ tương đương do cơ quan có thẩm quyền cấp
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6a. Số:
											<xsl:value-of select="$tkchinh/CT6/ct6a_so" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6b. Ngày cấp:
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT6/ct6b_ngayCap, 'dd/mm/yyyy')" />
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											6c. Cơ quan cấp:
											<xsl:value-of select="$tkchinh/CT6/ct6c_coQuanCap" />
										</label>
									</div>

								</div>
							</td>
							</tr>
					</table>
					<table>
						<tr>				
							<td rowSpan="2" style="width:50%; vertical-align: top;">
								<!-- <div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											6. Đăng ký xuất nhập khẩu
										</label>
									</div>
										<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<span class="content-span">&#160;
											<table style="width: 100%">
												<tr>
												 <td class="ngay_nhan">	
												 	<label>
													 	<xsl:if test="$tkchinh/ct6 = 'true'">
															X
														</xsl:if>
														<xsl:if test="$tkchinh/ct6 = 'false'">
															&#160;
														</xsl:if>
													</label>
												 </td>
												 <td><label class="check-content">&#160;Có&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</label></td>
												 <td class="ngay_nhan">
													<label>
													 	<xsl:if test="$tkchinh/ct6 = 'true'">
															&#160;
														</xsl:if>
														<xsl:if test="$tkchinh/ct6 = 'false'">
															X
														</xsl:if>
													</label>
												 </td>
												 <td ><label class="check-content">&#160;Không</label></td>
												</tr>
											</table>
										</span>
									</div>									
								</div> -->
							</td>
							<!-- <td style="width:6px;" rowSpan="2">&#160;</td>
							<td rowSpan="2" style="width:50%;vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											7. Ngành nghề kinh doanh chính
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label three-line">&#160;
										<xsl:value-of select="$tkchinh/CT7/ct7_ten" />
										</label>
									</div>
								</div>
							</td> -->
							</tr>
					</table>
					<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
					<label class="parent-label no-b">7. Ngành nghề kinh doanh chính:</label>
					<label class="content-label"> &#160;
					<xsl:value-of select="$tkchinh/CT7/ct7_ten" />
					</label>
				</div>
			</div>
			</div>

					<table>
						<tr>
							<td rowSpan="2" style="width:50%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											8. Vốn điều lệ (=8.1+8.2+8.3+8.4): 
											<xsl:value-of select="ihtkk:formatNumber($tkchinh/CT8/CT80/ct8_0_vonDieuLe)"/>
										</label>
									</div>
									
									<!-- <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
										
 											8.1. Vốn trong nước:
											<xsl:value-of select="$tkchinh/CT8/CT8_1/ct8_1"/>
										</label>
									</div> -->									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<span class="content-label-child">
											8.1. Vốn nhà nước:
											<xsl:value-of select="ihtkk:formatNumber($tkchinh/CT8/CT8_1/ct8_1_vonNhaNuoc)"/>
											</span>
										<span class="content-label-child">&#160;&#160;&#160;&#160;
											Tỷ trọng: 
											<xsl:value-of select="$tkchinh/CT8/CT8_1/ct8_1_tyTrong"/>%
										</span>
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<span class="content-label-child">
											8.2. Vốn nước ngoài:
											<xsl:value-of select="ihtkk:formatNumber($tkchinh/CT8/CT8_2/ct8_2_vonNN)"/> 
											</span>
										<span class="content-label-child">&#160;&#160;&#160;&#160;
											Tỷ trọng: 
											<xsl:value-of select="$tkchinh/CT8/CT8_2/ct8_2_tyTrong"/>%
										</span>
										</label>
									</div>
										
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<span class="content-label-child">
											8.3. Vốn tư nhân: 
											<xsl:value-of select="ihtkk:formatNumber($tkchinh/CT8/CT8_3/ct8_3_vonTuNhan)"/>
										</span>
										<span class="content-label-child">&#160;&#160;&#160;&#160;
											Tỷ trọng: 
											<xsl:value-of select="$tkchinh/CT8/CT8_3/ct8_3_tyTrong"/>%
										</span>
										</label>
									</div> 
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
										<span class="content-label-child">
											8.4. Vốn khác: 
											<xsl:value-of select="ihtkk:formatNumber($tkchinh/CT8/CT8_4/ct8_4_vonKhac)"/>
										</span>
										<span class="content-label-child">&#160;&#160;&#160;&#160;
											Tỷ trọng: 
											<xsl:value-of select="$tkchinh/CT8/CT8_4/ct8_4_tyTrong"/>%
										</span>
										</label>
									</div> 
									<!-- <div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
										<span class="content-label-child">
											8.4. Vốn khác: 
											<xsl:value-of select="$tkchinh/CT8/CT8_4/ct8_4_vonKhac"/>
											</span>
											<span class="content-label">&#160;&#160;&#160;&#160;
											Tỷ trọng: 
											<xsl:value-of select="$tkchinh/CT8/CT8_4/ct8_4_tyTrong"/>%
										</span>
										</label>
									</div> -->	
									
									
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td rowSpan="2" style="width:50%;vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											9. Ngày bắt đầu hoạt động:
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 2px 0px 0px 10px !important;">
										<label class="content-label">&#160;
										<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct9,'dd/mm/yyyy')"/>
										<br/>
										<br/>
										<br/>
										<br/>
										</label>
									</div>
								</div>
							</td>
							</tr>
					</table>
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">10. Loại hình kinh tế</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT10/ct10_ma = '04'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT10/ct10_ma != '04'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td style="width:40%;"><label class="check-content">Công ty cổ phần</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '03'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '03'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Công ty TNHH 1 thành viên</label></td>
						 
						</tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
						<tr>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT10/ct10_ma = '22'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT10/ct10_ma != '22'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						 <td ><label class="check-content">Công ty TNHH 2 thành viên trở lên</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet = '01' or $tkchinh/CT10/ct10_ma_ctiet = '01'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet != '01' or $tkchinh/CT10/ct10_ma_ctiet != '01'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Đơn vị sự nghiệp ngoài công lập</label></td>
						</tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
						
						<tr>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet = '02' or $tkchinh/CT10/ct10_ma_ctiet = '02'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet != '02' or $tkchinh/CT10/ct10_ma_ctiet != '02'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Đơn vị sự nghiệp công lập</label></td>
						 <br></br>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '05'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '05'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Doanh nghiệp tư nhân</label></td>
						</tr>
						
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						
						</tr>
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '11'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '11'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td style="width: 40%;"><label class="check-content">Công ty hợp danh</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '13'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '13'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td ><label class="check-content">Hợp đồng hợp tác, kinh doanh với người nước ngoài</label></td>
						</tr>
						
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						
						</tr>
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '20'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '20'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td ><label class="check-content">VPĐD của tổ chức nước ngoài tại Việt Nam</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '21'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '21'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Tổ chức kinh tế của lực lượng vũ trang</label></td>
						</tr>
						
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						
						</tr>
								
						
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '15'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '15'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Tổ hợp tác</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '07'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '07'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Tổ chức kinh tế của tổ chức chính trị, CT-XH, xã hội, XH-NN</label></td>
						</tr>
					<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
					</tr>
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma = '09'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma != '09'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Hợp tác xã</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet = '03'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet != '03'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Cơ quan hành chính</label></td>
						</tr>
						<td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet = '04'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT10/ct10_ma_ctiet != '04'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Loại hình khác</label></td>
						 
						</tr>
					
					</table>
				</span>
				</div>
			</div>
			</div>
				<div class="col-md-12 sparent">		
					<table>
						<tr>
							<td rowSpan="2" style="width:52%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											11. Hình thức hạch toán kế toán về kết quả kinh doanh
										</label>
									</div>
										<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<span class="content-span">&#160;
											<table style="width: 100%">
												<tr>
												 <td ><label>&#160;</label></td>
												 <td class="ngay_nhan">	
												 	<label>
													 	<xsl:if test="$tkchinh/CT11/docLap = 'true'">
															X
														</xsl:if>
														<xsl:if test="$tkchinh/CT11/docLap != 'true'">
															&#160;
														</xsl:if>
													</label>
												 </td>
												 <td><label class="check-content">&#160;Độc lập                             &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</label></td>
												 <td class="ngay_nhan">
													<label>
													 	<xsl:if test="$tkchinh/CT11/phuThuoc = 'true'">
															X
														</xsl:if>
														<xsl:if test="$tkchinh/CT11/phuThuoc != 'true'">
															&#160;
														</xsl:if>
													</label>
												 </td>
												 <td ><label class="check-content">&#160;Phụ thuộc</label></td>
												</tr>
											</table>
										</span>
									</div>									
								</div>
							</td>
							<td ><label class="check-content">&#160;</label></td>
							<td ><label class="check-content">&#160;</label></td>
							<td ><label class="check-content">&#160;</label></td>
							<td ><label class="check-content">&#160;</label></td>
							<td ><label class="check-content">&#160;</label></td>
							<td style="width:10%" rowSpan="2">&#160;</td>
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											12. Năm tài chính
										</label>
									</div>
									<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">
											Từ ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/tuNgay, 'dd/mm/yyyy')"/>&#160;&#160;&#160; 
										<label class="content-label">
											Đến ngày <xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT12/denNgay,'dd/mm/yyyy')"/>
										<br/>
										
										</label>
										</label>
										
									</div>
									
								</div>
							</td>
							</tr>
					</table>
			</div>

			<table>
						<tr>
							<td rowSpan="2" style="width:49%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											13. Thông tin về đơn vị chủ quản hoặc đơn vị quản lý trực tiếp
											
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											13a. Mã số thuế:
											<xsl:value-of select="$tkchinh/CT13/ct13a_mst" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											13b. Tên đơn vị chủ quản/đơn vị quản lý trực tiếp:
											<xsl:value-of select="$tkchinh/CT13/ct13b_ten" />
										</label>
									</div>
									<!-- <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											13c. Địa chỉ trụ sở chính:
										</label>
									</div>	
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Số nhà, ngách, hẻm, ngõ, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT13/ct13c_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Phường/ xã/Thị trấn: 
											
											<xsl:value-of select="$tkchinh/CT13/ct13c_tenPhuong" />
										</label>
									</div>
									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Quận/Huyện/Thành phố thuộc tỉnh:
											<xsl:value-of select="$tkchinh/CT13/ct13c_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Tỉnh/Thành phố:
											<xsl:value-of select="$tkchinh/CT13/ct13c_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;
											Quốc gia:
											<xsl:value-of select="$tkchinh/CT13/ct13c_tenQuocGia" />
										</label>
									</div> -->
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td style="vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											14. Thông tin người đứng đầu đơn vị phụ thuộc/địa điểm kinh doanh
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
									<span class="content-span list-check">
										<table style="width: 100%; PAGE-BREAK-inside: avoid;">
										<tr>
										 <td ><label>&#160;</label></td>
										  <td ><label>&#160;</label></td>
											<td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
												<label>
													<xsl:if test="$tkchinh/CT14/toChucVN = 'true'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/toChucVN != 'true'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">Đơn vị phụ thuộc, địa điểm kinh doanh của tổ chức của Việt Nam </label></td>
											<td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
												<label>
													<xsl:if test="$tkchinh/CT14/thuongNhanNN = 'true'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/thuongNhanNN != 'true'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">Đơn vị phụ thuộc, địa điểm KD của thương nhân nước ngoài</label></td>
											
										</tr>
										
										
									</table>
								</span>
							</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14a. Họ và tên:
											<xsl:value-of select="$tkchinh/CT14/ct14a_ten" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14b. Chức vụ: 
											<xsl:value-of select="$tkchinh/CT14/ct14b_chucVu" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14c. Sinh ngày: 
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT14/ct14c_sinhNgay, 'dd/mm/yyyy')" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14d. Số định danh cá nhân (đối với người Việt Nam):  
											<xsl:value-of select="$tkchinh/CT14/ct14d_soDinhDanh" />
										</label>
									</div>
									 <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14đ. Loại giấy tờ chứng thực cá nhân (đối với người nước ngoài): 
										</label>
									</div>
							<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
									<span class="content-span list-check">
										<table style="width: 100%; PAGE-BREAK-inside: avoid;">
										<tr>
											<td ><label>&#160;</label></td>
											<td ><label>&#160;</label></td>
											<!--<td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
												<label>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma = '2030'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2030'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">CMND</label></td>
											<td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
												<label>
													<xsl:if test="$tkchinh/CT14/CT14/CT14d/ct14d_ma = '2080'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14/CT14d/ct14d_ma != '2080'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">CCCD</label></td>-->
											<td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
												<label>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma = '2040'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2040'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">Hộ chiếu</label></td>
										<td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
												<label>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma = '2060'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2060'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">Giấy thông hành</label></td>
										</tr>
										<tr>
											<td ><label class="check-content">&#160;</label></td>
											<td ><label class="check-content">&#160;</label></td>
											<td ><label class="check-content">&#160;</label></td>
											<td ><label class="check-content">&#160;</label></td>
						
										</tr>
										<tr>
												<td ><label>&#160;</label></td>
												<td ><label>&#160;</label></td>
												<td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
												<label>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma = '2070'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2070'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">CMT biên giới</label></td>
											
											<td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
												<label>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma = '3000'">
														X
													</xsl:if>
													<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '3000'">
														&#160;
													</xsl:if>
												</label>
											</td>
													<td><label class="check-content">Khác</label></td>
										</tr>
									</table>
								</span>
							</div>
							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											Số giấy tờ:
											<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2080'">
											<xsl:value-of select="$tkchinh/CT14/CT14d/ct14d_soGiayTo" />
											</xsl:if>
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											<span class="content-label-child">
												Ngày cấp:
												<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2080'">
												<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT14/CT14d/ct14d_ngayCap, 'dd/mm/yyyy')" />&#160;&#160;&#160;&#160;
												</xsl:if>
											</span>
											<span class="content-label-child">
												Nơi cấp:
												<xsl:if test="$tkchinh/CT14/CT14d/ct14d_ma != '2080'">
												<xsl:value-of select="$tkchinh/CT14/CT14d/ct14d_noiCap_ten" />
												</xsl:if>
												
											</span>
										</label>
									</div>
									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14e. Địa chỉ nơi thường trú:
										</label>
									</div>	
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Số nhà, ngách, hẻm, ngõ, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT14/CT14D/ct14d_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Phường/ xã/Thị trấn: 
											
											<xsl:value-of select="$tkchinh/CT14/CT14D/ct14d_tenPhuong" />
										</label>
									</div>
									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Quận/Huyện/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT14/CT14D/ct14d_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT14/CT14D/ct14d_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Quốc gia:
											<xsl:value-of select="$tkchinh/CT14/CT14D/ct14d_tenQuocGia" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14g. Địa chỉ hiện tại (nếu có):
										</label>
									</div>	
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Số nhà, ngách, hẻm, ngõ, đường phố/xóm/ấp/thôn:
											<xsl:value-of select="$tkchinh/CT14/CT14E/ct14e_soNha" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Phường/ xã/Thị trấn: 
											
											<xsl:value-of select="$tkchinh/CT14/CT14E/ct14e_tenPhuong" />
										</label>
									</div>
									
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Quận/Huyện/Thành phố thuộc tỉnh/Thành phố thuộc thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT14/CT14E/ct14e_tenQuan" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Tỉnh/Thành phố trực thuộc trung ương:
											<xsl:value-of select="$tkchinh/CT14/CT14E/ct14e_tenTinh" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;&#160;&#160;&#160;&#160;&#160;
											Quốc gia:
											<xsl:value-of select="$tkchinh/CT14/CT14E/ct14e_tenQuocGia" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											14h. Thông tin khác
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">
											<span class="content-label-child">
												Điện thoại:
												<xsl:value-of select="$tkchinh/CT14/CT14G/ct14g_dienThoai" />
											</span>
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">
											<span class="content-label-child">
												Email:
												<xsl:value-of select="$tkchinh/CT14/CT14G/ct14g_email" />
											</span>
											
										</label>
									</div>
								</div>
							</td>
							</tr>
					</table>
				<!-- <div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">15. Các loại thuế phải nộp</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '01'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '01'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Giá trị gia tăng</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '02'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '02'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Thuế tiêu thụ đặc biệt</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '03'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '03'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						 <td ><label class="check-content">Thuế xuất, nhập khẩu</label></td>
						</tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
						<tr>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '04'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '04'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Tài nguyên</label></td>
						  <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '07'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '07'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Thuê đất</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '08'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '08'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Thu nhập doanh nghiệp</label></td>
						 
						</tr>
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>
						
						
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '09'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '09'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Thu nhập cá nhân</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '10'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '10'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td ><label class="check-content">Môn bài</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '11'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '11'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td ><label class="check-content">Phí, lệ phí</label></td>
										 
						</tr>
						
						<tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						
						</tr>
						<tr>
						  <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '13'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '13'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Thuế bảo vệ môi trường</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '12'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '12'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Thuế SDĐPNN</label></td>
						  <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma = '99'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ChiTietCT15/ct15_ma != '99'">
								&#160;
							</xsl:if>
						</label>
						 </td>
						 <td><label class="check-content">Khác</label></td>
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
			</div> -->
			<!--ct16-->
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">15. Phương pháp tính thuế GTGT</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT15/ct15_ma = '1'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT15/ct15_ma != '1'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Khấu trừ</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ct15_ma = '2'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ct15_ma != '2'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Trực tiếp trên GTGT</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT15/ct15_ma = '3'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT15/ct15_ma != '3'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						 <td ><label class="check-content">Trực tiếp trên doanh số</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">
							<label>
							<xsl:if test="$tkchinh/CT15/ct15_ma = '0'">
								X
							</xsl:if>
							<xsl:if test="$tkchinh/CT15/ct15_ma != '0'">
								&#160;
							</xsl:if>
							</label>
						 </td>
						 <td ><label class="check-content">Không phải nộp thuế GTGT</label></td>
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
			<!--Ct17-->
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">16. Thông tin về các đơn vị liên quan</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <!--<td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma = 'BK01'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma != 'BK01'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Có đơn vị phụ thuộc</label></td>-->
						  <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma = 'BK02'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma != 'BK02'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						  <td><label class="check-content">Có địa điểm kinh doanh, kho   hàng phụ thuộc</label></td>
						 
						
						 
						 </tr>
						 <tr>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						 <td ><label class="check-content">&#160;</label></td>
						</tr>

						 <tr>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma = 'BK02'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma != 'BK02'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						 <td><label class="check-content">Có hợp đồng với nhà thầu nước ngoài, nhà thầu phụ nước ngoài</label></td>
						 <td class="ngay_nhan" style="text-align: center; vertical-align: middle;">	
						 		<label>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma = 'BK02'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT16/ChiTietCT16/ct16_ma != 'BK02'">
									&#160;
								</xsl:if>
								</label>
						 </td>
						 <td><label class="check-content">Có nhà thầu, nhà đầu tư dầu khí</label></td>
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
			<!--18-->
					<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
					<label class="parent-label">
					17. Thông tin khác
					</label>
			</div>					
			<table>
					
						<tr>
							<td rowSpan="2" style="width:50%;vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											17.1. Giám đốc (nếu có):
										</label>
									</div>							
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											a. Họ và tên:
											<xsl:value-of select="$tkchinh/CT17/CT17_1/ct17_1_a" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											b. Mã số thuế cá nhân/Số định danh cá nhân: 
											<xsl:value-of select="$tkchinh/CT17/CT17_1/ct17_1_b" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											c. Ngày tháng năm sinh: 
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT17/CT17_1/ct17_1_c_NgaySinh,'dd/mm/yyyy')"/>											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											d. Điện thoại liên lạc:
											<xsl:value-of select="$tkchinh/CT17/CT17_1/ct17_1_c" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											đ. Email:
											<xsl:value-of select="$tkchinh/CT17/CT17_1/ct17_1_d" />
										</label>
									</div>
								</div>
							</td>
							<td style="width:5px;" rowSpan="2">&#160;</td>
							<td style="width: 50%; vertical-align: top;">
								<div class="parent-50 col-md-6 l-div" id="pr50-1-1">
								    <div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="parent-label">
											17.2. Kế toán trưởng (nếu có):
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											a. Họ và tên:
											<xsl:value-of select="$tkchinh/CT17/CT17_2/ct17_2_a" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											b. Mã số thuế cá nhân/Số định danh cá nhân:
											<xsl:value-of select="$tkchinh/CT17/CT17_2/ct17_2_b" />
											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											c. Ngày tháng năm sinh: 
											<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT17/CT17_1/ct17_1_c_NgaySinh,'dd/mm/yyyy')"/>											
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											d. Điện thoại liên lạc:
											<xsl:value-of select="$tkchinh/CT17/CT17_2/ct17_2_c" />
										</label>
									</div>
									<div style="width: 100%; height: 4; border-bottom: solid 1px #9a9ba9; padding: 5px 0px 0px 0px !important;">
										<label class="content-label">&#160;
											đ. Email:
											<xsl:value-of select="$tkchinh/CT17/CT17_2/ct17_2_d" />
										</label>
									</div>
								</div>
							</td>
							</tr>
					</table>
			
					<!--19-->
					<!-- <div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">19. Tài khoản ngân hàng</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/ct19 = 'true'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/ct19 = 'false'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Có tài khoản ngân hàng</label></td>
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
			</div> -->
			<!--ct18-->
			<div class="col-md-12 sparent">
			<div class="parent-100 col-md-12 l-div" id="pr100-1-1">
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 0px !important;">
					<label class="parent-label no-b">18. Tình trạng trước khi tổ chức lại (nếu có)</label>
				</div>
				<div style="width: 100%; height: 4; padding: 2px 0px 0px 20px !important;">
				<span class="content-span list-check">
					<table  style="width: 100%; PAGE-BREAK-inside: avoid;">
						<tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT18/ct18_ma = '04'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT18/ct18_ma != '04'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Chia</label></td>
						  <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT18/ct18_ma = '03'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT18/ct18_ma != '03'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Tách</label></td>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT18/ct18_ma = '02'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT18/ct18_ma != '02'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td><label class="check-content">Hợp nhất</label></td>
						 
						 
						 </tr>
						 <tr>
						 <td  class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT18/ct18_ma = '10'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT18/ct18_ma != '10'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td colspan="5"><label class="check-content">Chuyển đơn vị độc lập thành đơn vị phụ thuộc của một đơn vị chủ quản khác</label></td>
						 </tr>
						 <tr>
						 <td class="ngay_nhan" style="text-align: center;vertical-align: middle;">	
						 	<label>
								<xsl:if test="$tkchinh/CT18/ct18_ma = '11'">
									X
								</xsl:if>
								<xsl:if test="$tkchinh/CT18/ct18_ma != '11'">
									&#160;
								</xsl:if>
							</label>
						 </td>
						 <td colspan="5"><label class="check-content">Chuyển đơn vị phụ thuộc của một đơn vị chủ quản thành đơn vị phụ thuộc của đơn vị chủ quản khác</label></td>
						 </tr>
					</table>
					<div style="width: 100%; height: 4; padding: 5px 0px 0px 0px !important;">
										<label>&#160;
											Mã số thuế trước của tổ chức đó:
											<xsl:value-of select="$tkchinh/CT18/mstDaCap" />
										</label>
					</div>
				</span>
				</div>
			</div>
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
	


			