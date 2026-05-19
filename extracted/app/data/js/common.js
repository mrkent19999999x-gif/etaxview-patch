function formatNumber(inpNumber){
	 var strReturn = "";
	var vNumber = "";
	var firstChar = "";
	var fnum = 0;
	var fNumTemp = "";
	 vNumber = inpNumber;
	 if(vNumber != '' && vNumber != null ){
	     
	firstChar  =  vNumber.substring(0, 1); 
	if(firstChar == "-")
	vNumber  =  vNumber.substring(1); 
	
	fnum  = vNumber.indexOf(".");   
	if(fnum   > 0){
	  fNumTemp = vNumber.substring((fnum +1));	
	  vNumber  =  vNumber.substring(0,fnum); 
	}
          
            vNumber = Math.floor(vNumber*100+0.50000000001);
            vNumber = Math.floor(vNumber/100).toString();

            for (var i = 0; i < Math.floor((vNumber.length-(1+i))/3); i++)
           	 vNumber = vNumber.substring(0,vNumber.length-(4*i+3))+'.'+vNumber.substring(vNumber.length-(4*i+3));

	if(fnum    > 0)	  	
	  vNumber  =  vNumber+','+fNumTemp;
	   
	if(firstChar == "-")
	 vNumber  =  "("+vNumber+")";
	
 	}
	return vNumber ;
}


function changeNumber(){
	var x = document.querySelectorAll('.number');
	for (var i = 0, len = x.length; i < len; i++) {
		console.log(x[i].innerHTML);
	 	var tmp = x[i].innerHTML;
		tmp = formatNumber(tmp);
		x[i].innerHTML = tmp ;
    }
}