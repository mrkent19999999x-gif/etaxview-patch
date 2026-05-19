<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<msxsl:script language="JavaScript" implements-prefix="ihtkk">
  
function getTTThayDoi(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {
  '01DVPH':'Tên cơ quan phát hành biên lai',
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


  function timeToString(strInput, strFormat)
  {
	var strReturn = '';
	var strTemp;
	var vstrInput;
	
	var node = strInput.nextNode();	
	try{
		if(node.hasChildNodes())
		{
	
	   vstrInput = node.childNodes[0].nodeValue;
	   
		   if(strFormat=="hh")
		   {
		   strReturn =vstrInput.substring(0,2);
		   }
		    if(strFormat=="mm")
		   {
		    strReturn =vstrInput.substring(2,4)
		   }
			 if(strFormat=="ss")
		   {
		    strReturn =vstrInput.substring(4,6)
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
						  strReturn = strTemp[2].substring(3,strTemp[2].length).split(':')[2].substring(0,2);				  
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
'20311' : 'Huyện Trùng Khánh - Chi cục Thuế khu vực Trùng Khánh - Trà Lĩnh',
'20313' : 'Huyện Nguyên Bình - Chi cục Thuế khu vực Nguyên Bình - Thông Nông',
'20315' : 'Huyện Hoà An - Chi cục Thuế khu vực Hòa An - Hà Quảng',
'20317' : 'Huyện Quảng Uyên - Chi cục Thuế khu vực Phục Hòa - Quảng Uyên',
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
'50507' : 'Huyện Trà Bồng - Chi cục Thuế khu vực Trà Bồng - Tây Trà',
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
'50911' : 'Chi cục Thuế Huyện Đông Hoà',
'50913' : 'Huyện Sông Hinh - Chi cục Thuế khu vực Sông Hinh - Sơn Hòa',
'70501' : 'Chi cục Thuế TP. Phan Rang - Tháp Chàm',
'70915' : 'Huyện Gò Dầu - Chi cục Thuế khu vực Gò Dầu - Trảng Bàng - Bến Cầu',
'70115' : 'Chi cục Thuế Quận 8',
'70123' : 'Quận 12 - Chi cục Thuế khu vực Quận 12 - Hóc Môn',
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
'70137' : 'Huyện Hóc Môn - Chi cục Thuế khu vực Quận 12 - Hóc Môn',
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
'40153' : 'Chi cục Thuế Huyện Tĩnh Gia',
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
'50508' : 'Huyện Tây Trà - Chi cục Thuế khu vực Trà Bồng - Tây Trà',
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



function getTinh(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {
'101':'Hà Nội',
'103':'Hải Phòng',
'105':'Hà Tây cũ (hết hiệu lực)',
'107':'Hải Dương',
'109':'Hưng Yên',
'111':'Hà Nam',
'113':'Nam Định',
'115':'Thái Bình',
'117':'Ninh Bình',
'201':'Hà Giang',
'203':'Cao Bằng',
'205':'Lào Cai',
'207':'Bắc Cạn',
'209':'Lạng Sơn',
'211':'Tuyên Quang',
'213':'Yên Bái',
'215':'Thái Nguyên',
'217':'Phú Thọ',
'219':'Vĩnh Phúc',
'221':'Bắc Giang',
'223':'Bắc Ninh',
'225':'Quảng Ninh',
'301':'Điện Biên',
'302':'Lai Châu',
'303':'Sơn La',
'305':'Hòa Bình',
'401':'Thanh Hoá',
'403':'Nghệ An',
'405':'Hà Tĩnh',
'407':'Quảng Bình',
'409':'Quảng Trị',
'411':'Thừa Thiên - Huế',
'501':'Đà Nẵng',
'503':'Quảng Nam',
'505':'Quảng Ngãi',
'507':'Bình Định',
'509':'Phú Yên',
'511':'Khánh Hòa',
'601':'Kon Tum',
'603':'Gia Lai',
'605':'Đắc Lắc',
'606':'Đắk Nông',
'701':'TP Hồ Chí Minh',
'703':'Lâm Đồng',
'705':'Ninh Thuận',
'707':'Bình Phước',
'709':'Tây Ninh',
'711':'Bình Dương',
'713':'Đồng Nai',
'715':'Bình Thuận',
'717':'Bà Rịa - Vũng Tàu',
'801':'Long An',
'803':'Đồng Tháp',
'805':'An Giang',
'807':'Tiền Giang',
'809':'Vĩnh Long',
'811':'Bến Tre',
'813':'Kiên Giang',
'815':'Cần Thơ',
'816':'Hậu Giang',
'817':'Trà Vinh',
'819':'Sóc Trăng',
'821':'Bạc Liêu',
'823':'Cà Mau'
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


function getHuyen(MaCT){
	var vReturn = '';
  var nodeKey = MaCT.nextNode();
  if(nodeKey.hasChildNodes())
  {
 var vKey =  nodeKey.childNodes[0].nodeValue;
  var data = {

'10155':'Quận Nam Từ Liêm ',
'10157':'Quận Bắc Từ Liêm ',
'10103':'Quận Tây Hồ',
'10113':'Quận Cầu Giấy',
'10108':'Quận Hoàng Mai',
'10106':'Quận Long Biên',
'10125':'Huyện Mê Linh',
'10127':'Quận Hà Đông ',
'10129':'Thị Xã Sơn Tây',
'10131':'Huyện Phúc Thọ',
'10133':'Huyện Đan Phượng ',
'10135':'Huyện Thạch Thất ',
'10137':'Huyện Hoài Đức',
'10139':'Huyện Quốc Oai',
'10141':'Huyện Thanh Oai',
'10143':'Huyện Thường Tín ',
'10145':'Huyện Mỹ Đức ',
'10147':'Huyện ứng Hoà',
'10149':'Huyện Phú Xuyên',
'10151':'Huyện Ba Vì',
'10153':'Huyện Chương Mỹ',
'10100':'Thành phố Hà Nội ',
'10101':'Quận Ba Đình ',
'10105':'Quận Hoàn Kiếm',
'10107':'Quận Hai Bà Trưng',
'10109':'Quận Đống đa ',
'10111':'Quận Thanh Xuân',
'10115':'Huyện Sóc Sơn',
'10117':'Huyện Đông Anh',
'10119':'Huyện Gia Lâm',
'10121':'Huyện Từ Liêm (Cũ)',
'10123':'Huyện Thanh Trì',
'10301':'Quận Hồng Bàng',
'10313':'Huyện An Dương',
'10304':'Quận Hải An',
'10327':'Quận Dương Kinh',
'10300':'Thành Phố Hải Phòng',
'10303':'Quận Ngô Quyền',
'10305':'Quận Lê Chân ',
'10307':'Quận Kiến An ',
'10309':'Quận Đồ Sơn',
'10311':'Huyện Thuỷ Nguyên',
'10315':'Huyện An Lão ',
'10317':'Huyện Kiến Thuỵ',
'10319':'Huyện Tiên Lãng',
'10321':'Huyện Vĩnh Bảo',
'10323':'Huyện Cát Hải',
'10325':'Huyện Bạch Long Vĩ',
'10517':'Huyện Chương Mỹ (hết h.lực)',
'10501':'Thành phố Hà Đông (hết h.lực) ',
'10505':'Huyện Ba Vì (hết h.lực)',
'10507':'Huyện Phúc Thọ (hết h.lực)',
'10513':'Huyện Hoài Đức (hết h.lực)',
'10519':'Huyện Thanh Oai (hết h.lực)',
'10525':'Huyện ứng Hoà (hết h.lực) ',
'10500':'Hà Tây cũ (hết h.lực) ',
'10503':'Thành phố Sơn Tây (hết h.lực) ',
'10509':'Huyện Đan Phượng (hết h.lực)',
'10511':'Huyện Thạch Thất (hết h.lực)',
'10515':'Huyện Quốc Oai (hết h.lực)',
'10521':'Huyện Thường Tín (hết h.lực)',
'10523':'Huyện Mỹ Đức (hết h.lực)',
'10527':'Huyện Phú Xuyên (hết h.lực)',
'10701':'Thành phố Hải Dương',
'10717':'Huyện Cẩm Giàng',
'10700':'Tỉnh Hải Dương',
'10703':'Thành phố Chí Linh',
'10705':'Huyện Nam Sách',
'10707':'Huyện Thanh Hà',
'10709':'Thị xã Kinh Môn',
'10711':'Huyện Kim Thành',
'10713':'Huyện Gia Lộc',
'10715':'Huyện Tứ Kỳ',
'10719':'Huyện Bình Giang ',
'10721':'Huyện Thanh Miện ',
'10723':'Huyện Ninh Giang ',
'10900':'Tỉnh Hưng Yên',
'10901':'Thành phố Hưng yên',
'10903':'Thị xã Mỹ Hào',
'10907':'Huyện Ân Thi ',
'10909':'Huyện Kim Động',
'10911':'Huyện Phù Cừ ',
'10913':'Huyện Tiên Lữ',
'10905':'Huyện Khoái Châu ',
'10917':'Huyện Văn Lâm',
'10919':'Huyện Yên Mỹ ',
'10915':'Huyện Văn Giang',
'11109':'Huyện Thanh Liêm ',
'11100':'Tỉnh Hà Nam',
'11101':'Thành phố Phủ Lý ',
'11105':'Huyện Kim Bảng',
'11111':'Huyện Bình Lục',
'11103':'Thị xã Duy Tiên',
'11107':'Huyện Lý Nhân',
'11317':'Huyện Nghĩa Hưng ',
'11319':'Huyện Hải Hậu',
'11311':'Huyện Trực Ninh',
'11300':'Tỉnh Nam Định',
'11315':'Huyện Giao Thuỷ',
'11307':'Huyện ý Yên',
'11309':'Huyện Nam Trực',
'11301':'Thành phố Nam Định',
'11303':'Huyện Vụ Bản ',
'11305':'Huyện Mỹ Lộc ',
'11313':'Huyện Xuân Trường',
'11503':'Huyện Quỳnh Phụ',
'11515':'Huyện Tiền Hải',
'11513':'Huyện Kiến Xương ',
'11511':'Huyện Vũ Thư ',
'11509':'Huyện Đông Hưng',
'11507':'Huyện Thái Thụy',
'11505':'Huyện Hưng Hà',
'11500':'Tỉnh Thái Bình',
'11501':'Thành phố Thái Bình',
'11703':'Thành phố Tam Điệp',
'11701':'Thành phố Ninh Bình',
'11715':'Huyện Kim Sơn',
'11713':'Huyện Yên Khánh',
'11707':'Huyện Gia Viễn',
'11705':'Huyện Nho quan',
'11717':'Huyện Thuận Bắc',
'11700':'Tỉnh Ninh Bình',
'11709':'Huyện Hoa Lư ',
'11711':'Huyện Yên Mô ',
'20109':'Huyện Quản Bạ',
'20107':'Huyện Yên Minh',
'20105':'Huyện Mèo Vạc',
'20118':'Huyện Quang Bình ',
'20100':'Tỉnh Hà Giang',
'20113':'Huyện Hoàng Su Phì',
'20101':'Thành phố Hà Giang',
'20119':'Huyện Bắc Quang',
'20117':'Huyện Xín Mần',
'20115':'Huyện Vị Xuyên',
'20111':'Huyện Bắc Mê ',
'20103':'Huyện Đồng Văn',
'20315':'Huyện Hoà An ',
'20317':'Huyện Quảng Uyên ',
'20313':'Huyện Nguyên Bình',
'20323':'Huyện Bảo Lâm',
'20321':'Huyện Thạch An',
'20319':'Huyện Hạ Lang',
'20300':'Tỉnh Cao Bằng',
'20301':'Thành phố Cao Bằng',
'20305':'Huyện Hà Quảng',
'20309':'Huyện Trà Lĩnh',
'20307':'Huyện Thông Nông (Hết h.lực)',
'20318':'Huyện Phục Hoà',
'20311':'Huyện Trùng Khánh',
'20303':'Huyện Bảo Lạc',
'20500':'Tỉnh Lào Cai ',
'20501':'Thành phố Lào Cai',
'20505':'Huyện Mường Khương',
'20507':'Huyện Bát Xát',
'20509':'Huyện Bắc Hà ',
'20503':'Thị xã Cam Đường (hêt h.lực)',
'20513':'Thị Xã Sa Pa ',
'20515':'Huyện Bảo Yên',
'20521':'Huyện Si Ma Cai',
'20519':'Huyện Văn Bàn',
'20517':'Huyện Than Uyên (hêt h.lực)',
'20511':'Huyện Bảo Thắng',
'20709':'Huyện Na Rì',
'20707':'Huyện Chợ Đồn',
'20705':'Huyện Ngân Sơn',
'20703':'Huyện Ba Bể',
'20701':'Thành phố Bắc Kạn',
'20711':'Huyện Bạch Thông ',
'20700':'Tỉnh Bắc Cạn ',
'20704':'Huyện Pác Nặm',
'20713':'Huyện Chợ mới',
'20919':'Huyện Đình Lập',
'20903':'Huyện Tràng Định ',
'20907':'Huyện Bình Gia',
'20921':'Huyện Hữu Lũng',
'20900':'Tỉnh Lạng Sơn',
'20909':'Huyện Bắc Sơn',
'20905':'Huyện Văn Lãng',
'20911':'Huyện Văn Quan',
'20913':'Huyện Cao Lộc',
'20915':'Huyện Lộc Bình',
'20917':'Huyện Chi Lăng',
'20901':'Thành phố Lạng Sơn',
'21101':'Thành phố Tuyên Quang ',
'21103':'Huyện Na Hang',
'21105':'Huyện Chiêm Hoá',
'21100':'Tỉnh Tuyên Quang ',
'21111':'Huyện Sơn Dương',
'21109':'Huyện Yên Sơn',
'21113':'Huyện Lâm Bình',
'21107':'Huyện Hàm Yên',
'21300':'Tỉnh Yên Bái ',
'21301':'Thành phốYên Bái',
'21303':'Thị xã Nghĩa Lộ',
'21307':'Huyện Văn Yên',
'21309':'Huyện Mù Cang Chải',
'21311':'Huyện Trấn Yên',
'21315':'Huyện Văn Chấn',
'21317':'Huyện Trạm Tấu',
'21305':'Huyện Lục Yên',
'21313':'Huyện Yên Bình',
'21505':'Huyện Định Hoá',
'21507':'Huyện Võ Nhai',
'21515':'Huyện Phú Bình',
'21517':'Thị xã Phổ Yên',
'21500':'Tỉnh Thái Nguyên ',
'21511':'Huyện Đồng Hỷ',
'21509':'Huyện Phú Lương',
'21503':'Thành phố Sông Công',
'21501':'Thành phố Thái Nguyên ',
'21513':'Huyện Đại Từ ',
'21721':'Huyện Lâm Thao',
'21723':'Huyện Thanh Thuỷ ',
'21709':'Huyện Thanh Ba',
'21720':'Huyện Tân Sơn',
'21719':'Huyện Thanh Sơn',
'21717':'Huyện Tam Nông',
'21715':'Huyện Yên Lập',
'21713':'Huyện Cẩm Khê',
'21711':'Huyện Phù Ninh',
'21707':'Huyện Hạ Hoà ',
'21705':'Huyện Đoan Hùng',
'21703':'Thị xã Phú Thọ',
'21701':'Thành phố Việt Trì',
'21700':'Tỉnh Phú Thọ ',
'21902':'Thành phố Phúc Yên',
'21904':'Huyện Tam Đảo',
'21911':'Huyện Mê Linh (Chuyển Hà Nội) ',
'21915':'Huyện Sông Lô',
'21900':'Tỉnh Vĩnh Phúc',
'21905':'Huyện Tam Dương',
'21907':'Huyện Vĩnh Tường ',
'21903':'Huyện Lập Thạch',
'21913':'Huyện Bình Xuyên ',
'21909':'Huyện Yên Lạc',
'21901':'Thành phố Vĩnh Yên',
'22103':'Huyện Yên Thế',
'22119':'Huyện Yên Dũng',
'22115':'Huyện Lục Nam',
'22113':'Huyện Sơn Động',
'22111':'Huyện Lạng Giang ',
'22100':'Tỉnh Bắc Giang',
'22107':'Huyện Lục Ngạn',
'22105':'Huyện Tân Yên',
'22101':'Thành phốBắc Giang',
'22117':'Huyện Việt Yên',
'22109':'Huyện Hiệp Hoà',
'22301':'Thành phố Bắc Ninh',
'22311':'Huyện Lương Tài',
'22309':'Huyện Thuận Thành',
'22307':'Huyện Tiên Du',
'22305':'Huyện Quế Võ ',
'22303':'Huyện Yên Phong',
'22300':'Tỉnh Bắc Ninh',
'22315':'Huyện Gia Bình',
'22313':'Thị xã Từ Sơn',
'22525':'Thị xã Quảng Yên ',
'22527':'Huyện Đầm Hà ',
'22501':'Thành phố Hạ Long',
'22503':'Thành phố Cẩm Phả',
'22505':'Thành Phố Uông Bí',
'22507':'Huyện Bình Liêu',
'22509':'Thành phố Móng cái',
'22511':'Huyện Hải Hà ',
'22513':'Huyện Tiên Yên',
'22515':'Huyện Ba Chẽ ',
'22517':'Huyện Vân Đồn',
'22519':'Huyện Hoành Bồ (Hết h.lực)',
'22521':'Thị xã Đông Triều',
'22523':'Huyện Cô Tô',
'22500':'Tỉnh Quảng Ninh',
'30109':'Huyện Sìn Hồ (hêt h.lực)',
'30121':'Huyện Mường ảng',
'30103':'Thị xã Mường Lay ',
'30108':'Huyện Tam Đường (hêt h.lực)',
'30104':'Huyện Mường Nhé',
'30123':'Huyện Nậm Pồ ',
'30119':'Huyện Điện Biên Đông',
'30117':'Huyện Điện Biên',
'30115':'Huyện Tuần Giáo',
'30113':'Huyện Tủa Chùa',
'30111':'Huyện Mường Chà',
'30107':'Huyện Phong Thổ (hêt h.lực)',
'30105':'Huyện Mường Tè (hêt h.lực)',
'30101':'TP Điện Biên Phủ ',
'30100':'Tỉnh Điện Biên',
'30205':'Huyện Tam Đường',
'30211':'Huyện Tân Uyên',
'30213':'Huyện Nậm Nhùn',
'30207':'Huyện Sìn Hồ ',
'30202':'Thành phố Lai Châu',
'30203':'Huyện Phong Thổ',
'30201':'Huyện Mường Tè',
'30200':'Tỉnh Lai Châu',
'30209':'Huyện Than Uyên',
'30305':'Huyện Mường La',
'30307':'Huyện Thuận Châu ',
'30309':'Huyện Bắc Yên',
'30311':'Huyện Phù Yên',
'30313':'Huyện Mai Sơn',
'30315':'Huyện Sông Mã',
'30303':'Huyện Quỳnh Nhai ',
'30319':'Huyện Mộc Châu',
'30301':'Thành phố Sơn La ',
'30321':'Huyện Sốp Cộp',
'30323':'Huyện Vân Hồ ',
'30300':'Tỉnh Sơn La',
'30317':'Huyện Yên Châu',
'30513':'Huyện Tân Lạc',
'30515':'Huyện Lạc Sơn',
'30517':'Huyện Lạc Thuỷ',
'30519':'Huyện Yên Thuỷ',
'30500':'Tỉnh Hoà Bình',
'30501':'Thành phố Hoà Bình',
'30503':'Huyện Đà Bắc ',
'30505':'Huyện Mai Châu',
'30507':'Huyện Kỳ Sơn (Hết h.lực)',
'30510':'Huyện Cao Phong',
'30509':'Huyện Lương Sơn',
'30511':'Huyện Kim Bôi',
'40107':'Huyện Mường Lát',
'40123':'Huyện Thường Xuân',
'40137':'Huyện Thọ Xuân',
'40151':'Huyện Nông Cống',
'40117':'Huyện Lang Chánh ',
'40153':'Huyện Tĩnh Gia',
'40100':'Tỉnh Thanh Hoá',
'40101':'Thành phố Thanh Hoá',
'40103':'Thị xã Bỉm Sơn',
'40105':'Thị xã Sầm Sơn',
'40109':'Huyện Quan Hoá',
'40111':'Huyện Quan Sơn',
'40113':'Huyện Bá Thước',
'40115':'Huyện Cẩm Thuỷ',
'40119':'Huyện Thạch Thành',
'40121':'Huyện Ngọc Lặc',
'40125':'Huyện Như Xuân',
'40127':'Huyện Như Thanh',
'40129':'Huyện Vĩnh Lộc',
'40131':'Huyện Hà Trung',
'40133':'Huyện Nga Sơn',
'40135':'Huyện Yên Định',
'40139':'Huyện Hậu Lộc',
'40141':'Huyện Thiệu Hoá',
'40143':'Huyện Hoằng Hoá',
'40145':'Huyện Đông Sơn',
'40147':'Huyện Triệu Sơn',
'40149':'Huyện Quảng Xương',
'40309':'Huyện Kỳ Sơn ',
'40321':'Huyện Con Cuông',
'40339':'Thị xã Hoàng Mai ',
'40337':'Huyện Hưng Nguyên',
'40314':'Thị xã Thái Hoà',
'40329':'Huyện Đô Lương',
'40300':'Tỉnh Nghệ An ',
'40301':'Thành phố Vinh',
'40303':'Thị xã Cửa Lò',
'40305':'Huyện Quế Phong',
'40307':'Huyện Quỳ Châu',
'40311':'Huyện Quỳ Hợp',
'40313':'Huyện Nghĩa Đàn',
'40315':'Huyện Tương Dương',
'40317':'Huyện Quỳnh Lưu',
'40319':'Huyện Tân Kỳ ',
'40323':'Huyện Yên Thành',
'40325':'Huyện Diễn Châu',
'40327':'Huyện Anh Sơn',
'40331':'Huyện Thanh Chương',
'40333':'Huyện Nghi Lộc',
'40335':'Huyện Nam Đàn',
'40520':'Thị xã Kỳ Anh',
'40511':'Huyện Can Lộc',
'40521':'Huyện Vũ Quang',
'40523':'Huyện Lộc Hà ',
'40500':'Tỉnh Hà tĩnh ',
'40501':'Thành phố Hà Tĩnh',
'40503':'Thị xã Hồng Lĩnh ',
'40505':'Huyện Nghi Xuân',
'40507':'Huyện Đức Thọ',
'40509':'Huyện Hương Sơn',
'40513':'Huyện Thạch Hà',
'40515':'Huyện Cẩm Xuyên',
'40517':'Huyện Hương Khê',
'40519':'Huyện Kỳ Anh ',
'40715':'Thị xã Ba Ðồn',
'40703':'Huyện Tuyên Hoá',
'40700':'Tỉnh Quảng Bình',
'40701':'Thành phố Đồng Hới',
'40705':'Huyện Minh Hoá',
'40707':'Huyện Quảng Trạch',
'40709':'Huyện Bố Trạch',
'40711':'Huyện Quảng Ninh ',
'40713':'Huyện Lệ Thuỷ',
'40911':'Huyện Triệu Phong',
'40915':'Huyện Hướng Hoá',
'40901':'Thành phố Đông Hà',
'40913':'Huyện Hải Lăng',
'40919':'Huyện Đảo Cồn Cỏ ',
'40917':'Huyện Đa Krông',
'40900':'Tỉnh Quảng Trị',
'40903':'Thị xã Quảng Trị ',
'40905':'Huyện Vĩnh Linh',
'40907':'Huyện Gio Linh',
'40909':'Huyện Cam Lộ ',
'41100':'Tỉnh Thừa Thiên Huế',
'41101':'Thành phố Huế',
'41103':'Huyện Phong Điền ',
'41105':'Huyện Quảng Điền ',
'41107':'Thị Xã Hương Trà ',
'41111':'Huyện Hương Thuỷ ',
'41113':'Huyện Phú Lộc',
'41115':'Huyện A Lưới ',
'41117':'Huyện Nam Đông',
'41109':'Huyện Phú Vang',
'50103':'Quận Thanh Khê',
'50105':'Quận Sơn Trà ',
'50109':'Quận Liên Chiểu',
'50111':'Huyện Hoà Vang',
'50100':'TP Đà Nẵng',
'50115':'Quận Cẩm Lệ',
'50107':'Quận Ngũ Hành Sơn',
'50101':'Quận Hải Châu',
'50113':'Huyện Đảo Hoàng Sa',
'50305':'Huyện Đông Giang ',
'50311':'Huyện Duy Xuyên',
'50313':'Huyện Nam Giang',
'50315':'Huyện Thăng Bình ',
'50317':'Huyện Quế Sơn',
'50319':'Huyện Hiệp Đức',
'50323':'Huyện Phước Sơn',
'50325':'Huyện Núi Thành',
'50309':'Thị xã Điện Bàn',
'50303':'Thành phố Hội An ',
'50301':'Thành phố Tam Kỳ ',
'50300':'Tỉnh Quảng Nam',
'50321':'Huyện Tiên Phước ',
'50307':'Huyện Đại Lộc',
'50302':'Huyện Phú Ninh',
'50318':'Huyện Nông Sơn',
'50329':'Huyện Nam Trà My ',
'50304':'Huyện Tây Giang',
'50327':'Huyện Bắc Trà My ',
'50508':'Huyện Tây Trà (Hết h.lực) ',
'50505':'Huyện Bình Sơn',
'50519':'Huyện Minh Long',
'50525':'Huyện Ba Tơ',
'50523':'Thị xã Đức Phổ',
'50521':'Huyện Mộ Đức ',
'50517':'Huyện Nghĩa Hành ',
'50515':'Huyện Tư Nghĩa',
'50513':'Huyện Sơn Hà ',
'50511':'Huyện Sơn Tây',
'50509':'Huyện Sơn Tịnh',
'50507':'Huyện Trà Bồng',
'50503':'Huyện Lý Sơn ',
'50500':'Tỉnh Quảng Ngãi',
'50501':'Thành phố Quảng Ngãi',
'50705':'Huyện Hoài Nhơn',
'50707':'Huyện Hoài Ân',
'50700':'Tỉnh Bình Định',
'50701':'Thành phố Quy Nhơn',
'50703':'Huyện An Lão ',
'50719':'Huyện Tuy Phước',
'50711':'Huyện Vĩnh Thạnh ',
'50713':'Huyện Phù Cát',
'50715':'Huyện Tây Sơn',
'50717':'Huyện An Nhơn',
'50721':'Huyện Vân Canh',
'50709':'Huyện Phù Mỹ ',
'50915':'Huyện Phú Hoà',
'50912':'HuyệnTâyHoà',
'50901':'TP Tuy Hoà',
'50900':'Tỉnh Phú Yên ',
'50903':'Huyện Đồng Xuân',
'50907':'Huyện Tuy An ',
'50909':'Huyện Sơn Hoà',
'50911':'Huyện Đông Hoà',
'50913':'Huyện Sông Hinh',
'50905':'Thị xã Sông Cầu',
'51117':'Huyện Cam Lâm',
'51113':'Huyện Khánh Sơn',
'51100':'Tỉnh Khánh Hoà',
'51101':'Thành phố Nha Trang',
'51109':'Thành Phố Cam Ranh',
'51105':'Thị xã Ninh Hoà',
'51107':'Huyện Diên Khánh ',
'51111':'Huyện Khánh Vĩnh ',
'51115':'Huyện Trường Sa',
'51103':'Huyện Vạn Ninh',
'60115':'HuyệnTu Mơ Rông',
'60100':'Tỉnh Kon Tum ',
'60101':'Thành phố Kon Tum',
'60103':'Huyện Đắk Glei',
'60107':'Huyện Đắk Tô ',
'60109':'Huyện Kon Plông',
'60111':'Huyện Đák Hà ',
'60113':'Huyện Sa Thầy',
'60105':'Huyện Ngọc Hồi',
'60114':'Huyện Ia H`Drai',
'60108':'Huyện Kon Rẫy',
'60301':'Thành phố Pleiku',
'60327':'Huyện ĐakPơ',
'60311':'Thị xã An Khê',
'60313':'Huyện Kông Chro',
'60315':'Huyện Đức Cơ ',
'60317':'Huyện Chư Prông',
'60319':'Huyện Chư Sê ',
'60303':'Huyện Kbang',
'60307':'Huyện Chư Păh',
'60331':'Huyện Chư Pưh',
'60300':'Tỉnh Gia Lai ',
'60325':'Huyện Đắk Đoa',
'60321':'Thị xã Ayun Pa',
'60305':'Huyện Mang Yang',
'60320':'Huyện IaPa',
'60329':'Huyện Phú Thiện',
'60323':'Huyện Krông Pa',
'60309':'Huyện Ia Grai',
'60532':'Huyện Đắk Song (hêt h.lực)',
'60517':'Huyện M`ĐrắK ',
'60505':'Huyện Ea Súp ',
'60535':'Huyện Đắk Nông (hêt h.lực)',
'60533':'Huyện Đắk R`Lấp (hêt h.lực)',
'60531':'Huyện Lắk',
'60527':'Huyện Đắk Mil (hêt h.lực) ',
'60525':'Huyện Krông Bông ',
'60523':'Huyện Krông A Na ',
'60515':'Huyện Ea Kar ',
'60513':'Huyện Cư M`gar',
'60511':'Huyện Buôn Đôn',
'60509':'Thị xã Buôn Hồ',
'60507':'Huyện Krông Năng ',
'60503':'Huyện Ea H`leo',
'60501':'TP.Buôn Ma Thuột ',
'60500':'Tỉnh Đắk Lắk ',
'60519':'Huyện Krông Pắk',
'60529':'Huyện Krông Nô (hêt h.lực)',
'60539':'Huyện Krông Búk',
'60521':'Huyện Cư Jút (hêt h.lực)',
'60537':'Huyện Cư Kuin',
'60611':'Huyện Đắk R`Lấp',
'60600':'Tỉnh Đắk Nông',
'60605':'Huyện Krông Nô',
'60603':'Huyện Cư Jút ',
'60607':'Huyện Đắk Mil',
'60613':'Thành phố Gia Nghĩa',
'60617':'Huyện Tuy Đức',
'60601':'Huyện Đắk Nông (hêt h.lực)',
'60609':'Huyện Đắk Song',
'60615':'Huyện Đắk Glong',
'70105':'Quận 3',
'70143':'Huyện Cần Giờ',
'70119':'Quận 10',
'70127':'Quận Tân Bình',
'70139':'Huyện Bình Chánh ',
'70128':'Quận Tân phú ',
'70134':'Quận Bình Tân',
'70111':'Quận 6',
'70141':'Huyện Nhà Bè ',
'70137':'Huyện Hóc Môn',
'70135':'Huyện Củ Chi ',
'70133':'Quận Thủ Đức ',
'70131':'Quận Phú Nhuận',
'70129':'Quận Bình Thạnh',
'70125':'Quận Gò Vấp',
'70123':'Quận 12',
'70121':'Quận 11',
'70117':'Quận 9',
'70115':'Quận 8',
'70113':'Quận 7',
'70100':'Thành phố Hồ Chí Minh ',
'70101':'Quận 1',
'70103':'Quận 2',
'70107':'Quận 4',
'70109':'Quận 5',
'70321':'Huyện Cát Tiên',
'70319':'Huyện Đạ Tẻh ',
'70317':'Huyện Đạ Huoai',
'70315':'Huyện Di Linh',
'70313':'Huyện Bảo Lâm',
'70311':'Huyện Lâm Hà ',
'70323':'Huyện Đam Rông',
'70307':'Huyện Đơn Dương',
'70305':'Huyện Lạc Dương',
'70303':'Thành phố Bảo Lộc',
'70301':'Thành phố Đà Lạt ',
'70300':'Tỉnh Lâm Đồng',
'70309':'Huyện Đức Trọng',
'70503':'Huyện Ninh Sơn',
'70509':'Huyện Bác ái ',
'70511':'Huyện Thuận Bắc',
'70513':'Huyện Thuận Nam',
'70500':'Tỉnh Ninh Thuận',
'70501':'TP. Phan Rang-Tháp Chàm',
'70505':'Huyện Ninh Hải',
'70507':'Huyện Ninh Phước ',
'70700':'Tỉnh Bình Phước',
'70701':'Huyện Đồng Phú',
'70715':'Huyện Bù Gia Mập ',
'70713':'Huyện Hớn Quản',
'70706':'Huyện Bù Đốp ',
'70710':'Huyện Chơn Thành ',
'70711':'Thành phố Đồng Xoài',
'70716':'Huyện Phú Riềng',
'70707':'Huyện Bù Đăng',
'70709':'Huyện Bình Long',
'70705':'Huyện Lộc Ninh',
'70703':'Huyện Phước Long ',
'70909':'Huyện Châu Thành ',
'70915':'Huyện Gò Dầu ',
'70901':'Thành phố Tây Ninh',
'70907':'Huyện Dương Minh Châu ',
'70900':'Tỉnh Tây Ninh',
'70911':'Thị xã Hoà Thành ',
'70905':'Huyện Tân Châu',
'70917':'Thị xã Trảng Bàng',
'70913':'Huyện Bến Cầu',
'70903':'Huyện Tân Biên',
'71109':'Thành phốDĩ An ',
'71111':'Huyện Phú Giáo',
'71113':'Huyện Dầu Tiếng',
'71101':'Thành phố Thủ Dầu Một ',
'71117':'Huyện Bắc Tân Uyên',
'71115':'Huyện Bàu Bàng',
'71107':'Thành phố Thuận An',
'71105':'Thị xã Tân Uyên',
'71103':'Thị xã Bến Cát',
'71100':'Tỉnh Bình Dương',
'71307':'Huyện Vĩnh Cửu',
'71311':'Huyện Cẩm Mỹ ',
'71309':'Huyện Thống Nhất ',
'71305':'Huyện Định Quán',
'71303':'Huyện Tân Phú',
'71313':'Huyện Xuân Lộc',
'71300':'Tỉnh Đồng Nai',
'71308':'Huyện Trảng Bom',
'71302':'Thành phố Long Khánh',
'71315':'Huyện Long Thành ',
'71317':'Huyện Nhơn Trạch ',
'71301':'Thành phố Biên Hoà',
'71509':'Huyện Hàm Thuận Nam',
'71500':'Tỉnh Bình Thuận',
'71503':'Huyện Tuy Phong',
'71505':'Huyện Bắc Bình',
'71507':'Huyện Hàm Thuận Bắc',
'71511':'Huyện Tánh Linh',
'71513':'Thị xã La Gi ',
'71515':'Huyện Đức Linh',
'71517':'Huyện Phú Quý',
'71501':'Thành phốPhan Thiết ',
'71514':'Huyện Hàm Tân',
'71700':'Tỉnh Bà Rịa - Vũng Tàu',
'71701':'Thành phố Vũng Tàu',
'71703':'Thành Phố Bà Rịa ',
'71705':'Huyện Châu Đức',
'71711':'Huyện Long Điền',
'71713':'Huyện Côn Đảo',
'71709':'Thị Xã Phú Mỹ',
'71712':'Huyện Đất đỏ ',
'71707':'Huyện Xuyên Mộc',
'80105':'Huyện Vĩnh Hưng',
'80107':'Huyện Mộc Hoá',
'80101':'Thành phố Tân An ',
'80129':'Thị xã Kiến Tường',
'80100':'Tỉnh Long An ',
'80113':'Huyện Đức Huệ',
'80111':'Huyện Thạnh Hoá',
'80123':'Huyện Tân Trụ',
'80109':'Huyện Tân Thạnh',
'80115':'Huyện Đức Hoà',
'80117':'Huyện Bến Lức',
'80119':'Huyện Thủ Thừa',
'80121':'Huyện Châu Thành ',
'80125':'Huyện Cần Đước',
'80127':'Huyện Cần Giuộc',
'80103':'Huyện Tân Hưng',
'80315':'Huyện Cao Lãnh',
'80317':'Huyện Lấp Vò ',
'80319':'Huyện Lai Vung',
'80321':'Huyện Châu Thành ',
'80309':'Huyện Tam Nông',
'80311':'Huyện Thanh Bình ',
'80307':'HuyệnHồng Ngự',
'80305':'Huyện Tân Hồng',
'80303':'Thị xã Sa Đéc',
'80301':'Thành phố Cao Lãnh',
'80323':'Thị xã Hồng Ngự',
'80313':'Huyện Tháp Mười',
'80300':'Tỉnh Đồng Tháp',
'80505':'Huyện An Phú ',
'80503':'Thành phố Châu Đốc',
'80517':'Huyện Chợ Mới',
'80507':'Huyện Tân Châu',
'80509':'Huyện Phú Tân',
'80515':'Huyện Tri Tôn',
'80501':'Thành phố Long Xuyên',
'80513':'Huyện Tịnh Biên',
'80511':'Huyện Châu Phú',
'80500':'Tỉnh An Giang',
'80521':'Huyện Thoại Sơn',
'80519':'Huyện Châu Thành ',
'80713':'Huyện Cái Bè ',
'80705':'Huyện Tân Phước',
'80721':'Thị xã Cai Lậy',
'80709':'Huyện Cai Lậy',
'80707':'Huyện Châu Thành ',
'80703':'Thị xã Gò Công',
'80701':'Thành phố Mỹ Tho ',
'80700':'Tỉnh Tiền Giang',
'80711':'Huyện Chợ Gạo',
'80719':'Huyện Tân Phú Đông',
'80717':'Huyện Gò Công Đông',
'80715':'Huyện Gò Công Tây',
'80907':'Huyện Bình Minh',
'80905':'Huyện Mang Thít',
'80901':'Thành phốVĩnh Long',
'80908':'Huyện Bình Tân',
'80913':'Huyện Vũng Liêm',
'80903':'Huyện Long Hồ',
'80909':'Huyện Tam Bình',
'80911':'Huyện Trà Ôn ',
'80900':'Tỉnh Vĩnh Long',
'81105':'Huyện Chợ Lách',
'81108':'Huyện Mỏ Cày Bắc ',
'81109':'Huyện Giồng Trôm ',
'81111':'Huyện Bình Đại',
'81103':'Huyện Châu Thành ',
'81115':'Huyện Thạnh Phú',
'81100':'Tỉnh Bến Tre ',
'81107':'Huyện Mỏ Cày Nam ',
'81101':'Thành phố Bến Tre',
'81113':'Huyện Ba Tri ',
'81317':'Huyện An Minh',
'81325':'Thành phố Hà Tiên',
'81315':'Huyện An Biên',
'81313':'Huyện Gò Quao',
'81327':'Huyện U Minh Thượng',
'81309':'Huyện Châu Thành ',
'81319':'Huyện Vĩnh Thuận ',
'81304':'Huyện Giang Thành',
'81323':'Huyện Kiên Hải',
'81300':'Tỉnh Kiên Giang',
'81301':'Thành phố Rạch Giá',
'81303':'Huyện Kiên Lương ',
'81305':'Huyện Hòn Đất',
'81321':'Huyện Phú Quốc',
'81311':'Huyện Giồng Riềng',
'81307':'Huyện Tân Hiệp',
'81519':'Quận Ninh Kiều',
'81500':'Thành phố Cần Thơ',
'81515':'Huyện Vị Thuỷ (hêt h.lực) ',
'81517':'Huyện Châu Thành A (hêt h.lực)',
'81509':'Huyện Phụng Hiệp (hêt h.lực)',
'81513':'Huyện Long Mỹ (hêt h.lực) ',
'81531':'Huyện Thới Lai',
'81511':'Thị xã Vị Thanh (hêt h.lực)',
'81529':'Huyện Phong Điền ',
'81527':'Huyện Cờ Đỏ',
'81525':'Huyện Vĩnh Thạnh ',
'81523':'Quận Cái Răng',
'81521':'Quận Bình Thuỷ',
'81501':'Thành phố Cần Thơ (hêt h.lực) ',
'81503':'Quận Thốt Nốt',
'81507':'Huyện Châu Thành (hêt h.lực)',
'81505':'Quận Ô Môn',
'81608':'Huyện Phụng Hiệp ',
'81612':'Thị Xã Long Mỹ',
'81600':'Tỉnh Hậu Giang',
'81611':'Huyện Long Mỹ',
'81609':'Huyện Vị Thủy',
'81607':'Thành phố Ngã Bảy',
'81605':'Huyện Châu Thành ',
'81601':'Thành phố Vị Thanh',
'81603':'Huyện Châu Thành A',
'81700':'Tỉnh Trà Vinh',
'81701':'Thành phố Trà Vinh',
'81703':'Huyện Càng Long',
'81705':'Huyện Châu Thành ',
'81709':'Huyện Tiểu Cần',
'81711':'Huyện Cầu Ngang',
'81713':'Huyện Trà Cú ',
'81715':'Huyện Duyên Hải',
'81716':'Thị xã Duyên Hải ',
'81707':'Huyện Cầu Kè ',
'81906':'Huyện Cù Lao Dung',
'81917':'Huyện Trần Đề',
'81903':'Huyện Kế Sách',
'81901':'Thành phố Sóc Trăng',
'81913':'Huyện Vĩnh Châu',
'81911':'Huyện Thạnh Trị',
'81909':'Huyện Mỹ Xuyên',
'81907':'Huyện Mỹ Tú',
'81905':'Huyện Long Phú',
'81900':'Tỉnh Sóc Trăng',
'81915':'Huyện Châu Thành ',
'81912':'Huyện Ngã Năm',
'82103':'Huyện Hồng Dân',
'82100':'Tỉnh Bạc Liêu',
'82111':'Huyện Đông Hải',
'82106':'Huyện Hoà Bình',
'82101':'Thành phố Bạc Liêu',
'82109':'Huyện Phước Long ',
'82105':'Huyện Vĩnh Lợi',
'82107':'Thị xã Giá Rai',
'82311':'Huyện Đầm Dơi',
'82312':'Huyện Năm Căn',
'82308':'Huyện Phú Tân',
'82300':'Tỉnh Cà Mau',
'82301':'Thành phốCà Mau',
'82313':'Huyện Ngọc Hiển',
'82309':'Huyện Cái Nước',
'82307':'Huyện Trần Văn Thời',
'82305':'Huyện U Minh ',
'82303':'Huyện Thới Bình'


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