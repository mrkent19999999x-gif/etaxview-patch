<xsl:stylesheet version="1.0"
	xmlns:ihtkk="http://www.nhantokhai.gdt.gov.vn/xslt"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<msxsl:script language="JavaScript" implements-prefix="ihtkk">
  
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

'10100':'Cục Thuế Thành phố Hà Nội',
'10101':'Chi cục Thuế Quận Ba Đình',
'10103':'Chi cục Thuế Quận Tây Hồ',
'10105':'Chi cục Thuế Quận Hoàn Kiếm',
'10106':'Chi cục thuế Quận Long Biên',
'10107':'Chi cục Thuế Quận Hai Bà Trưng',
'10108':'Chi cục thuế Quận Hoàng Mai',
'10109':'Chi cục Thuế Quận Đống đa',
'10111':'Chi cục Thuế Quận Thanh Xuân',
'10113':'Chi cục Thuế Quận Cầu Giấy',
'10115':'Chi cục Thuế Huyện Sóc sơn',
'10117':'Chi cục Thuế Huyện Đông Anh',
'10119':'Chi cục Thuế Huyện Gia Lâm',
'10121':'Chi cục Thuế Huyện Từ Liêm (hết h.lực)',
'10123':'Chi cục Thuế Huyện Thanh Trì',
'10125':'Chi cục Thuế Huyện Mê Linh',
'10127':'Chi cục Thuế Quận Hà Đông',
'10129':'Chi cục Thuế Thành phố Sơn Tây',
'10131':'Chi cục Thuế Huyện Phúc Thọ',
'10133':'Chi cục Thuế Huyện Đan Phượng',
'10135':'Chi cục Thuế Huyện Thạch Thất',
'10137':'Chi cục Thuế Huyện Hoài Đức',
'10139':'Chi cục Thuế Huyện Quốc Oai',
'10141':'Chi cục Thuế Huyện Thanh Oai',
'10143':'Chi cục Thuế Huyện Thường Tín',
'10145':'Chi cục Thuế Huyện Mỹ Đức',
'10147':'Chi cục Thuế Huyện ứng Hoà',
'10149':'Chi cục Thuế Huyện Phú Xuyên',
'10151':'Chi cục Thuế Huyện Ba Vì',
'10153':'Chi cục Thuế Huyện Chương Mỹ',
'10155':'Chi cục Thuế Nam Từ Liêm',
'10157':'Chi cục Thuế Bắc Từ Liêm',
'10300':'Cục Thuế TP Hải Phòng',
'10301':'Chi cục Thuế Quận Hồng Bàng',
'10303':'Chi cục Thuế Quận Ngô Quyền',
'10304':'Chi cục Thuế Quận Hải An',
'10305':'Chi cục Thuế Quận Lê Chân',
'10307':'Chi cục Thuế Quận Kiến An',
'10309':'Chi cục Thuế Quận Đồ Sơn',
'10311':'Chi cục Thuế Huyện Thuỷ Nguyên',
'10313':'Chi cục Thuế Huyện An Dương',
'10315':'Chi cục Thuế Huyện An Lão',
'10317':'Chi cục Thuế Huyện Kiến Thuỵ',
'10319':'Chi cục Thuế Huyện Tiên Lãng',
'10321':'Chi cục Thuế Huyện Vĩnh Bảo',
'10323':'Chi cục Thuế Huyện Cát Hải',
'10325':'Chi cục Thuế Huyện Bạch Long Vĩ',
'10327':'Chi cục Thuế Quận Dương Kinh',
'10500':'Cục thuế Hà Tây cũ (hết h.lực)',
'10501':'Chi cục Thuế Thành phố Hà Đông (hết h.lực)',
'10503':'Chi cục Thuế Thành phố Sơn Tây (hết h.lực)',
'10505':'Chi cục Thuế Huyện Ba Vì (hết h.lực)',
'10507':'Chi cục Thuế Huyện Phúc Thọ (hết h.lực)',
'10509':'Chi cục Thuế Huyện Đan Phượng (hết h.lực)',
'10511':'Chi cục Thuế Huyện Thạch Thất (hết h.lực)',
'10513':'Chi cục Thuế Huyện HoàI Đức (hết h.lực)',
'10515':'Chi cục Thuế Huyện Quốc Oai (hết h.lực)',
'10517':'Chi cục Thuế Huyện Chương Mỹ (hết h.lực)',
'10519':'Chi cục Thuế Huyện Thanh Oai (hết h.lực)',
'10521':'Chi cục Thuế Huyện Thường Tín (hết h.lực)',
'10523':'Chi cục Thuế Huyện Mỹ Đức (hết h.lực)',
'10525':'Chi cục Thuế Huyện ứng Hoà (hết h.lực)',
'10527':'Chi cục Thuế Huyện Phú Xuyên (hết h.lực)',
'10700':'Cục Thuế Tỉnh Hải Dương',
'10701':'Chi cục Thuế Thành phố Hải Dương',
'10703':'Chi cục Thuế Huyện Chí Linh',
'10705':'Chi cục Thuế Huyện Nam Sách',
'10707':'Chi cục Thuế Huyện Thanh Hà',
'10709':'Chi cục Thuế Huyện Kinh Môn',
'10711':'Chi cục Thuế Huyện Kim Thành',
'10713':'Chi cục Thuế Huyện Gia Lộc',
'10715':'Chi cục Thuế Huyện Tứ Kỳ',
'10717':'Chi cục Thuế Huyện Cẩm Giàng',
'10719':'Chi cục Thuế Huyện Bình Giang',
'10721':'Chi cục Thuế Huyện Thanh Miện',
'10723':'Chi cục Thuế Huyện Ninh Giang',
'10900':'Cục Thuế Tỉnh Hưng Yên',
'10901':'Chi cục Thuế Thành phố Hưng yên',
'10903':'Chi cục Thuế Huyện Mỹ Hào',
'10905':'Chi cục Thuế Huyện Khoái Châu',
'10907':'Chi cục Thuế Huyện Ân Thi',
'10909':'Chi cục Thuế Huyện Kim Động',
'10911':'Chi cục Thuế Huyện Phù Cừ',
'10913':'Chi cục Thuế Huyện Tiên Lữ',
'10915':'Chi cục Thuế Huyện Văn Giang',
'10917':'Chi cục Thuế Huyện Văn Lâm',
'10919':'Chi cục Thuế Huyện Yên Mỹ',
'11100':'Cục Thuế Tỉnh Hà Nam',
'11101':'Chi cục Thuế Thành phố Phủ Lý',
'11103':'Chi cục Thuế Huyện Duy Tiên',
'11105':'Chi cục Thuế Huyện Kim Bảng',
'11107':'Chi cục Thuế Huyện Lý Nhân',
'11109':'Chi cục Thuế Huyện Thanh Liêm',
'11111':'Chi cục Thuế Huyện Bình Lục',
'11300':'Cục Thuế Tỉnh Nam Định',
'11301':'Chi cục Thuế Thành phố Nam Đinh',
'11303':'Chi cục Thuế Huyện Vụ Bản',
'11305':'Chi cục Thuế Huyện Mỹ Lộc',
'11307':'Chi cục Thuế Huyện ý Yên',
'11309':'Chi cục Thuế Huyện Nam Trực',
'11311':'Chi cục Thuế Huyện Trực Ninh',
'11313':'Chi cục Thuế Huyện Xuân Trường',
'11315':'Chi cục Thuế Huyện Giao Thuỷ',
'11317':'Chi cục Thuế Huyện Nghĩa Hưng',
'11319':'Chi cục Thuế Huyện Hải Hậu',
'11500':'Cục Thuế Tỉnh Thái Bình',
'11501':'Chi cục Thuế Thành phố Thái Bình',
'11503':'Chi cục Thuế Huyện Quỳnh Phụ',
'11505':'Chi cục Thuế Huyện Hưng Hà',
'11507':'Chi cục Thuế Huyện Thái Thuỵ',
'11509':'Chi cục Thuế Huyện Đông Hưng',
'11511':'Chi cục Thuế Huyện Vũ Thư',
'11513':'Chi cục Thuế Huyện Kiến Xương',
'11515':'Chi cục Thuế Huyện Tiền hải',
'11700':'Cục Thuế Tỉnh Ninh Bình',
'11701':'Chi cục Thuế Thành phố Ninh Bình',
'11703':'Chi cục Thuế Thị xã Tam Điệp',
'11705':'Chi cục Thuế Huyện Nho quan',
'11707':'Chi cục Thuế Huyện Gia Viễn',
'11709':'Chi cục Thuế Huyện Hoa Lư',
'11711':'Chi cục Thuế Huyện Yên Mô',
'11713':'Chi cục Thuế Huyện Yên Khánh',
'11715':'Chi cục Thuế Huyện Kim Sơn',
'20100':'Cục Thuế Tỉnh Hà Giang',
'20101':'Chi cục Thuế Thị xã Hà Giang',
'20103':'Chi cục Thuế Huyện Đồng Văn',
'20105':'Chi cục Thuế Huyện Mèo Vạc',
'20107':'Chi cục Thuế Huyện Yên Minh',
'20109':'Chi cục Thuế Huyện Quản Bạ',
'20111':'Chi cục Thuế Huyện Bắc Mê',
'20113':'Chi cục Thuế Huyện Hoàng Su Phì',
'20115':'Chi cục Thuế Huyện Vị Xuyên',
'20117':'Chi cục Thuế Huyện Xín Mần',
'20118':'Chi cục thuế Huyện Quang Bình',
'20119':'Chi cục Thuế Huyện Bắc Quang',
'20300':'Cục Thuế Tỉnh Cao Bằng',
'20301':'Chi cục Thuế Thị xã Cao Bằng',
'20303':'Chi cục Thuế Huyện Bảo Lạc',
'20305':'Chi cục Thuế Huyện Hà Quảng',
'20307':'Chi cục Thuế Huyện Thông Nông',
'20309':'Chi cục Thuế Huyện Trà Lĩnh',
'20311':'Chi cục Thuế Huyện Trùng Khánh',
'20313':'Chi cục Thuế Huyện Nguyên Bình',
'20315':'Chi cục Thuế Huyện Hoà An',
'20317':'Chi cục Thuế Huyện Quảng Uyên',
'20318':'Chi cục thuế Huyện Phục Hoà',
'20319':'Chi cục Thuế Huyện Hạ Lang',
'20321':'Chi cục Thuế Huyện Thạch An',
'20323':'Chi cục Thuế  Huyện Bảo Lâm',
'20500':'Cục Thuế Tỉnh Lào Cai',
'20501':'Chi cục Thuế Thành phố Lào Cai',
'20503':'Chi cục Thuế Thị xã Cam Đường (hêt h.lực)',
'20505':'Chi cục Thuế Huyện Mường Khương',
'20507':'Chi cục Thuế Huyện Bát Xát',
'20509':'Chi cục Thuế Huyện Bắc Hà',
'20511':'Chi cục Thuế Huyện Bảo Thắng',
'20513':'Chi cục Thuế Huyện Sa Pa',
'20515':'Chi cục Thuế Huyện Bảo Yên',
'20517':'Chi cục Thuế Huyện Than Uyên (hêt h.lực)',
'20519':'Chi cục Thuế Huyện Văn Bàn',
'20521':'Chi cục Thuế Huyện Si Ma Cai',
'20700':'Cục Thuế Tỉnh Bắc Cạn',
'20701':'Chi cục Thuế Thị xã Bắc Cạn',
'20703':'Chi cục Thuế Huyện Ba Bể',
'20704':'Chi cục thuế Huyện Pác Nặm',
'20705':'Chi cục Thuế Huyện Ngân Sơn',
'20707':'Chi cục Thuế Huyện Chợ Đồn',
'20709':'Chi cục Thuế Huyện Na Rì',
'20711':'Chi cục Thuế Huyện Bạch Thông',
'20713':'Chi cục Thuế Huyện Chợ mới',
'20900':'Cục Thuế Tỉnh Lạng Sơn',
'20901':'Chi cục Thuế Thành phố Lạng Sơn',
'20903':'Chi cục Thuế Huyện Tràng Định',
'20905':'Chi cục Thuế Huyện Văn Lãng',
'20907':'Chi cục Thuế Huyện Bình Gia',
'20909':'Chi cục Thuế Huyện Bắc Sơn',
'20911':'Chi cục Thuế Huyện Văn Quan',
'20913':'Chi cục Thuế Huyện Cao Lộc',
'20915':'Chi cục Thuế Huyện Lộc Bình',
'20917':'Chi cục Thuế Huyện Chi Lăng',
'20919':'Chi cục Thuế Huyện Đình Lập',
'20921':'Chi cục Thuế Huyện Hữu Lũng',
'21100':'Cục Thuế Tỉnh Tuyên Quang',
'21101':'Chi cục Thuế Thị xã Tuyên Quang',
'21103':'Chi cục Thuế Huyện Nà Hang',
'21105':'Chi cục Thuế Huyện Chiêm Hoá',
'21107':'Chi cục Thuế Huyện Hàm Yên',
'21109':'Chi cục Thuế Huyện Yên Sơn',
'21111':'Chi cục Thuế Huyện Sơn Dương',
'21113':'Chi cục Thuế Huyện Lâm Bình',
'21300':'Cục Thuế Tỉnh Yên Bái',
'21301':'Chi cục Thuế TP Yên Bái',
'21303':'Chi cục Thuế Thị xã Nghĩa Lộ',
'21305':'Chi cục Thuế Huyện Lục Yên',
'21307':'Chi cục Thuế Huyện Văn Yên',
'21309':'Chi cục Thuế Huyện Mù Cang Chải',
'21311':'Chi cục Thuế Huyện Trấn Yên',
'21313':'Chi cục Thuế Huyện Yên Bình',
'21315':'Chi cục Thuế Huyện Văn Chấn',
'21317':'Chi cục Thuế Huyện Trạm Tấu',
'21500':'Cục Thuế Tỉnh Thái Nguyên',
'21501':'Chi cục Thuế Thành phố Thái Nguyên',
'21503':'Chi cục Thuế Thị xã Sông Công',
'21505':'Chi cục Thuế Huyện Định Hoá',
'21507':'Chi cục Thuế Huyện Võ Nhai',
'21509':'Chi cục Thuế Huyện Phú Lương',
'21511':'Chi cục Thuế Huyện Đồng Hỷ',
'21513':'Chi cục Thuế Huyện Đại Từ',
'21515':'Chi cục Thuế Huyện Phú Bình',
'21517':'Chi cục Thuế Huyện Phổ Yên',
'21700':'Cục Thuế Tỉnh Phú Thọ',
'21701':'Chi cục Thuế Thành phố Việt Trì',
'21703':'Chi cục Thuế Thị xã Phú Thọ',
'21705':'Chi cục Thuế Huyện Đoan Hùng',
'21707':'Chi cục Thuế Huyện Hạ Hoà',
'21709':'Chi cục Thuế Huyện Thanh Ba',
'21711':'Chi cục Thuế Huyện Phù Ninh',
'21713':'Chi cục Thuế Huyện Cẩm Khê',
'21715':'Chi cục Thuế Huyện Yên Lập',
'21717':'Chi cục Thuế Huyện Tam Nông',
'21719':'Chi cục Thuế Huyện Thanh Sơn',
'21720':'Chi cục Thuế Huyện Tân Sơn',
'21721':'Chi cục Thuế Huyện Lâm Thao',
'21723':'Chi cục Thuế Huyện Thanh Thuỷ',
'21900':'Cục Thuế Tỉnh Vĩnh Phúc',
'21901':'Chi cục Thuế Thành phố Vĩnh Yên',
'21902':'Chi cục Thuế Thị xã Phúc Yên',
'21903':'Chi cục Thuế Huyện Lập Thạch',
'21904':'Chi cục Thuế Huyện Tam đảo',
'21905':'Chi cục Thuế Huyện Tam Dương',
'21907':'Chi cục Thuế Huyện Vĩnh Tường',
'21909':'Chi cục Thuế Huyện Yên Lạc',
'21911':'Chi cục Thuế Huyện Mê Linh (chuyển Hà Nội)',
'21913':'Chi cục Thuế Huyện Bình Xuyên',
'21915':'Chi cục thuế Huyện Sông Lô',
'22100':'Cục Thuế Tỉnh Bắc Giang',
'22101':'Chi cục Thuế Thành phố Bắc Giang',
'22103':'Chi cục Thuế Huyện Yên Thế',
'22105':'Chi cục Thuế Huyện Tân Yên',
'22107':'Chi cục Thuế Huyện Lục Ngạn',
'22109':'Chi cục Thuế Huyện Hiệp Hoà',
'22111':'Chi cục Thuế Huyện Lạng Giang',
'22113':'Chi cục Thuế Huyện Sơn Động',
'22115':'Chi cục Thuế Huyện Lục Nam',
'22117':'Chi cục Thuế Huyện Việt Yên',
'22119':'Chi cục Thuế Huyện Yên Dũng',
'22300':'Cục Thuế Tỉnh Bắc Ninh',
'22301':'Chi cục Thuế Thành phố Bắc Ninh',
'22303':'Chi cục Thuế Huyện Yên Phong',
'22305':'Chi cục Thuế Huyện Quế Võ',
'22307':'Chi cục Thuế Huyện Tiên Du',
'22309':'Chi cục Thuế Huyện Thuận Thành',
'22311':'Chi cục Thuế Huyện Lương Tài',
'22313':' Chi cục Thuế Thị xã Từ Sơn',
'22315':'Chi cục Thuế Huyện Gia Bình',
'22500':'Cục Thuế Tỉnh Quảng Ninh',
'22501':'Chi cục Thuế TP Hạ Long',
'22503':'Chi cục Thuế Thành phố Cẩm Phả',
'22505':'Chi cục Thuế Thị xã Uông Bí',
'22507':'Chi cục Thuế Huyện Bình Liêu',
'22509':'Chi cục thuế Thành phố Móng cái',
'22511':'Chi cục Thuế Huyện Hải Hà',
'22513':'Chi cục Thuế Huyện Tiên Yên',
'22515':'Chi cục Thuế Huyện Ba Chẽ',
'22517':'Chi cục Thuế Huyện Vân Đồn',
'22519':'Chi cục Thuế Huyện Hoành Bồ',
'22521':'Chi cục Thuế Huyện Đông Triều',
'22523':'Chi cục Thuế Huyện Cô Tô',
'22525':'Chi cục Thuế Huyện Quảng Yên',
'22527':'Chi cục thuế Huyện Đầm Hà',
'30100':'Cục Thuế Tỉnh Điện Biên',
'30101':'Chi cục TP Điện Biên Phủ',
'30103':'Chi cục Thuế Thị xã Mường Lay',
'30104':'Chi cục thuế Huyện Mường Nhé',
'30105':'Chi cục Thuế Huyện Mường Tè - Đã chuyển sang Lai Châu',
'30107':'Chi cục Thuế Huyện Phong Thổ - Đã chuyển sang Lai Châu',
'30108':'Chi cục thuế Huyện Tam Đường - Đã chuyển sang Lai Châu',
'30109':'Chi cục Thuế Huyện Sìn Hồ - Đã chuyển sang Lai Châu',
'30111':'Chi cục Thuế Huyện Mường Chà',
'30113':'Chi cục Thuế Huyện Tủa Chùa',
'30115':'Chi cục Thuế Huyện Tuần Giáo',
'30117':'Chi cục Thuế Huyện Điện Biên',
'30119':'Chi cục Thuế Huyện Điện Biên Đông',
'30121':'Chi cục Thuế Huyện Mường ảng',
'30200':'Cục Thuế Tỉnh Lai Châu',
'30201':'Chi cục Thuế Huyện Mường Tè',
'30202':'Chi cục Thuế Thị xã Lai Châu',
'30203':'Chi cục Thuế Huyện Phong Thổ',
'30205':'Chi cục Thuế Huyện Tam Đường',
'30207':'Chi cục Thuế Huyện Sìn Hồ',
'30209':'Chi cục Thuế Huyện Than Uyên',
'30211':'Chi cục Thuế Tân Uyên',
'30213':'Chi cục Thuế Nậm Nhùn',
'30300':'Cục Thuế Tỉnh Sơn La',
'30301':'Chi cục Thuế Thành phố Sơn La',
'30303':'Chi cục Thuế Huyện Quỳnh Nhai',
'30305':'Chi cục Thuế Huyện Mường La',
'30307':'Chi cục Thuế Huyện Thuận Châu',
'30309':'Chi cục Thuế Huyện Bắc Yên',
'30311':'Chi cục Thuế Huyện Phù Yên',
'30313':'Chi cục Thuế Huyện Mai Sơn',
'30315':'Chi cục Thuế Huyện Sông Mã',
'30317':'Chi cục Thuế Huyện Yên Châu',
'30319':'Chi cục Thuế Huyện Mộc Châu',
'30321':'Chi cục Thuế Huyện Sốp Cộp',
'30323':'Chi cục Thuế Huyện Vân Hồ',
'30500':'Cục Thuế Tỉnh Hoà Bình',
'30501':'Chi cục Thuế Thành phố Hoà Bình',
'30503':'Chi cục Thuế Huyện Đà Bắc',
'30505':'Chi cục Thuế Huyện Mai Châu',
'30507':'Chi cục Thuế Huyện Kỳ Sơn',
'30509':'Chi cục Thuế Huyện Lương Sơn',
'30510':'Chi cục Thuế Huyện Cao Phong',
'30511':'Chi cục Thuế Huyện Kim Bôi',
'30513':'Chi cục Thuế Huyện Tân Lạc',
'30515':'Chi cục Thuế Huyện Lạc Sơn',
'30517':'Chi cục Thuế Huyện Lạc Thuỷ',
'30519':'Chi cục Thuế Huyện Yên Thuỷ',
'40100':'Cục Thuế Tỉnh Thanh Hoá',
'40101':'Chi cục Thuế Thành phố Thanh Hoá',
'40103':'Chi cục Thuế Thị xã Bỉm Sơn',
'40105':'Chi cục Thuế Thị xã Sầm Sơn',
'40107':'Chi cục Thuế Huyện Mường Lát',
'40109':'Chi cục Thuế Huyện Quan Hoá',
'40111':'Chi cục Thuế Huyện Quan Sơn',
'40113':'Chi cục Thuế Huyện Bá Thước',
'40115':'Chi cục Thuế Huyện Cẩm Thuỷ',
'40117':'Chi cục Thuế Huyện Lang Chánh',
'40119':'Chi cục Thuế Huyện Thạch Thành',
'40121':'Chi cục Thuế Huyện Ngọc Lặc',
'40123':'Chi cục Thuế Huyện Thường Xuân',
'40125':'Chi cục Thuế Huyện Như Xuân',
'40127':'Chi cục Thuế Huyện Như Thanh',
'40129':'Chi cục Thuế Huyện Vĩnh Lộc',
'40131':'Chi cục Thuế Huyện Hà Trung',
'40133':'Chi cục Thuế Huyện Nga Sơn',
'40135':'Chi cục Thuế Huyện Yên Định',
'40137':'Chi cục Thuế Huyện Thọ Xuân',
'40139':'Chi cục Thuế Huyện Hậu Lộc',
'40141':'Chi cục Thuế Huyện Thiệu Hoá',
'40143':'Chi cục Thuế Huyện Hoằng Hoá',
'40145':'Chi cục Thuế Huyện Đông Sơn',
'40147':'Chi cục Thuế Huyện Triệu Sơn',
'40149':'Chi cục Thuế Huyện Quảng Xương',
'40151':'Chi cục Thuế Huyện Nông Cống',
'40153':'Chi cục Thuế Huyện Tĩnh Gia',
'40300':'Cục Thuế Tỉnh Nghệ An',
'40301':'Chi cục Thuế Thành phố Vinh',
'40303':'Chi cục Thuế Thị xã Cửa Lò',
'40305':'Chi cục Thuế Huyện Quế Phong',
'40307':'Chi cục Thuế Huyện Quỳ Châu',
'40309':'Chi cục Thuế Huyện Kỳ Sơn',
'40311':'Chi cục Thuế Huyện Quỳ Hợp',
'40313':'Chị Cục thuế Huyện Nghĩa Đàn',
'40314':'Chi cục Thuế Thị xã Thái Hoà',
'40315':'Chi cục Thuế Huyện Tương Dương',
'40317':'Chi cục Thuế Huyện Quỳnh Lưu',
'40319':'Chi cục Thuế Huyện Tân Kỳ',
'40321':'Chi cục Thuế Huyện Con Cuông',
'40323':'Chi cục Thuế Huyện Yên Thành',
'40325':'Chi cục Thuế Huyện Diễn Châu',
'40327':'Chi cục Thuế Huyện Anh Sơn',
'40329':'Chi cục Thuế Huyện Đô Lương',
'40331':'Chi cục Thuế Huyện Thanh Chương',
'40333':'Chi cục Thuế Huyện Nghi Lộc',
'40335':'Chi cục Thuế Huyện Nam Đàn',
'40337':'Chi cục Thuế Huyện Hưng Nguyên',
'40339':'Chi cục Thuế Thị xã  Hoàng Mai',
'40500':'Cục Thuế Tỉnh Hà Tĩnh',
'40501':'Chi cục Thuế Thành phố Hà Tĩnh',
'40503':'Chi cục Thuế Thị xã Hồng Lĩnh',
'40505':'Chi cục Thuế Huyện Nghi Xuân',
'40507':'Chi cục Thuế Huyện Đức Thọ',
'40509':'Chi cục Thuế Huyện Hương Sơn',
'40511':'Chi cục Thuế Huyện Can Lộc',
'40513':'Chi cục Thuế Huyện Thạch Hà',
'40515':'Chi cục Thuế Huyện Cẩm Xuyên',
'40517':'Chi cục Thuế Huyện Hương Khê',
'40519':'Chi cục Thuế Huyện Kỳ Anh',
'40521':'Chi cục thuế Huyện Vũ Quang',
'40523':'Chi cục Thuế Huyện Lộc Hà',
'40700':'Cục Thuế Tỉnh Quảng Bình',
'40701':'Chi cục Thuế Thành phố Đồng Hới',
'40703':'Chi cục Thuế Huyện Tuyên Hoá',
'40705':'Chi cục Thuế Huyện Minh Hoá',
'40707':'Chi cục Thuế H.Quảng Trạch',
'40709':'Chi cục Thuế Huyện Bố Trạch',
'40711':'Chi cục Thuế Huyện Quảng Ninh',
'40713':'Chi cục Thuế Huyện Lệ Thuỷ',
'40715':'Chi cục Thuế Thị xã Ba Đồn',
'40900':'Cục Thuế Tỉnh Quảng Trị',
'40901':'Chi cục Thuế Thành phố Đông Hà',
'40903':'Chi cục Thuế Thị xã Quảng Trị',
'40905':'Chi cục Thuế Huyện Vĩnh Linh',
'40907':'Chi cục Thuế Huyện Gio Linh',
'40909':'Chi cục Thuế Huyện Cam Lộ',
'40911':'Chi cục Thuế Huyện Triệu Phong',
'40913':'Chi cục Thuế Huyện Hải Lăng',
'40915':'Chi cục Thuế Huyện Hướng Hoá',
'40917':'Chi cục Thuế Huyện Đa Krông',
'40919':'Chi cục Thuế Huyện  Đảo Cồn Cỏ',
'41100':'Cục Thuế Tỉnh TT-Huế',
'41101':'CCT  Thành phố Huế',
'41103':'CCT Huyện Phong Điền',
'41105':'CCT Huyện Quảng Điền',
'41107':'CCT Huyện Hương Trà',
'41109':'CCT Huyện Phú Vang',
'41111':'Chi cục Thuế thị xã Hương Thuỷ',
'41113':'CCT Huyện Phú Lộc',
'41115':'CCT Huyện A Lưới',
'41117':'CCT Huyện Nam Đông',
'50100':'Cục Thuế TP Đà Nẵng',
'50101':'Chi cục Thuế Quận Hải Châu',
'50103':'Chi cục Thuế Quận Thanh Khê',
'50105':'Chi cục Thuế Quận Sơn Trà',
'50107':'CCT Quận Ngũ Hành Sơn',
'50109':'Chi cục Thuế Quận Liên Chiểu',
'50111':'Chi cục Thuế Huyện Hoà Vang',
'50113':'Chi cục Thuế Huyện Đảo Hoàng Sa',
'50115':'Chi cục thuế Quận Cẩm Lệ',
'50300':'Cục Thuế Tỉnh Quảng Nam',
'50301':'Chi cục Thuế Thành phố Tam Kỳ',
'50302':'Chi cục Thuế Huyện Phú Ninh',
'50303':'Chi cục Thuế Thành phố Hội An',
'50304':'Chi cục thuế Huyện Tây Giang',
'50305':'Chi cục thuế Huyện Đông Giang',
'50307':'Chi cục Thuế Huyện Đại Lộc',
'50309':'Chi cục Thuế Huyện Điện Bàn',
'50311':'Chi cục Thuế Huyện Duy Xuyên',
'50313':'Chi cục Thuế Huyện Nam Giang',
'50315':'Chi cục Thuế Huyện Thăng Bình',
'50317':'Chi cục Thuế Huyện Quế Sơn',
'50318':'Chi cục thuế Huyện Nông Sơn',
'50319':'Chi cục Thuế Huyện Hiệp Đức',
'50321':'Chi cục Thuế Huyện Tiên Phước',
'50323':'Chi cục Thuế Huyện Phước Sơn',
'50325':'Chi cục Thuế Huyện Núi Thành',
'50327':'Chi cục thuế Huyện Bắc Trà My',
'50329':'Chi cục thuế Huyện Nam Trà My',
'50500':'Cục Thuế Tỉnh Quảng Ngãi',
'50501':'Chi cục Thuế Thành phố Quảng Ngãi',
'50503':'Chi cục Thuế Huyện Lý Sơn',
'50505':'Chi cục Thuế Huyện Bình Sơn',
'50507':'Chi cục Thuế Huyện Trà Bồng',
'50508':'Chi cục Thuế Huyện Tây Trà',
'50509':'Chi cục Thuế Huyện Sơn Tịnh',
'50511':'Chi cục Thuế Huyện Sơn Tây',
'50513':'Chi cục Thuế Huyện Sơn Hà',
'50515':'Chi cục Thuế Huyện Tư Nghĩa',
'50517':'Chi cục Thuế Huyện Nghĩa Hành',
'50519':'Chi cục Thuế Huyện Minh Long',
'50521':'Chi cục Thuế Huyện Mộ Đức',
'50523':'Chi cục Thuế Huyện Đức Phổ',
'50525':'Chi cục Thuế Huyện Ba Tơ',
'50700':'Cục Thuế Tỉnh Bình Định',
'50701':'Chi cục Thuế Thành phố Quy Nhơn',
'50703':'Chi cục Thuế Huyện An Lão',
'50705':'Chi cục Thuế Huyện Hoài Nhơn',
'50707':'Chi cục Thuế Huyện Hoài ân',
'50709':'Chi cục Thuế Huyện Phù Mỹ',
'50711':'Chi cục Thuế Huyện Vĩnh Thạnh',
'50713':'Chi cục Thuế Huyện Phù Cát',
'50715':'Chi cục Thuế Huyện Tây Sơn',
'50717':'Chi cục Thuế Huyện An Nhơn',
'50719':'Chi cục Thuế Huyện Tuy Phước',
'50721':'Chi cục Thuế Huyện Vân Canh',
'50900':'Cục Thuế Tỉnh Phú Yên',
'50901':'Chi cục Thuế TP  Tuy Hoà',
'50903':'Chi cục Thuế Huyện Đồng Xuân',
'50905':'Chi cục Thuế Huyện Sông Cầu',
'50907':'Chi cục Thuế Huyện Tuy An',
'50909':'Chi cục Thuế Huyện Sơn Hoà',
'50911':'Chi cục Thuế Huyện Đông Hoà',
'50912':'Chi cục Thuế Huyện Tây Hoà',
'50913':'Chi cục Thuế Huyện Sông Hinh',
'50915':'Chi cục Thuế Huyện Phú Hoà',
'51100':'Cục Thuế Tỉnh Khánh Hoà',
'51101':'Chi cục Thuế Thành phố Nha Trang',
'51103':'Chi cục Thuế Huyện Vạn Ninh',
'51105':'Chi cục Thuế Huyện Ninh Hoà',
'51107':'Chi cục Thuế Huyện Diên Khánh',
'51109':'Chi cục Thuế Thị xã Cam Ranh',
'51111':'Chi cục Thuế Huyện Khánh Vĩnh',
'51113':'Chi cục Thuế Huyện Khánh Sơn',
'51115':'Chi cục Thuế Huyện Trường Sa',
'51117':'Chi cục Thuế Huyện Cam Lâm',
'60100':'Cục Thuế Tỉnh Kon Tum',
'60101':'Chi cục Thuế Thành phố Kon Tum',
'60103':'Chi cục Thuế Huyện Đắk Glei',
'60105':'Chi cục Thuế Huyện Ngọc Hồi',
'60107':'Chi cục Thuế Huyện Đắk Tô',
'60108':'Chi cục thuế Huyện Kon Rẫy',
'60109':'Chi cục Thuế Huyện Kon Plông',
'60111':'Chi cục Thuế Huyện Đák Hà',
'60113':'Chi cục Thuế Huyện Sa Thầy',
'60115':'Chi cục Thuế Huyện Tu Mơ Rông',
'60300':'Cục Thuế Tỉnh Gia Lai',
'60301':'Chi cục Thuế Thành phố Pleiku',
'60303':'Chi cục Thuế Huyện Kbang',
'60305':'Chi cục Thuế Huyện Mang Yang',
'60307':'Chi cục Thuế Huyện Chư Păh',
'60309':'Chi cục Thuế Huyện Ia Grai',
'60311':'Chi cục Thuế Thị xã An Khê',
'60313':'Chi cục Thuế Huyện Kông Chro',
'60315':'Chi cục Thuế Huyện Đức Cơ',
'60317':'Chi cục Thuế Huyện Chư Prông',
'60319':'Chi cục Thuế Huyện Chư Sê',
'60320':'Chi cục Thuế Huyện IaPa',
'60321':'Chi cục Thuế Thị xã Ayun Pa',
'60323':'Chi cục Thuế Huyện Krông Pa',
'60325':'Chi cục Thuế Huyện Đắk Đoa',
'60327':'Chi cục Thuế Huyện ĐakPơ',
'60329':'Chi cục Thuế Huyện Phú Thiện',
'60331':'Chi cục Thuế Huyện Chư Pưh',
'60500':'Cục Thuế Tỉnh Đắk Lắk',
'60501':'Chi cục Thuế Thành phố Buôn Ma Thuột',
'60503':'Chi cục Thuế Huyện Ea H`leo',
'60505':'Chi cục Thuế Huyện Ea Súp',
'60507':'Chi cục Thuế Huyện Krông Năng',
'60509':'Chi cục Thuế Thị xã Buôn Hồ',
'60511':'Chi cục Thuế Huyện Buôn Đôn',
'60513':'Chi cục Thuế Huyện Cư M`gar',
'60515':'Chi cục Thuế Huyện Ea Kar',
'60517':'Chi cục Thuế Huyện M`ĐrắK',
'60519':'Chi cục Thuế Huyện Krông Pắk',
'60521':'Chi cục Thuế Huyện Cư Jút (hêt h.lực)',
'60523':'Chi cục Thuế Huyện Krông A Na',
'60525':'Chi cục Thuế Huyện Krông Bông',
'60527':'Chi cục Thuế Huyện Đắk Mil (hêt h.lực)',
'60529':'Chi cục Thuế Huyện Krông Nô (hêt h.lực)',
'60531':'Chi cục Thuế Huyện Lắk',
'60532':'Chi cục thuế Huyện Đắk Song (hêt h.lực)',
'60533':'Chi cục Thuế Huyện Đắk R`Lấp (hêt h.lực)',
'60535':'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60537':'Chi cục Thuế Huyện Cư Kuin',
'60539':'Chi cục Thuế Huyện Krông Buk',
'60600':'Cục Thuế Tỉnh Đắk Nông',
'60601':'Chi cục Thuế Huyện Đắk Nông (hêt h.lực)',
'60603':'Chi cục Thuế Huyện Cư Jút',
'60605':'Chi cục Thuế Huyện Krông Nô',
'60607':'Chi cục Thuế Huyện Đắk Mil',
'60609':'Chi cục Thuế Huyện Đắk Song',
'60611':'Chi cục Thuế Huyện Đắk R`Lấp',
'60613':'Chi cục Thuế Thị xã Gia Nghĩa',
'60615':'Chi cục thuế Huyện Đắk Glong',
'60617':'Chi cục Thuế Huyện Tuy Đức',
'70100':'Cục Thuế Thành phố Hồ Chí Minh',
'70101':'Chi cục Thuế Quận 1',
'70103':'Chi cục Thuế Quận 2',
'70105':'Chi cục Thuế Quận 3',
'70107':'Chi cục Thuế Quận 4',
'70109':'Chi cục Thuế Quận 5',
'70111':'Chi cục Thuế Quận 6',
'70113':'Chi cục Thuế Quận 7',
'70115':'Chi cục Thuế Quận 8',
'70117':'Chi cục Thuế Quận 9',
'70119':'Chi cục Thuế Quận 10',
'70121':'Chi cục Thuế Quận 11',
'70123':'Chi cục Thuế Quận 12',
'70125':'Chi cục Thuế Quận Gò Vấp',
'70127':'Chi cục Thuế Quận Tân Bình',
'70128':'Chi cục thuế Quận Tân phú',
'70129':'Chi cục Thuế Quận Bình Thạnh',
'70131':'Chi cục Thuế Quận Phú Nhuận',
'70133':'Chi cục Thuế Quận Thủ Đức',
'70134':'Chi cục thuế Quận Bình Tân',
'70135':'Chi cục Thuế Huyện Củ Chi',
'70137':'Chi cục Thuế Huyện Hóc Môn',
'70139':'Chi cục Thuế Huyện Bình Chánh',
'70141':'Chi cục Thuế Huyện Nhà Bè',
'70143':'Chi cục Thuế Huyện Cần Giờ',
'70300':'Cục Thuế Tỉnh Lâm Đồng',
'70301':'Chi cục Thuế Thành phố Đà Lạt',
'70303':'Chi cục Thuế Thị xã Bảo Lộc',
'70305':'Chi cục Thuế Huyện Lạc Dương',
'70307':'Chi cục Thuế Huyện Đơn Dương',
'70309':'Chi cục Thuế Huyện Đức Trọng',
'70311':'Chi cục Thuế Huyện Lâm Hà',
'70313':'Chi cục Thuế Huyện Bảo Lâm',
'70315':'Chi cục Thuế Huyện Di Linh',
'70317':'Chi cục Thuế Huyện Đạ Huoai',
'70319':'Chi cục Thuế Huyện Đạ Tẻh',
'70321':'Chi cục Thuế Huyện Cát Tiên',
'70323':'Chi cục Thuế huyện Đam Rông',
'70500':'Cục Thuế Tỉnh Ninh Thuận',
'70501':'Chi cục Thuế TP. Phan Rang - Tháp Chàm',
'70503':'Chi cục Thuế Huyện Ninh Sơn',
'70505':'Chi cục Thuế Huyện Ninh Hải',
'70507':'Chi cục Thuế Huyện Ninh Phước',
'70509':'Chi cục Thuế Huyện Bác ái',
'70511':'Chi cục thuế Huyện Thuận Bắc',
'70513':'Chi cục thuế Huyện Thuận Nam',
'70700':'Cục Thuế Tỉnh Bình Phước',
'70701':'Chi cục Thuế Huyện Đồng Phú',
'70703':'Chi cục Thuế Huyện Phước Long',
'70705':'Chi cục Thuế Huyện Lộc Ninh',
'70706':'Chi cục Thuế Huyện Bù Đốp',
'70707':'Chi cục Thuế Huyện Bù Đăng',
'70709':'Chi cục Thuế Huyện Bình Long',
'70710':'Chi cục Thuế Huyện Chơn Thành',
'70711':'Chi cục thuế Thị xã Đồng Xoài',
'70713':'Chi cục Thuế Huyện Hớn Quản',
'70715':'Chi cục Thuế Huyện Bù Gia Mập',
'70900':'Cục Thuế Tỉnh Tây Ninh',
'70901':'Chi cục Thuế Thị xã Tây Ninh',
'70903':'Chi cục Thuế Huyện Tân Biên',
'70905':'Chi cục Thuế Huyện Tân Châu',
'70907':'Chi cục Thuế Huyện Dương Minh Châu',
'70909':'Chi cục Thuế Huyện Châu Thành',
'70911':'Chi cục Thuế Huyện Hoà Thành',
'70913':'Chi cục Thuế Huyện Bến Cầu',
'70915':'Chi cục thuế huyện Gò Dầu',
'70917':'Chi cục Thuế Huyện Trảng Bàng',
'71100':'Cục Thuế Tỉnh Bình Dương',
'71101':'Chi cục Thuế TX Thủ Dầu Một',
'71103':'Chi cục Thuế Thị xã Bến Cát',
'71105':'Chi cục Thuế Thị xã Tân Uyên',
'71107':'Chi cục Thuế thị xã Thuận An',
'71109':'Chi cục Thuế thị xã Dĩ An',
'71111':'Chi cục Thuế Huyện Phú Giáo',
'71113':'Chi cục Thuế Huyện Dầu Tiếng',
'71115':'Chi cục Thuế Huyện Bàu Bàng',
'71117':'Chi cục Huyện Bắc Tân Uyên',
'71300':'Cục Thuế Tỉnh Đồng Nai',
'71301':'Chi cục Thuế TP Biên Hòa',
'71302':'Chi cục thuế TX Long khánh',
'71303':'Chi cục Thuế Huyện Tân Phú',
'71305':'Chi cục Thuế Huyện Định Quán',
'71307':'Chi cục Thuế Huyện Vĩnh Cửu',
'71308':'Chi cục thuế Huyện Trảng Bom',
'71309':'Chi cục Thuế Huyện Thống Nhất',
'71311':'Chi cục Thuế huyện Cẩm Mỹ',
'71313':'Chi cục Thuế Huyện Xuân Lộc',
'71315':'Chi cục Thuế Huyện Long Thành',
'71317':'Chi cục Thuế Huyện Nhơn Trạch',
'71500':'Cục Thuế Tỉnh Bình Thuận',
'71501':'Chi cục Thuế Thành phố Phan Thiết',
'71503':'Chi cục Thuế Huyện Tuy Phong',
'71505':'Chi cục Thuế Huyện Bắc Bình',
'71507':'Chi cục Thuế Huyện Hàm Thuận Bắc',
'71509':'Chi cục Thuế Huyện Hàm Thuận Nam',
'71511':'Chi cục Thuế Huyện Tánh Linh',
'71513':'Chi cục Thuế Thị xã La Gi',
'71514':'Chi cục Thuế Huyện Hàm Tân',
'71515':'Chi cục Thuế Huyện Đức Linh',
'71517':'Chi cục Thuế Huyện Phú Quý',
'71700':'Cục Thuế Tỉnh Bà Rịa - Vũng Tàu',
'71701':'Chi cục Thuế Thành phố Vũng Tàu',
'71703':'Chi cục Thuế Thành Phố Bà Rịa',
'71705':'Chi cục Thuế Huyện Châu Đức',
'71707':'Chi cục Thuế Huyện Xuyên Mộc',
'71709':'Chi cục Thuế Huyện Tân Thành',
'71711':'Chi cục thuế Huyện Long Điền',
'71712':'Chi cục Thuế Huyện Đất đỏ',
'71713':'Chi cục Thuế Huyện Côn Đảo',
'80100':'Cục Thuế Tỉnh Long An',
'80101':'Chi cục Thuế Thành phố Tân An',
'80103':'Chi cục Thuế Huyện Tân Hưng',
'80105':'Chi cục Thuế Huyện Vĩnh Hưng',
'80107':'Chi cục Thuế Huyện Mộc Hoá',
'80109':'Chi cục Thuế Huyện Tân Thạnh',
'80111':'Chi cục Thuế Huyện Thạnh Hoá',
'80113':'Chi cục Thuế Huyện Đức Huệ',
'80115':'Chi cục Thuế Huyện Đức Hoà',
'80117':'Chi cục Thuế Huyện Bến Lức',
'80119':'Chi cục Thuế Huyện Thủ Thừa',
'80121':'Chi cục Thuế Huyện Châu Thành',
'80123':'Chi cục Thuế Huyện Tân Trụ',
'80125':'Chi cục Thuế Huyện Cần Đước',
'80127':'Chi cục Thuế Huyện Cần Giuộc',
'80129':'Chi cục Thuế Thị xã Kiến Tường',
'80300':'Cục Thuế Tỉnh Đồng Tháp',
'80301':'Chi cục Thuế Thành phố Cao Lãnh',
'80303':'Chi cục Thuế Thị xã Sa Đéc',
'80305':'Chi cục Thuế Huyện Tân Hồng',
'80307':'Chi cục Thuế Huyện Hồng Ngự',
'80309':'Chi cục Thuế Huyện Tam Nông',
'80311':'Chi cục Thuế Huyện Thanh Bình',
'80313':'Chi cục Thuế Huyện Tháp Mười',
'80315':'Chi cục Thuế Huyện Cao Lãnh',
'80317':'Chi cục Thuế Huyện Lấp Vò',
'80319':'Chi cục Thuế Huyện Lai Vung',
'80321':'Chi cục Thuế Huyện Châu Thành',
'80323':'Chi cục Thuế Thị xã Hồng Ngự',
'80500':'Cục Thuế Tỉnh An Giang',
'80501':'Chi cục thuế Tp. Long Xuyên',
'80503':'Chi cục Thuế Thị xã Châu Đốc',
'80505':'Chi cục Thuế Huyện An Phú',
'80507':'Chi cục Thuế Huyện Tân Châu',
'80509':'Chi cục Thuế Huyện Phú Tân',
'80511':'Chi cục Thuế Huyện Châu Phú',
'80513':'Chi cục Thuế Huyện Tịnh Biên',
'80515':'Chi cục Thuế Huyện Tri Tôn',
'80517':'Chi cục Thuế Huyện Chợ Mới',
'80519':'Chi cục Thuế Huyện Châu Thành',
'80521':'Chi cục Thuế Huyện Thoại Sơn',
'80700':'Cục Thuế Tỉnh Tiền Giang',
'80701':'Chi cục Thuế Thành phố Mỹ Tho',
'80703':'Chi cục Thuế Thị xã Gò Công',
'80705':'Chi cục Thuế Huyện Tân Phước',
'80707':'Chi cục Thuế Huyện Châu Thành',
'80709':'Chi cục Thuế Huyện Cai Lậy',
'80711':'Chi cục Thuế Huyện Chợ Gạo',
'80713':'Chi cục Thuế Huyện Cái Bè',
'80715':'Chi cục Thuế Huyện Gò Công Tây',
'80717':'Chi cục Thuế Huyện Gò Công Đông',
'80719':'Chi cục Thuế Huyện Tân Phú Đông',
'80721':'Chi cục Thuế Thị xã Cai Lậy',
'80900':'Cục Thuế Tỉnh Vĩnh Long',
'80901':'Chi cục Thuế Thành phố  Vĩnh Long',
'80903':'Chi cục Thuế Huyện Long Hồ',
'80905':'Chi cục Thuế Huyện Mang Thít',
'80907':'Chi cục Thuế Huyện Bình Minh',
'80908':'Chi cục Thuế huyện Bình Tân',
'80909':'Chi cục Thuế Huyện Tam Bình',
'80911':'Chi cục Thuế Huyện Trà Ôn',
'80913':'Chi cục Thuế Huyện Vũng Liêm',
'81100':'Cục Thuế Tỉnh Bến Tre',
'81101':'Chi cục Thuế Thành phố  Bến Tre',
'81103':'Chi cục Thuế Huyện Châu Thành',
'81105':'Chi cục Thuế Huyện Chợ Lách',
'81107':'Chi cục Thuế Huyện Mỏ Cày Nam',
'81108':'Chi cục thuế Huyện Mỏ Cày Bắc',
'81109':'Chi cục Thuế Huyện Giồng Trôm',
'81111':'Chi cục Thuế Huyện Bình Đại',
'81113':'Chi cục Thuế Huyện Ba Tri',
'81115':'Chi cục Thuế Huyện Thạnh Phú',
'81300':'Cục Thuế Tỉnh Kiên Giang',
'81301':'Chi cục Thuế Thành phố Rạch Giá',
'81303':'Chi cục Thuế Huyện Kiên Lương',
'81304':'Chi cục Thuế Huyện Giang Thành',
'81305':'Chi cục Thuế Huyện Hòn Đất',
'81307':'Chi cục Thuế Huyện Tân Hiệp',
'81309':'Chi cục Thuế Huyện Châu Thành',
'81311':'Chi cục Thuế Huyện Giồng Riềng',
'81313':'Chi cục Thuế Huyện Gò Quao',
'81315':'Chi cục Thuế Huyện An Biên',
'81317':'Chi cục Thuế Huyện An Minh',
'81319':'Chi cục Thuế Huyện Vĩnh Thuận',
'81321':'Chi cục Thuế Huyện Phú Quốc',
'81323':'Chi cục Thuế Huyện Kiên HảI                                 ',
'81325':'Chi cục thuế Thị xã Hà Tiên',
'81327':'Chi cục Thuế Huyện U Minh Thượng',
'81500':'Cục Thuế Thành phố Cần Thơ',
'81501':'Chi cục Thuế Thành phố Cần Thơ (hêt h.lực)',
'81503':'Chi cục Thuế  Quận Thốt Nốt',
'81505':'Chi cục Thuế Quận Ô Môn',
'81507':'Chi cục Thuế Huyện Châu Thành (hêt h.lực)',
'81509':'Chi cục Thuế Huyện Phụng Hiệp (hêt h.lực)',
'81511':'Chi cục Thuế thị xã Vị Thanh (hêt h.lực)',
'81513':'Chi cục Thuế Huyện Long Mỹ (hêt h.lực)',
'81515':'Chi cục Thuế Huyện Vị Thuỷ (hêt h.lực)',
'81517':'Chi cục Thuế H. Châu Thành A (hêt h.lực)',
'81519':'Chi cục Thuế Quận Ninh Kiều',
'81521':'Chi cục Thuế Quận Bình Thuỷ',
'81523':'Chi cục Thuế Quận Cái Răng',
'81525':'Chi cục Thuế Huyện Vĩnh Thạnh',
'81527':'Chi cục Thuế Huyện Cờ Đỏ',
'81529':'Chi cục Thuế Huyện Phong Điền',
'81531':'Chi Cục Thuế Huyện Thới Lai',
'81600':'Cục Thuế Tỉnh Hậu Giang',
'81601':'Chi cục Thuế Thành phố Vị Thanh',
'81603':'CCThuế Huyện Châu Thành A',
'81605':'Chi cục Thuế Huyện Châu Thành',
'81607':'Chi cục Thuế Thị  Xã Ngã Bảy',
'81608':'Chi cục thuế huyện Phụng Hiệp',
'81609':'Chi cục Thuế Huyện Vị Thủy',
'81611':'Chi cục Thuế Huyện Long Mỹ',
'81700':'Cục Thuế Tỉnh Trà Vinh',
'81701':'Chi cục Thuế Thị xã Trà Vinh',
'81703':'Chi cục Thuế Huyện Càng Long',
'81705':'Chi cục Thuế Huyện Châu Thành',
'81707':'Chi cục Thuế Huyện Cầu Kè',
'81709':'Chi cục Thuế Huyện Tiểu Cần',
'81711':'Chi cục Thuế Huyện Cầu Ngang',
'81713':'Chi cục Thuế Huyện Trà Cú',
'81715':'Chi cục Thuế Huyện Duyên Hải',
'81900':'Cục Thuế Tỉnh Sóc Trăng',
'81901':'Chi cục Thuế Thành phố Sóc Trăng',
'81903':'Chi cục Thuế Huyện Kế Sách',
'81905':'Chi cục Thuế Huyện Long Phú',
'81906':'Chi cục thuế Huyện Cù Lao Dung',
'81907':'Chi cục Thuế Huyện Mỹ Tú',
'81909':'Chi cục Thuế Huyện Mỹ Xuyên',
'81911':'Chi cục Thuế Huyện Thạnh Trị',
'81912':'Chi cục thuế Huyện Ngã Năm',
'81913':'Chi cục Thuế Thị Xã Vĩnh Châu',
'81915':'Chi cục Thuế Huyện Châu Thành',
'81917':'Chi cục Thuế Huyện Trần Đề',
'82100':'Cục Thuế Tỉnh Bạc Liêu',
'82101':'Chi cục Thuế  thành phố Bạc Liêu',
'82103':'Chi cục Thuế Huyện Hồng Dân',
'82105':'Chi cục Thuế Huyện Vĩnh Lợi',
'82106':'Chi cục thuế Huyện Hoà Bình',
'82107':'Chi cục Thuế Huyện Giá Rai',
'82109':'Chi cục Thuế Huyện Phước Long',
'82111':'Chi cục thuế Huyện Đông Hải',
'82300':'Cục Thuế Tỉnh Cà Mau',
'82301':'Chi cục Thuế TP Cà Mau',
'82303':'Chi cục Thuế Huyện Thới Bình',
'82305':'Chi cục Thuế Huyện U Minh',
'82307':'Chi cục Thuế Huyện Trần Văn Thời',
'82308':'Chi cục Thuế Huyện Phú Tân',
'82309':'Chi cục Thuế Huyện Cái Nước',
'82311':'Chi cục Thuế Huyện Đầm Dơi',
'82312':'Chi cục Thuế Huyện Năm Căn',
'82313':'Chi cục Thuế Huyện Ngọc Hiển',
'70145':'Chi cục Thuế thành phố Thủ Đức',
'82500':'Cục Thuế Doanh nghiệp lớn'
  };
  if(data[vKey]!=undefined){
	 vReturn =  data[vKey];
  }
  }
  return vReturn;
}

function getMonthFromString(mon){
   return new Date(Date.parse(mon +" 1, 2012")).getMonth()+1
 }
  
  function stringDatetimeTEM(strInput, strFormat)
  {
	var strReturn = '';
	var strTemp;
	var vstrInput;
	var monthTemp;
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
				  strReturn = strTemp[0];				  
			  }else if(strFormat =='mm'){
				  var a = getMonthFromString(strTemp[1]);
				  strReturn = a;
			  }
			  else if(strFormat =='yyyy'){
				  strReturn = strTemp[2];
				  if(strTemp[2].length &#62; 2){
					  strReturn = strTemp[2].substring(0,4);
				  }
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
					  if(strTemp[2].length &#62; 4){
						  strReturn = strTemp[2].substring(4,strTemp[2].length).split(':')[0];				  
					  }
			 }else if(strFormat =='mi'){
					  if(strTemp[2].length &#62; 4){
						  strReturn = strTemp[2].substring(4,strTemp[2].length).split(':')[1];
					  }
			 }else if(strFormat =='ii'){			   
					  if(strTemp[2].length &#62; 4){
						  strReturn = strTemp[2].substring(4,strTemp[2].length).split(':')[2].substring(0,2);				  
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

</msxsl:script>
</xsl:stylesheet>