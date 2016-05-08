package  {
	
	public class MjAR {

        //宣告所有麻將資料的xml檔(需由主程式給xml)
        public var allMJ_xml:XML;
        public var mjType_xml:XML;
        
        //將牌num陣列轉成Name陣列的函式
        public function numToName(_tgAR):Array	{
            var _nameAR:Array = new Array;
	
            for (var i:int = 0 ; i < _tgAR.length ; i++) 	{	
                var _num= _tgAR[i];
		
                var _mjName = allMJ_xml.mjpai.(@num==_num).@mjname;
				_nameAR.push(_mjName);
            }
            return _nameAR;
}
        //將牌num陣列轉成order陣列的函式
        public function numToOrder(_tgAR):Array	{
            var _orderAR = [];
	
            for (var i:int = 0 ; i < _tgAR.length ; i++) 	{	
                var _num:int= _tgAR[i];
		
                var _mjOrder:int = allMJ_xml.mjpai.(@num==_num).@order;
		
                _orderAR.push(_mjOrder);
            }
        return _orderAR;
        }
        
        //將麻將的order陣列，轉換成麻將的ID陣列
        public function orderToID(_tgAR, _type):Array	{
            var _IDAR:Array = new Array;
	
            for (var i:int = 0 ; i < _IDAR.length ; i++) 	{	
            var _order = _tgAR[i];
            var _mjID = mjType_xml.mjpai.(@type==_type).(@order==_order ).@mjID;
            _IDAR.push(_mjID);
        }
	return _IDAR;
}

    //將牌ID陣列轉成Name陣列的函式
    public function IDToName_fn(_tgAR):Array	{
        var _nameAR:Array = new Array;
        for (var i:int = 0 ; i < _tgAR.length ; i++) 	{	
            var _ID= _tgAR[i];
			var _mjName = mjType_xml.mjpai.(@mjID==_ID).@mjname;
            _nameAR.push(_mjName);
        }
	return _nameAR;
}


   
   
   
   
   
   
   
   
   
   
   
   
   
	}
	
}
