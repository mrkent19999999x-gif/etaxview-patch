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
	width: 70%;
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



.ngay_nhan {
    padding:0px;
    background: white;
    border: 1px solid black;
    width: 20px;
}

</style>
   <div class="ndungtkhai_div">
	<table class="ttinnnt_table">
	<tr><td>
	<div class="col-md-12 parent-div">
			<div class="dv-title">
				<!-- Left title -->
				<!--<div class="col-md-3">-->
					<!--<div class="div-ngay-nhan">-->
						<!--<label class="lbl-cbt">Dành cho cơ quan thuế ghi</label>
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
						</label>-->
					<!--</div>-->
				<!--</div>-->
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
								<div>Mẫu số: <b>05-ĐK-TCT</b>
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
							<br/><i>(Dùng cho cá nhân không kinh doanh)</i>
						</td>
					</tr>
				  </table>
				  <br></br>
				   <table>
					<tr>
						<td>&#160;
						</td>
					</tr>

				  </table>
				</div>
				<!-- /Center title -->
			</div>
			<br />
			<br />
			<br />
			<br />
		</div>
<div class="col-md-12 lbl-full-name parent-ctrl-2">

				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">

					<label class="lbl-title-ctrl-2">1. Họ và tên người đăng ký
						thuế:&#160;&#160;

					</label>
					<xsl:value-of select="$tkchinh/ct1_hoTen" />
				</div>
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">

					<label class="lbl-title-ctrl-2">2. Thông tin đại lý thuế (nếu có):&#160;&#160;

					</label>
				</div>
				<div class="col-md-12" style="padding: 0px 0px 0px 10px !important">

					<label>2a. Tên:&#160;&#160;</label>
					<xsl:value-of select="$ttkthue/DLyThue/tenDLyThue" />
				</div>
				<div class="col-md-12" style="padding: 0px 0px 0px 10px !important">

					<label>2b. Mã số thuế:&#160;&#160;</label>
					<xsl:value-of select="$ttkthue/DLyThue/mstDLyThue"/>
				</div>
				
				<div class="col-md-12" style="padding: 0px 0px 0px 10px  !important">
					<div class="col-md-2 list-cbx" style="width:50%">
					<label>2c. Hợp đồng đại lý thuế: Số&#160;&#160;</label>
					<xsl:value-of select="$ttkthue/DLyThue/soHDongDLyThue"/>
					
					</div>
					<div class="col-md-2 list-cbx" style="width:50%">
					<label>Ngày:&#160;&#160;</label>
					<xsl:value-of select="ihtkk:stringDatetime($ttkthue/DLyThue/ngayKyHDDLyThue, 'dd/mm/yyyy')" />
					
					</div>
				</div>

				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">

					<label class="lbl-title-ctrl-2">3. Ngày, tháng, năm sinh của cá nhân:&#160;&#160; </label>
					<xsl:value-of select="ihtkk:stringDatetime($tkchinh/ct3_namSinh,'dd/mm/yyyy')"/>
				</div>
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important"> 
					<label class="lbl-title-ctrl-2">4. Giới tính</label>&#160;&#160;
					<xsl:if test="$tkchinh/CT4/ct4_ma = '2'">
						
							<input type="checkbox" id="ct4_nam" value="" class="cbt-ct12"
								checked="checked" disabled="disabled" />
							<label>&#160;Nam
							</label>&#160;&#160;
					
					
							<input type="checkbox" id="ct4_nu" value="" class="cbt-ct12"
								disabled="disabled"/>
							<label>&#160;Nữ
							</label>
					
					</xsl:if>
					<xsl:if test="$tkchinh/CT4/ct4_ma = '1' ">
						
							<input type="checkbox" disabled="disabled" id="ct4_nam"
								value="" class="cbt-ct12" />
							<label>&#160;Nam
							</label>&#160;&#160;
						
							<input type="checkbox" disabled="disabled" id="ct4_nu" value=""
								class="cbt-ct12" checked="checked" />
							<label>&#160;Nữ
							</label>
						
					</xsl:if>
				</div>
				<div class="form-ctl-2 dv-lvl1" style="padding: 3px 0px !important">
					<label class="col-md-12"
						style="width: 35%; font-weight: bold !important;">5.
						Quốc tịch:
					</label>
					<xsl:value-of select="$tkchinh/CT5/tenQuocTich" />
<!--<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important"> -->
                  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
					<label class="lbl-title-ctrl-2">Sống ở nước ngoài</label>
					  
				  <xsl:if test="$tkchinh/CT5/songNuocNgoai='true' or $tkchinh/CT5/songNuocNgoai='1'">
						
							<input type="checkbox" id="ct4_nam" value="" class="cbt-ct12"
								checked="checked" disabled="disabled" />
						
					
					</xsl:if>
					<xsl:if test="$tkchinh/CT5/songNuocNgoai='false' or $tkchinh/CT5/songNuocNgoai='0'">
						<input type="checkbox" id="ct4_nam" value="" class="cbt-ct12"
								 disabled="disabled" />
					</xsl:if>
				<!--</div>-->
					
				</div>
				
				
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">
					<label class="col-md-12 lbl-title-ctrl-2">6. Giấy tờ của cá
						nhân:
					</label>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<div class="col-md-2 list-cbx" style="width: 40%">
							<label>6a. Số chứng minh nhân dân:&#160;&#160;  </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[1]/ct6_soGiayTo" />
							

						</div>
						<div class="col-md-2 list-cbx" style="width: 25%">
							<label>Ngày cấp:&#160;&#160; </label>
							<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT6/TTinGiayTo[1]/ct6_ngayCap,'dd/mm/yyyy')"/>
						</div>
						<div class="col-md-2 list-cbx" style="width: 35%">
							<label>Nơi cấp:&#160;&#160; </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[1]/ct6_noiCap_ten" />
						</div>
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<div class="col-md-2 list-cbx" style="width: 40%">
							<label>6b. Số căn cước công dân:&#160;&#160;  </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[2]/ct6_soGiayTo" />

						</div>
						<div class="col-md-2 list-cbx" style="width: 25%">
							<label>Ngày cấp:&#160;&#160; </label>
							<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT6/TTinGiayTo[2]/ct6_ngayCap,'dd/mm/yyyy')"/>
						</div>
						<div class="col-md-2 list-cbx" style="width: 35%">
							<label>Nơi cấp:&#160;&#160; </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[2]/ct6_noiCap_ten" />
							
						</div>
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<div class="col-md-2 list-cbx" style="width: 40%">
							<label>6c. Số hộ chiếu: &#160;&#160; </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[3]/ct6_soGiayTo" />

						</div>
						<div class="col-md-2 list-cbx" style="width: 25%">
							<label>Ngày cấp:&#160;&#160; </label>
							<xsl:value-of select="ihtkk:stringDatetime($tkchinh/CT6/TTinGiayTo[3]/ct6_ngayCap,'dd/mm/yyyy')"/>
						</div>
						<div class="col-md-2 list-cbx" style="width: 35%">
							<label>Nơi cấp:&#160;&#160; </label>
							<xsl:value-of select="$tkchinh/CT6/TTinGiayTo[3]/ct6_noiCap_ten" />
						</div>
					</div>

				</div>

				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">
					<label class="col-md-12 lbl-title-ctrl-2">7. Địa chỉ nơi thường trú:
					</label>
					<br></br>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label>7a. Số nhà/đường phố, thôn, xóm:&#160;&#160;  </label>
						<xsl:value-of select="$tkchinh/CT7/ct7a_soNha" />
					</div>
					<xsl:choose>
					<xsl:when
									test="$tkchinh/CT6/ct6d_maQuocGia = ''">
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
					   <br></br>
						<label style="width: 25%">7b. Xã, phường: </label>
						<xsl:value-of select="$tkchinh/CT7/ct7b_tenPhuong" />
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7c. Quận, huyện: </label>
						<xsl:value-of select="$tkchinh/CT7/ct7c_tenQuan" />

					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7d. Tỉnh, thành phố</label>
						<xsl:value-of select="$tkchinh/CT7/ct7d_tenTinh" />
					</div>
					</xsl:when>
					<xsl:when
									test="$tkchinh/CT7/ct7d_maQuocGia = 'VN'">
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7b. Xã, phường: </label>
						<xsl:value-of select="$tkchinh/CT7/ct7b_tenPhuong" />

					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7c. Quận, huyện: </label>
						<xsl:value-of select="$tkchinh/CT7/ct7c_tenQuan" />

					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7d. Tỉnh, thành phố: </label>
						<xsl:value-of select="$tkchinh/CT7/ct7d_tenTinh" />
					</div>
					</xsl:when>
					<xsl:otherwise>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7b. Xã, phường: </label>
						Khác

					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">

						<label style="width: 25%">7c. Quận, huyện: </label>
						Khác

					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">

						<label style="width: 25%">7d. Tỉnh, thành phố: </label>
						Khác
					</div>
								</xsl:otherwise>
								</xsl:choose>
					
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">7đ. Quốc gia:</label>
						<xsl:value-of select="$tkchinh/CT7/ct7d_tenQuocGia" />
					</div>

				</div>
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">
					<label class="col-md-12 lbl-title-ctrl-2">8. Địa chỉ hiện tại:</label>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label>8a. Số nhà/đường phố, thôn, xóm:&#160;&#160;  </label>
						<xsl:value-of select="$tkchinh/CT8/ct8a_soNha" />
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">8b. Xã, phường: </label>
						<xsl:value-of select="$tkchinh/CT8/ct8b_tenPhuong" />
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">8c. Quận, huyện: </label>
						<xsl:value-of select="$tkchinh/CT8/ct8c_tenQuan" />
					</div>
					<div class="col-md-12" style="padding: 0px 0px 0px 10px !important;">
						<label style="width: 25%">8d. Tỉnh, thành phố: </label>
						<xsl:value-of select="$tkchinh/CT8/ct8d_tenTinh" />
					</div>
				</div>
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">
					<label class="lbl-title-ctrl-2">9. Điện thoại liên hệ:&#160;&#160;  </label>
					<xsl:value-of select="$tkchinh/CT9/ct9_dienThoai" />&#160;&#160;&#160;&#160;
					<label class="lbl-title-ctrl-2">Email:&#160;&#160; </label>
					<xsl:value-of select="$tkchinh/CT9/ct9_email" />
				</div>
				<div class="form-ctl-2 dv-lvl15" style="padding: 3px 0px !important">

					<label class="lbl-title-ctrl-2">10. Cơ quan chi trả thu nhập
						tại thời điểm đăng ký thuế:&#160;&#160; 
					</label><xsl:value-of select="$tkchinh/CT10/ct10_ten" />&#160;&#160;<xsl:if test="$tkchinh/CT10/ct10_mst != ''">(<xsl:value-of select="$tkchinh/CT10/ct10_mst" />)</xsl:if>
				</div>
			</div>		
			</td></tr>
			
			<tr>
				<td>	  	
				<xsl:call-template name="tkhaiFooter_05DK_TCT_105">   
				</xsl:call-template>
				<div id="sigDiv"></div>
				</td>
			</tr>
	</table>
</div>
</xsl:template>		
</xsl:stylesheet>
	


			