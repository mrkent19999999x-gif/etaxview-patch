<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<msxsl:script language="JavaScript" implements-prefix="ihtkk">
  
  function stringDatetime(strInput, strFormat)
  {
	var strReturn = '';
	var strTemp;
	var vstrInput;
	
	var node = strInput.nextNode();	
	try{
		if(node.hasChildNodes())
		{
	
	   vstrInput = node.childNodes[0].nodeValue;
		   strTemp = vstrInput.split('-');
		   if(vstrInput.indexOf('/')&#62;-1)
		   {
		   strTemp =vstrInput.split('/');
		   var temp = strTemp[0];
		   strTemp[0]=strTemp[2];
		   strTemp[2]=temp;
		   }
		   if(vstrInput != '' &#38;&#38; vstrInput != null ){
			  if(strFormat =='dd/mm/yyyy')
			  {
				  strReturn = strTemp[2];
				  if(strTemp[2].length &#62; 2){
					  strReturn = strTemp[2].substring(0,2);
				  }
				  strReturn = strReturn+'/'+strTemp[1]+'/'+strTemp[0];
			  } else if(strFormat =='dd'){
				  strReturn = strTemp[2];
				  if(strTemp[2].length &#62; 2){
					  strReturn = strTemp[2].substring(0,2);
				  }
			  }else if(strFormat =='mm'){
				  strReturn = strTemp[1];
			  }
			  else if(strFormat =='yyyy'){
				  strReturn = strTemp[0];
			  }else if(strFormat =='hh:mi'){
				  if(strTemp[2].length &#62; 3){
					  strReturn = strTemp[2].substring(3,strTemp[2].length);
				  }
			 }else if(strFormat =='dmy') {
				  strReturn = strTemp[2];
				  if(strTemp[2].length &#62; 2){
					  strReturn = strTemp[2].substring(0,2);
				  }
				  strReturn = 'Ngày'+strReturn+' tháng '+strTemp[1]+' năm '+strTemp[0];
			  }else if(strFormat =='hh'){			   
					  if(strTemp[2].length &#62; 3){
						  strReturn = strTemp[2].substring(3,strTemp[2].length).split(':')[0];				  
					  }
			 }else if(strFormat =='mi'){
					  if(strTemp[2].length &#62; 3){
						  strReturn = strTemp[2].substring(3,strTemp[2].length).split(':')[1];
					  }
			 }else if(strFormat =='ii'){			   
					  if(strTemp[2].length &#62; 3){
						  strReturn = strTemp[2].substring(3,strTemp[2].length).split(':')[2];				  
					  }
				 }
			}
		}
		}
		catch(e)
		{
		
		}
		if(strReturn==null)
		{
		strReturn = "";
		}
		
		return strReturn;
  }
  
  function kyTinhThue(kyKKhai,kieuKy,tuNgay,denNgay){
	  var strReturn = "";
	   var strTemp;
	  var vKieuKy = '';
	  var vKyKKhai = '';
	  var sTuNgay='';
	  var sDenNgay='';
	  var nodeTuNgay=tuNgay.nextNode();
	  var nodeDenNgay=denNgay.nextNode()
	  vKieuKy = kieuKy.nextNode().childNodes[0].nodeValue;
	  vKyKKhai = kyKKhai.nextNode().childNodes[0].nodeValue;
	
	  	 
	  if(vKyKKhai != '' &#38;&#38; vKyKKhai != null ){
	    strTemp = vKyKKhai.split('/');
		  if(vKieuKy =='D'){
			  strReturn = 'Ngày '+  strTemp[0]+' tháng '+ strTemp[1]+' năm '+ strTemp[2]
		  }else  if(vKieuKy =='M'){
			  strReturn = 'Tháng ' + strTemp[0]+' năm '+  strTemp[1];
		  }else  if(vKieuKy =='Q'){
			  strReturn = 'Quý '+ strTemp[0] +' năm ' +strTemp[1];
		  }else  if(vKieuKy =='Y'){
			  strReturn = 'Năm '+vKyKKhai;
		  }else  if(vKieuKy =='K'){
			 if(nodeTuNgay.hasChildNodes())
			 {
			  sTuNgay=nodeTuNgay.childNodes[0].nodeValue;
			  strTemp = sTuNgay.split('/');
			  strReturn = 'Từ ngày '+  strTemp[0]+' tháng '+ strTemp[1]+' năm '+ strTemp[2]+' ';
			 }
			  if(nodeDenNgay.hasChildNodes())
			 {
			 sDenNgay=nodeDenNgay.childNodes[0].nodeValue;
			  strTemp = sDenNgay.split('/');
			  strReturn += 'đến ngày '+  strTemp[0]+' tháng '+ strTemp[1]+' năm '+ strTemp[2]+' ';
			 }
		  }
		  
	 } 
	 
	  return strReturn;
  }
  
 function formatNumber(inpNumber){
	 var strReturn = "";
	var vNumber = "";
	var firstChar = "";
	var fnum = 0;
	var fNumTemp = "";
	var node = inpNumber.nextNode();	
   try{	
	if(node.hasChildNodes())
		{
	 vNumber = node.childNodes[0].nodeValue;
	 if(vNumber != '' &#38;&#38; vNumber != null ){
	     
	firstChar  =  vNumber.substring(0, 1); 
	if(firstChar == "-")
	vNumber  =  vNumber.substring(1); 
	
	fnum  = vNumber.indexOf(".");   
	if(fnum   &#62; 0){
	  fNumTemp = vNumber.substring((fnum +1));	
	  vNumber  =  vNumber.substring(0,fnum); 
	}
          
            vNumber = Math.floor(vNumber*100+0.50000000001);
            vNumber = Math.floor(vNumber/100).toString();

            for (var i = 0; i &#60; Math.floor((vNumber.length-(1+i))/3); i++)
           	 vNumber = vNumber.substring(0,vNumber.length-(4*i+3))+'.'+vNumber.substring(vNumber.length-(4*i+3));

	if(fnum   &#62; 0)	  	
	  vNumber  =  vNumber+','+fNumTemp;
	   
	if(firstChar == "-")
	 vNumber  =  "("+vNumber+")";
	
 	}
	}
	}
		catch(e)
		{
		
		}
		if(vNumber==null)
		{
		vNumber = "";
		}
	return vNumber ;
}


  var ChuSo=new Array(" không "," một "," hai "," ba "," bốn "," năm "," sáu "," bảy "," tám "," chín ");
var Tien=new Array( "", " nghìn", " triệu", " tỷ", " nghìn tỷ", " triệu tỷ");
//1. Hàm đọc số có ba chữ số;
function DocSo3ChuSo(baso)
{
    var tram;
    var chuc;
    var donvi;
    var KetQua="";
    tram=parseInt(baso/100);
    chuc=parseInt((baso%100)/10);
    donvi=baso%10;
    if(tram==0 &#38;&#38; chuc==0 &#38;&#38; donvi==0) return "";
    if(tram!=0)
    {
        KetQua += ChuSo[tram] + " trăm ";
        if ((chuc == 0) &#38;&#38; (donvi != 0)) KetQua += " linh ";
    }
    if ((chuc != 0) &#38;&#38; (chuc != 1))
    {
            KetQua += ChuSo[chuc] + " mươi";
            if ((chuc == 0) &#38;&#38; (donvi != 0)) KetQua = KetQua + " linh ";
    }
    if (chuc == 1) KetQua += " mười ";
    switch (donvi)
    {
        case 1:
            if ((chuc != 0) &#38;&#38; (chuc != 1))
            {
                KetQua += " mốt ";
            }
            else
            {
                KetQua += ChuSo[donvi];
            }
            break;
        case 5:
            if (chuc == 0)
            {
                KetQua += ChuSo[donvi];
            }
            else
            {
                KetQua += " lăm ";
            }
            break;
        default:
            if (donvi != 0)
            {
                KetQua += ChuSo[donvi];
            }
            break;
        }
    return KetQua;
}
//2. Hàm đọc số thành chữ (Sử dụng hàm đọc số có ba chữ số)
function DocTienBangChu(SoTienInput)
{	
	
	var SoTien = Number(SoTienInput.nextNode().childNodes[0].nodeValue);
	
    var lan=0;
    var i=0;
    var so=0;
    var KetQua="";
    var tmp="";
    var ViTri = new Array();
    if(SoTien &lt; 0) return "Số tiền âm ";
    if(SoTien== 0) return "Không ";
    if(SoTien &gt; 0)
    {
        so=SoTien;
    }
    else
    {
        so = -SoTien;
    }
    if (SoTien > 8999999999999999)
    {
        //SoTien = 0;
        return "Số quá lớn!";
    }
    ViTri[5] = Math.floor(so / 1000000000000000);
    if(isNaN(ViTri[5]))
        ViTri[5] = "0";
    so = so - parseFloat(ViTri[5].toString()) * 1000000000000000;
    ViTri[4] = Math.floor(so / 1000000000000);
     if(isNaN(ViTri[4]))
        ViTri[4] = "0";
    so = so - parseFloat(ViTri[4].toString()) * 1000000000000;
    ViTri[3] = Math.floor(so / 1000000000);
     if(isNaN(ViTri[3]))
        ViTri[3] = "0";
    so = so - parseFloat(ViTri[3].toString()) * 1000000000;
    ViTri[2] = parseInt(so / 1000000);
     if(isNaN(ViTri[2]))
        ViTri[2] = "0";
    ViTri[1] = parseInt((so % 1000000) / 1000);
     if(isNaN(ViTri[1]))
        ViTri[1] = "0";
    ViTri[0] = parseInt(so % 1000);
  if(isNaN(ViTri[0]))
        ViTri[0] = "0";
    if (ViTri[5] > 0)
    {
        lan = 5;
    }
    else if (ViTri[4] > 0)
    {
        lan = 4;
    }
    else if (ViTri[3] > 0)
    {
        lan = 3;
    }
    else if (ViTri[2] > 0)
    {
        lan = 2;
    }
    else if (ViTri[1] > 0)
    {
        lan = 1;
    }
    else
    {
        lan = 0;
    }
    for (i = lan; i >= 0; i--)
    {
       tmp = DocSo3ChuSo(ViTri[i]);
       KetQua += tmp;
       if (ViTri[i] > 0) KetQua += Tien[i];
       if ((i > 0) &#38;&#38; (tmp.length > 0)) KetQua += '';//&#38;&#38; (!string.IsNullOrEmpty(tmp))
    }
   if (KetQua.substring(KetQua.length - 1) == ',')
   {
        KetQua = KetQua.substring(0, KetQua.length - 1);
   }
   KetQua = KetQua.substring(1,2).toUpperCase()+ KetQua.substring(2);
   return KetQua;//.substring(0, 1);//.toUpperCase();// + KetQua.substring(1);
}

function getKHBM(maTkhai){
	var vReturn = '';
 var vKey =  maTkhai.nextNode().childNodes[0].nodeValue;
  var data = {
	'01': '01/GTGT',
    '02': 'xsd',
	'06':'01/TAIN'
  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  return vReturn;
}
function getTenCT(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {

'70505' : 'Huyện Ninh Hải- Chi cục thuế khu vực Ninh Hải- Thuận Bắc',
'70507' : 'Huyện Ninh Phước - Chi cục Thuế khu vực Ninh Phước - Thuận Nam',
'21501' : 'Chi cục Thuế Thành phố Thái Nguyên',
'21503' : 'Thành phố Sông Công - Chi cục thuế khu vực Sông Công- Đại Từ',
'21507' : 'Huyện Võ Nhai  -Chi cục thuế khu vực Đồng Hỷ - Võ Nhai',
'21509' : 'Huyện Phú Lương- Chi cục thuế khu vực Phú Lương- Định Hóa',
'21511' : 'Huyện Đồng Hỷ - Chi cục thuế khu vực Đồng Hỷ - Võ Nhai',
'21513' : 'Huyện Đại Từ - Chi cục thuế khu vực Sông Công- Đại Từ  ',
'21517' : 'Thị xã Phổ Yên - Chi cục thuế khu vực Phổ Yên- Phú Bình',
'20701' : 'Thành phố Bắc Kạn - Chi cục Thuế khu vực Bắc Kạn - Bạch Thông - Chợ Mới',
'20703' : 'Huyện Ba Bể - Chi cục Thuế khu vực Ba Bể - Ngân Sơn - Pác Nặm',
'20705' : 'Huyện Ngân Sơn - Chi cục Thuế khu vực Ba Bể- Ngân Sơn - Pác Nặm',
'20707' : 'Chi cục Thuế Huyện Chợ Đồn',
'20709' : 'Chi cục Thuế Huyện Na Rì',
'20711' : 'Huyện Bạch Thông - Chi cục Thuế khu vực Bắc Kạn - Bạch Thông - Chợ Mới',
'20301' : 'Chi cục Thuế Thị xã Cao Bằng',
'20303' : 'Chi cục Thuế Huyện Bảo Lạc',
'20305' : 'Huyện Hà Quảng - Chi cục Thuế khu vực Hòa An - Hà Quảng',
'20307' : 'Huyện Thông Nông - Chi cục Thuế khu vực Nguyên Bình - Thông Nông',
'20309' : 'Huyện Trà Lĩnh - Chi cục Thuế khu vực Trùng Khánh - Trà Lĩnh',
'20311' : 'Chi cục Thuế huyện Trùng Khánh',
'20313' : 'Chi cục Thuế huyện Nguyên Bình',
'20315' : 'Huyện Hoà An - Chi cục Thuế khu vực Hòa An - Hà Quảng',
'20317' : 'Chi cục Thuế huyện Quảng Hòa',
'20319' : 'Chi cục Thuế Huyện Hạ Lang',
'20321' : 'Chi cục Thuế Huyện Thạch An',
'20901' : 'Chi cục Thuế Thành phố Lạng Sơn',
'20903' : 'Huyện Tràng Định- Chi cục Thuế khu vực III',
'20905' : 'Huyện Văn Lãng- Chi cục Thuế khu vực III',
'20907' : 'Huyện Bình Gia- Chi cục Thuế khu vực IV',
'20909' : 'Huyện Bắc Sơn- Chi cục Thuế khu vực IV',
'20911' : 'Huyện Văn Quan- Chi cục Thuế khu vực IV',
'20913' : 'Chi cục Thuế Huyện Cao Lộc',
'20915' : 'Huyện Lộc Bình- Chi cục Thuế khu vực II',
'20917' : 'Huyện Chi Lăng- Chi cục Thuế khu vực I',
'20919' : 'Huyện Đình Lập- Chi cục Thuế khu vực II',
'20921' : 'Huyện Hữu Lũng- Chi cục Thuế khu vực I',
'21103' : 'Huyện Na Hang - Chi cục Thuế khu vực Na Hang - Lâm Bình',
'21105' : 'Huyện Chiêm Hóa - Chi cục Thuế khu vực Chiêm Hóa - Hàm Yên',
'21107' : 'Huyện Hàm Yên - Chi cục Thuế khu vực Chiêm Hóa - Hàm Yên',
'21109' : 'Huyện Yên Sơn - Chi cục Thuế khu vực thành phố Tuyên Quang - Yên Sơn',
'21111' : 'Chi cục Thuế Huyện Sơn Dương',
'20103' : 'Huyện Đồng Văn - Chi cục Thuế khu vực Đồng Văn - Mèo Vạc',
'20105' : 'Huyện Mèo Vạc - Chi cục Thuế khu vực Đồng Văn - Mèo Vạc',
'20107' : 'Huyện Yên Minh - Chi cục Thuế khu vực Quản Bạ - Yên Minh',
'20111' : 'Chi cục Thuế Huyện Bắc Mê',
'20113' : 'Huyện Hoàng Su Phì - Chi cục Thuế khu vực Hoàng Su Phì - Xín Mần',
'20115' : 'Chi cục Thuế Huyện Vị Xuyên',
'20117' : 'Huyện Xín Mần - Chi cục Thuế khu vực Hoàng Su Phì - Xín Mần',
'20119' : 'Huyện Bắc Quang - Chi cục Thuế khu vực Bắc Quang - Quang Bình',
'21301' : 'Chi cục Thuế TP Yên Bái',
'21303' : 'Thị xã Nghĩa Lộ - Chi cục Thuế khu vực Nghĩa Văn - Trạm Tấu',
'21305' : 'Chi cục Thuế Huyện Lục Yên',
'21307' : 'Huyện Văn Yên - Chi cục Thuế khu vực Trấn Yên - Văn Yên',
'21309' : 'Chi cục Thuế Huyện Mù Cang Chải',
'21311' : 'Huyện Trấn Yên - Chi cục Thuế khu vực Trấn Yên - Văn Yên',
'21313' : 'Chi cục Thuế Huyện Yên Bình',
'21315' : 'Huyện Văn Chấn - Chi cục Thuế khu vực Nghĩa Văn - Trạm Tấu',
'21317' : 'Huyện Trạm Tấu - Chi cục Thuế khu vực Nghĩa Văn - Trạm Tấu',
'70907' : 'Huyện Dương Minh Châu - Chi cục Thuế khu vực Hòa Thành - Dương Minh Châu',
'11711' : 'Huyện Yên Mô - Chi cục Thuế khu vực Tam Điệp - Yên Mô',
'11713' : 'Huyện Yên Khánh - Chi cục Thuế khu vực Kim Sơn - Yên Khánh',
'11715' : 'Huyện Kim Sơn - Chi cục Thuế khu vực Kim Sơn - Yên Khánh',
'40101' : 'Thành phố Thanh Hóa - Chi cục Thuế khu vực thành phố Thanh Hóa - Đông Sơn',
'40103' : 'Thị xã Bỉm Sơn - Chi cục Thuế khu vực thị xã Bỉm Sơn - Hà Trung',
'40105' : 'Thành Phố Sầm Sơn - Chi cục Thuế khu vực thành phố Sầm Sơn - Quảng Xương',
'40107' : 'Huyện Mường Lát - Chi cục Thuế khu vực Quan Hóa - Quan Sơn - Mường Lát',
'40109' : 'Huyện Quan Hóa - Chi cục Thuế khu vực Quan Hóa - Quan Sơn - Mường Lát',
'40111' : 'Huyện Quan Sơn - Chi cục Thuế khu vực Quan Hóa - Quan Sơn - Mường Lát',
'60505' : 'Chi cục Thuế Huyện Ea Súp',
'20501' : 'Thành phố Lào Cai - Chi cục Thuế khu vực Lào Cai - Mường Khương',
'20503' : 'Chi cục Thuế Thị xã Cam Đường (hêt h.lực)',
'20505' : 'Huyện Mường Khương - Chi cục Thuế khu vực Lào Cai - Mường Khương',
'20507' : 'Chi cục Thuế Huyện Bát Xát',
'20511' : 'Chi cục Thuế Huyện Bảo Thắng',
'20513' : 'Chi cục Thuế Huyện Sa Pa',
'20515' : 'Chi cục Thuế Huyện Bảo Yên',
'20517' : 'Chi cục Thuế Huyện Than Uyên (hêt h.lực)',
'30501' : 'Thành phố Hòa Bình - Chi cục Thuế khu vực Hòa Bình - Đà Bắc',
'30503' : 'Huyện Đà Bắc - Chi cục Thuế khu vực Hòa Bình - Đà Bắc',
'30505' : 'Chi cục Thuế Huyện Mai Châu',
'30509' : 'Chi cục Thuế Huyện Lương Sơn',
'30511' : 'Huyện Kim Bôi - Chi cục Thuế khu vực Kim Bôi - Lạc Thủy',
'30513' : 'Huyện Tân Lạc - Chi cục Thuế khu vực Cao Phong - Tân Lạc',
'30515' : 'Huyện Lạc Sơn - Chi cục Thuế khu vực Lạc Sơn - Yên Thủy',
'30517' : 'Huyện Lạc Thủy - Chi cục Thuế khu vực Kim Bôi - Lạc Thủy',
'30519' : 'Huyện Yên Thủy - Chi cục Thuế khu vực Lạc Sơn - Yên Thủy',
'30301' : 'Thành phố Sơn La - Chi cục Thuế khu vực Thành phố Sơn La - Mường La',
'30303' : 'Huyện Quỳnh Nhai - Chi cục Thuế khu vực Thuận Châu - Quỳnh Nhai',
'30305' : 'Huyện Mường La - Chi cục Thuế khu vực Thành phố Sơn La - Mường La',
'30309' : 'Huyện Bắc Yên - Chi cục Thuế khu vực Phù Yên - Bắc Yên',
'30311' : 'Huyện Phù Yên - Chi cục Thuế khu vực Phù Yên - Bắc Yên',
'30313' : 'Huyện Mai Sơn - Chi cục Thuế khu vực Mai Sơn - Yên Châu',
'30315' : 'Huyện Sông Mã - Chi cục Thuế khu vực Sông Mã - Sốp Cộp',
'30317' : 'Huyện Yên Châu - Chi cục Thuế khu vực Mai Sơn - Yên Châu',
'30319' : 'Huyện Mộc Châu - Chi cục Thuế khu vực Mộc Châu - Vân Hồ',
'30101' : 'Thành phố Điện Biên Phủ - Chi cục Thuế khu vực thành phố Điện Biên Phủ - Mường Ảng',
'30103' : 'Thị xã Mường Lay - Chi cục Thuế khu vực Mường Chà - Mường Lay',
'30105' : 'Chi cục Thuế Huyện Mường Tè - Đã chuyển sang Lai Châu',
'30107' : 'Chi cục Thuế Huyện Phong Thổ - Đã chuyển sang Lai Châu',
'30111' : 'Huyện Mường Chà - Chi cục Thuế khu vực Mường Chà - Mường Lay',
'30113' : 'Huyện Tủa Chùa - Chi cục Thuế khu vực Tuần Giáo - Tủa Chùa',
'30115' : 'Huyện Tuần Giáo - Chi cục Thuế khu vực Tuần Giáo - Tủa  Chùa',
'30117' : 'Chi cục Thuế Huyện Điện Biên',
'30119' : 'Chi cục Thuế Huyện Điện Biên Đông',
'22501' : 'Thành phố Hạ Long - Chi cục Thuế Thành phố Hạ Long',
'22505' : 'Thành phố Uông Bí - Chi cục Thuế khu vực Uông Bí - Quảng Yên',
'22507' :  'Huyện Bình Liêu - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22509' : 'Chi cục thuế Thành phố Móng cái',
'40337' : 'Huyện Hưng Nguyên - Chi cục Thuế khu vực Sông Lam II',
'40509' : 'Huyện Hương Sơn - Chi cục Thuế khu vực Hương Sơn - Đức Thọ',
'40519' : 'Huyện Kỳ Anh - Chi cục Thuế khu vực Kỳ Anh',
'40700' : 'Cục Thuế Tỉnh Quảng Bình',
'40707' : 'Huyện Quảng Trạch - Chi cục Thuế khu vực Quảng Trạch - Ba Đồn',
'71501' : 'Chi cục Thuế Thành phố Phan Thiết',
'71509' : 'Huyện Hàm Thuận Nam - Chi cục Thuế khu vực Hàm Thuận Nam - Hàm Thuận Bắc',
'71515' : 'Huyện Đức Linh - Chi cục Thuế khu vực Đức Linh - Tánh Linh',
'71700' : 'Cục Thuế Tỉnh Bà Rịa - Vũng Tàu',
'71705' : 'Huyện Châu Đức - Chi cục Thuế khu vực Xuyên Mộc - Châu Đức',
'71313' : 'Chi cục Thuế Huyện Xuân Lộc',
'71103' : 'Thị xã Bến Cát - Chi cục Thuế khu vực Bến Cát',
'70705' : 'Huyện Lộc Ninh - Chi cục Thuế khu vực Lộc Ninh - Bù Đốp',
'22511' : 'Huyện Hải Hà - Chi cục Thuế khu vực Hải Hà - Đầm Hà',
'22515' : 'Huyện Ba Chẽ - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22517' : 'Huyện Vân Đồn - Chi cục Thuế khu vực Cẩm Phả - Vân Đồn - Cô Tô',
'22519' : 'Huyện Hoành Bồ - Chi cục Thuế Thành phố Hạ Long',
'22523' : 'Huyện Cô Tô - Chi cục Thuế khu vực Cẩm Phả - Vân Đồn - Cô Tô',
'22525' : 'Thị xã Quảng Yên - Chi cục Thuế khu vực Uông Bí - Quảng Yên',
'70301' : 'Thành Phố Đà Lạt - Chi cục Thuế khu vực Đà Lạt - Lạc Dương',
'70303' : 'Thành phố Bảo Lộc - Chi cục Thuế khu vực Bảo Lộc - Bảo Lâm',
'70305' : 'Huyện Lạc Dương - Chi cục Thuế khu vực Đà Lạt - Lạc Dương',
'70307' : 'Huyện Đơn Dương - Chi cục Thuế khu vực Đức Trọng - Đơn Dương',
'70309' : 'CHuyện Đức Trọng - Chi cục Thuế khu vực Đức Trọng - Đơn Dương',
'70311' : 'Huyện Lâm Hà - Chi cục Thuế khu vực Lâm Hà - Đam Rông',
'70313' : 'Huyện Bảo Lâm - Chi cục Thuế khu vực Bảo Lộc - Bảo Lâm',
'70315' : 'Chi cục Thuế Huyện Di Linh',
'70317' : 'Huyện Đạ Huoai - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'70319' : 'Huyện Đạ Tẻh - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'70321' : 'Huyện Cát Tiên - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'60301' : 'Chi cục Thuế Thành phố Pleiku',
'60303' : 'Chi cục Thuế Huyện Kbang',
'60305' : 'Huyện Mang Yang - Chi cục Thuế khu vực Đak Đoa - Mang Yang',
'60307' : 'Huyện Chư Păh - Chi cục Thuế khu vực Ia Grai - Chư Păh',
'60309' : 'Huyện Ia Grai - Chi cục Thuế khu vực Ia Grai - Chư Păh',
'60311' : 'Thị xã An Khê - Chi cục Thuế khu vực An Khê - Đak Pơ - Kông Chro',
'60313' : 'Huyện Kông Chro - Chi cục Thuế khu vực An Khê - Đak Pơ - Kông Chro',
'60315' : 'Chi cục Thuế Huyện Đức Cơ',
'60317' : 'Chi cục Thuế Huyện Chư Prông',
'60319' : 'Huyện Chư Sê - Chi cục Thuế khu vực Chư Sê - Chư Pưh',
'60323' : 'Chi cục Thuế Huyện Krông Pa',
'60501' : 'Chi cục Thuế Thành phố Buôn Ma Thuột',
'60509' : 'Thị xã Buôn Hồ- Chi cục Thuế khu vực Buôn Hồ-Krông Năng',
'60511' : 'Huyện Buôn Đôn - Chi cục Thuế khu vực Cư M`gar - Buôn Đôn',
'60515' : 'Huyện Ea Kar- Chi cục Thuế khu vực  Ea Kar-M`Drắc',
'60519' : 'Chi cục Thuế Huyện Krông Pắk',
'60521' : 'Chi cục Thuế Huyện Cư Jút (hêt h.lực)',
'60523' : 'Huyện Krông Ana- Chi cục Thuế khu vực Krông Ana- Cư Kuin',
'60525' : 'Huyện Krông Bông-Chi cục Thuế khu vực Lắk- Krông Bông',
'60529' : 'Chi cục Thuế Huyện Krông Nô (hêt h.lực)',
'60531' : 'Huyện  Lắk-Chi cục Thuế khu vực Lắk- Krông Bông',
'60101' : 'Chi cục Thuế Thành phố Kon Tum',
'60103' : 'Chi cục Thuế Huyện Đắk Glei',
'60105' : 'Chi cục Thuế Huyện Ngọc Hồi',
'60109' : 'Huyện Kon Plông - Chi cục Thuế khu vực số 01',
'60111' : 'Huyện Đăk Hà - Chi cục Thuế khu vực số 02',
'60113' : 'Chi cục Thuế Huyện Sa Thầy',
'70909' : 'Huyện Châu Thành - Chi cục Thuế khu vực Thành phố Tây Ninh - Châu Thành',
'70911' : 'Huyện Hòa Thành - Chi cục Thuế khu vực Hòa Thành - Dương Minh Châu',
'70913' : 'Huyện Bến Cầu - Chi cục Thuế khu vực Gò Dầu - Trảng Bàng - Bến Cầu',
'70917' : 'Huyện Trảng Bàng - Chi cục Thuế khu vực Gò Dầu - Trảng Bàng - Bến Cầu',
'50301' : 'Thành phố Tam Kỳ - Chi cục Thuế khu vực Tam Kỳ - Phú Ninh',
'50303' : 'Chi cục Thuế Thành phố Hội An',
'50305' : 'Huyện Đông Giang - Chi cục Thuế khu vực Đông Giang - Tây Giang',
'50307' : 'Chi cục Thuế Huyện Đại Lộc',
'50309' : 'Thị Xã Điện Bàn - Chi cục Thuế khu vực Điện Bàn - Duy Xuyên',
'50311' : 'Huyện Duy Xuyên - Chi cục Thuế khu vực Điện Bàn - Duy Xuyên',
'50313' : 'Huyện Nam Giang - Chi cục Thuế khu vực Phước Sơn - Nam Giang',
'50315' : 'Chi cục Thuế Huyện Thăng Bình',
'50317' : 'Huyện Quế Sơn - Chi cục Thuế khu vực Quế Sơn - Nông Sơn - Hiệp Đức',
'50319' : 'Huyện Hiệp Đức - Chi cục Thuế khu vực Quế Sơn - Nông Sơn - Hiệp Đức',
'50321' : 'Huyện Tiên Phước - Chi cục Thuế khu vực Trà My - Tiên Phước',
'50323' : 'Huyện Phước Sơn - Chi cục Thuế khu vực Phước Sơn - Nam Giang',
'50325' : 'Chi cục Thuế Huyện Núi Thành',
'50327' : 'Huyện Bắc Trà My - Chi cục Thuế khu vực Trà My - Tiên Phước',
'50701' : 'Chi cục Thuế Thành phố Quy Nhơn',
'50703' : 'Huyện An Lão - Chi cục Thuế khu vực Hoài Nhơn - Hoài Ân - An Lão',
'50705' : 'Huyện Hoài Nhơn - Chi cục Thuế khu vực Hoài Nhơn - Hoài Ân - An Lão',
'50707' : 'Huyện Hoài Ân - Chi cục Thuế khu vực Hoài Nhơn - Hoài Ân - An Lão',
'50709' : 'Huyện Phù Mỹ - Chi cục Thuế khu vực Phù Cát - Phù Mỹ',
'50711' : 'Huyện Vĩnh Thạnh - Chi cục Thuế khu vực Tây Sơn - Vĩnh Thạnh',
'50713' : 'Huyện Phù Cát - Chi cục Thuế khu vực Phù Cát - Phù Mỹ',
'50715' : 'Huyện Tây Sơn - Chi cục Thuế khu vực Tây Sơn - Vĩnh Thạnh',
'50719' : 'CHuyện Tuy Phước - Chi cục Thuế khu vực Tuy Phước - Vân Canh',
'50721' : 'Huyện Vân Canh - Chi cục Thuế khu vực Tuy Phước - Vân Canh',
'51101' : 'Chi cục Thuế Thành phố Nha Trang',
'51103' : 'Huyện Vạn Ninh - Chi cục Thuế khu vực Bắc Khánh Hòa',
'51107' : 'Huyện Diên Khánh - Chi cục Thuế khu vực Tây Khánh Hòa',
'51109' : 'Thành phố Cam Ranh - Chi cục Thuế khu vực Nam Khánh Hòa',
'51111' : 'Huyện Khánh Vĩnh - Chi cục Thuế khu vực Tây Khánh Hòa',
'51113' : 'Huyện Khánh Sơn - Chi cục Thuế khu vực Nam Khánh Hòa',
'51115' : 'Chi cục Thuế Huyện Trường Sa',
'50501' : 'Thành phố Quảng Ngãi - Chi cục Thuế khu vực Quảng Ngãi - Sơn Tịnh',
'50503' : 'Chi cục Thuế Huyện Lý Sơn',
'50505' : 'Chi cục Thuế Huyện Bình Sơn',
'50507' : 'Huyện Trà Bồng - Chi cục Thuế huyện Trà Bồng',
'50509' : 'Huyện Sơn Tịnh - Chi cục Thuế khu vực Quảng Ngãi - Sơn Tịnh',
'50511' : 'Huyện Sơn Tây - Chi cục Thuế khu vực Sơn Hà - Sơn Tây',
'50513' : 'Huyện Sơn Hà - Chi cục Thuế khu vực Sơn Hà - Sơn Tây',
'50515' : 'Huyện Tư Nghĩa - Chi cục Thuế khu vực Tư Nghĩa - Mộ Đức',
'50517' : 'Huyện Nghĩa Hành - Chi cục Thuế khu vực Nghĩa Hành - Minh Long',
'50519' : 'Huyện Minh Long - Chi cục Thuế khu vực Nghĩa Hành - Minh Long',
'50521' : 'Huyện Mộ Đức - Chi cục Thuế khu vực Tư Nghĩa - Mộ Đức',
'50523' : 'Huyện Đức Phổ - Chi cục Thuế khu vực Đức Phổ - Ba Tơ',
'50525' : 'Huyện Ba Tơ - Chi cục Thuế khu vực Đức Phổ - Ba Tơ',
'50901' : 'Chi cục Thuế TP  Tuy Hoà',
'50903' : 'Huyện Đồng Xuân - Chi cục Thuế khu vực Tuy An - Đồng Xuân',
'50905' : 'Chi cục Thuế Thị Xã Sông Cầu',
'50907' : 'Huyện Tuy An - Chi cục Thuế khu vực Tuy An - Đồng Xuân',
'50909' : 'Huyện Sơn Hòa - Chi cục Thuế khu vực Sông Hinh - Sơn Hòa',
'50911' : 'Chi cục Thuế thị xã Đông Hòa',
'50913' : 'Huyện Sông Hinh - Chi cục Thuế khu vực Sông Hinh - Sơn Hòa',
'70501' : 'Chi cục Thuế TP. Phan Rang - Tháp Chàm',
'70915' : 'Huyện Gò Dầu - Chi cục Thuế khu vực Gò Dầu - Trảng Bàng - Bến Cầu',
'70115' : 'Chi cục Thuế Quận 8',
'70123' : 'Quận 12 - Chi cục Thuế khu vực Quận 12 - huyện Hóc Môn',
'70131' : 'Chi cục Thuế Quận Phú Nhuận',
'70141' : 'Huyện Nhà Bè  - Chi cục Thuế khu vực Quận 7 - Nhà Bè',
'50105' : 'Quận Sơn Trà- Chi cục Thuế khu vực Sơn Trà- Ngũ Hành Sơn',
'10911' : 'Huyện Phủ Cừ - Chi cục thuế khu vực Tiên Lữ- Phủ Cừ',
'80103' : 'Huyện Tân Hưng - Chi cục Thuế khu vực Vĩnh Hưng - Tân Hưng',
'80113' : 'Huyện Đức Huệ - Chi cục Thuế khu vực Đức Hòa - Đức Huệ',
'80123' : 'Huyện Tân Trụ - Chi cục Thuế khu vực Châu Thành - Tân Trụ',
'80703' : 'Thị xã Gò Công - Chi cục Thuế khu vực thị xã Gò Công - Gò Công Đông - Tân Phú Đông',
'81309' : 'Huyện Châu Thành - Chi cục Thuế khu vực Châu Thành - Tân Hiệp',
'81319' : 'Huyện Vĩnh Thuận - Chi cục Thuế khu vực Vĩnh Thuận - U Minh Thượng',
'81505' : 'Quận Ô Môn - Chi cục Thuế khu vực Bình Thủy - Ô Môn',
'81900' : 'Cục Thuế Tỉnh Sóc Trăng',
'81905' : 'Huyện Long Phú - Chi cục Thuế khu vực Long Phú',
'22301' : 'Chi cục Thuế Thành phố Bắc Ninh',
'22311' : 'Huyện Lương Tài - Chi cục Thuế khu vực Gia Thuận',
'21700' : 'Cục Thuế Tỉnh Phú Thọ',
'21717' : 'Huyện Tam Nông - Chi cục Thuế khu vực Tam Nông - Thanh Thuỷ',
'40121' : 'Huyện Ngọc Lặc - Chi cục Thuế khu vực Ngọc Lặc - Lang Chánh',
'40131' : 'Huyện Hà Trung - Chi cục Thuế khu vực thị xã Bỉm Sơn - Hà Trung',
'40139' : 'Huyện Hậu Lộc - Chi cục Thuế khu vực Nga Sơn - Hậu Lộc',
'00000' : 'Tổng cục Thuế ',
'71100' : 'Cục Thuế Tỉnh Bình Dương',
'70700' : 'Cục Thuế Tỉnh Bình Phước',
'80300' : 'Cục Thuế Tỉnh Đồng Tháp',
'80900' : 'Cục Thuế Tỉnh Vĩnh Long',
'80500' : 'Cục Thuế Tỉnh An Giang',
'81300' : 'Cục Thuế Tỉnh Kiên Giang',
'81500' : 'Cục Thuế Thành phố Cần Thơ',
'82100' : 'Cục Thuế Tỉnh Bạc Liêu',
'82300' : 'Cục Thuế Tỉnh Cà Mau',
'81700' : 'Cục Thuế Tỉnh Trà Vinh',
'22300' : 'Cục Thuế Tỉnh Bắc Ninh',
'22100' : 'Cục Thuế Tỉnh Bắc Giang',
'21900' : 'Cục Thuế Tỉnh Vĩnh Phúc',
'10100' : 'Cục Thuế Thành phố Hà Nội',
'10300' : 'Cục Thuế TP Hải Phòng',
'50100' : 'Cục Thuế TP Đà Nẵng',
'10500' : 'Cục thuế Hà Tây cũ (hết h.lực)',
'11300' : 'Cục Thuế Tỉnh Nam Định',
'11100' : 'Cục Thuế Tỉnh Hà Nam',
'10700' : 'Cục Thuế Tỉnh Hải Dương',
'10900' : 'Cục Thuế Tỉnh Hưng Yên',
'11500' : 'Cục Thuế Tỉnh Thái Bình',
'80100' : 'Cục Thuế Tỉnh Long An',
'80700' : 'Cục Thuế Tỉnh Tiền Giang',
'30100' : 'Cục Thuế Tỉnh Điện Biên',
'22500' : 'Cục Thuế Tỉnh Quảng Ninh',
'70300' : 'Cục Thuế Tỉnh Lâm Đồng',
'60500' : 'Cục Thuế Tỉnh Đắk Lắk',
'60100' : 'Cục Thuế Tỉnh Kon Tum',
'50300' : 'Cục Thuế Tỉnh Quảng Nam',
'50700' : 'Cục Thuế Tỉnh Bình Định',
'51100' : 'Cục Thuế Tỉnh Khánh Hoà',
'50900' : 'Cục Thuế Tỉnh Phú Yên',
'70500' : 'Cục Thuế Tỉnh Ninh Thuận',
'21500' : 'Cục Thuế Tỉnh Thái Nguyên',
'20700' : 'Cục Thuế Tỉnh Bắc Cạn',
'20900' : 'Cục Thuế Tỉnh Lạng Sơn',
'21100' : 'Cục Thuế Tỉnh Tuyên Quang',
'20100' : 'Cục Thuế Tỉnh Hà Giang',
'40100' : 'Cục Thuế Tỉnh Thanh Hoá',
'40300' : 'Cục Thuế Tỉnh Nghệ An',
'40900' : 'Cục Thuế Tỉnh Quảng Trị',
'41100' : 'Cục Thuế Tỉnh TT-Huế',
'71300' : 'Cục Thuế Tỉnh Đồng Nai',
'11103' : 'Huyện Duy Tiên - Chi cục Thuế khu vực Duy Tiên- Lý Nhân',
'11105' : 'Huyện Kim Bảng - Chi cục Thuế khu vực Phủ Lý - Kim Bảng',
'11109' : 'Huyện Thanh Liêm- Chi cục Thuế khu vực Thanh Liêm- Bình Lục',
'11111' : 'Huyện Bình Lục- Chi cục Thuế khu vực Thanh Liêm- Bình Lục',
'10701' : 'Chi cục Thuế Thành phố Hải Dương',
'10703' : 'Chi cục Thuế Huyện Chí Linh',
'10705' : 'Huyện Nam Sách - Chi cục Thuế khu vực Nam Thanh',
'10707' : 'Huyện Thanh Hà - Chi cục Thuế khu vực Nam Thanh',
'10709' : 'Huyện Kinh Môn - Chi cục Thuế khu vực Kim Môn',
'10711' : 'Huyện Kim Thành - Chi cục  Thuế khu vực Kim Môn',
'10713' : 'Huyện Gia Lộc - Chi cục Thuế khu vực Tứ Lộc',
'10715' : 'Huyện Tứ Kỳ - Chi cục Thuế khu vực Tứ Lộc',
'10717' : 'Huyện Cẩm Giàng - Chi cục Thuế khu vực Cẩm Bình',
'10719' : 'Huyện Bình Giang - Chi cục Thuế khu vực Cẩm Bình',
'10721'	: 'Huyện Thanh Miện - Chi cục Thuế khu vực Ninh Thanh',
'10723' : 'Huyện Ninh Giang - Chi cục Thuế khu vực Ninh Thanh',
'10901' : 'Thành phố Hưng Yên - Chi cục thuế khu vực thành phố Hưng Yên- Kim Động',
'10903' : 'Thị xã Mỹ Hào - Chi cục Thuế khu vực Mỹ Hào - Văn Lâm',
'10905' : 'Huyện Khoái Châu - Chi cục Thuế khu vực Văn Giang - Khoái Châu',
'10907' : 'Huyện Ân Thi - Chi cục Thuế khu vực Yên Mỹ - Ân Thi',
'10909' : 'Huyện Kim Động - Chi cục thuế khu vực thành phố Hưng Yên- Kim Động',
'10913' : 'Huyện Tiên Lữ - Chi cục thuế khu vực Tiên Lữ- Phủ Cừ',
'11501' : 'Thành phố Thái Bình - Chi cục Thuế khu vực thành phố Thái Bình - Vũ Thư',
'11503' : 'Huyện Quỳnh Phụ - Chi cục Thuế khu vực Quỳnh Phụ - Hưng Hà',
'11505' : 'Huyện Hưng Hà - Chi cục Thuế khu vực Quỳnh Phụ - Hưng Hà',
'11507' : 'Chi cục Thuế Huyện Thái Thuỵ',
'11509' : 'Chi cục Thuế Huyện Đông Hưng',
'11511' : 'Huyện Vũ Thư - Chi cục Thuế khu vực thành phố Thái Bình - Vũ Thư ',
'11513' : 'Huyện Kiến Xương - Chi cục Thuế khu vực Tiền Hải - Kiến Xương',
'11515' : 'Huyện Tiền Hải - Chi cục Thuế khu vực Tiền Hải - Kiến Xương',
'80101' : 'Thành phố Tân An - Chi cục Thuế khu vực Tân An - Thủ Thừa',
'80105' : 'Huyện Vĩnh Hưng - Chi cục Thuế khu vực Vĩnh Hưng - Tân Hưng',
'80107' : 'Huyện Mộc Hóa - Chi cục Thuế khu vực Kiến Tường - Mộc Hóa',
'80109' : 'Huyện Tân Thạnh - Chi cục Thuế khu vực Tân Thạnh - Thạnh Hóa',
'80111' : 'Huyện Thạnh Hóa - Chi cục Thuế khu vực Tân Thạnh - Thạnh Hóa',
'80115' : 'Huyện Đức Hòa - Chi cục Thuế khu vực Đức Hòa - Đức Huệ',
'80117' : 'Chi cục Thuế Huyện Bến Lức',
'80119' : 'Chi cục Thuế Huyện Thủ Thừa',
'80121' : 'Huyện Châu Thành - Chi cục Thuế khu vực Châu Thành - Tân Trụ',
'80125' : 'Huyện Cần Đước - Chi cục Thuế khu vực Cần Giuộc - Cần Đước',
'80127' : 'Huyện Cần Giuộc - Chi cục Thuế khu vực Cần Giuộc - Cần Đước',
'80701' : 'Chi cục Thuế Thành phố Mỹ Tho',
'80705' : 'Huyện Tân Phước - Chi cục Thuế khu vực Châu Thành - Tân Phước',
'80707' : 'Huyện Châu Thành - Chi cục Thuế khu vực Châu Thành - Tân Phước',
'80709' : 'Huyện Cai Lậy - Chi cục Thuế khu vực Cai Lậy',
'11317' : 'Chi cục Thuế Huyện Nghĩa Hưng',
'11319' : 'Chi cục Thuế Huyện Hải Hậu',
'11101' : 'Thành phố Phủ Lý - Chi cục Thuế khu vực Phủ Lý - Kim Bảng',
'80711' : 'Huyện Chợ Gạo - Chi cục Thuế khu vực Gò Công Tây - Chợ Gạo',
'10101' : 'Chi cục Thuế Quận Ba Đình',
'10103' : 'Chi cục Thuế Quận Tây Hồ',
'10105' : 'Chi cục Thuế Quận Hoàn Kiếm',
'10107' : 'Chi cục Thuế Quận Hai Bà Trưng',
'10109' : 'Chi cục Thuế Quận Đống đa',
'10111' : 'Chi cục Thuế Quận Thanh Xuân',
'10113' : 'Chi cục Thuế Quận Cầu Giấy',
'10115' : 'Huyện Sóc Sơn - Chi cục Thuế khu vực Sóc Sơn - Mê Linh',
'10117' : 'Chi cục Thuế Huyện Đông Anh',
'10119' : 'Chi cục Thuế Huyện Gia Lâm',
'10121' : 'Chi cục Thuế Huyện Từ Liêm (Cũ)',
'10123' : 'Chi cục Thuế Huyện Thanh Trì',
'10301' : 'Quận Hồng Bàng - Chi cục Thuế khu vực Hồng Bàng - An Dương',
'10303' : 'Quận Ngô Quyền - Chi cục Thuế khu vực Ngô Quyền - Hải An',
'10305' : 'Quận Lê Chân - Chi cục Thuế khu vực Lê Chân - Dương Kinh',
'10307' : 'Quận Kiến An - Chi cục Thuế khu vực Kiến An - An Lão',
'10309' : 'Quận Đồ Sơn - Chi cục Thuế khu vực Đồ Sơn - Kiến Thụy',
'10311' : 'Chi cục Thuế Huyện Thuỷ Nguyên',
'10313' : 'Huyện An Dương - Chi cục Thuế khu vực Hồng Bàng - An Dương',
'10315' : 'Huyện An Lão - Chi cục Thuế khu vực Kiến An - An Lão',
'10317' : 'Huyện Kiến Thụy - Chi cục Thuế khu vực Đồ Sơn - Kiến Thụy',
'10319' : 'Huyện Tiên Lãng - Chi cục Thuế khu vực Vĩnh Bảo - Tiên Lãng',
'10321' : 'Huyện Vĩnh Bảo - Chi cục Thuế khu vực Vĩnh Bảo - Tiên Lãng',
'10323' : 'Chi cục Thuế Huyện Cát Hải',
'10325' : 'Chi cục Thuế Huyện Bạch Long Vĩ',
'70101' : 'Chi cục Thuế Quận 1',
'70103' : 'Chi cục Thuế Quận 2',
'70105' : 'Chi cục Thuế Quận 3',
'81100' : 'Cục Thuế Tỉnh Bến Tre',
'70107' : 'Chi cục Thuế Quận 4',
'70109' : 'Chi cục Thuế Quận 5',
'70111' : 'Chi cục Thuế Quận 6',
'71701' : 'Thành phố Vũng Tàu - Chi cục Thuế khu vực Vũng Tàu - Côn Đảo',
'71703' : 'Thành phố Bà Rịa - Chi cục Thuế khu vực Bà Rịa - Long Điền - Đất Đỏ',
'71707' : 'Huyện Xuyên Mộc - Chi cục Thuế khu vực Xuyên Mộc - Châu Đức',
'71709' : 'Chi cục Thuế Huyện Tân Thành',
'71711' : 'Huyện Long Điền - Chi cục Thuế khu vực Bà Rịa - Long Điền - Đất Đỏ',
'71713' : 'Huyện Côn Đảo - Chi cục Thuế khu vực Vũng Tàu - Côn Đảo',
'71301' : 'Thành phố Biên Hòa - Chi cục Thuế khu vực Biên Hòa - Vĩnh Cửu',
'71303' : 'Huyện Tân Phú - Chi cục Thuế khu vực Định Quán - Tân Phú',
'71305' : 'Huyện Định Quán - Chi cục Thuế khu vực Định Quán - Tân Phú',
'71307' : 'Huyện Vĩnh Cửu - Chi cục Thuế khu vực Biên Hòa - Vĩnh Cửu',
'70113' : 'Quận 7 - Chi cục Thuế khu vực Quận 7 - Nhà Bè',
'70117' : 'Chi cục Thuế Quận 9',
'70119' : 'Chi cục Thuế Quận 10',
'70121' : 'Chi cục Thuế Quận 11',
'70125' : 'Chi cục Thuế Quận Gò Vấp',
'70127' : 'Chi cục Thuế Quận Tân Bình',
'70129' : 'Chi cục Thuế Quận Bình Thạnh',
'70133' : 'Chi cục Thuế Quận Thủ Đức',
'70135' : 'Chi cục Thuế Huyện Củ Chi',
'70137' : 'Huyện Hóc Môn - Chi cục Thuế khu vực Quận 12 - huyện Hóc Môn',
'70139' : 'Chi cục Thuế Huyện Bình Chánh',
'70143' : 'Chi cục Thuế Huyện Cần Giờ',
'50101' : 'Chi cục Thuế Quận Hải Châu',
'50103' : 'Quận Thanh Khê- Chi cục Thuế khu vực Thanh Khê- Liên Chiểu',
'50107' : 'Quận Ngũ Hành Sơn- Chi cục Thuế khu vực Sơn Trà- Ngũ Hành Sơn',
'50109' : 'Quận Liên Chiểu- Chi cục Thuế khu vực Thanh Khê- Liên Chiểu',
'50111' : 'Huyện Hòa Vang - Chi cục thuế khu vực Cẩm Lệ - Hòa Vang',
'50113' : 'Chi cục Thuế Huyện Đảo Hoàng Sa',
'10501' : 'Chi cục Thuế Thành phố Hà Đông (hết h.lực)',
'10505' : 'Chi cục Thuế Huyện Ba Vì (hết h.lực)',
'10507' : 'Chi cục Thuế Huyện Phúc Thọ (hết h.lực)',
'10509' : 'Chi cục Thuế Huyện Đan Phượng (hết h.lực)',
'10513' : 'Chi cục Thuế Huyện HoàI Đức (hết h.lực)',
'10515' : 'Chi cục Thuế Huyện Quốc Oai (hết h.lực)',
'10517' : 'Chi cục Thuế Huyện Chương Mỹ (hết h.lực)',
'10519' : 'Chi cục Thuế Huyện Thanh Oai (hết h.lực)',
'10523' : 'Chi cục Thuế Huyện Mỹ Đức (hết h.lực)',
'10525' : 'Chi cục Thuế Huyện ứng Hoà (hết h.lực)',
'10527' : 'Chi cục Thuế Huyện Phú Xuyên (hết h.lực)',
'11301' : 'Thành phố Nam Định - Chi cục Thuế khu vực Thành phố Nam Định - Mỹ Lộc',
'11303' : 'Huyện Vụ Bản - Chi cục Thuế khu vực Ý Yên - Vụ Bản',
'11305' : 'Huyện Mỹ Lộc - Chi cục Thuế khu vực Thành phố Nam Định - Mỹ Lộc',
'11307' : 'Huyện Ý Yên - Chi cục Thuế khu vực Ý Yên - Vụ Bản',
'11309' : 'Huyện Nam Trực - Chi cục Thuế khu vực Nam Ninh',
'11311' : 'Huyện Trực Ninh - Chi cục Thuế khu vực Nam Ninh',
'11313' : 'Huyện Xuân Trường - Chi cục Thuế khu vực Xuân Thủy',
'11315' : 'Huyện Giao Thuỷ - Chi cục Thuế khu vực Xuân Thủy',
'11703' : 'Thành phố Tam Điệp - Chi cục Thuế khu vực Tam Điệp - Yên Mô',
'11705' : 'Huyện Nho Quan - Chi cục Thuế khu vực Nho Quan - Gia Viễn',
'11707' : 'Huyện Gia Viễn - Chi cục Thuế khu vực Nho Quan - Gia Viễn',
'81311' : 'Huyện Giồng Riềng - Chi cục Thuế khu vực Giồng Riềng - Gò Quao',
'81313' : 'Huyện Gò Quao - Chi cục Thuế khu vực Giồng Riềng - Gò Quao',
'81315' : 'Huyện An Biên - Chi cục Thuế khu vực An Biên - An Minh',
'81317' : 'Huyện An Minh - Chi cục Thuế khu vực An Biên - An Minh',
'81321' : 'Chi cục Thuế Huyện Phú Quốc',
'81501' : 'Chi cục Thuế Thành phố Cần Thơ (hêt h.lực)',
'81503' : 'Quận Thốt Nốt - Chi cục Thuế khu vực Thốt Nốt - Vĩnh Thạnh',
'81507' : 'Chi cục Thuế Huyện Châu Thành (hêt h.lực)',
'81509' : 'Chi cục Thuế Huyện Phụng Hiệp (hêt h.lực)',
'81513' : 'Chi cục Thuế Huyện Long Mỹ (hêt h.lực)',
'82101' : 'Chi cục Thuế  thành phố Bạc Liêu',
'82103' : 'Huyện Hồng Dân - Chi cục Thuế khu vực Phước Long - Hồng Dân',
'82105' : 'Huyện Vĩnh Lợi - Chi cục Thuế khu vực Hòa Bình - Vĩnh Lợi',
'82107' : 'Thị xã Giá Rai - Chi cục Thuế khu vực Giá Rai - Đông Hải',
'82301' : 'Thành phố Cà Mau - Chi cục Thuế khu vực II',
'82303' : 'Huyện Thới Bình - Chi cục Thuế khu vực IV',
'82305' : 'Huyện U Minh - Chi cục Thuế khu vực IV',
'82307' : 'Huyện Trần Văn Thời - Chi cục Thuế khu vực III',
'82309' : 'Huyện Cái Nước - Chi cục Thuế khu vực III',
'82311' : 'Huyện Đầm Dơi - Chi cục Thuế khu vực II',
'82313' : 'Huyện Ngọc Hiển- Chi cục Thuế khu vực I',
'81701' : 'Thành phố Trà Vinh - Chi cục Thuế khu vực Thành phố Trà Vinh - Châu Thành',
'81703' : 'Chi cục Thuế Huyện Càng Long',
'81705' : 'Huyện Châu Thành - Chi cục Thuế khu vực Thành phố Trà Vinh - Châu Thành',
'81707' : 'Huyện Cầu Kè - Chi cục Thuế khu vực Tiểu Cần - Cầu Kè',
'81709' : 'Huyện Tiểu Cần - Chi cục Thuế khu vực Tiểu Cần - Cầu Kè',
'81711' : 'Huyện Cầu Ngang - Chi cục Thuế khu vực Cầu Ngang - Trà Cú',
'81713' : 'Huyện Trà Cú - Chi cục Thuế khu vực Cầu Ngang - Trà Cú',
'81715' : 'Huyện Duyên Hải - Chi cục Thuế khu vực Duyên Hải',
'81903' : 'Chi cục Thuế Huyện Kế Sách',
'81907' : 'Huyện Mỹ Tú- Chi cục thuế khu vực Châu Thành',
'81909' : 'Huyện Mỹ Xuyên - Chi cục thuế khu vực thành phố Sóc Trăng',
'81911' : 'Huyện Thạnh Trị - Chi cục thuế khu vực Thạnh Trị',
'81913' : 'Chi cục Thuế Thị Xã Vĩnh Châu',
'22303' : 'Huyện Yên Phong - Chi cục Thuế khu vực Từ Sơn - Yên Phong',
'22305' : 'Huyện Quế Võ - Chi cục Thuế khu vực Tiên Du - Quế Võ',
'22307' : 'Huyện Tiên Du - Chi cục Thuế khu vực Tiên Du - Quế Võ',
'22309' : 'Huyện Thuận Thành - Chi cục Thuế khu vực Gia Thuận',
'22101' : 'Thành phố Bắc Giang - Chi cục Thuế khu vực Bắc Giang - Yên Dũng',
'22103' : 'Huyện Yên Thế - Chi cục Thuế khu vực Tân Yên - Yên Thế',
'22105' : 'Huyện Tân Yên - Chi cục Thuế khu vực Tân Yên - Yên Thế',
'22107' : 'Chi cục Thuế khu vực Lục Ngạn - Sơn Động',
'22109' : 'Huyện Hiệp Hoà - Chi cục Thuế khu vực Việt Yên - Hiệp Hoà',
'22111' : 'Huyện Lạng Giang - Chi cục Thuế khu vực Lạng Giang - Lục Nam',
'22113' : 'Huyện Sơn Động - Chi cục Thuế khu vực Lục Ngạn - Sơn Động',
'22115' : 'Huyện Lục Nam - Chi cục Thuế khu vực Lạng Giang - Lục Nam',
'22117' : 'Huyện Việt Yên - Chi cục Thuế khu vực Việt Yên - Hiệp Hoà',
'22119' : 'Huyện Yên Dũng - Chi cục Thuế khu vực Bắc Giang - Yên Dũng',
'21901' : 'Chi cục Thuế Thành phố Vĩnh Yên',
'21903' : 'Huyện Lập Thạch - Chi cục Thuế khu vực Lập Thạch',
'21905' : 'Huyện Tam Dương - Chi cục Thuế khu vực Tam Đảo',
'21907' : 'Huyện Vĩnh Tường - Chi cục Thuế khu vực Vĩnh Tường',
'21909' : 'Huyện Yên Lạc - Chi cục Thuế khu vực Vĩnh Tường',
'21911' : 'Chi cục Thuế Huyện Mê Linh (chuyển Hà Nội)',
'21701' : 'Chi cục Thuế Thành phố Việt Trì',
'21703' : 'Chi cục Thuế Thị xã Phú Thọ',
'21705' : 'Chi cục Thuế Huyện Đoan Hùng',
'21707' : 'Huyện Hạ Hòa - Chi cục Thuế khu vực Thanh Ba - Hạ Hòa',
'21709' : 'Huyện Thanh Ba - Chi cục Thuế khu vực Thanh Ba - Hạ Hòa',
'21713' : 'Huyện Cẩm Khê - Chi cục Thuế khu vực Cẩm Khê - Yên Lập',
'21715' : 'Huyện Yên Lập - Chi cục Thuế khu vực Cẩm Khê - Yên Lập',
'21719' : 'Huyện Thanh Sơn - Chi cục Thuế khu vực Thanh Sơn - Tân Sơn',
'11701' : 'Thành phố Ninh Bình - Chi cục Thuế khu vực Ninh Bình - Hoa Lư',
'81301' : 'Chi cục Thuế Thành phố Rạch Giá',
'81303' : 'Huyện Kiên Lương - Chi cục Thuế khu vực Hòn Đất - Kiên Lương',
'81305' : 'Huyện Hòn Đất - Chi cục Thuế khu vực Hòn Đất - Kiên Lương',
'71511' : 'Huyện Tánh Linh - Chi cục Thuế khu vực Đức Linh - Tánh Linh',
'71513' : 'Thị xã La Gi - Chi cục Thuế khu vực La Gi - Hàm Tân',
'71517' : 'Chi cục Thuế Huyện Phú Quý',
'71309' : 'Huyện Thống Nhất - Chi cục Thuế khu vực Trảng Bom - Thống Nhất',
'71311' : 'Huyện Cẩm Mỹ - Chi cục Thuế khu vực Long Khánh - Cẩm Mỹ',
'71315' : 'Huyện Long Thành - Chi cục Thuế khu vực Long Thành - Nhơn Trạch',
'71317' : 'Huyện Nhơn Trạch - Chi cục Thuế khu vực Long Thành - Nhơn Trạch',
'71105' : 'Thị xã Tân Uyên - Chi cục Thuế khu vực Tân Uyên',
'71107' : 'Chi cục Thuế thị xã Thuận An',
'70701' : 'Huyện Đồng Phú - Chi cục Thuế khu vực Đồng Xoài - Đồng Phú',
'70703' : 'Thị xã Phước Long - Chi cục Thuế khu vực Phước Long - Bù Gia Mập - Phú Riềng',
'70707' : 'Chi cục Thuế Huyện Bù Đăng',
'70709' : 'Thị xã Bình Long - Chi cục Thuế khu vực Bình Long - Hớn Quản',
'70901' : 'Thành phố Tây Ninh - Chi cục Thuế khu vực Thành phố Tây Ninh - Châu Thành',
'70903' : 'Huyện Tân Biên - Chi cục Thuế khu vực Tân Biên - Tân Châu',
'11709' : 'Huyện Hoa Lư - Chi cục Thuế khu vực Ninh Bình - Hoa Lư',
'80713' : 'Chi cục Thuế Huyện Cái Bè',
'80715' : 'Huyện Gò Công Tây - Chi cục Thuế khu vực Gò Công Tây - Chợ Gạo',
'80717' : 'Huyện Gò Công Đông - Chi cục Thuế khu vực thị xã Gò Công - Gò Công Đông - Tân Phú Đông',
'81101' : 'Thành phố Bến Tre - Chi cục Thuế khu vực Bến Tre - Châu Thành',
'81103' : 'Huyện Châu Thành - Chi cục Thuế khu vực Bến Tre - Châu Thành',
'81105' : 'Huyện Chợ Lách - Chi cục Thuế khu vực Chợ Lách - Mỏ Cày Bắc',
'81107' : 'Huyện Mỏ Cày Nam - Chi cục Thuế khu vực Mỏ Cày Nam - Thạnh Phú',
'81109' : 'Huyện Giồng Trôm - Chi cục Thuế khu vực Ba Tri - Giồng Trôm',
'81111' : 'Chi cục Thuế Huyện Bình Đại',
'81113' : 'Huyện Ba Tri - Chi cục Thuế khu vực Ba Tri - Giồng Trôm',
'81115' : 'Huyện Thạnh Phú - Chi cục Thuế khu vực Mỏ Cày Nam - Thạnh Phú',
'80301' : 'Thành phố Cao Lãnh - Chi cục Thuế khu vực 1',
'80303' : 'Thành phố Sa Đéc - Chi cục Thuế khu vực 2',
'80305' : 'Huyện Tân Hồng - Chi cục Thuế khu vực 6',
'80307' : 'Huyện Hồng Ngự - Chi cục Thuế khu vực 3',
'80309' : 'Huyện Tam Nông - Chi cục Thuế khu vực 6',
'80311' : 'Huyện Thanh Bình - Chi cục Thuế khu vực 1',
'80313' : 'Huyện Tháp Mười - Chi cục Thuế khu vực 4',
'80315' : 'Huyện Cao Lãnh - Chi cục Thuế khu vực 4',
'80317' : 'Huyện Lấp Vò - Chi cục Thuế khu vực 5',
'80319' : 'Huyện Lai Vung - Chi cục Thuế khu vực 5',
'80321' : 'Huyện Châu Thành - Chi cục Thuế khu vực 2',
'80901' : 'Thành phố Vĩnh Long - Chi cục Thuế khu vực I',
'80903' : 'Huyện Long Hồ - Chi cục Thuế khu vực I',
'80905' : 'Huyện Mang Thít - Chi cục Thuế khu vực IV',
'80907' : 'Thị xã Bình Minh - Chi cục Thuế khu vực II',
'80909' : 'Huyện Tam Bình - Chi cục Thuế khu vực III',
'80911' : 'Huyện Trà Ôn - Chi cục Thuế khu vực III',
'80913' : 'Huyện Vũng Liêm - Chi cục Thuế khu vực IV',
'80501' : 'Chi cục thuế Tp. Long Xuyên',
'80503' : 'Thành phố Châu Đốc - Chi cục Thuế khu vực Châu Đốc - Châu Phú',
'80505' : 'Huyện An Phú - Chi cục Thuế khu vực Tân Châu - An Phú',
'80509' : 'Huyện Phú Tân - Chi cục Thuế khu vực Chợ Mới - Phú Tân',
'80511' : 'Huyện Châu Phú - Chi cục Thuế khu vực Châu Đốc - Châu Phú',
'80513' : 'Huyện Tịnh Biên - Chi cục Thuế khu vực Tịnh Biên - Tri Tôn',
'80515' : 'Huyện Tri Tôn - Chi cục Thuế khu vực Tịnh Biên - Tri Tôn',
'80517' : 'Huyện Chợ Mới - Chi cục Thuế khu vực Chợ Mới - Phú Tân',
'80519' : 'Huyện Châu Thành - Chi cục Thuế khu vực Châu Thành - Thoại Sơn',
'80521' : 'Huyện Thoại Sơn - Chi cục Thuế khu vực Châu Thành - Thoại Sơn',
'71503' : 'Huyện Tuy Phong - Chi cục Thuế khu vực Bắc Bình - Tuy Phong',
'71505' : 'Huyện Bắc Bình - Chi cục Thuế khu vực Bắc Bình - Tuy Phong',
'71507' : 'Huyện Hàm Thuận Bắc - Chi cục Thuế khu vực Hàm Thuận Nam - Hàm Thuận Bắc ',
'40119' : 'Huyện Thạch Thành - Chi cục Thuế khu vực Vĩnh Lộc - Thạch Thành',
'40123' : 'Huyện Thường Xuân - Chi cục Thuế khu vực Thọ Xuân - Thường Xuân',
'40125' : 'Huyện Như Xuân - Chi cục Thuế khu vực Như Thanh - Như Xuân',
'40127' : 'Huyện Như Thanh - Chi cục Thuế khu vực Như Thanh - Như Xuân',
'40129' : 'Huyện Vĩnh Lộc - Chi cục Thuế khu vực Vĩnh Lộc - Thạch Thành',
'40133' : 'Huyện Nga Sơn - Chi cục Thuế khu vực Nga Sơn - Hậu Lộc',
'40135' : 'Huyện Yên Định - Chi cục Thuế khu vực Yên Định - Thiệu Hoá',
'40137' : 'Huyện Thọ Xuân - Chi cục Thuế khu vực Thọ Xuân - Thường Xuân',
'40141' : 'Huyện Thiệu Hoá - Chi cục Thuế khu vực Yên Định - Thiệu Hoá',
'40143' : 'Chi cục Thuế Huyện Hoằng Hoá',
'40145' : 'Huyện Đông Sơn - Chi cục Thuế khu vực thành phố Thanh Hóa - Đông Sơn',
'40147' : 'Huyện Triệu Sơn - Chi cục Thuế khu vực Triệu Sơn - Nông Cống',
'40149' : 'Huyện Quảng Xương - Chi cục Thuế khu vực thành phố Sầm Sơn - Quảng Xương',
'40151' : 'Huyện Nông Cống - Chi cục Thuế khu vực Triệu Sơn - Nông Cống',
'40153' : 'Chi cục Thuế thị xã Nghi Sơn',
'40301' : 'Chi cục Thuế Thành phố Vinh',
'40303' : 'Thị xã Cửa Lò - Chi cục Thuế khu vực Bắc Vinh',
'40305' : 'Huyện Quế Phong - Chi cục Thuế khu vực Phủ Quỳ I',
'40307' : 'Huyện Quỳ Châu - Chi cục Thuế khu vực Phủ Quỳ I',
'40309' : 'Huyện Kỳ Sơn - Chi cục Thuế khu vực Tây Nghệ I',
'40311' : 'Huyện Quỳ Hợp - Chi cục Thuế khu vực Phủ Quỳ I',
'40313' : 'Huyện Nghĩa Đàn - Chi cục Thuế khu vực Phủ Quỳ II',
'40315' : 'Huyện Tương Dương - Chi cục Thuế khu vực Tây Nghệ I',
'40317' : 'Huyện Quỳnh Lưu - Chi cục Thuế khu vực Bắc Nghệ I',
'30500' : 'Cục Thuế Tỉnh Hoà Bình',
'70713' : 'Huyện Hớn Quản - Chi cục Thuế khu vực Bình Long - Hớn Quản',
'70715' : 'Huyện Bù Gia Mập - Chi cục Thuế khu vực Phước Long - Bù Gia Mập - Phú Riềng',
'81901' : 'Thành phố Sóc Trăng- Chi cục thuế khu vực thành phố Sóc Trăng',
'40319' : 'Huyện Tân Kỳ - Chi cục Thuế khu vực Sông Lam I',
'40321' : 'Huyện Con Cuông - Chi cục Thuế khu vực Tây Nghệ II',
'40323' : 'Huyện Yên Thành - Chi cục Thuế khu vực Bắc Nghệ II',
'40325' : 'Huyện Diễn Châu - Chi cục Thuế khu vực Bắc Nghệ II',
'40327' : 'Huyện Anh Sơn - Chi cục Thuế khu vực Tây Nghệ II',
'40329' : 'Huyện Đô Lương - Chi cục Thuế khu vực Sông Lam I',
'40331' : 'Huyện Thanh Chương - Chi cục Thuế khu vực Sông Lam I',
'40333' : 'Huyện Nghi Lộc - Chi cục Thuế khu vực Bắc Vinh',
'40335' : 'Huyện Nam Đàn - Chi cục Thuế khu vực Sông Lam II',
'40501' : 'Thành phố Hà Tĩnh - Chi cục Thuế khu vực thành phố Hà Tĩnh - Cẩm Xuyên',
'40503' : 'Thị xã Hồng Lĩnh - Chi cục Thuế khu vực thị xã Hồng Lĩnh - Can Lộc',
'40505' : 'Chi cục Thuế Huyện Nghi Xuân',
'40507' : 'Huyện Đức Thọ - Chi cục Thuế khu vực Hương Sơn - Đức Thọ',
'40511' : 'Huyện Can Lộc - Chi cục Thuế khu vực thị xã Hồng Lĩnh - Can Lộc',
'40513' : 'Huyện Thạch Hà - Chi cục Thuế khu vực Thạch Hà - Lộc Hà',
'40515' : 'Huyện Cẩm Xuyên - Chi cục Thuế khu vực thành phố Hà Tĩnh - Cẩm Xuyên',
'40517' : 'Huyện Hương Khê - Chi cục Thuế khu vực Hương Khê - Vũ Quang',
'40701' : 'Thành  phố Đồng Hới - Chi cục Thuế khu vực Đồng Hới - Quảng Ninh',
'40703' : 'Huyện Tuyên Hóa - Chi cục Thuế khu vực Tuyên Hóa - Minh Hóa',
'40705' : 'Huyện Minh Hóa -  Chi cục Thuế khu vực Tuyên Hóa - Minh Hóa',
'40709' : 'Chi cục Thuế Huyện Bố Trạch',
'40711' : 'Huyện Quảng Ninh - Chi cục Thuế khu vực Đồng Hới - Quảng Ninh',
'40713' : 'Chi cục Thuế Huyện Lệ Thuỷ',
'40901' : 'Thành phố Đông Hà - Chi cục Thuế khu vực Đông Hà - Cam Lộ',
'40903' : 'Thị xã Quảng Trị - Chi cục Thuế khu vực Triệu Hải',
'40905' : 'Huyện Vĩnh Linh - Chi cục Thuế khu vực Vĩnh Linh - Gio Linh',
'40907' : 'Huyện Gio Linh - Chi cục Thuế khu vực Vĩnh Linh - Gio Linh',
'40909' : 'Huyện Cam Lộ - Chi cục Thuế khu vực Đông Hà - Cam Lộ',
'40911' : 'Huyện Triệu Phong - Chi cục Thuế khu vực Triệu Hải',
'40913' : 'Huyện Hải Lăng - Chi cục Thuế khu vực Triệu Hải',
'40915' : 'Chi cục Thuế Huyện Hướng Hoá',
'40917' : 'Chi cục Thuế Huyện Đa Krông',
'41101' : 'CCT  Thành phố Huế',
'41103' : 'Huyện Phong Điền- Chi cục thuế khu vực Hương Điền',
'41105' : 'Huyện Quảng Điền- Chi cục thuế khu vực Hương Điền',
'41107' : 'Thị xã Hương Trà- Chi cục thuế khu vực Hương Điền',
'41109' : 'Huyện Phú Vang- Chi cục thuế khu vực Hương Phú',
'41111' : 'Thị xã Hương Thủy- Chi cục thuế khu vực Hương Phú',
'41113' : 'Huyện Phú Lộc - Chi cục Thuế khu vực Phú Lộc - Nam Đông',
'41115' : 'CCT Huyện A Lưới',
'41117' : 'Huyện Nam Đông - Chi cục Thuế khu vực Phú Lộc - Nam Đông',
'40113' : 'Huyện Bá Thước - Chi cục Thuế khu vực Cẩm Thủy - Bá Thước',
'40115' : 'Huyện Cẩm Thủy - Chi cục Thuế khu vực Cẩm Thủy - Bá Thước',
'40117' : 'Huyện Lang Chánh - Chi cục Thuế khu vực Ngọc Lặc - Lang Chánh',
'70900' : 'Cục Thuế Tỉnh Tây Ninh',
'30121' : 'Huyện Mường Ảng - Chi cục Thuế khu vực thành phố Điện Biên Phủ - Mường Ảng',
'60329' : 'Huyện Phú Thiện - Chi cục Thuế khu vực Ayun Pa - Phú Thiện - Ia Pa',
'40523' : 'Huyện Lộc Hà - Chi cục Thuế khu vực Thạch Hà - Lộc Hà',
'51117' : 'Huyện Cam Lâm - Chi cục Thuế khu vực Nam Khánh Hòa',
'60321' : 'Thị xã Ayun Pa - Chi cục Thuế khu vực Ayun Pa - Phú Thiện - Ia Pa',
'10327' : 'Quận Dương Kinh - Chi cục Thuế khu vực Lê Chân - Dương Kinh',
'60537' : 'Huyện Cư Kuin- Chi cục Thuế khu vực Krông Ana- Cư Kuin',
'80908' : 'Huyện Bình Tân - Chi cục Thuế khu vực II',
'70905' : 'Huyện Tân Châu - Chi cục Thuế khu vực Tân Biên - Tân Châu',
'50717' : 'Chi cục Thuế Huyện An Nhơn',
'51105' : 'Thị xã  Ninh Hoà - Chi cục Thuế khu vực Bắc Khánh Hòa',
'50500' : 'Cục Thuế Tỉnh Quảng Ngãi',
'70503' : 'Huyện Ninh Sơn- Chi cục thuế khu vực Ninh Sơn- Bác Ái',
'21505' : 'Huyện Định Hóa- Chi cục thuế khu vực Phú Lương- Định Hóa',
'21515' : 'Huyện Phú Bình- Chi cục thuế khu vực Phổ Yên- Phú Bình',
'20300' : 'Cục Thuế Tỉnh Cao Bằng',
'20101' : 'Chi cục Thuế Thị xã Hà Giang',
'20109' : 'Huyện Quản Bạ - Chi cục Thuế khu vực Quản Bạ - Yên Minh',
'21300' : 'Cục Thuế Tỉnh Yên Bái',
'20509' : 'Huyện Bắc Hà - Chi cục Thuế khu vực Bắc Hà - Si Ma Cai',
'30507' : 'Huyện Kỳ Sơn - Chi cục Thuế khu vực Hòa Bình - Đà Bắc',
'30300' : 'Cục Thuế Tỉnh Sơn La',
'22503' : 'Thành phố Cẩm Phả - Chi cục Thuế khu vực Cẩm Phả - Vân Đồn - Cô Tô',
'22513' : 'Huyện Tiên Yên - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22521' : 'Chi cục Thuế Huyện Đông Triều',
'60300' : 'Cục Thuế Tỉnh Gia Lai',
'60507' : 'Huyện Krông Năng- Chi cục Thuế khu vực Buôn Hồ-Krông Năng',
'60535' : 'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60107' : 'Huyện Đăk Tô - Chi cục Thuế khu vực số 02',
'60503' : 'Huyện Ea H`Leo-Chi cục Thuế khu vực Ea H`Leo-Krông Búk',
'20713' : 'Huyện Chợ Mới - Chi cục Thuế khu vực Bắc Kạn - Bạch Thông - Chợ Mới',
'60517' : 'Huyện M`Drắc- Chi cục Thuế khu vực  Ea Kar-M`Drắc',
'60513' : 'Huyện Cư M`gar - Chi cục Thuế khu vực Cư M`gar - Buôn Đôn',
'60533' : 'Chi cục Thuế Huyện Đắk R`Lấp (hêt h.lực)',
'81325' : 'Chi cục thuế Thị xã Hà Tiên',
'71109' : 'Chi cục Thuế thị xã Dĩ An',
'71111' : 'Huyện Phú Giáo - Chi cục Thuế khu vực Tân Uyên',
'71113' : 'Huyện Dầu Tiếng - Chi cục Thuế khu vực Bến Cát',
'81515' : 'Chi cục Thuế Huyện Vị Thuỷ (hêt h.lực)',
'10915' : 'Huyện Văn Giang - Chi cục Thuế khu vực Văn Giang - Khoái Châu',
'10917' : 'Huyện Văn Lâm - Chi cục Thuế khu vực Mỹ Hào - Văn Lâm',
'10919' : 'Huyện Yên Mỹ - Chi cục Thuế khu vực Yên Mỹ - Ân Thi',
'70711' : 'Thành phố Đồng Xoài - Chi cục Thuế khu vực Đồng Xoài - Đồng Phú',
'21913' : 'Huyện Bình Xuyên - Chi cục Thuế khu vực Phúc Yên',
'21721' : 'Huyện Lâm Thao - Chi cục Thuế khu vực Phù Ninh - Lâm Thao',
'21723' : 'Huyện Thanh Thuỷ - Chi cục Thuế khu vực Tam Nông - Thanh Thuỷ',
'60325' : 'Huyện Đak Đoa - Chi cục Thuế khu vực Đak Đoa - Mang Yang',
'82109' : 'Huyện Phước Long - Chi cục Thuế khu vực Phước Long - Hồng Dân',
'20323' : 'Chi cục Thuế  Huyện Bảo Lâm',
'40521' : 'Huyện Vũ Quang - Chi cục Thuế khu vực Hương Khê - Vũ Quang',
'81517' : 'Chi cục Thuế H. Châu Thành A (hêt h.lực)',
'70509' : 'Huyện Bác Ái- Chi cục thuế khu vực Ninh Sơn- Bác Ái',
'20521' : 'Huyện Si Ma Cai - Chi cục Thuế khu vực Bắc Hà - Si Ma Cai',
'22313' : 'Thị xã Từ Sơn - Chi cục Thuế khu vực Từ Sơn - Yên Phong',
'22527': 'Huyện Đầm Hà - Chi cục Thuế khu vực Hải Hà - Đầm Hà',
'22315' : 'Huyện Gia Bình - Chi cục Thuế khu vực Gia Thuận',
'50915' : 'Huyện Phú Hoà - Chi cục Thuế khu vực Tây Hòa - Phú Hòa',
'20318' : 'Huyện Phục Hòa - Chi cục Thuế khu vực Phục Hòa - Quảng Uyên',
'30104' : 'Chi cục thuế Huyện Mường Nhé',
'30510' : 'Huyện Cao Phong - Chi cục Thuế khu vực Cao Phong - Tân Lạc',
'60108' : 'Huyện Kon Rẫy - Chi cục Thuế khu vực số 01',
'60532' : 'Chi cục thuế Huyện Đắk Song (hêt h.lực)',
'81906' : 'Huyện Cù Lao Dung - Chi cục Thuế khu vực Long Phú',
'82111' : 'Huyện Đông Hải - Chi cục Thuế khu vực Giá Rai - Đông Hải',
'10304' : 'Quận Hải An - Chi cục Thuế khu vực Ngô Quyền - Hải An',
'60320' : 'Huyện IaPa - Chi cục Thuế khu vực Ayun Pa - Phú Thiện - Ia Pa',
'70710' : 'Chi cục Thuế Huyện Chơn Thành',
'70706' : 'Huyện Bù Đốp - Chi cục Thuế khu vực Lộc Ninh - Bù Đốp',
'10108' : 'Chi cục thuế Quận Hoàng Mai',
'10106' : 'Chi cục thuế Quận Long Biên',
'20704' : 'Huyện Pác Nặm - Chi cục Thuế khu vực Ba Bể- Ngân Sơn - Pác Nặm',
'50304' : 'Huyện Tây Giang - Chi cục Thuế khu vực Đông Giang - Tây Giang',
'50329' : 'Huyện Nam Trà My - Chi cục Thuế khu vực Trà My - Tiên Phước',
'50508' : 'Huyện Tây Trà - Chi cục Thuế huyện Trà Bồng',
'30321' : 'Huyện Sốp Cộp - Chi cục Thuế khu vực Sông Mã - Sốp Cộp',
'21902' : 'Thành phố Phúc Yên - Chi cục Thuế khu vực Phúc Yên',
'21904' : 'Huyện Tam Đảo - Chi cục Thuế khu vực Tam Đảo',
'70128' : 'Chi cục thuế Quận Tân phú',
'70134' : 'Chi cục thuế Quận Bình Tân',
'71308' : 'Huyện Trảng Bom - Chi cục Thuế khu vực Trảng Bom - Thống Nhất',
'71302' : 'Thành phố Long Khánh - Chi cục Thuế khu vực Long Khánh - Cẩm Mỹ ',
'82308' : 'Huyện Phú Tân - Chi cục Thuế khu vực III',
'82312' : 'Huyện Năm Căn - Chi cục Thuế khu vực I',
'20118' : 'Huyện Quang Bình - Chi cục Thuế khu vực Bắc Quang - Quang Bình',
'81912' : 'Thị xã Ngã Năm - Chi cục thuế khu vực Thạnh Trị',
'81519' : 'Chi cục Thuế Quận Ninh Kiều',
'81521' : 'Quận Bình Thuỷ - Chi cục Thuế khu vực Bình Thủy - Ô Môn',
'81523' : 'Quận Cái Răng - Chi cục Thuế khu vực  Cái Răng - Phong Điền',
'81525' : 'Huyện Vĩnh Thạnh - Chi cục Thuế khu vực Thốt Nốt - Vĩnh Thạnh',
'81527' : 'Huyện Cờ Đỏ - Chi cục Thuế khu vực Cờ Đỏ - Thới Lai',
'81529' : 'Huyện Phong Điền - Chi cục Thuế khu vực  Cái Răng - Phong Điền',
'60327' : 'Huyện Đak Pơ - Chi cục Thuế khu vực An Khê - Đak Pơ - Kông Chro',
'71712' : 'Huyện Đất Đỏ - Chi cục Thuế khu vực Bà Rịa - Long Điền - Đất Đỏ',
'60600' : 'Cục Thuế Tỉnh Đắk Nông',
'81600' : 'Cục Thuế Tỉnh Hậu Giang',
'30200' : 'Cục Thuế Tỉnh Lai Châu',
'81601' : 'Thành phố Vị Thanh - Chi cục Thuế khu vực I',
'81603' : 'Huyện Châu Thành A - Chi cục Thuế khu vực IV',
'81605' : 'Huyện Châu Thành - Chi cục Thuế khu vực IV',
'81607' : 'Thị xã Ngã Bảy  - Chi cục Thuế khu vực III',
'81609' : 'Huyện Vị Thủy - Chi cục Thuế khu vực I',
'81611' : 'Huyện Long Mỹ - Chi cục Thuế khu vực II',
'60601' : 'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60603' : 'Huyện Cư Jút - Chi cục Thuế  khu vực Cư Jút - Krông Nô',
'60605' : 'Huyện Krông Nô - Chi cục Thuế khu vực Cư Jút - Krông Nô',
'60607' : 'Huyện Đắk Mil - Chi cục Thuế khu vực Đắk Mil -Đắk Song',
'60609' : 'Huyện Đắk Song - Chi cục Thuế khu vực  Đắk Mil -Đắk Song',
'60611' : 'Huyện Đắk R`Lấp - Chi cục Thuế khu vực Đắk R`Lấp - Tuy Đức',
'30201' : 'Huyện Mường Tè - Chi cục Thuế khu vực Mường Tè - Nậm Nhùn',
'30203' : 'Huyện Phong Thổ - Chi cục Thuế khu vực Phong Thổ - Sìn Hồ',
'30205' : 'Huyện Tam Đường - Chi cục Thuế khu vực Thành phố Lai Châu - Tam Đường',
'30207' : 'Huyện Sìn Hồ - Chi cục Thuế khu vực Phong Thổ - Sìn Hồ',
'30209' : 'Huyện Than Uyên - Chi cục Thuế khu vực Than Uyên - Tân Uyên',
'70323' : 'Huyện Đam Rông - Chi cục Thuế khu vực Lâm Hà - Đam Rông',
'60115' : 'Huyện Tu Mơ Rông - Chi cục Thuế khu vực số 02',
'50912' : 'Huyện Tây Hoà - Chi cục Thuế khu vực Tây Hòa - Phú Hòa',
'40919' : 'Chi cục Thuế Huyện  Đảo Cồn Cỏ',
'60615' : 'Huyện Đắk Glong - Chi cục Thuế khu vực Gia Nghĩa - Đắk Glong',
'82106' : 'Huyện Hòa Bình - Chi cục Thuế khu vực Hòa Bình - Vĩnh Lợi',
'60613' : 'Thị xã Gia Nghĩa - Chi cục Thuế khu vực Gia Nghĩa - Đắk Glong',
'70511' : 'Huyện Thuận Bắc- Chi cục thuế khu vực Ninh Hải- Thuận Bắc',
'71514' : 'Huyện Hàm Tân - Chi cục Thuế khu vực La Gi - Hàm Tân',
'50115' : 'Quận Cẩm Lệ - Chi cục thuế khu vực Cẩm Lệ - Hòa Vang',
'80719' : 'Huyện Tân Phú Đông - Chi cục Thuế khu vực thị xã Gò Công - Gò Công Đông - Tân Phú Đông',
'10125' : 'Huyện Mê Linh - Chi cục Thuế khu vực Sóc Sơn - Mê Linh',
'40314' : 'Thị xã Thái Hoà - Chi cục Thuế khu vực Phủ Quỳ II',
'10511' : 'Chi cục Thuế Huyện Thạch Thất (hết h.lực)',
'10521' : 'Chi cục Thuế Huyện Thường Tín (hết h.lực)',
'10127' : 'Chi cục Thuế Quận Hà Đông',
'10129' : 'Chi cục Thuế Thành phố Sơn Tây',
'10131' : 'Chi cục Thuế Huyện Phúc Thọ',
'10133' : 'Chi cục Thuế Huyện Đan Phượng',
'10135' : 'Huyện Thạch Thất - Chi cục Thuế khu vực Thạch Thất - Quốc Oai',
'10137' : 'Chi cục Thuế Huyện Hoài Đức',
'10139' : 'Huyện Quốc Oai - Chi cục Thuế khu vực Thạch Thất - Quốc Oai',
'10141' : 'Huyện Thanh Oai - Chi cục Thuế khu vực Thanh Oai - Chương Mỹ',
'10143' : 'Huyện Thường Tín - Chi cục Thuế khu vực Thường Tín - Phú Xuyên',
'10145' : 'Huyện Mỹ Đức - Chi cục Thuế khu vực Ứng Hòa - Mỹ Đức',
'10147' : 'Huyện Ứng Hòa - Chi cục Thuế khu vực Ứng Hòa- Mỹ Đức',
'10149' : 'Huyện Phú Xuyên - Chi cục Thuế khu vực Thường Tín - Phú Xuyên',
'10151' : 'Chi cục Thuế Huyện Ba Vì',
'10153' : 'Huyện Chương Mỹ - Chi cục Thuế khu vực Thanh Oai - Chương Mỹ',
'10503' : 'Chi cục Thuế Thành phố Sơn Tây (hết h.lực)',
'81531' : 'Huyện Thới Lai - Chi cục Thuế khu vực Cờ Đỏ - Thới Lai',
'21915' : 'Huyện Sông Lô - Chi cục Thuế khu vực Lập Thạch',
'81108' : 'Huyện Mỏ Cày Bắc - Chi cục Thuế khu vực Chợ Lách - Mỏ Cày Bắc',
'80323' : 'Thị xã Hồng Ngự - Chi cục Thuế khu vực 3',
'60539' : 'Huyện Krông Búk-Chi cục Thuế khu vực Ea H`Leo-Krông Búk',
'21711' : 'Huyện Phù Ninh - Chi cục Thuế khu vực Phù Ninh - Lâm Thao',
'30108' : 'Chi cục thuế Huyện Tam Đường - Đã chuyển sang Lai Châu',
'30109' : 'Chi cục Thuế Huyện Sìn Hồ - Đã chuyển sang Lai Châu',
'81323' : 'Chi cục Thuế Huyện Kiên HảI',
'70513' : 'Huyện Thuận Nam - Chi cục Thuế khu vực Ninh Phước - Thuận Nam',
'81511' : 'Chi cục Thuế thị xã Vị Thanh (hêt h.lực)',
'60527' : 'Chi cục Thuế Huyện Đắk Mil (hêt h.lực)',
'81304' : 'Chi cục Thuế Huyện Giang Thành',
'11700' : 'Cục Thuế Tỉnh Ninh Bình',
'70100' : 'Cục Thuế Thành phố Hồ Chí Minh',
'40500' : 'Cục Thuế Tỉnh Hà Tĩnh',
'20500' : 'Cục Thuế Tỉnh Lào Cai',
'71500' : 'Cục Thuế Tỉnh Bình Thuận',
'81307' : 'Huyện Tân Hiệp - Chi cục Thuế khu vực Châu Thành - Tân Hiệp',
'21720' : 'Huyện Tân Sơn - Chi cục Thuế khu vực Thanh Sơn - Tân Sơn',
'40339' : 'Thị xã Hoàng Mai - Chi cục Thuế khu vực Bắc Nghệ I',
'21113' : 'Huyện Lâm Bình - Chi cục Thuế khu vực Na Hang - Lâm Bình',
'81608' : 'Huyện Phụng Hiệp - Chi cục Thuế khu vực III',
'81327' : 'Huyện U Minh Thượng - Chi cục Thuế khu vực Vĩnh Thuận - U Minh Thượng',
'50318' : 'Huyện Nông Sơn - Chi cục Thuế khu vực Quế Sơn - Nông Sơn - Hiệp Đức',
'50302' : 'Huyện Phú Ninh - Chi cục Thuế khu vực Tam Kỳ - Phú Ninh',
'60617' : 'Huyện Tuy Đức - Chi cục Thuế khu vực Đắk R`Lấp - Tuy Đức',
'60331' : 'Huyện Chư Pưh - Chi cục Thuế khu vực Chư Sê - Chư Pưh',
'80129' : 'Thị xã Kiến Tường - Chi cục Thuế khu vực Kiến Tường - Mộc Hóa',
'30202' : 'Thành phố Lai Châu - Chi cục Thuế khu vực Thành phố Lai Châu - Tam Đường',
'30211' : 'Huyện Tân Uyên - Chi cục Thuế khu vực Than Uyên - Tân Uyên',
'30213' : 'Huyện Nậm Nhùn - Chi cục Thuế khu vực Mường Tè - Nậm Nhùn',
'81915' : 'Huyện Châu Thành - Chi cục thuế khu vực Châu Thành',
'81917' : 'Huyện Trần Đề - Chi cục Thuế khu vực Long Phú',
'30323' : 'Huyện Vân Hồ - Chi cục Thuế khu vực Mộc Châu - Vân Hồ',
'80721' : 'Thị xã Cai Lậy - Chi cục Thuế khu vực Cai Lậy',
'21101' : 'Thành phố Tuyên Quang - Chi cục Thuế khu vực thành phố Tuyên Quang - Yên Sơn',
'10155' : 'Chi cục Thuế Quận Nam Từ Liêm',
'10157' : 'Chi cục Thuế Quận Bắc Từ Liêm',
'40715' : 'Thị xã Ba Đồn - Chi cục Thuế khu vực Quảng Trạch - Ba Đồn',
'30307' : 'Huyện Thuận Châu - Chi cục Thuế khu vực Thuận Châu - Quỳnh Nhai',
'11107' : 'Huyện Lý Nhân - Chi cục Thuế khu vực Duy Tiên- Lý Nhân',
'20519' : 'Chi cục Thuế Huyện Văn Bàn',
'71101' : 'Chi cục Thuế Thành phố Thủ Dầu Một',
'30123' : 'Chi cục Thuế Huyện Nậm Pồ',
'60114' : 'Chi cục Thuế Huyện Ia H’Drai',
'71115' : 'Huyện Bàu Bàng - Chi cục Thuế khu vực Bến Cát',
'71117' : 'Huyện Bắc Tân Uyên - Chi cục Thuế khu vực Tân Uyên',
'80507' : 'Thị xã Tân Châu - Chi cục Thuế khu vực Tân Châu - An Phú',
'40520' : 'Thị xã Kỳ Anh - Chi cục Thuế khu vực Kỳ Anh',
'70716' : 'Huyện Phú Riềng - Chi cục Thuế khu vực Phước Long - Bù Gia Mập - Phú Riềng',
'81612' : 'Thị xã Long Mỹ - Chi cục Thuế khu vực II',
'81716' : 'Thị xã Duyên Hải - Chi cục Thuế khu vực Duyên Hải'

  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  }
  return vReturn;
}
function getTenPLP(MaCT){
	var vReturn = 'Lỗi: mã phí, lệ phí không hợp lệ';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {

'21002106':'phí thẩm định tiêu chuẩn, điều kiện hành nghề theo quy định của pháp luật',
'21002107':'phí tuyển dụng, dự thi nâng ngạch, thăng hạng công chức, viên chức',
'21002108':'phí thẩm định cấp giấy chứng nhận lưu hành sản phẩm, hàng hóa theo quy định của pháp luật',
'21002111':'phí xác minh giấy tờ, tài liệu',
'21002146':'thu nợ phí xăng dầu',
'21002147':'thu nợ phí thuộc lĩnh vực công nghiệp, xây dựng',
'21002148':'thu nợ  phí thuộc lĩnh vực giáo dục và đào tạo',
'21502151':'phí kiểm dịch (kiểm dịch động vật, thực vật, sản phẩm động vật)',
'21502152':'phí giám sát khử trùng vật thể thuộc diện kiểm dịch thực vật',
'21502153':'phí kiểm soát giết mổ động vật',
'21502154':'phí kiểm nghiệm dư lượng thuốc bảo vệ thực vậtvà sp thực vật',
'21502155':'phí kiểm nghiệm chất lượng thức ăn chăn nuôi',
'21502156':'phí kiểm tra vệ sinh thú y',
'21502157':'phí bảo vệ nguồn lợi thủy sản',
'21502158':'phí kiểm nghiệm thuốc thú y',
'21502161':'phí kiểm định, khảo nghiệm thuốc bảo vệ thực vật',
'21502162':'phí bình tuyển, công nhận cây mẹ, cây đầu dòng, vườn giống cây lâm nghiệp, rừng giống',
'21502163':'phí phòng, chống dịch bệnh cho động vật',
'21502164':'phí bảo hộ giống trong lĩnh vực nông nghiệp, lâm nghiệp, thủy sản',
'21502165':'phí kiểm nghiệm an toàn thực phẩm nông nghiệp, lâm nghiệp, thủy sản nhập khẩu',
'21502166':'phí thẩm định trong lĩnh vực nông nghiệp',
'21502167':'phí đăng kiểm an toàn kỹ thuật tàu cá, kiểm định trang thiết bị nghề cá',
'22002201':'phí kiểm tra nhà nước về chất lượng hàng hoá',
'22002202':'phí thử nghiệm chất lượng sản phẩm, vật tư, nguyên vật liệu',
'22002203':'phí xây dựng',
'22002204':'phí đo đạc, lập bản đồ địa chính',
'22002205':'phí thẩm định cấp quyền sử dụng đất',
'22002206':'phí xác nhận đăng ký công dân',
'22002207':'phí cấp thị thực và các giấy tờ có liên quan đến xuất nhập cảnh Việt Nam cho người nước ngoài',
'22002208':'phí tiếp nhận và vận chuyển đơn, chứng cứ của công dân và pháp nhân Việt Nam',
'22002211':'phí chứng nhận lãnh sự và hợp pháp hóa lãnh sự',
'22502251':'phí chứng nhận xuất xứ hàng hoá (C/O)',
'22502252':'phí chợ',
'22502253':'phí thẩm định kinh doanh thương mại có điều kiện thuộc các lĩnh vực, các ngành nghề',
'22502254':'phí thẩm định hồ sơ mua bán, thuê, cho thuê tàu, thuyền, tàu bay',
'22502255':'phí thẩm định đầu tư, dự án đầu tư',
'22502256':'phí thẩm định đánh giá trữ lượng khoáng sản',
'22502257':'phí thẩm định, phân hạng cơ sở lưu trú du lịch',
'22502258':'phí đấu thầu, đấu giá và thẩm định kết quả đấu thầu',
'22502261':'phí giám định hàng hoá xuất nhập khẩu',
'22502262':'phí xử lý vụ việc cạnh tranh',
'22502263':'phí thẩm định cấp phép sử dụng vật liệu nổ công nghiệp',
'22502264':'phí trong lĩnh vực hóa chất',
'22502265':'phí thẩm định điều kiện, tiêu chuẩn ngành nghề thuộc lĩnh vực công nghiệp, thương mại, xây dựng',
'22502266':'phí cung cấp thông tin doanh nghiệp',
'22502267':'phí sử dụng công trình kết cầu hạ tầng, công trình dịch vụ, tiện ích công cộng trong khu vực cửa khẩu',
'23002301':'phí thuộc lĩnh vực đường bộ (không bao gồm phí sử dụng đường bộ thu qua đầu phương tiện ô tô)',
'23002302':'phí thuộc lĩnh vực đường thủy nội địa',
'23002303':'phí thuộc lĩnh vực đường biển (không bao gồm phí bảo đảm hàng hải)',
'23002304':'phí qua cầu',
'23002305':'phí qua đò',
'23002306':'phí qua phà',
'23002307':'phí sử dụng cầu, bến, phao neo thuộc khu vực cảng biển',
'23002308':'phí sử dụng cầu, bến, phao neo thuộc cảng, bến thủy nội địa',
'23002311':'phí sử dụng cảng cá',
'23002312':'phí sử dụng vị trí neo, đậu ngoài phạm vi cảng',
'23002313':'phí bảo đảm hàng hải',
'23002314':'phí hoa tiêu, dẫn đường trong lĩnh vực đường biển',
'23002315':'phí hoa tiêu, dẫn đường trong lĩnh vực đường thủy nội địa',
'23002316':'phí thuộc lĩnh vực hàng không',
'23002317':'phí trọng tải tàu, thuyền',
'23002318':'phí luồng, lạch đường thủy nội địa',
'23002321':'phí sử dụng lề đường, bến, bãi, mặt nước',
'23002322':'phí kiểm định an toàn kỹ thuật và chất lượng thiết bị,vật tư',
'23002323':'phí sử dụng kết cấu hạ tầng đường sắt',
'23002324':'phí lưu giữ, bảo quản tang vật, phương tiện',
'23502351':'phí sử dụng tần số vô tuyến điện',
'23502352':'phí duy trì sử dụng tên miền và địa chỉ Internet',
'23502353':'phí sử dụng mã, số viễn thông',
'23502354':'phí khai thác và sử dụng tài liệu dầu khí ',
'23502355':'phí khai thác và sử dụng tài liệu đất đai, thăm dò điều tra địa chất và khai thác mỏ, tài nguyên khoáng sản khác',
'23502356':'phí khai thác và sử dụng tài liệu khí tượng thủy văn, môi trường nước và không khí',
'23502357':'phí khai thác, sử dụng tư liệu tại thư viện, bảo tàng, khu di tích lịch sử, văn hoá và tài liệu lưu trữ',
'23502358':'phí thẩm định điều kiện hoạt động bưu chính  viễn thông',
'23502361':'phí quyền hoạt động viễn thông',
'23502362':'phí thẩm định điều kiện hoạt động viễn thông',
'23502363':'phí thẩm định điều kiện hoạt động bưu chính',
'23502364':'phí dịch vụ duy trì hệ thống kiểm tra trạng thái chứng thư số',
'23502365':'phí quyền cung cấp dịch vụ truyền hình trả tiền',
'23502366':'phí thẩm định nội dung, kịch bản trò chơi điện tử trên mạng',
'23502367':'phí thẩm định và chứng nhận hợp chuẩn, hợp quy về an toàn thông tin',
'23502368':'phí thẩm định cấp giấy phép kinh doanh sản phẩm, dịch vụ an toàn thông tin mạng',
'24002401':'phí kiểm định kỹ thuật máy móc, thiết bị, vật tư và các chất có yêu cầu nghiêm ngặt về an toàn lao động',
'24002402':'phí kiểm định kỹ thuật máy móc, thiết bị, vật tư và các chất có yêu cầu nghiêm ngặt về an toàn đặc thù chuyên ngành công nghiệp',
'24002403':'phí an ninh, trật tự',
'24002404':'phí phòng cháy, chữa cháy',
'24002405':'phí thẩm định cấp phép sử dụng vật liệu nổ công nghiệp',
'24002406':'phí kiểm tra, đánh giá, cấp giấy chứng nhận quốc tế về an ninh tàu biển',
'24002407':'phí thẩm định, phê duyệt đánh giá an ninh cảng biển, cấp sổ lý lịch tàu biển',
'24002408':'phí thẩm định cấp phép hoạt động cai nghiện ma tuý',
'24002411':'phí thẩm định cấp phép hoạt động hóa chất nguy hiểm, thẩm định báo cáo đánh giá rủi ro hóa chất mới sản xuất, sử dụng ở Việt Nam',
'24002412':'phí xác minh giấy tờ, tài liệu theo yêu cầu của tổ chức, cá nhân trong nước',
'24002413':'phí xác minh giấy tờ, tài liệu theo yêu cầu của tổ chức, cá nhân nước ngoài',
'24002414':'phí xử lý hồ sơ cấp Giấy chứng nhận miễn thị thực',
'24002415':'phí thẩm định điều kiện về an ninh trật tự',
'24002416':'phí sát hạch cấp chứng chỉ nghiệp vụ bảo vệ',
'24002417':'phí trông giữ xe đạp, xe máy, ô tô và phí trông giữ phương tiện tham gia giao thông bị tạm giữ do vi phạm pháp luật',
'24002418':'phí thẩm định điều kiện, tiêu chuẩn hành nghề thuộc lĩnh vực an ninh, quốc phòng',
'24002421':'phí khai thác và sử dụng thông tin trong cơ sở dữ liệu quốc gia về dân cư',
'24002422':'phí thẩm định cấp giấy phép sản xuất, kinh doanh sản phẩm mật mã dân sự; giấy chứng nhận hợp chuẩn sản phẩm mật mã dân sự; giấy chứng nhận hợp quy sản phẩm mật mã dân sự',
'24502451':'phí giám định di vật, cổ vật, bảo vật quốc gia',
'24502452':'phí thăm quan',
'24502453':'phí thẩm định văn hóa phẩm',
'24502454':'phí giới thiệu việc làm',
'24502455':'phí thẩm định tiêu chuẩn, điều kiện hành nghề thuộc lĩnh vực văn hóa, thể thao, du lịch',
'24502456':'phí thư viện',
'24502457':'phí bảo quản ký gửi và sử dụng tài liệu lưu trữ',
'24502458':'phí đăng ký quyền tác giả, quyền liên quan đến quyền tác giả',
'25002501':'Học phí (không bao gồm học phí giáo dục không chính qui)',
'25002502':'phí sát hạch đủ điều kiện cấp văn bằng, chứng chỉ, giấy phép hành nghề',
'25002503':'phí dự thi, dự tuyển',
'25002504':'phí sở hữu trí tuệ',
'25002505':'phí cấp mã số, mã vạch',
'25002506':'phí sử dụng dịch vụ trong lĩnh vực năng lượng nguyên tử',
'25002507':'phí thẩm định an toàn phóng xạ, bức xạ, an ninh hạt nhân',
'25002508':'phí thẩm định kế hoạch ứng phó sự cố bức xạ, hạt nhân',
'25002511':'phí thẩm định điều kiện cấp giấy phép đăng ký dịch vụ hỗ trợ ứng dụng năng lượng nguyên tử',
'25002512':'phí thẩm định hợp đồng chuyển giao công nghệ',
'25002513':'phí thẩm định điều kiện hoạt động về khoa học, công nghệ',
'25502551':'Viện phí và các loại phí khám chữa bệnh',
'25502552':'phí phòng, chống dịch bệnh cho động vật; chẩn đoán thú y',
'25502553':'phí y tế dự phòng',
'25502554':'phí giám định y khoa',
'25502555':'phí kiểm nghiệm mẫu thuốc, nhiên liệu làm thuốc, thuốc, mỹ phẩm',
'25502556':'phí kiểm dịch y tế',
'25502557':'phí kiểm nghiệm trang thiết bị y tế',
'25502558':'phí kiểm tra, kiểm nghiệm vệ sinh an toàn thực phẩm',
'25502561':'phí thẩm định hoạt động, tiêu chuẩn, điều kiện hành nghề thuộc lĩnh vực y tế',
'25502562':'phí thẩm định đăng ký kinh doanh thuốc',
'25502563':'phí thẩm định hồ sơ nhập khẩu thuốc thành phẩm chưa có số đăng ký',
'25502564':'phí cấp, đổi thẻ bảo hiểm y tế',
'25502565':'phí thẩm định cấp giấy giám định y khoa',
'25502566':'phí thẩm định cấp giấy phép lưu hành, nhập khẩu, xuất khẩu, công bố trang thiết bị y tế',
'25502567':'phí thẩm định cấp phép lưu hành, nhập khẩu, xác nhận, công bố',
'26002602':'phí thẩm định báo cáo đánh giá tác động môi trường',
'26002603':'phí vệ sinh',
'26002604':'phí phòng, chống thiên tai',
'26002605':'phí xét nghiệm, thẩm định, giám định; tra cứu, cung cấp thông tin; cấp các loại bản sao, phó bản, bản cấp lại các tài liệu sở hữu công nghiệp',
'26002606':'phí lập và gửi đơn đăng ký quốc tế về sở hữu công nghiệp',
'26002607':'phí cung cấp dịch vụ để giải quyết khiếu nại về sở hữu công nghiệp',
'26002608':'phí thẩm định, cung cấp thông tin, dịch vụ về văn bằng bảo hộ giống cây trồng mới',
'26002611':'phí cấp, hướng dẫn và duy trì sử dụng mã số, mã vạch',
'26002612':'phí thẩm định an toàn và sử dụng dịch vụ an toàn bức xạ',
'26002613':'phí thẩm định điều kiện hoạt động về khoa học công nghệ, môi trường',
'26002614':'phí thẩm định đề án, báo cáo thăm dò, khai thác, sử dụng và đánh giá trữ lượng nước dưới đất; khai thác, sử dụng nước mặt; xả nước thải vào nguồn nước, công trình thuỷ lợi',
'26002615':'phí thẩm định hồ sơ, điều kiện hành nghề khoan nước dưới đất',
'26002616':'phí thẩm định hợp đồng chuyển giao công nghệ',
'26002617':'phí kiểm định phương tiện đo lường',
'26002618':'phí bảo vệ môi trường đối với nước thải, khí thải',
'26002621':'phí bảo vệ môi trường đối với nước thải công nghiệp',
'26002622':'phí bảo vệ môi trường đối với khí thải',
'26002623':'phí bảo vệ môi trường đối với chất thải rắn',
'26002624':'phí bảo vệ môi trường đối với khai thác khoáng sản là dầu thô và khí thiên nhiên',
'26002625':'phí bảo vệ môi trường đối với khai thác khoáng sản còn lại',
'26002626':'phí thẩm định cấp giấy chứng nhận lưu hành tự do (CFS) sản phẩm, hàng hóa đo đạc và bản đồ khi xuất khẩu, nhập khẩu',
'26002627':'phí thẩm định hồ sơ cấp giấy chứng nhận quyền sử dụng đất',
'26002628':'phí thẩm định đánh giá trữ lượng khoáng sản',
'26002631':'phí khai thác, sử dụng nguồn nước',
'26002632':'phí thẩm định điều kiện hành nghề thuộc lĩnh vực tài nguyên môi trường',
'26002633':'phí khai thác, sử dụng tài liệu, dữ liệu tài nguyên và môi trường (không bao gồm phí khai thác và sử dụng tài liệu dầu khí)',
'26002634':'phí thẩm định báo cáo đánh giá tác động môi trường, đề án bảo vệ môi trường chi tiết; thẩm định phương án cải tạo, phục hồi môi trường và phương án cải tạo, phục hồi môi trường bổ sung',
'26002635':'phí thẩm định kế hoạch bảo vệ môi trường trong hoạt động phá dỡ tàu biển',
'26002636':'phí khai thác, sử dụng thông tin dữ liệu đo đạc và bản đồ',
'26002637':'phí khai thác và sử dụng tài liệu dầu khí',
'26002638':'phí xác nhận đủ điều kiện về bảo vệ môi trường trong nhập khẩu phế liệu làm nguyên liệu sản xuất',
'26502651':'phí cung cấp thông tin về tài chính doanh nghiệp',
'26502652':'phí dịch vụ thanh toán trong hoạt động của Kho bạc nhà nước',
'26502653':'phí phát hành, thanh toán trái phiếu kho bạc',
'26502654':'phí tổ chức phát hành, thanh toán trái phiếu đầu tư huy động vốn cho công trình do ngân sách nhà nước đảm bảo',
'26502655':'phí phát hành, thanh toán trái phiếu đầu tư để huy động vốn cho Ngân hàng Phát triển Việt Nam theo kế hoạch tín dụng đầu tư phát triển của Nhà nước, trái phiếu Chính phủ, trái phiếu được Chính phủ bảo lãnh, trái phiếu chính quyền địa phương và cổ phiếu, trái phiếu doanh nghiệp',
'26502656':'phí bảo quản, cất giữ các loại tài sản quý hiếm và chứng chỉ có giá  tại Kho bạc Nhà nước',
'26502657':'phí cấp bảo lãnh của Chính phủ (do Bộ Tài chính hoặc Ngân hàng Nhà nước Việt Nam cấp)',
'26502658':'phí quản lý cho vay của Ngân hàng Phát triển Việt Nam',
'26502661':'phí sử dụng thiết bị, cơ sở hạ tầng chứng khoán',
'26502662':'phí hoạt động chứng khoán',
'26502664':'phí quản lý, giám sát hoạt động chứng khoán, bảo hiểm, kế toán, kiểm toán',
'26502665':'phí thẩm định tiêu chuẩn, điều kiện hành nghề thuộc lĩnh vực tài chính',
'27002701':'Án phí',
'27002702':'phí giám định tư pháp',
'27002703':'phí cung cấp thông tin về giao dịch bảo đảm',
'27002704':'phí cung cấp thông tin về tài sản cho thuê tài chính',
'27002705':'phí cấp bản sao, bản trích lục bản án, quyết định và giấy chứng nhận xoá án',
'27002706':'phí thi hành án dân sự',
'27002707':'phí thực hiện ủy thác tư pháp về dân sự có yếu tố nước ngoài',
'27002708':'phí xuất khẩu lao động',
'27002711':'phí phá sản',
'27002712':'phí thẩm định hồ sơ đề nghị hưởng miễn trừ đối với thoả thuận hạn chế cạnh tranh bị cấm, miễn trừ đối với tập trung kinh tế bị cấm theo pháp luật về cạnh tranh',
'27002713':'phí giải quyết việc nuôi con nuôi đối với người nước ngoài',
'27002714':'phí xử lý vụ việc cạnh tranh',
'27002715':'phí công chứng',
'27002716':'phí chứng thực',
'27002717':'phí thẩm định điều kiện hoạt động thuộc lĩnh vực tư pháp',
'27002718':'phí đăng ký giao dịch bảo đảm',
'27002721':'phí sử dụng thông tin',
'27002722':'phí cấp mã số sử dụng cơ sở dữ liệu về giao dịch bảo đảm',
'27502751':'Lệ phí quốc tịch',
'27502752':'Lệ phí cấp hộ chiếu',
'27502753':'Lệ phí qua lại cửa khẩu biên giới',
'27502754':'Lệ phí áp dụng tại cơ quan đại diện ngoại giao, cơ quan lãnh sự ở nước ngoài',
'27502755':'Lệ phí nộp đơn yêu cầu Toà án Việt Nam công nhận và cho thi hành tại Việt Nam bản án, quyết định dân sự của Toà án nước ngoài',
'27502756':'Lệ phí nộp đơn yêu cầu Toà án Việt Nam không công nhận bản án, quyết định dân sự của Toà án nước ngoài không có yêu cầu thi hành tại Việt Nam',
'27502757':'Lệ phí nộp đơn yêu cầu Toà án Việt Nam công nhận và cho thi hành tại Việt Nam quyết định của Trọng tài nước ngoài',
'27502758':'Lệ phí nộp đơn yêu cầu Toà án kết luận cuộc đình công hợp pháp hoặc bất hợp pháp',
'27502761':'Lệ phí kháng cáo',
'27502762':'Lệ phí toà án liên quan đến trọng tài',
'27502763':'Lệ phí cấp giấy phép lao động cho người nước ngoài làm việc tại Việt nam',
'27502764':'Lệ phí cấp phiếu lý lịch tư pháp',
'27502765':'Lệ phí cấp thẻ đi lại của doanh nhân APEC',
'27502766':'Lệ phí tòa án',
'27502767':'Lệ phí đăng ký cư trú',
'27502768':'Lệ phí cấp chứng minh nhân dân, căn cước công dân',
'27502771':'Lệ phí hộ tịch',
'27502772':'Lệ phí cấp phép hoạt động đưa người lao động đi làm việc có thời hạn ở nước ngoài',
'27502773':'Lệ phí đăng ký nuôi con nuôi',
'27502774':'Lệ phí cấp phép các tổ chức nuôi con nuôi',
'28002801':'Lệ phí trước bạ nhà đất',
'28002802':'Lệ phí trước bạ ô tô',
'28002803':'Lệ phí trước bạ tàu thủy, thuyền',
'28002804':'Lệ phí trước bạ tài sản khác',
'28002805':'Lệ phí cấp giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà, tài sản gắn liền với đất',
'28002806':'Lệ phí đăng ký giao dịch bảo đảm',
'28002807':'Lệ phí cấp giấy chứng nhận quyền tác giả',
'28002808':'Lệ phí nộp đơn và cấp văn bằng bảo hộ, đăng ký hợp đồng chuyển giao quyền sở hữu công nghiệp',
'28002811':'Lệ phí duy trì, gia hạn, chấm dứt, khôi phục hiệu lực văn bằng bảo hộ',
'28002812':'Lệ phí đăng bạ, công bố thông tin sở hữu công nghiệp',
'28002813':'Lệ phí cấp chứng chỉ hành nghề, đăng bạ đại diện sở hữu công nghiệp',
'28002814':'Lệ phí đăng ký, cấp, công bố, duy trì hiệu lực văn bằng bảo hộ giống cây trồng mới',
'28002815':'Lệ phí cấp giấy phép xây dựng',
'28002816':'Lệ phí đăng ký, cấp biển phương tiện giao thông (không kể phương tiện giao thông đường thuỷ)',
'28002817':'Lệ phí đăng ký, cấp biển phương tiện giao thông đường thuỷ',
'28002818':'Lệ phí đăng ký, cấp biển xe máy chuyên dùng',
'28002821':'Lệ phí cấp chứng chỉ cho tàu bay',
'28002822':'Lệ phí cấp biển số nhà',
'28002823':'Lệ phí cấp giấy chứng nhận quyền sở hữu nhà ở, quyền sở hữu công trình xây dựng',
'28002824':'Lệ phí trước bạ xe máy',
'28002825':'Lệ phí trước bạ tàu bay',
'28002826':'Lệ phí cấp giấy phép quy hoạch',
'28002827':'Lệ phí quản lý phương tiện giao thông',
'28002828':'Lệ phí trong lĩnh vực hàng hải',
'28002831':'Lệ phí sở hữu trí tuệ',
'28502851':'Lệ phí cấp giấy chứng nhận đăng ký kinh doanh, cung cấp thông tin về đăng ký kinh doanh, đối với các loại hình tổ chức kinh tế, các hộ kinh doanh',
'28502852':'Lệ phí đăng ký khai báo hoá chất nguy hiểm, hoá chất độc hại, máy, thiết bị có yêu cầu an toàn đặc thù chuyên ngành công nghiệp',
'28502860':'Lệ phí đăng ký kinh doanh ',
'28502853':'Lệ phí về cấp chứng nhận, cấp bằng, cấp chứng chỉ, cấp phép, cấp giấy phép, cấp giấy chứng nhận, điều chỉnh giấy chứng nhận đối với các hoạt động, các ngành nghề kinh doanh theo quy định của pháp luật',
'28502854':'Lệ phí cấp phép đặt chi nhánh, văn phòng đại diện của các tổ chức nước ngoài tại Việt Nam',
'28502855':'Lệ phí cấp hạn ngạch xuất khẩu, nhập khẩu',
'28502856':'Lệ phí cấp và dán tem kiểm soát băng, đĩa có chương trình',
'28502857':'Lệ phí độc quyền hoạt động trong ngành dầu khí',
'28502858':'Lệ phí độc quyền hoạt động trong một số ngành, nghề tài nguyên khoáng sản khác theo quy định của pháp luật',
'28502859':'Lệ phí cấp giấy phép sử dụng tần số vô tuyến điện',
'28502861':'Lệ phí đăng ký doanh nghiệp',
'28502862':'Lệ phí môn bài mức (bậc) 1',
'28502863':'Lệ phí môn bài mức (bậc) 2',
'28502864':'Lệ phí môn bài mức (bậc) 3',
'28502865':'Lệ phí phân bổ kho số viễn thông, tài nguyên Internet',
'28502866':'Lệ phí cấp và dán tem kiểm soát băng, đĩa có chương trình',
'28502867':'Lệ phí chuyển nhượng chứng chỉ, tín chỉ giảm phát thải khí nhà kính',
'28502868':'Lệ phí cấp tên định danh người gửi dùng trong hoạt động quảng cáo trên mạng',
'28502871':'Lệ phí trong lĩnh vực tiêu chuẩn, đo lường chất lượng',
'28502872':'Lệ phí đăng ký các quyền đối với tàu bay',
'30003001':'Lệ phí ra, vào cảng',
'30003002':'Lệ phí ra, vào cảng, bến thủy nội địa',
'30003010':'Lệ phí đi qua vùng đất, vùng biển (không bao gồm lệ phí hàng hóa phương tiện quá cảnh)',
'30003003':'Lệ phí ra, vào cảng hàng không, sân bay',
'30003004':'Lệ phí cấp phép bay',
'30003005':'Lệ phí hàng hoá, hành lý, phương tiện vận tải quá cảnh',
'30003006':'Lệ phí cấp phép hoạt động khảo sát, thiết kế, lắp đặt, sửa chữa, bảo dưỡng các công trình thông tin bưu điện, dầu khí, giao thông vận tải đi qua vùng đất, vùng biển của Việt Nam',
'30003007':'Lệ phí hoa hồng chữ ký trong lĩnh vực dầu khí',
'30003008':'Lệ phí hoa hồng sản xuất',
'30003009':'Lệ phí cấp giấy phép cho hoạt động tàu, thuyền nước ngoài',
'30503051':'Lệ phí cấp phép sử dụng con dấu',
'30503052':'Lệ phí làm thủ tục hải quan',
'30503054':'Lệ phí cấp giấy đăng ký nguồn phóng xạ, máy phát bức xạ',
'30503055':'Lệ phí cấp giấy đăng ký địa điểm cất giữ chất thải phóng xạ',
'30503056':'Lệ phí cấp văn bằng, chứng chỉ',
'30503057':'LP chứng thực theo yêu cầu hoặc theo quy định của pháp luật',
'30503058':'Lệ phí hợp pháp hoá và chứng nhận lãnh sự',
'30503061':'Lệ phí công chứng',
'30503062':'Lệ phí cấp giấy phép quản lý vũ khí, vật liệu nổ, công cụ hỗ trợ',
'30503063':'Lệ phí cấp giấy phép quy hoạch',
'38503064':'Lệ phí cấp chứng chỉ hành nghề dịch vụ thú y; chế phẩm sinh học, vi sinh vật, hóa chất, chất xử lý cải tạo môi trường trong nuôi trồng thủy sản, chăn nuôi',
'38503065':'Lệ phí cấp chứng nhận kiểm dịch động vật, sản phẩm động vật trên cạn; thủy sản nhập khẩu, quá cảnh, tạm nhập tái xuất, chuyển cửa khẩu',
'38503066':'Lệ phí cấp chứng chỉ hành nghề luật sư',
'38503067':'Lệ phí cấp thẻ công chứng viên',
'38503068':'Lệ phí cấp chứng chỉ hành nghề quản tài viên',
'38503071':'Lệ phí cấp giấy chứng nhận thuyết minh viên',
'38503072':'Lệ phí công nhận chất lượng vật tư nông nghiệp được phép lưu hành tại Việt Nam',
'38503073':'Lệ phí cấp giấy phép xuất khẩu, nhập khẩu giống, nguồn gen cây trồng nông nghiệp',
'30503074':'Lệ phí cấp giấy phép khai thác, hoạt động thủy sản',
'38503853':'Tiền thuê cơ sở hạ tầng đường sắt',
'49004949':'Các khoản thu khác',
'23002325':'Phí đảm bảo hàng hải',
'23002324':'Phí sử dụng đường bộ thu qua đầu phương tiện ô tô',
'26502663':'Phí hải quan',
'26502666':'Phí hải quan đối với chuyến bay của nước ngoài đến các Cảng hàng không Việt Nam',
'30003003':'Lệ phí hàng hóa phương tiện quá cảnh'

 



  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  }
  return vReturn;
}
function getTenBVMT(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {

'010101':'Xăng sản xuất trong nước (trừ etanol)',
'010101':'Thu từ xăng sản xuất trong nước',
'010102':'Nhiên liệu bay sản xuất trong nước',
'010102':'Thu từ nhiên liệu bay sản xuất trong nước',
'010103':'Dầu Diezel sản xuất trong nước',
'010103':'Thu từ dầu diezel sản xuất trong nước',
'010104':'Dầu hỏa sản xuất trong nước',
'010105':'Dầu mazut sản xuất trong nước',
'010105':'Thu từ dầu mazut sản xuất trong nước',
'010106':'Dầu nhờn sản xuất trong nước',
'010106':'Thu từ dầu  nhờn sản xuất trong nước',
'010107':'Mỡ nhờn sản xuất trong nước',
'010107':'Thu từ  mỡ nhờn sản xuất trong nước',
'010108':'Xăng E5 Ron 92 sản xuất trong nước (trừ etanol)',
'010201':'Than nâu sản xuất trong nước',
'010202':'Than an - tra - xít (antraxit) sản xuất trong nước',
'010203':'Than mỡ sản xuất trong nước',
'010204':'Than đá khác sản xuất trong nước',
'0103':'Dung dịch hydro, chloro, fluoro, carbon sản xuất trong nước',
'0104':'Túi ni lông sản xuất trong nước',
'0105':'Thuốc diệt cỏ thuộc loại hạn chế sử dụng sản xuất trong nước',
'0106':'Sản phẩm hàng hóa khác sản xuất trong nước',
'0107':'Thuốc trừ mối thuộc loại hạn chế sử dụng sản xuất trong nước',
'0108':'Thuốc bảo quản lâm sản thuộc loại hạn chế sử dụng sản xuất trong nước',
'0109':'Thuốc khử trùng kho thuộc loại hạn chế sử dụng sản xuất trong nước',
'020101':'Thu từ xăng  nhập khẩu',
'020101':'Thu từ xăng  nhập khẩu',
'020102':'Thu từ nhiên liệu bay nhập khẩu',
'020102':'Thu từ nhiên liệu bay nhập khẩu',
'020103':'Thu từ dầu Diezel nhập khẩu',
'020103':'Thu từ dầu Diezel nhập khẩu',
'020104':'Thu từ dầu hỏa nhập khẩu',
'020105':'Thu từ dầu mazut nhập khẩu',
'020105':'Thu từ dầu mazut nhập khẩu',
'020106':'Thu từ dầu  nhờn nhập khẩu',
'020106':'Thu từ dầu  nhờn nhập khẩu',
'020107':'Thu từ  mỡ nhờn nhập khẩu',
'020107':'Thu từ  mỡ nhờn nhập khẩu',
'020108':'Thu từ xăng E5 Ron 92 nhập khẩu',
'020109':'Xăng E5 Ron 92 nhập khẩu bán ra trong nước',
'020111':'Xăng nhập khẩu bán ra trong nước',
'020111':'Thu từ xăng nhập khẩu để bán trong nước',
'020112':'Nhiên liệu bay nhập khẩu bán ra trong nước',
'020112':'Thu từ nhiên liệu bay nhập khẩu để bán trong nước',
'020113':'Diezel nhập khẩu bán ra trong nước',
'020113':'Thu từ dầu Diezel nhập khẩu để bán trong nước',
'020114':'Dầu hỏa nhập khẩu bán ra trong nước',
'020115':'Dầu mazut nhập khẩu bán ra trong nước',
'020115':'Thu từ dầu mazut, dầu mỡ nhờn nhập khẩu để bán trong nước',
'020115':'Thu từ dầu mazut, dầu mỡ nhờn nhập khẩu để bán trong nước',
'020116':'Dầu nhờn nhập khẩu bán ra trong nước',
'020117':'Mỡ nhờn nhập khẩu bán ra trong nước',
'020118':'Than đá nhập khẩu bán ra trong nước',
'020120':'Sản phẩm hàng hóa trong nước khác',
'020121':'Khác',
'020119':'Các hàng hóa nhập khẩu khác bán ra trong nước',
'020201':'Thuế bảo vệ môi trường mặt hàng xăng (trừ etanol) bán ra trong nước',
'020202':'Thuế bảo vệ môi trường mặt hàng dầu diezel bán ra trong nước',
'020203':'Thuế bảo vệ môi trường mặt hàng dầu hỏa bán ra trong nước',
'020204':'Thuế bảo vệ môi trường mặt hàng dầu mazut, dầu mỡ nhờn bán ra trong nước',
'020205':'Thuế bảo vệ môi trường mặt hàng nhiên liệu bay bán ra trong nước',
'0203':'Thu từ dung dịch hydro, chloro, fluoro, carbon nhập khẩu',
'0204':'Thu từ túi ni lông nhập khẩu',
'0205':'Thu từ thuốc diệt cỏ nhập khẩu',
'0206':'Thu từ các sản phẩm, hàng hóa nhập khẩu khác'



  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  }
  return vReturn;
}


 function breakWord(strInput)
  {
	var strReturn = '';
	var strTemp;
	var vstrInput;
	
	var node = strInput.nextNode();	
	try{
		if(node.hasChildNodes())
		{
	
	   vstrInput = node.childNodes[0].nodeValue;
		   strReturn = vstrInput.replace(/;/g," ");
		  
		
		}
		}
		catch(e)
		{
		
		}
		if(strReturn==null)
		{
		strReturn = "";
		}
		
		return strReturn;
  }
function getTenGhiChuBC26(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {
  '02':'Mất hóa đơn chưa BC sử dụng',
  '04':'Mất hóa đơn đã BC sử dụng', 
  '05':'Mất hóa đơn đầu vào'
  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  else
     {
     vReturn=vKey;
     }
  }
  return vReturn;
}
function getTTThayDoi(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {
  '01DVPH':'Tên đơn vị phát hành hóa đơn',
  '02DCTS':'Địa chỉ trụ sở chính', 
  '03PHONE':'Điện thoại'
  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  else
     {
     vReturn=vKey;
     }
  }
  return vReturn;
}
function getTenTN(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {
'010101':'Sắt',
'010102':'Măng-gan',
'010102a':'Sắt',
'010103':'Ti-tan (titan)',
'010103a':'Măng-gan',
'010104a':'Ti-tan (titan)',
'010201':'Đất hiếm',
'010202':'Vàng',
'010203':'Bạch kim',
'010203a':'Đất hiếm',
'010204':'Bạc, thiếc',
'010205':'Thiếc',
'010206':'Vôn-phờ-ram (wolfram), ăng-ti-moan (antimoan)',
'010207':'Chì, kẽm',
'010207a':'Vàng',
'010208':'Nhôm, bô-xít (bouxite)',
'010208a':'Bạch kim',
'010209':'Đồng',
'010209a':'Bạc',
'010210':'Ni-ken (niken)',
'010210a':'Thiếc',
'010211':'Cô-ban (coban), mô-lip-đen (molipden), thủy ngân, ma-nhê (magie), va-na-đi (vanadi)',
'010211a':'Vôn-phờ-ram (wolfram), ăng-ti-moan (antimoan)',
'010212a':'Chì, kẽm',
'010213a':'Nhôm, bô-xít (bouxite)',
'010214a':'Đồng, ni-ken (niken)',
'010215a':'Cô-ban (coban), mô-lip-đen (molipden), thuỷ ngân, ma-nhê (magie), va-na-đi (vanadi)',
'0103':'Khoáng sản kim loại khác',
'0103a':'Khoáng sản kim loại khác',
'020101':'Đất khai thác để san lấp, xây dựng công trình',
'020101a':'Đất khai thác để san lấp, xây dựng công trình',
'020102':'Đá, sỏi',
'020102a':'Đá, sỏi',
'020103':'Đá nung vôi và sản xuất xi măng',
'020103a':'Đá nung vôi và sản xuất xi măng',
'020104':'Đá hoa trắng',
'020104a':'Cát',
'020105':'Cát',
'020105a':'Cát làm thuỷ tinh',
'020106':'Cát làm thủy tinh',
'020106a':'Đất làm gạch',
'020107':'Đất làm gạch',
'020108':'Các loại đất khác',
'020201':'Gờ-ra-nít (granite)',
'020202':'Sét chịu lửa',
'020202a':'Gờ-ra-nít (granite)',
'020203':'Đô-lô-mít (dolomite), quắc-zít (quartzite)',
'020203a':'Sét chịu lửa',
'020204a':'Đô-lô-mít (dolomite), quắc-zít (quartzite)',
'020301':'Cao lanh',
'020302':'Mi-ca (mica), thạch anh kỹ thuật',
'020302a':'A-pa-tít (apatit), séc-păng-tin (secpentin)',
'020303':'Pi-rít (pirite), phốt-pho-rít (phosphorite)',
'020303a':'Cao lanh',
'020304':'A-pa-tít (apatit)',
'020304a':'Mi-ca (mica), thạch anh kỹ thuật',
'020305':'Séc-păng-tin (secpentin)',
'020305a':'Pi-rít (pirite), phốt-pho-rít (phosphorite)',
'0301':'Than an-tra-xít (antraxit) hầm lò',
'0301a':'Than an-tra-xít (antraxit) hầm lò',
'0302':'Than an-tra-xít (antraxit) lộ thiên',
'0302a':'Than an-tra-xít (antraxit) lộ thiên',
'0303':'Than nâu, than mỡ',
'0303a':'Than nâu, than mỡ',
'0304':'Than khác',
'0304a':'Than khác',
'0401':'Kim cương, ru-bi (rubi), sa-phia (sapphire)',
'0401a':'Kim cương, ru-bi (rubi), sa-phia (sapphire)',
'0402':'E-mô-rốt (emerald), a-lếch-xan-đờ-rít (alexandrite), ô-pan (opan) quý màu đen',
'0403':'Adít, rô-đô-lít (rodolite), py-rốp (pyrope), bê-rin (berin), sờ-pi-nen (spinen), tô-paz (topaz)',
'0404':'Thạch anh tinh thể màu tím xanh, vàng lục, da cam; cờ-ri-ô-lít (cryolite); ô-pan (opan) quý màu trắng, đỏ l',
'0404a':'Khoáng sản không kim loại khác',
'0405':'Khoáng sản không kim loại khác',
'0405a':'E-mô-rốt (emerald), a-lếch-xan-đờ-rít (alexandrite), ô-pan (opan) quý màu đen',
'0406a':'A-dít, rô-đô-lít (rodolite), py-rốp (pyrope), bê-rin (berin), sờ-pi-nen (spinen), tô-paz (topaz)',
'0407a':'Thạch anh tinh thể màu tím xanh, vàng lục, da cam; cờ-ri-ô-lít (cryolite); ô-pan (opan) quý màu trắng, đỏ l',
'05':'Dầu thô',
'050101':'Gỗ nhóm I',
'050101a':'Đến 20.000 thùng/ngày',
'050102':'Gỗ nhóm II',
'050102a':'Trên 20.000 thùng đến 50.000 thùng/ngày',
'050103':'Gỗ nhóm III, IV',
'050103a':'Trên 50.000 thùng đến 75.000 thùng/ngày',
'050104':'Gỗ nhóm V, VI, VII, VIII và các loại gỗ khác',
'050104a':'Trên 75.000 thùng đến 100.000 thùng/ngày',
'050105a':'Trên 100.000 thùng đến 150.000 thùng/ngày',
'050106a':'Trên 150.000 thùng/ngày',
'050201':'Cành, ngọn, gốc, rễ',
'050201a':'Đến 20.000 thùng/ngày đối với DA khác',
'050202':'Củi',
'050202a':'Trên 20.000 thùng đến 50.000 thùng/ngày đối với DA khác',
'050203a':'Trên 50.000 thùng đến 75.000 thùng/ngày đối với DA khác',
'050204a':'Trên 75.000 thùng đến 100.000 thùng/ngày đối với DA khác',
'050205a':'Trên 100.000 thùng đến 150.000 thùng/ngày đối với DA khác',
'050206a':'Trên 150.000 thùng/ngày đối với DA khác',
'0503':'Tre, trúc, nứa, mai, giang, tranh, vầu, lồ ô',
'050401':'Trầm hương, kỳ nam',
'050402':'Hồi, quế, sa nhân, thảo quả',
'0505':'Sản phẩm khác của rừng tự nhiên',
'05a':'Dầu thô',
'06':'Khí thiên nhiên, khí than',
'0601':'Ngọc trai, bào ngư, hải sâm',
'060101a':'Đến 5 triệu m3/ngày đối với DAKKĐT',
'060102a':'Trên 5 triệu m3 đến 10 triệu m3/ngày đối với DAKKĐT',
'060103a':'Trên 10 triệu m3/ngày đối với DAKKĐT',
'0602':'Hải sản tự nhiên khác',
'060201a':'Đến 5 triệu m3/ngày đối với DA khác',
'060202a':'Trên 10 triệu m3/ngày đối với DA khác',
'060203a':'Trên 10 triệu m3/ngày đối với đối với DA khác',
'06a':'Khí thiên nhiên, khí than',
'0701':'Nước khoáng thiên nhiên, nước nóng thiên nhiên, nước thiên nhiên tinh lọc đóng chai, đóng hộp',
'070101a':'Gỗ nhóm I',
'070102a':'Gỗ nhóm II',
'070103a':'Gỗ nhóm III, IV',
'070104a':'Gỗ nhóm V, VI, VII, VIII và các loại gỗ khác',
'0702':'Nước thiên nhiên dùng cho sản xuất thủy điện',
'07030101':'Nước dùng cho sản xuất nước sạch',
'07030102':'Nước dùng cho mục đích khác',
'07030201':'Nước dùng cho sản xuất nước sạch (Nước dưới đất)',
'07030202':'Nước dùng cho mục đích khác (Nước dưới đất)',
'070601a':'Cành, ngọn, gốc, rễ',
'070602a':'Củi',
'0707a':'Tre, trúc, nứa, mai, giang, tranh, vầu, lồ ô',
'070801a':'Trầm hương, kỳ nam',
'070802a':'Hồi, quế, sa nhân, thảo quả',
'0709a':'Sản phẩm khác của rừng tự nhiên',
'08':'Dầu thô',
'080101':'Sản lượng đến 20.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'080102':'Sản lượng trên 20.000 thùng đến 50.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'080103':'Sản lượng trên 50.000 thùng đến 75.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'080104':'Sản lượng trên 75.000 thùng đến 100.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'080105':'Sản lượng trên 100.000 thùng đến 150.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'080106':'Sản lượng trên 150.000 thùng/ngày (đối với Dự án khuyến khích đầu tư)',
'0801a':'Ngọc trai, bào ngư, hải sâm',
'080201':'Sản lượng đến 20.000 thùng/ngày (đối với Dự án khác)',
'080202':'Sản lượng trên 20.000 thùng đến 50.000 thùng/ngày (đối với Dự án khác)',
'080203':'Sản lượng trên 50.000 thùng đến 75.000 thùng/ngày (đối với Dự án khác)',
'080204':'Sản lượng trên 75.000 thùng đến 100.000 thùng/ngày (đối với Dự án khác)',
'080205':'Sản lượng trên 100.000 thùng đến 150.000 (đối với Dự án khác)',
'080206':'Sản lượng trên 150.000 thùng/ngày (đối với Dự án khác)',
'0802a':'Hải sản tự nhiên khác',
'09':'Khí thiên nhiên, khí than',
'090101':'Sản lượng đến 5 triệu m3/ngày (đối với Dự án khuyến khích đầu tư)',
'090102':'Sản lượng trên 5 triệu m3 đến 10 triệu m3/ngày (đối với Dự án khuyến khích đầu tư)',
'090103':'Sản lượng  trên 10 triệu m3/ngày (đối với Dự án khuyến khích đầu tư)',
'0901a':'Nước khoáng thiên nhiên, nước nóng thiên nhiên, nước thiên nhiên tinh lọc đóng chai, đóng hộp',
'090201':'Sản lượng đến 5 triệu m3/ngày (đối với Dự án khác)',
'090202':'Sản lượng trên 5 triệu m3 đến 10 triệu m3/ngày (đối với Dự án khác)',
'090203':'Sản lượng  trên 10 triệu m3/ngày (đối với Dự án khác)',
'0902a':'Nước thiên nhiên dùng cho sản xuất thủy điện',
'09030101a':'Sử dụng nước mặt làm nguyên liệu',
'09030102a':'Sử dụng nước dưới đất làm nguyên liệu',
'09030201a':'Sử dụng nước mặt phục vụ sản xuất',
'09030202a':'Sử dụng nước dưới đất phục vụ sản xuất',
'09040101a':'Sử dụng nước mặt khai thác dùng cho hoạt động dịch vụ, sản xuất công nghiệp, xây dựng, khai khoán',
'09040102a':'Sử dụng nước dưới đất dùng cho hoạt động dịch vụ, sản xuất công nghiệp, xây dựng, khai khoáng',
'09040201a':'Sử dụng nước mặt khai thác dùng vào mục đích khác',
'09040202a':'Sử dụng nước dưới đất khai thác dùng vào mục đích khác',
'1001':'Yến sào thiên nhiên',
'1001a':'Yến sào thiên nhiên',
'1101':'Tài nguyên khác',
'1101a':'Tài nguyên khác'
  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  else
     {
     vReturn=vKey;
     }
  }
  return vReturn;
}
</msxsl:script>
</xsl:stylesheet>