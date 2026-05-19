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
'70507' : 'Chi cục Thuế Huyện Ninh Phước',
'21501' : 'Chi cục Thuế Thành phố Thái Nguyên',
'21503' : 'Thành phố Sông Công - Chi cục thuế khu vực Sông Công- Đại Từ',
'21507' : 'Huyện Võ Nhai  -Chi cục thuế khu vực Đồng Hỷ - Võ Nhai',
'21509' : 'Huyện Phú Lương- Chi cục thuế khu vực Phú Lương- Định Hóa',
'21511' : 'Huyện Đồng Hỷ - Chi cục thuế khu vực Đồng Hỷ - Võ Nhai',
'21513' : 'Huyện Đại Từ - Chi cục thuế khu vực Sông Công- Đại Từ  ',
'21517' : 'Thị xã Phổ Yên - Chi cục thuế khu vực Phổ Yên- Phú Bình',
'20701' : 'Chi cục Thuế Thị xã Bắc Cạn',
'20703' : 'Chi cục Thuế Huyện Ba Bể',
'20705' : 'Chi cục Thuế Huyện Ngân Sơn',
'20707' : 'Chi cục Thuế Huyện Chợ Đồn',
'20709' : 'Chi cục Thuế Huyện Na Rì',
'20711' : 'Chi cục Thuế Huyện Bạch Thông',
'20301' : 'Chi cục Thuế Thị xã Cao Bằng',
'20303' : 'Chi cục Thuế Huyện Bảo Lạc',
'20305' : 'Chi cục Thuế Huyện Hà Quảng',
'20307' : 'Chi cục Thuế Huyện Thông Nông',
'20309' : 'Chi cục Thuế Huyện Trà Lĩnh',
'20311' : 'Chi cục Thuế Huyện Trùng Khánh',
'20313' : 'Chi cục Thuế Huyện Nguyên Bình',
'20315' : 'Chi cục Thuế Huyện Hoà An',
'20317' : 'Chi cục Thuế Huyện Quảng Uyên',
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
'21103' : 'Chi cục Thuế Huyện Nà Hang',
'21105' : 'Chi cục Thuế Huyện Chiêm Hoá',
'21107' : 'Chi cục Thuế Huyện Hàm Yên',
'21109' : 'Chi cục Thuế Huyện Yên Sơn',
'21111' : 'Chi cục Thuế Huyện Sơn Dương',
'20103' : 'Chi cục Thuế Huyện Đồng Văn',
'20105' : 'Chi cục Thuế Huyện Mèo Vạc',
'20107' : 'Chi cục Thuế Huyện Yên Minh',
'20111' : 'Chi cục Thuế Huyện Bắc Mê',
'20113' : 'Chi cục Thuế Huyện Hoàng Su Phì',
'20115' : 'Chi cục Thuế Huyện Vị Xuyên',
'20117' : 'Chi cục Thuế Huyện Xín Mần',
'20119' : 'Chi cục Thuế Huyện Bắc Quang',
'21301' : 'Chi cục Thuế TP Yên Bái',
'21303' : 'Thị xã Nghĩa Lộ - Chi cục Thuế khu vực Nghiã Văn',
'21305' : 'Chi cục Thuế Huyện Lục Yên',
'21307' : 'Chi cục Thuế Huyện Văn Yên',
'21309' : 'Chi cục Thuế Huyện Mù Cang Chải',
'21311' : 'Chi cục Thuế Huyện Trấn Yên',
'21313' : 'Chi cục Thuế Huyện Yên Bình',
'21315' : 'Huyện Văn Chấn - Chi cục Thuế khu vực Nghiã Văn',
'21317' : 'Chi cục Thuế Huyện Trạm Tấu',
'70907' : 'Chi cục Thuế Huyện Dương Minh Châu',
'11711' : 'Chi cục Thuế Huyện Yên Mô',
'11713' : 'Chi cục Thuế Huyện Yên Khánh',
'11715' : 'Chi cục Thuế Huyện Kim Sơn',
'40101' : 'Chi cục Thuế Thành phố Thanh Hoá',
'40103' : 'Chi cục Thuế Thị xã Bỉm Sơn',
'40105' : 'Chi cục Thuế Thị xã Sầm Sơn',
'40107' : 'Chi cục Thuế Huyện Mường Lát',
'40109' : 'Chi cục Thuế Huyện Quan Hoá',
'40111' : 'Chi cục Thuế Huyện Quan Sơn',
'60505' : 'Chi cục Thuế Huyện Ea Súp',
'20501' : 'Chi cục Thuế Thành phố Lào Cai',
'20503' : 'Chi cục Thuế Thị xã Cam Đường (hêt h.lực)',
'20505' : 'Chi cục Thuế Huyện Mường Khương',
'20507' : 'Chi cục Thuế Huyện Bát Xát',
'20511' : 'Chi cục Thuế Huyện Bảo Thắng',
'20513' : 'Chi cục Thuế Huyện Sa Pa',
'20515' : 'Chi cục Thuế Huyện Bảo Yên',
'20517' : 'Chi cục Thuế Huyện Than Uyên (hêt h.lực)',
'30501' : 'Chi cục Thuế Thành phố Hoà Bình',
'30503' : 'Chi cục Thuế Huyện Đà Bắc',
'30505' : 'Chi cục Thuế Huyện Mai Châu',
'30509' : 'Chi cục Thuế Huyện Lương Sơn',
'30511' : 'Chi cục Thuế Huyện Kim Bôi',
'30513' : 'Chi cục Thuế Huyện Tân Lạc',
'30515' : 'Chi cục Thuế Huyện Lạc Sơn',
'30517' : 'Chi cục Thuế Huyện Lạc Thuỷ',
'30519' : 'Chi cục Thuế Huyện Yên Thuỷ',
'30301' : 'Chi cục Thuế Thành phố Sơn La',
'30303' : 'Chi cục Thuế Huyện Quỳnh Nhai',
'30305' : 'Chi cục Thuế Huyện Mường La',
'30309' : 'Chi cục Thuế Huyện Bắc Yên',
'30311' : 'Chi cục Thuế Huyện Phù Yên',
'30313' : 'Chi cục Thuế Huyện Mai Sơn',
'30315' : 'Chi cục Thuế Huyện Sông Mã',
'30317' : 'Chi cục Thuế Huyện Yên Châu',
'30319' : 'Chi cục Thuế Huyện Mộc Châu',
'30101' : 'Chi cục TP Điện Biên Phủ',
'30103' : 'Chi cục Thuế Thị xã Mường Lay',
'30105' : 'Chi cục Thuế Huyện Mường Tè - Đã chuyển sang Lai Châu',
'30107' : 'Chi cục Thuế Huyện Phong Thổ - Đã chuyển sang Lai Châu',
'30111' : 'Chi cục Thuế Huyện Mường Chà',
'30113' : 'Chi cục Thuế Huyện Tủa Chùa',
'30115' : 'Chi cục Thuế Huyện Tuần Giáo',
'30117' : 'Chi cục Thuế Huyện Điện Biên',
'30119' : 'Chi cục Thuế Huyện Điện Biên Đông',
'22501' : 'Chi cục Thuế TP Hạ Long',
'22505' : 'Thành phố Uông Bí - Chi cục Thuế khu vực Uông Bí - Quảng Yên',
'22507' :  'Huyện Bình Liêu - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22509' : 'Chi cục thuế Thành phố Móng cái',
'40337' : 'Chi cục Thuế Huyện Hưng Nguyên',
'40509' : 'Chi cục Thuế Huyện Hương Sơn',
'40519' : 'Chi cục Thuế Huyện Kỳ Anh',
'40700' : 'Cục Thuế Tỉnh Quảng Bình',
'40707' : 'Chi cục Thuế H.Quảng Trạch',
'71501' : 'Chi cục Thuế Thành phố Phan Thiết',
'71509' : 'Chi cục Thuế Huyện Hàm Thuận Nam',
'71515' : 'Chi cục Thuế Huyện Đức Linh',
'71700' : 'Cục Thuế Tỉnh Bà Rịa - Vũng Tàu',
'71705' : 'Chi cục Thuế Huyện Châu Đức',
'71313' : 'Chi cục Thuế Huyện Xuân Lộc',
'71103' : 'Chi cục Thuế Thị xã Bến Cát',
'70705' : 'Chi cục Thuế Huyện Lộc Ninh',
'22511' : 'Huyện Hải Hà - Chi cục Thuế khu vực Hải Hà - Đầm Hà',
'22515' : 'Huyện Ba Chẽ - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22517' : 'Chi cục Thuế Huyện Vân Đồn',
'22519' : 'Chi cục Thuế Huyện Hoành Bồ',
'22523' : 'Chi cục Thuế Huyện Cô Tô',
'22525' : 'Thị xã Quảng Yên - Chi cục Thuế khu vực Uông Bí - Quảng Yên',
'70301' : 'Thành Phố Đà Lạt - Chi cục Thuế khu vực Đà Lạt - Lạc Dương',
'70303' : 'Chi cục Thuế Thị xã Bảo Lộc',
'70305' : 'Huyện Lạc Dương - Chi cục Thuế khu vực Đà Lạt - Lạc Dương',
'70307' : 'Chi cục Thuế Huyện Đơn Dương',
'70309' : 'Chi cục Thuế Huyện Đức Trọng',
'70311' : 'Huyện Lâm Hà - Chi cục Thuế khu vực Lâm Hà - Đam Rông',
'70313' : 'Chi cục Thuế Huyện Bảo Lâm',
'70315' : 'Chi cục Thuế Huyện Di Linh',
'70317' : 'Huyện Đạ Huoai - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'70319' : 'Huyện Đạ Tẻh - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'70321' : 'Huyện Cát Tiên - Chi cục Thuế khu vực Đạ Huoai - Đạ Tẻl - Cát Tiên',
'60301' : 'Chi cục Thuế Thành phố Pleiku',
'60303' : 'Chi cục Thuế Huyện Kbang',
'60305' : 'Chi cục Thuế Huyện Mang Yang',
'60307' : 'Chi cục Thuế Huyện Chư Păh',
'60309' : 'Chi cục Thuế Huyện Ia Grai',
'60311' : 'Chi cục Thuế Thị xã An Khê',
'60313' : 'Chi cục Thuế Huyện Kông Chro',
'60315' : 'Chi cục Thuế Huyện Đức Cơ',
'60317' : 'Chi cục Thuế Huyện Chư Prông',
'60319' : 'Chi cục Thuế Huyện Chư Sê',
'60323' : 'Chi cục Thuế Huyện Krông Pa',
'60501' : 'Chi cục Thuế Thành phố Buôn Ma Thuột',
'60509' : 'Thị xã Buôn Hồ- Chi cục Thuế khu vực Buôn Hồ-Krông Năng',
'60511' : 'Chi cục Thuế Huyện Buôn Đôn',
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
'60109' : 'Chi cục Thuế Huyện Kon Plông',
'60111' : 'Chi cục Thuế Huyện Đák Hà',
'60113' : 'Chi cục Thuế Huyện Sa Thầy',
'70909' : 'Chi cục Thuế Huyện Châu Thành',
'70911' : 'Chi cục Thuế Huyện Hoà Thành',
'70913' : 'Chi cục Thuế Huyện Bến Cầu',
'70917' : 'Chi cục Thuế Huyện Trảng Bàng',
'50301' : 'Chi cục Thuế Thành phố Tam Kỳ',
'50303' : 'Chi cục Thuế Thành phố Hội An',
'50305' : 'Chi cục thuế Huyện Đông Giang',
'50307' : 'Chi cục Thuế Huyện Đại Lộc',
'50309' : 'Chi cục Thuế Huyện Điện Bàn',
'50311' : 'Chi cục Thuế Huyện Duy Xuyên',
'50313' : 'Chi cục Thuế Huyện Nam Giang',
'50315' : 'Chi cục Thuế Huyện Thăng Bình',
'50317' : 'Chi cục Thuế Huyện Quế Sơn',
'50319' : 'Chi cục Thuế Huyện Hiệp Đức',
'50321' : 'Chi cục Thuế Huyện Tiên Phước',
'50323' : 'Chi cục Thuế Huyện Phước Sơn',
'50325' : 'Chi cục Thuế Huyện Núi Thành',
'50327' : 'Chi cục thuế Huyện Bắc Trà My',
'50701' : 'Chi cục Thuế Thành phố Quy Nhơn',
'50703' : 'Chi cục Thuế Huyện An Lão',
'50705' : 'Chi cục Thuế Huyện Hoài Nhơn',
'50707' : 'Chi cục Thuế Huyện Hoài ân',
'50709' : 'Chi cục Thuế Huyện Phù Mỹ',
'50711' : 'Chi cục Thuế Huyện Vĩnh Thạnh',
'50713' : 'Chi cục Thuế Huyện Phù Cát',
'50715' : 'Chi cục Thuế Huyện Tây Sơn',
'50719' : 'Chi cục Thuế Huyện Tuy Phước',
'50721' : 'Chi cục Thuế Huyện Vân Canh',
'51101' : 'Chi cục Thuế Thành phố Nha Trang',
'51103' : 'Chi cục Thuế Huyện Vạn Ninh',
'51107' : 'Chi cục Thuế Huyện Diên Khánh',
'51109' : 'Chi cục Thuế Thành Phố Cam Ranh',
'51111' : 'Chi cục Thuế Huyện Khánh Vĩnh',
'51113' : 'Chi cục Thuế Huyện Khánh Sơn',
'51115' : 'Chi cục Thuế Huyện Trường Sa',
'50501' : 'Chi cục Thuế Thành phố Quảng Ngãi',
'50503' : 'Chi cục Thuế Huyện Lý Sơn',
'50505' : 'Chi cục Thuế Huyện Bình Sơn',
'50507' : 'Huyện Trà Bồng - Chi cục Thuế khu vực Trà Bồng - Tây Trà',
'50509' : 'Chi cục Thuế Huyện Sơn Tịnh',
'50511' : 'Huyện Sơn Tây - Chi cục Thuế khu vực Sơn Hà - Sơn Tây',
'50513' : 'Huyện Sơn Hà - Chi cục Thuế khu vực Sơn Hà - Sơn Tây',
'50515' : 'Chi cục Thuế Huyện Tư Nghĩa',
'50517' : 'Chi cục Thuế Huyện Nghĩa Hành',
'50519' : 'Chi cục Thuế Huyện Minh Long',
'50521' : 'Chi cục Thuế Huyện Mộ Đức',
'50523' : 'Huyện Đức Phổ - Chi cục Thuế khu vực Đức Phổ - Ba Tơ',
'50525' : 'Huyện Ba Tơ - Chi cục Thuế khu vực Đức Phổ - Ba Tơ',
'50901' : 'Chi cục Thuế TP  Tuy Hoà',
'50903' : 'Chi cục Thuế Huyện Đồng Xuân',
'50905' : 'Chi cục Thuế Thị Xã Sông Cầu',
'50907' : 'Chi cục Thuế Huyện Tuy An',
'50909' : 'Chi cục Thuế Huyện Sơn Hoà',
'50911' : 'Chi cục Thuế Huyện Đông Hoà',
'50913' : 'Chi cục Thuế Huyện Sông Hinh',
'70501' : 'Chi cục Thuế TP. Phan Rang - Tháp Chàm',
'70915' : 'Chi cục thuế huyện Gò Dầu',
'70115' : 'Chi cục Thuế Quận 8',
'70123' : 'Chi cục Thuế Quận 12',
'70131' : 'Chi cục Thuế Quận Phú Nhuận',
'70141' : 'Chi cục Thuế Huyện Nhà Bè',
'50105' : 'Quận Sơn Trà- Chi cục Thuế khu vực Sơn Trà- Ngũ Hành Sơn',
'10911' : 'Huyện Phủ Cừ - Chi cục thuế khu vực Tiên Lữ- Phủ Cừ',
'80103' : 'Chi cục Thuế Huyện Tân Hưng',
'80113' : 'Chi cục Thuế Huyện Đức Huệ',
'80123' : 'Chi cục Thuế Huyện Tân Trụ',
'80703' : 'Chi cục Thuế Thị xã Gò Công',
'81309' : 'Chi cục Thuế Huyện Châu Thành',
'81319' : 'Chi cục Thuế Huyện Vĩnh Thuận',
'81505' : 'Chi cục Thuế Quận Ô Môn',
'81900' : 'Cục Thuế Tỉnh Sóc Trăng',
'81905' : 'Chi cục Thuế Huyện Long Phú',
'22301' : 'Chi cục Thuế Thành phố Bắc Ninh',
'22311' : 'Chi cục Thuế Huyện Lương Tài',
'21700' : 'Cục Thuế Tỉnh Phú Thọ',
'21717' : 'Chi cục Thuế Huyện Tam Nông',
'40121' : 'Chi cục Thuế Huyện Ngọc Lặc',
'40131' : 'Chi cục Thuế Huyện Hà Trung',
'40139' : 'Chi cục Thuế Huyện Hậu Lộc',
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
'11105' : 'Chi cục Thuế Huyện Kim Bảng',
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
'10903' : 'Chi cục Thuế Huyện Mỹ Hào',
'10905' : 'Chi cục Thuế Huyện Khoái Châu',
'10907' : 'Chi cục Thuế Huyện Ân Thi',
'10909' : 'Huyện Kim Động - Chi cục thuế khu vực thành phố Hưng Yên- Kim Động',
'10913' : 'Huyện Tiên Lữ - Chi cục thuế khu vực Tiên Lữ- Phủ Cừ',
'11501' : 'Chi cục Thuế Thành phố Thái Bình',
'11503' : 'Chi cục Thuế Huyện Quỳnh Phụ',
'11505' : 'Chi cục Thuế Huyện Hưng Hà',
'11507' : 'Chi cục Thuế Huyện Thái Thuỵ',
'11509' : 'Chi cục Thuế Huyện Đông Hưng',
'11511' : 'Chi cục Thuế Huyện Vũ Thư',
'11513' : 'Chi cục Thuế Huyện Kiến Xương',
'11515' : 'Chi cục Thuế Huyện Tiền hải',
'80101' : 'Chi cục Thuế Thành phố Tân An',
'80105' : 'Chi cục Thuế Huyện Vĩnh Hưng',
'80107' : 'Chi cục Thuế Huyện Mộc Hoá',
'80109' : 'Chi cục Thuế Huyện Tân Thạnh',
'80111' : 'Chi cục Thuế Huyện Thạnh Hoá',
'80115' : 'Chi cục Thuế Huyện Đức Hoà',
'80117' : 'Chi cục Thuế Huyện Bến Lức',
'80119' : 'Chi cục Thuế Huyện Thủ Thừa',
'80121' : 'Chi cục Thuế Huyện Châu Thành',
'80125' : 'Chi cục Thuế Huyện Cần Đước',
'80127' : 'Chi cục Thuế Huyện Cần Giuộc',
'80701' : 'Chi cục Thuế Thành phố Mỹ Tho',
'80705' : 'Chi cục Thuế Huyện Tân Phước',
'80707' : 'Chi cục Thuế Huyện Châu Thành',
'80709' : 'Chi cục Thuế Huyện Cai Lậy',
'11317' : 'Chi cục Thuế Huyện Nghĩa Hưng',
'11319' : 'Chi cục Thuế Huyện Hải Hậu',
'11101' : 'Chi cục Thuế Thành phố Phủ Lý',
'80711' : 'Chi cục Thuế Huyện Chợ Gạo',
'10101' : 'Chi cục Thuế Quận Ba Đình',
'10103' : 'Chi cục Thuế Quận Tây Hồ',
'10105' : 'Chi cục Thuế Quận Hoàn Kiếm',
'10107' : 'Chi cục Thuế Quận Hai Bà Trưng',
'10109' : 'Chi cục Thuế Quận Đống đa',
'10111' : 'Chi cục Thuế Quận Thanh Xuân',
'10113' : 'Chi cục Thuế Quận Cầu Giấy',
'10115' : 'Chi cục Thuế Huyện Sóc sơn',
'10117' : 'Chi cục Thuế Huyện Đông Anh',
'10119' : 'Chi cục Thuế Huyện Gia Lâm',
'10121' : 'Chi cục Thuế Huyện Từ Liêm (Cũ)',
'10123' : 'Chi cục Thuế Huyện Thanh Trì',
'10301' : 'Chi cục Thuế Quận Hồng Bàng',
'10303' : 'Chi cục Thuế Quận Ngô Quyền',
'10305' : 'Chi cục Thuế Quận Lê Chân',
'10307' : 'Chi cục Thuế Quận Kiến An',
'10309' : 'Chi cục Thuế Quận Đồ Sơn',
'10311' : 'Chi cục Thuế Huyện Thuỷ Nguyên',
'10313' : 'Chi cục Thuế Huyện An Dương',
'10315' : 'Chi cục Thuế Huyện An Lão',
'10317' : 'Chi cục Thuế Huyện Kiến Thuỵ',
'10319' : 'Chi cục Thuế Huyện Tiên Lãng',
'10321' : 'Chi cục Thuế Huyện Vĩnh Bảo',
'10323' : 'Chi cục Thuế Huyện Cát Hải',
'10325' : 'Chi cục Thuế Huyện Bạch Long Vĩ',
'70101' : 'Chi cục Thuế Quận 1',
'70103' : 'Chi cục Thuế Quận 2',
'70105' : 'Chi cục Thuế Quận 3',
'81100' : 'Cục Thuế Tỉnh Bến Tre',
'70107' : 'Chi cục Thuế Quận 4',
'70109' : 'Chi cục Thuế Quận 5',
'70111' : 'Chi cục Thuế Quận 6',
'71701' : 'Chi cục Thuế Thành phố Vũng Tàu',
'71703' : 'Chi cục Thuế Thành Phố Bà Rịa',
'71707' : 'Chi cục Thuế Huyện Xuyên Mộc',
'71709' : 'Chi cục Thuế Huyện Tân Thành',
'71711' : 'Chi cục thuế Huyện Long Điền',
'71713' : 'Chi cục Thuế Huyện Côn Đảo',
'71301' : 'Chi cục Thuế TP Biên Hòa',
'71303' : 'Chi cục Thuế Huyện Tân Phú',
'71305' : 'Chi cục Thuế Huyện Định Quán',
'71307' : 'Chi cục Thuế Huyện Vĩnh Cửu',
'70113' : 'Chi cục Thuế Quận 7',
'70117' : 'Chi cục Thuế Quận 9',
'70119' : 'Chi cục Thuế Quận 10',
'70121' : 'Chi cục Thuế Quận 11',
'70125' : 'Chi cục Thuế Quận Gò Vấp',
'70127' : 'Chi cục Thuế Quận Tân Bình',
'70129' : 'Chi cục Thuế Quận Bình Thạnh',
'70133' : 'Chi cục Thuế Quận Thủ Đức',
'70135' : 'Chi cục Thuế Huyện Củ Chi',
'70137' : 'Chi cục Thuế Huyện Hóc Môn',
'70139' : 'Chi cục Thuế Huyện Bình Chánh',
'70143' : 'Chi cục Thuế Huyện Cần Giờ',
'50101' : 'Chi cục Thuế Quận Hải Châu',
'50103' : 'Quận Thanh Khê- Chi cục Thuế khu vực Thanh Khê- Liên Chiểu',
'50107' : 'Quận Ngũ Hành Sơn- Chi cục Thuế khu vực Sơn Trà- Ngũ Hành Sơn',
'50109' : 'Quận Liên Chiểu- Chi cục Thuế khu vực Thanh Khê- Liên Chiểu',
'50111' : 'Chi cục Thuế Huyện Hoà Vang',
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
'11301' : 'Chi cục Thuế Thành phố Nam Đinh',
'11303' : 'Chi cục Thuế Huyện Vụ Bản',
'11305' : 'Chi cục Thuế Huyện Mỹ Lộc',
'11307' : 'Chi cục Thuế Huyện ý Yên',
'11309' : 'Chi cục Thuế Huyện Nam Trực',
'11311' : 'Chi cục Thuế Huyện Trực Ninh',
'11313' : 'Chi cục Thuế Huyện Xuân Trường',
'11315' : 'Chi cục Thuế Huyện Giao Thuỷ',
'11703' : 'Chi cục Thuế Thị xã Tam Điệp',
'11705' : 'Chi cục Thuế Huyện Nho quan',
'11707' : 'Chi cục Thuế Huyện Gia Viễn',
'81311' : 'Chi cục Thuế Huyện Giồng Riềng',
'81313' : 'Chi cục Thuế Huyện Gò Quao',
'81315' : 'Chi cục Thuế Huyện An Biên',
'81317' : 'Chi cục Thuế Huyện An Minh',
'81321' : 'Chi cục Thuế Huyện Phú Quốc',
'81501' : 'Chi cục Thuế Thành phố Cần Thơ (hêt h.lực)',
'81503' : 'Chi cục Thuế  Quận Thốt Nốt',
'81507' : 'Chi cục Thuế Huyện Châu Thành (hêt h.lực)',
'81509' : 'Chi cục Thuế Huyện Phụng Hiệp (hêt h.lực)',
'81513' : 'Chi cục Thuế Huyện Long Mỹ (hêt h.lực)',
'82101' : 'Chi cục Thuế  thành phố Bạc Liêu',
'82103' : 'Chi cục Thuế Huyện Hồng Dân',
'82105' : 'Chi cục Thuế Huyện Vĩnh Lợi',
'82107' : 'Chi cục Thuế Huyện Giá Rai',
'82301' : 'Chi cục Thuế TP Cà Mau',
'82303' : 'Chi cục Thuế Huyện Thới Bình',
'82305' : 'Chi cục Thuế Huyện U Minh',
'82307' : 'Chi cục Thuế Huyện Trần Văn Thời',
'82309' : 'Chi cục Thuế Huyện Cái Nước                                 ',
'82311' : 'Chi cục Thuế Huyện Đầm Dơi',
'82313' : 'Huyện Ngọc Hiển- Chi cục Thuế khu vực I',
'81701' : 'Chi cục Thuế Thị xã Trà Vinh',
'81703' : 'Chi cục Thuế Huyện Càng Long',
'81705' : 'Chi cục Thuế Huyện Châu Thành',
'81707' : 'Chi cục Thuế Huyện Cầu Kè',
'81709' : 'Chi cục Thuế Huyện Tiểu Cần',
'81711' : 'Chi cục Thuế Huyện Cầu Ngang',
'81713' : 'Chi cục Thuế Huyện Trà Cú',
'81715' : 'Chi cục Thuế Huyện Duyên Hải',
'81903' : 'Chi cục Thuế Huyện Kế Sách',
'81907' : 'Huyện Mỹ Tú- Chi cục thuế khu vực Châu Thành',
'81909' : 'Huyện Mỹ Xuyên - Chi cục thuế khu vực thành phố Sóc Trăng',
'81911' : 'Huyện Thạnh Trị - Chi cục thuế khu vực Thạnh Trị',
'81913' : 'Chi cục Thuế Thị Xã Vĩnh Châu',
'22303' : 'Chi cục Thuế Huyện Yên Phong',
'22305' : 'Chi cục Thuế Huyện Quế Võ',
'22307' : 'Chi cục Thuế Huyện Tiên Du',
'22309' : 'Chi cục Thuế Huyện Thuận Thành',
'22101' : 'Chi cục Thuế Thành phố Bắc Giang',
'22103' : 'Chi cục Thuế Huyện Yên Thế',
'22105' : 'Chi cục Thuế Huyện Tân Yên',
'22107' : 'Chi cục Thuế Huyện Lục Ngạn',
'22109' : 'Chi cục Thuế Huyện Hiệp Hoà',
'22111' : 'Chi cục Thuế Huyện Lạng Giang',
'22113' : 'Chi cục Thuế Huyện Sơn Động',
'22115' : 'Chi cục Thuế Huyện Lục Nam',
'22117' : 'Chi cục Thuế Huyện Việt Yên',
'22119' : 'Chi cục Thuế Huyện Yên Dũng',
'21901' : 'Chi cục Thuế Thành phố Vĩnh Yên',
'21903' : 'Chi cục Thuế Huyện Lập Thạch',
'21905' : 'Chi cục Thuế Huyện Tam Dương',
'21907' : 'Chi cục Thuế Huyện Vĩnh Tường',
'21909' : 'Chi cục Thuế Huyện Yên Lạc',
'21911' : 'Chi cục Thuế Huyện Mê Linh (chuyển Hà Nội)',
'21701' : 'Chi cục Thuế Thành phố Việt Trì',
'21703' : 'Chi cục Thuế Thị xã Phú Thọ',
'21705' : 'Chi cục Thuế Huyện Đoan Hùng',
'21707' : 'Chi cục Thuế Huyện Hạ Hoà',
'21709' : 'Chi cục Thuế Huyện Thanh Ba',
'21713' : 'Chi cục Thuế Huyện Cẩm Khê',
'21715' : 'Chi cục Thuế Huyện Yên Lập',
'21719' : 'Chi cục Thuế Huyện Thanh Sơn',
'11701' : 'Chi cục Thuế Thành phố Ninh Bình',
'81301' : 'Chi cục Thuế Thành phố Rạch Giá',
'81303' : 'Chi cục Thuế Huyện Kiên Lương',
'81305' : 'Chi cục Thuế Huyện Hòn Đất',
'71511' : 'Chi cục Thuế Huyện Tánh Linh',
'71513' : 'Chi cục Thuế Thị xã La Gi',
'71517' : 'Chi cục Thuế Huyện Phú Quý',
'71309' : 'Chi cục Thuế Huyện Thống Nhất',
'71311' : 'Chi cục Thuế huyện Cẩm Mỹ',
'71315' : 'Chi cục Thuế Huyện Long Thành',
'71317' : 'Chi cục Thuế Huyện Nhơn Trạch',
'71105' : 'Chi cục Thuế Thị xã Tân Uyên',
'71107' : 'Chi cục Thuế thị xã Thuận An',
'70701' : 'Chi cục Thuế Huyện Đồng Phú',
'70703' : 'Chi cục Thuế Huyện Phước Long',
'70707' : 'Chi cục Thuế Huyện Bù Đăng',
'70709' : 'Chi cục Thuế Huyện Bình Long',
'70901' : 'Chi cục Thuế Thành phố Tây Ninh',
'70903' : 'Chi cục Thuế Huyện Tân Biên',
'11709' : 'Chi cục Thuế Huyện Hoa Lư',
'80713' : 'Chi cục Thuế Huyện Cái Bè',
'80715' : 'Chi cục Thuế Huyện Gò Công Tây',
'80717' : 'Chi cục Thuế Huyện Gò Công Đông',
'81101' : 'Chi cục Thuế Thành phố Bến Tre',
'81103' : 'Chi cục Thuế Huyện Châu Thành',
'81105' : 'Chi cục Thuế Huyện Chợ Lách',
'81107' : 'Chi cục Thuế Huyện Mỏ Cày Nam',
'81109' : 'Chi cục Thuế Huyện Giồng Trôm',
'81111' : 'Chi cục Thuế Huyện Bình Đại',
'81113' : 'Chi cục Thuế Huyện Ba Tri',
'81115' : 'Chi cục Thuế Huyện Thạnh Phú',
'80301' : 'Chi cục Thuế Thành phố Cao Lãnh',
'80303' : 'Chi cục Thuế Thị xã Sa Đéc',
'80305' : 'Chi cục Thuế Huyện Tân Hồng',
'80307' : 'Chi cục Thuế Huyện Hồng Ngự',
'80309' : 'Chi cục Thuế Huyện Tam Nông',
'80311' : 'Chi cục Thuế Huyện Thanh Bình',
'80313' : 'Chi cục Thuế Huyện Tháp Mười',
'80315' : 'Chi cục Thuế Huyện Cao Lãnh',
'80317' : 'Chi cục Thuế Huyện Lấp Vò',
'80319' : 'Chi cục Thuế Huyện Lai Vung',
'80321' : 'Chi cục Thuế Huyện Châu Thành',
'80901' : 'Chi cục Thuế Thành phố  Vĩnh Long',
'80903' : 'Chi cục Thuế Huyện Long Hồ',
'80905' : 'Chi cục Thuế Huyện Mang Thít',
'80907' : 'Chi cục Thuế Huyện Bình Minh',
'80909' : 'Chi cục Thuế Huyện Tam Bình',
'80911' : 'Chi cục Thuế Huyện Trà Ôn',
'80913' : 'Chi cục Thuế Huyện Vũng Liêm',
'80501' : 'Chi cục thuế Tp. Long Xuyên',
'80503' : 'Chi cục Thuế Thành phố Châu Đốc',
'80505' : 'Chi cục Thuế Huyện An Phú',
'80509' : 'Chi cục Thuế Huyện Phú Tân',
'80511' : 'Chi cục Thuế Huyện Châu Phú',
'80513' : 'Chi cục Thuế Huyện Tịnh Biên',
'80515' : 'Chi cục Thuế Huyện Tri Tôn',
'80517' : 'Chi cục Thuế Huyện Chợ Mới',
'80519' : 'Chi cục Thuế Huyện Châu Thành',
'80521' : 'Chi cục Thuế Huyện Thoại Sơn',
'71503' : 'Chi cục Thuế Huyện Tuy Phong',
'71505' : 'Chi cục Thuế Huyện Bắc Bình',
'71507' : 'Chi cục Thuế Huyện Hàm Thuận Bắc',
'40119' : 'Chi cục Thuế Huyện Thạch Thành',
'40123' : 'Chi cục Thuế Huyện Thường Xuân',
'40125' : 'Chi cục Thuế Huyện Như Xuân',
'40127' : 'Chi cục Thuế Huyện Như Thanh',
'40129' : 'Chi cục Thuế Huyện Vĩnh Lộc',
'40133' : 'Chi cục Thuế Huyện Nga Sơn',
'40135' : 'Chi cục Thuế Huyện Yên Định',
'40137' : 'Chi cục Thuế Huyện Thọ Xuân',
'40141' : 'Chi cục Thuế Huyện Thiệu Hoá',
'40143' : 'Chi cục Thuế Huyện Hoằng Hoá',
'40145' : 'Chi cục Thuế Huyện Đông Sơn',
'40147' : 'Chi cục Thuế Huyện Triệu Sơn',
'40149' : 'Chi cục Thuế Huyện Quảng Xương',
'40151' : 'Chi cục Thuế Huyện Nông Cống',
'40153' : 'Chi cục Thuế Huyện Tĩnh Gia',
'40301' : 'Chi cục Thuế Thành phố Vinh',
'40303' : 'Chi cục Thuế Thị xã Cửa Lò',
'40305' : 'Chi cục Thuế Huyện Quế Phong',
'40307' : 'Chi cục Thuế Huyện Quỳ Châu',
'40309' : 'Chi cục Thuế Huyện Kỳ Sơn',
'40311' : 'Chi cục Thuế Huyện Quỳ Hợp',
'40313' : 'Chị Cục thuế Huyện Nghĩa Đàn',
'40315' : 'Chi cục Thuế Huyện Tương Dương',
'40317' : 'Chi cục Thuế Huyện Quỳnh Lưu',
'30500' : 'Cục Thuế Tỉnh Hoà Bình',
'70713' : 'Chi cục Thuế Huyện Hớn Quản',
'70715' : 'Chi cục Thuế Huyện Bù Gia Mập',
'81901' : 'Thành phố Sóc Trăng- Chi cục thuế khu vực thành phố Sóc Trăng',
'40319' : 'Chi cục Thuế Huyện Tân Kỳ',
'40321' : 'Chi cục Thuế Huyện Con Cuông',
'40323' : 'Chi cục Thuế Huyện Yên Thành',
'40325' : 'Chi cục Thuế Huyện Diễn Châu',
'40327' : 'Chi cục Thuế Huyện Anh Sơn',
'40329' : 'Chi cục Thuế Huyện Đô Lương',
'40331' : 'Chi cục Thuế Huyện Thanh Chương',
'40333' : 'Chi cục Thuế Huyện Nghi Lộc',
'40335' : 'Chi cục Thuế Huyện Nam Đàn',
'40501' : 'Chi cục Thuế Thành phố Hà Tĩnh',
'40503' : 'Chi cục Thuế Thị xã Hồng Lĩnh',
'40505' : 'Chi cục Thuế Huyện Nghi Xuân',
'40507' : 'Chi cục Thuế Huyện Đức Thọ',
'40511' : 'Chi cục Thuế Huyện Can Lộc',
'40513' : 'Chi cục Thuế Huyện Thạch Hà',
'40515' : 'Chi cục Thuế Huyện Cẩm Xuyên',
'40517' : 'Chi cục Thuế Huyện Hương Khê',
'40701' : 'Chi cục Thuế Thành phố Đồng Hới',
'40703' : 'Chi cục Thuế Huyện Tuyên Hoá',
'40705' : 'Chi cục Thuế Huyện Minh Hoá',
'40709' : 'Chi cục Thuế Huyện Bố Trạch',
'40711' : 'Chi cục Thuế Huyện Quảng Ninh',
'40713' : 'Chi cục Thuế Huyện Lệ Thuỷ',
'40901' : 'Chi cục Thuế Thành phố Đông Hà',
'40903' : 'Chi cục Thuế Thị xã Quảng Trị',
'40905' : 'Chi cục Thuế Huyện Vĩnh Linh',
'40907' : 'Chi cục Thuế Huyện Gio Linh',
'40909' : 'Chi cục Thuế Huyện Cam Lộ',
'40911' : 'Chi cục Thuế Huyện Triệu Phong',
'40913' : 'Chi cục Thuế Huyện Hải Lăng',
'40915' : 'Chi cục Thuế Huyện Hướng Hoá',
'40917' : 'Chi cục Thuế Huyện Đa Krông',
'41101' : 'CCT  Thành phố Huế',
'41103' : 'Huyện Phong Điền- Chi cục thuế khu vực Hương Điền',
'41105' : 'Huyện Quảng Điền- Chi cục thuế khu vực Hương Điền',
'41107' : 'Thị xã Hương Trà- Chi cục thuế khu vực Hương Điền',
'41109' : 'Huyện Phú Vang- Chi cục thuế khu vực Hương Phú',
'41111' : 'Thị xã Hương Thủy- Chi cục thuế khu vực Hương Phú',
'41113' : 'CCT Huyện Phú Lộc',
'41115' : 'CCT Huyện A Lưới',
'41117' : 'CCT Huyện Nam Đông',
'40113' : 'Chi cục Thuế Huyện Bá Thước',
'40115' : 'Chi cục Thuế Huyện Cẩm Thuỷ',
'40117' : 'Chi cục Thuế Huyện Lang Chánh',
'70900' : 'Cục Thuế Tỉnh Tây Ninh',
'30121' : 'Chi cục Thuế Huyện Mường ảng',
'60329' : 'Chi cục Thuế Huyện Phú Thiện',
'40523' : 'Chi cục Thuế Huyện Lộc Hà',
'51117' : 'Chi cục Thuế Huyện Cam Lâm',
'60321' : 'Chi cục Thuế Thị xã Ayun Pa',
'10327' : 'Chi cục Thuế Quận Dương Kinh',
'60537' : 'Huyện Cư Kuin- Chi cục Thuế khu vực Krông Ana- Cư Kuin',
'80908' : 'Chi cục Thuế huyện Bình Tân',
'70905' : 'Chi cục Thuế Huyện Tân Châu',
'50717' : 'Chi cục Thuế Huyện An Nhơn',
'51105' : 'Chi cục Thuế Thị xã Ninh Hoà',
'50500' : 'Cục Thuế Tỉnh Quảng Ngãi',
'70503' : 'Huyện Ninh Sơn- Chi cục thuế khu vực Ninh Sơn- Bác Ái',
'21505' : 'Huyện Định Hóa- Chi cục thuế khu vực Phú Lương- Định Hóa',
'21515' : 'Huyện Phú Bình- Chi cục thuế khu vực Phổ Yên- Phú Bình',
'20300' : 'Cục Thuế Tỉnh Cao Bằng',
'20101' : 'Chi cục Thuế Thị xã Hà Giang',
'20109' : 'Chi cục Thuế Huyện Quản Bạ',
'21300' : 'Cục Thuế Tỉnh Yên Bái',
'20509' : 'Chi cục Thuế Huyện Bắc Hà',
'30507' : 'Chi cục Thuế Huyện Kỳ Sơn',
'30300' : 'Cục Thuế Tỉnh Sơn La',
'22503' : 'Chi cục Thuế Thành phố Cẩm Phả',
'22513' : 'Huyện Tiên Yên - Chi cục Thuế khu vực Tiên Yên - Bình Liêu - Ba Chẽ',
'22521' : 'Chi cục Thuế Huyện Đông Triều',
'60300' : 'Cục Thuế Tỉnh Gia Lai',
'60507' : 'Huyện Krông Năng- Chi cục Thuế khu vực Buôn Hồ-Krông Năng',
'60535' : 'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60107' : 'Chi cục Thuế Huyện Đắk Tô',
'60503' : 'Huyện Ea H`Leo-Chi cục Thuế khu vực Ea H`Leo-Krông Búk',
'20713' : 'Chi cục Thuế Huyện Chợ mới',
'60517' : 'Huyện M`Drắc- Chi cục Thuế khu vực  Ea Kar-M`Drắc',
'60513' : 'Chi cục Thuế Huyện Cư M`gar',
'60533' : 'Chi cục Thuế Huyện Đắk R`Lấp (hêt h.lực)',
'81325' : 'Chi cục thuế Thị xã Hà Tiên',
'71109' : 'Chi cục Thuế thị xã Dĩ An',
'71111' : 'Chi cục Thuế Huyện Phú Giáo',
'71113' : 'Chi cục Thuế Huyện Dầu Tiếng',
'81515' : 'Chi cục Thuế Huyện Vị Thuỷ (hêt h.lực)',
'10915' : 'Chi cục Thuế Huyện Văn Giang',
'10917' : 'Chi cục Thuế Huyện Văn Lâm',
'10919' : 'Chi cục Thuế Huyện Yên Mỹ',
'70711' : 'Chi cục thuế Thị xã Đồng Xoài',
'21913' : 'Chi cục Thuế Huyện Bình Xuyên',
'21721' : 'Chi cục Thuế Huyện Lâm Thao',
'21723' : 'Chi cục Thuế Huyện Thanh Thuỷ',
'60325' : 'Chi cục Thuế Huyện Đắk Đoa',
'82109' : 'Chi cục Thuế Huyện Phước Long',
'20323' : 'Chi cục Thuế  Huyện Bảo Lâm',
'40521' : 'Chi cục thuế Huyện Vũ Quang',
'81517' : 'Chi cục Thuế H. Châu Thành A (hêt h.lực)',
'70509' : 'Huyện Bác Ái- Chi cục thuế khu vực Ninh Sơn- Bác Ái',
'20521' : 'Chi cục Thuế Huyện Si Ma Cai',
'22313' : 'Chi cục Thuế Thị xã Từ Sơn',
'22527': 'Huyện Đầm Hà - Chi cục Thuế khu vực Hải Hà - Đầm Hà',
'22315' : 'Chi cục Thuế Huyện Gia Bình',
'50915' : 'Chi cục Thuế Huyện Phú Hoà',
'20318' : 'Chi cục thuế Huyện Phục Hoà',
'30104' : 'Chi cục thuế Huyện Mường Nhé',
'30510' : 'Chi cục Thuế Huyện Cao Phong',
'60108' : 'Chi cục thuế Huyện Kon Rẫy',
'60532' : 'Chi cục thuế Huyện Đắk Song (hêt h.lực)',
'81906' : 'Chi cục thuế Huyện Cù Lao Dung',
'82111' : 'Chi cục thuế Huyện Đông Hải',
'10304' : 'Chi cục Thuế Quận Hải An',
'60320' : 'Chi cục Thuế Huyện IaPa',
'70710' : 'Chi cục Thuế Huyện Chơn Thành',
'70706' : 'Chi cục Thuế Huyện Bù Đốp',
'10108' : 'Chi cục thuế Quận Hoàng Mai',
'10106' : 'Chi cục thuế Quận Long Biên',
'20704' : 'Chi cục thuế Huyện Pác Nặm',
'50304' : 'Chi cục thuế Huyện Tây Giang',
'50329' : 'Chi cục thuế Huyện Nam Trà My',
'50508' : 'Huyện Tây Trà - Chi cục Thuế khu vực Trà Bồng - Tây Trà',
'30321' : 'Chi cục Thuế Huyện Sốp Cộp',
'21902' : 'Chi cục Thuế Thị xã Phúc Yên',
'21904' : 'Chi cục Thuế Huyện Tam đảo',
'70128' : 'Chi cục thuế Quận Tân phú',
'70134' : 'Chi cục thuế Quận Bình Tân',
'71308' : 'Chi cục thuế Huyện Trảng Bom',
'71302' : 'Chi cục thuế TX Long khánh',
'82308' : 'Chi cục Thuế Huyện Phú Tân',
'82312' : 'Huyện Năm Căn - Chi cục Thuế khu vực I',
'20118' : 'Chi cục thuế Huyện Quang Bình',
'81912' : 'Thị xã Ngã Năm - Chi cục thuế khu vực Thạnh Trị',
'81519' : 'Chi cục Thuế Quận Ninh Kiều',
'81521' : 'Chi cục Thuế Quận Bình Thuỷ',
'81523' : 'Chi cục Thuế Quận Cái Răng',
'81525' : 'Chi cục Thuế Huyện Vĩnh Thạnh',
'81527' : 'Chi cục Thuế Huyện Cờ Đỏ',
'81529' : 'Chi cục Thuế Huyện Phong Điền',
'60327' : 'Chi cục Thuế Huyện ĐakPơ',
'71712' : 'Chi cục Thuế Huyện Đất đỏ',
'60600' : 'Cục Thuế Tỉnh Đắk Nông',
'81600' : 'Cục Thuế Tỉnh Hậu Giang',
'30200' : 'Cục Thuế Tỉnh Lai Châu',
'81601' : 'Chi cục Thuế Thành phố Vị Thanh',
'81603' : 'CCThuế Huyện Châu Thành A',
'81605' : 'Chi cục Thuế Huyện Châu Thành',
'81607' : 'Chi cục Thuế Thị  Xã Ngã Bảy',
'81609' : 'Chi cục Thuế Huyện Vị Thủy',
'81611' : 'Chi cục Thuế Huyện Long Mỹ',
'60601' : 'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60603' : 'Chi cục Thuế Huyện Cư Jút',
'60605' : 'Chi cục Thuế Huyện Krông Nô',
'60607' : 'Chi cục Thuế Huyện Đắk Mil',
'60609' : 'Chi cục Thuế Huyện Đắk Song',
'60611' : 'Chi cục Thuế Huyện Đắk R`Lấp',
'30201' : 'Chi cục Thuế Huyện Mường Tè',
'30203' : 'Chi cục Thuế Huyện Phong Thổ',
'30205' : 'Chi cục Thuế Huyện Tam Đường',
'30207' : 'Chi cục Thuế Huyện Sìn Hồ',
'30209' : 'Chi cục Thuế Huyện Than Uyên',
'70323' : 'Huyện Đam Rông - Chi cục Thuế khu vực Lâm Hà - Đam Rông',
'60115' : 'Chi cục Thuế Huyện Tu Mơ Rông',
'50912' : 'Chi cục Thuế Huyện Tây Hoà',
'40919' : 'Chi cục Thuế Huyện  Đảo Cồn Cỏ',
'60615' : 'Chi cục thuế Huyện Đắk Glong',
'82106' : 'Chi cục thuế Huyện Hoà Bình',
'60613' : 'Chi cục Thuế Thị xã Gia Nghĩa',
'70511' : 'Huyện Thuận Bắc- Chi cục thuế khu vực Ninh Hải- Thuận Bắc',
'71514' : 'Chi cục Thuế Huyện Hàm Tân',
'50115' : 'Chi cục thuế Quận Cẩm Lệ',
'80719' : 'Chi cục Thuế Huyện Tân Phú Đông',
'10125' : 'Chi cục Thuế Huyện Mê Linh',
'40314' : 'Chi cục Thuế Thị xã Thái Hoà',
'10511' : 'Chi cục Thuế Huyện Thạch Thất (hết h.lực)',
'10521' : 'Chi cục Thuế Huyện Thường Tín (hết h.lực)',
'10127' : 'Chi cục Thuế Quận Hà Đông',
'10129' : 'Chi cục Thuế Thành phố Sơn Tây',
'10131' : 'Chi cục Thuế Huyện Phúc Thọ',
'10133' : 'Chi cục Thuế Huyện Đan Phượng',
'10135' : 'Chi cục Thuế Huyện Thạch Thất',
'10137' : 'Chi cục Thuế Huyện Hoài Đức',
'10139' : 'Chi cục Thuế Huyện Quốc Oai',
'10141' : 'Chi cục Thuế Huyện Thanh Oai',
'10143' : 'Chi cục Thuế Huyện Thường Tín',
'10145' : 'Chi cục Thuế Huyện Mỹ Đức',
'10147' : 'Chi cục Thuế Huyện ứng Hoà',
'10149' : 'Chi cục Thuế Huyện Phú Xuyên',
'10151' : 'Chi cục Thuế Huyện Ba Vì',
'10153' : 'Chi cục Thuế Huyện Chương Mỹ',
'10503' : 'Chi cục Thuế Thành phố Sơn Tây (hết h.lực)',
'81531' : 'Chi Cục Thuế Huyện Thới Lai',
'21915' : 'Chi cục thuế Huyện Sông Lô',
'81108' : 'Chi cục thuế Huyện Mỏ Cày Bắc',
'80323' : 'Chi cục Thuế Thị xã Hồng Ngự',
'60539' : 'Huyện Krông Búk-Chi cục Thuế khu vực Ea H`Leo-Krông Búk',
'21711' : 'Chi cục Thuế Huyện Phù Ninh                        ',
'30108' : 'Chi cục thuế Huyện Tam Đường - Đã chuyển sang Lai Châu',
'30109' : 'Chi cục Thuế Huyện Sìn Hồ - Đã chuyển sang Lai Châu',
'81323' : 'Chi cục Thuế Huyện Kiên HảI',
'70513' : 'Chi cục thuế Huyện Thuận Nam',
'81511' : 'Chi cục Thuế thị xã Vị Thanh (hêt h.lực)',
'60527' : 'Chi cục Thuế Huyện Đắk Mil (hêt h.lực)',
'81304' : 'Chi cục Thuế Huyện Giang Thành',
'11700' : 'Cục Thuế Tỉnh Ninh Bình',
'70100' : 'Cục Thuế Thành phố Hồ Chí Minh',
'40500' : 'Cục Thuế Tỉnh Hà Tĩnh',
'20500' : 'Cục Thuế Tỉnh Lào Cai',
'71500' : 'Cục Thuế Tỉnh Bình Thuận',
'81307' : 'Chi cục Thuế Huyện Tân Hiệp',
'21720' : 'Chi cục Thuế Huyện Tân Sơn',
'40339' : 'Chi cục Thuế Thị xã  Hoàng Mai',
'21113' : 'Chi cục Thuế Huyện Lâm Bình',
'81608' : 'Chi cục thuế huyện Phụng Hiệp',
'81327' : 'Chi cục Thuế Huyện U Minh Thượng',
'50318' : 'Chi cục thuế Huyện Nông Sơn',
'50302' : 'Chi cục Thuế Huyện Phú Ninh',
'60617' : 'Chi cục Thuế Huyện Tuy Đức',
'60331' : 'Chi cục Thuế Huyện Chư Pưh',
'80129' : 'Chi cục Thuế Thị xã Kiến Tường',
'30202' : 'Chi cục Thuế Thị xã Lai Châu',
'30211' : 'Chi cục Thuế Tân Uyên',
'30213' : 'Chi cục Thuế Nậm Nhùn',
'81915' : 'Huyện Châu Thành - Chi cục thuế khu vực Châu Thành',
'81917' : 'Chi cục Thuế Huyện Trần Đề',
'30323' : 'Chi cục Thuế Huyện Vân Hồ',
'80721' : 'Chi cục Thuế Thị xã Cai Lậy',
'21101' : 'Chi cục Thuế Thành phố Tuyên Quang',
'10155' : 'Chi cục Thuế Quận Nam Từ Liêm',
'10157' : 'Chi cục Thuế Quận Bắc Từ Liêm',
'40715' : 'Chi cục Thuế Thị xã Ba Đồn',
'30307' : 'Chi cục Thuế Huyện Thuận Châu',
'11107' : 'Huyện Lý Nhân - Chi cục Thuế khu vực Duy Tiên- Lý Nhân',
'20519' : 'Chi cục Thuế Huyện Văn Bàn',
'71101' : 'Chi cục Thuế Thành phố Thủ Dầu Một',
'30123' : 'Chi cục Thuế Huyện Nậm Pồ',
'60114' : 'Chi cục Thuế Huyện Ia H’Drai',
'71115' : 'Chi cục Thuế Huyện Bàu Bàng',
'71117' : 'Chi cục Huyện Bắc Tân Uyên',
'80507' : 'Chi cục Thuế Thị xã Tân Châu',
'40520' : 'Chi cục Thuế Thị xã Kỳ Anh',
'70716' : 'Chi cục Thuế Huyện Phú Riềng',
'81612' : 'Chi cục Thuế Thị xã Long Mỹ'

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
'23002301':'phí thuộc lĩnh vực đường bộ (sử dụng đường bộ, sử dụng tạm thời lòng đường, hè phố, sát hạch lái xe)',
'23002302':'phí thuộc lĩnh vực đường thủy nội địa',
'23002303':'phí thuộc lĩnh vực đường biển',
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
'30003010':'Lệ phí đi qua vùng đất, vùng biển',
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
'49004949':'Các khoản thu khác'

 



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
'020201':'Than nâu nhập khẩu',
'020202':'Than an - tra - xít (antraxit) nhập khẩu',
'020203':'Than mỡ nhập khẩu',
'020204':'Than đá nhập khẩu khác',
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