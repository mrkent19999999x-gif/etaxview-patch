<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/">
	<style type="text/css">
	        table td .bieu_mau_div{
        width:100%;
        align: center;

    }
    table td .bieu_mau_div div{	
        text-align: center;
        border: 1px solid;
        padding: 2px;	
    }
	
	.header_div{
        width:100%;

    }
	.tb_header{
        width:100%;

    }
	
    .footer_div{
        align:left !important;

    }

    .footer_div table tr, .footer_div table td{
        padding: 5px;
    }

    .ndungtkhai_div table{
        width: 100%;
    }
    .tentkhai{
		TEXT-TRANSFORM: uppercase;	
        text-align: center;
        font-weight: bold;
    }
    .mtatentkhai{
        text-align: center;
        font-style:italic; 
    }
    .bketitle{
        padding-left: 110px;
        padding-right: 110px;
        font-weight: bold;
        text-align:center;
    }

    table {
        border: none;
        font-family: "Times New Roman", "Arial", "Courier New";
        font-size: 12pt;    
    }
    table.tkhai_table {
        border: solid;
        border-width: 1px;
        border-collapse: collapse; 
        border-color: gray;
        font-family: "Times New Roman", "Arial", "Courier New";
        font-size: 12pt;	
        border-spacing: 5px;
    }
	
    table.tkhai_table tr, table.tkhai_table td{
        padding: 5px;
        border:1px solid #ccc;
    } 

    table.tkhai_table2 {
        border-collapse: collapse; 
        font-family: "Times New Roman", "Arial", "Courier New";
        font-size: 12pt;	
        border-spacing: 5px;
    }
    table.tkhai_table2 tr, table.tkhai_table2 td{
        padding: 5px;
    } 
    .align-r {
        text-align:right!important;
        vertical-align:middle !important;
    }
    .align-l {
        text-align:left!important;
        vertical-align:middle !important;
    }
    .align-c {
		font-family:"Times New Roman";
        text-align:center!important;
        vertical-align:middle !important;
    }
    .float-r {
        float:right;
    }
    .float-l {
        float:left;
    }
    .tkhaiheader {
        font-weight: bold;
        text-align:center;
    }
    .dkthue {
        border:1px solid #ccc;
    }
    .donvitien {
        text-align:right;
    }
    .b {
        font-weight: bold;
    }
    .i {
        font-weight: italic;
    }

    .content div {
        padding:3px;
    }
    .content div div {
        padding-left:20px;
    }
    .content div div div {
        padding-left:30px;
    }
    /*table-KHBS-anhdt-edit*/
    .tkhai_table3{
        border: solid;
        border-width: 1px;
        border-collapse: collapse; 
        border-color: gray;
        font-family: "Times New Roman", "Arial", "Courier New";
        font-size: 12pt;	
        border-spacing: 5px;
        margin-bottom:10px;
    }

    .tkhai_table3 tr, .tkhai_table3 td{
        padding: 5px;
        border:1px solid #ccc;
    }
    /*end*/ 
	.content2 table{ float:left; padding:0 10px 0 0}
	.tkhai_table_k { border-right-style:ridge;border-right-color:##F5F5F5;border-right-width:1px}
	 .align-l1 {
        text-align:left!important;
        vertical-align:top !important;
    }
	/* KDT css */
	.box_mau_so { border: 1px solid; float: right; height: auto;
					position: relative; top: -10px; width: auto; text-align:center; }
	#tab50 { display:inline-block; margin-left: 50px; }
	#tab100 { display:inline-block; margin-left: 100px; }
	#td_table {padding: 2px 3px 2px 3px;}
	.table_hr1 { border-width: 1px thin; margin-top: -8px; width: 145px; }
	.table_hr2 { border-width: 1px thin; margin-top: 8px; width: 150px; }
	.table_hr3 { border-width: 1px thin; margin-top: 8px; width: 105px; }
	.content {
		padding: 0pt 57pt 0pt 85pt; text-align: justify;
	}
	.align-j {
	font-family : "Times New Roman";
		text-align: justify;
	}
	.item_align{
		align: center;
	}	
	.table_hd1 { width: 100%; text-align: center; font-family :"Times New Roman"; }
	.table_hd1 td { padding: 0px;}
	.line1_5{
		line-height:1.5;
	}
	.fz13px{
		font-size:13px !important;
	}
	.fz14px {
		font-size: 14px !important;
	}
	.fz17px{
		font-size:17px !important;
	}
	.fz18_5px{
		font-size:18.5px !important;
	}
	</style>
			<xsl:for-each select="BangKeDTu">
			<xsl:variable name="BKeThue" select="./BKeThue" />
			<xsl:variable name="TTinChung" select="./BKeThue/TTinChung" />
			<xsl:variable name="NDungBKe" select="./BKeThue/NDungBKe" />
			<html>
				<body>
					<div id="conten">
						<table cellpadding="0" cellspacing="0" width="100%" style="text-align: center">
							<tbody>
								<tr class="align-c">
										<td class="fz17px" >
											<xsl:value-of select="$TTinChung/CQT/CQTParent/tenCQT" />	
										</td>
										<td class="fz17px" width="60%">
											<b>CỘNG HOÀ XÃ HỘI CHỦ NGHĨA VIỆT NAM</b>
										</td>
								</tr>
								<tr class="align-c">
										<td class="fz17px">
											<b><xsl:value-of select="$TTinChung/CQT/tenCQT" />		
											</b>	
										</td>
										<td class="fz18_5px">
											<b>Độc lập - Tự do - Hạnh phúc</b>
										</td>
								</tr>
								<tr class="align-c">
										<td>
											<hr class="table_hr1" />
										</td>
										<td>
											<hr class="table_hr2" />
										</td>
								</tr>
								<tr class="align-c fz17px">
										<td>
											Số:
											<span >
												<xsl:if test="$TTinChung/TTinBKeThue/soBKe !=''">
													<span>
														<xsl:value-of select="$TTinChung/TTinBKeThue/soBKe" />
													</span>
												</xsl:if>
											</span>
										</td>
										<td >	
											<i>
												<xsl:value-of select="$TTinChung/CQT/CQTParent/diaDiem" />,												
												ngày
												<xsl:value-of select="substring($TTinChung/TTinBKeThue/ngayBKe,9,2)" />
												tháng
												<xsl:value-of select="substring($TTinChung/TTinBKeThue/ngayBKe,6,2)" />
												năm
												<xsl:value-of select="substring($TTinChung/TTinBKeThue/ngayBKe,1,4)" />
											</i>
										</td>
								</tr>
							</tbody>
						</table>
						<br></br>
						<table cellpadding="0" cellspacing="0" class="table_hd1" >
								<tbody>
									<tr class="align-c">
										<td class="fz17px">
											<b >QUYẾT ĐỊNH</b>
										</td>
									</tr>
									<tr class="align-c">
										<td class="fz18_5px">
											<b>Về việc ban hành </b>
											<xsl:if test="$NDungBKe/TTinQD/tenQD !=''">
												<xsl:value-of select="$NDungBKe/TTinQD/tenQD" />
											</xsl:if>
										</td>
									</tr>
									<tr>
										<td>
											<hr class="table_hr3" />
										</td>
									</tr>
								</tbody>
						</table>	
						<p class="align-c fz17px">
								<b>THỦ TRƯỞNG CƠ QUAN THUẾ</b>
						</p>
						<p class="align-j fz17px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ....;
						</p>
						<p class="align-j fz17px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Căn cứ....;
						</p>
						<p class="align-j fz17px">
								&#160;&#160;&#160;&#160;&#160;&#160;Xét đề nghị của...
								
						</p>
						<p class="align-c fz17px">
								<b>QUYẾT ĐỊNH:</b>
						</p>
						<p class="align-j fz17px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 1: </b>Ban hành kèm theo Quyết định này chi tiết các
								<xsl:if test="$NDungBKe/TTinQD/tenQD !=''">
									<xsl:value-of select="$NDungBKe/TTinQD/tenQD" />
								</xsl:if>
								của 
								<xsl:value-of select="$TTinChung/CQT/tenCQT" />
								lần..tháng..Năm..;
								<br />
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Tổng số thông báo là:....
						</p>
						<br />
						<p class="align-j fz17px">
								&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Điều 2: </b>Quyết định này có hiệu lực thi hành kể từ ngày ký
								
						</p>
						<br />
						<table cellpadding="0" cellspacing="0" class="tkhai_table fz17px" width="100%">
							<tbody >
								<tr class="align-c">
									<td colspan="8" style="height:45px;">
										<xsl:if test="$TTinChung/TTinBKeThue/tenBKe !=''">
											<b>
												<xsl:value-of select="$TTinChung/TTinBKeThue/tenBKe" />
											</b>
										</xsl:if>
										<br />
										Cơ quan thuế:
										<xsl:if test="$TTinChung/CQT/tenCQT !=''">
											<b>
												<xsl:value-of select="$TTinChung/CQT/tenCQT" />
											</b>
										</xsl:if>
									</td>
								</tr>
								<tr class="align-c">
									<td style="height:23px;" rowspan="2">
										<b>Số TT</b>
									</td>
									<td colspan="5">
										<b>THÔNG TIN NGƯỜI NỘP THUẾ</b>
									</td>
									<td colspan="2" height="30px">
										<b>THÔNG TIN CƠ QUAN THUẾ QUẢN LÝ</b>
									</td>
								</tr>
								<tr class="align-c">
									<td style="height:30px;">
										<b>MST</b>
									</td>
									<td style="height:30px;">
										<b>Tên NNT</b>
									</td>
									<td style="height:30px;">
										<b>Địa chỉ</b>
									</td>
									<td style="height:30px;">
										<b>Số điện thoại</b>
									</td>
									<td style="height:30px;">
										<b>Thư điện tử</b>
									</td>
									<td style="height:30px;">
										<b>Cơ quan thuế</b>
									</td>
									<td style="height:30px;">
										<b>Bộ phận liên hệ</b>
									</td>
								</tr>
								<xsl:for-each select="$NDungBKe/TBaoThueDTu">
									<tr>
										<td id="td_table" class="align-c">
											<countNo>
												<xsl:value-of select="position()" />
											</countNo>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/maNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/maNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/tenNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/tenNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/TTinChung/NNhanTBaoThue/diaChiNNhan !=''">
												<xsl:value-of select="TBaoThue/TTinChung/NNhanTBaoThue/diaChiNNhan" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/dienThoaiNNT !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/dienThoaiNNT" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/emailNNT !=''">
												<xsl:value-of select="concat('&#160;',TBaoThue/NDungTBao/emailNNT,'&#160;') " />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/ThongTinCQT/tenCQT !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/ThongTinCQT/tenCQT" />
											</xsl:if>
										</td>
										<td id="td_table" class="align-l">
											<xsl:if test="TBaoThue/NDungTBao/ThongTinCQT/boPhanLienHe !=''">
												<xsl:value-of select="TBaoThue/NDungTBao/ThongTinCQT/boPhanLienHe" />
											</xsl:if>
										</td>
									</tr>
								</xsl:for-each>
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