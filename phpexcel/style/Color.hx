package office.phpexcel.style;

@:native("PHPExcel_Style_Color")
extern class Color {

	public static inline var COLOR_BLACK      = 'FF000000';
	public static inline var COLOR_WHITE      = 'FFFFFFFF';
	public static inline var COLOR_RED        = 'FFFF0000';
	public static inline var COLOR_DARKRED    = 'FF800000';
	public static inline var COLOR_BLUE	      = 'FF0000FF';
	public static inline var COLOR_DARKBLUE   = 'FF000080';
	public static inline var COLOR_GREEN      = 'FF00FF00';
	public static inline var COLOR_DARKGREEN  = 'FF008000';
	public static inline var COLOR_YELLOW     = 'FFFFFF00';
	public static inline var COLOR_DARKYELLOW = 'FF808000';

	public function bindParent(parent:Dynamic,?parentPropertyName:String):Color;

	public function getSharedComponent():Color;
	public function getStyleArray(array:Array<Dynamic>):Array<Dynamic>;
	public function applyFromArray(?array:Array<Dynamic>):Color;

	public function getARGB():String;
	public function setARGB(value:String=COLOR_BLACK):Color;

	public function getRGB():String;
	public function setRGB(value:String='000000'):Color;

	public static function _getColourComponent(rgb:String,offset:Int,isHex:Bool=true):String;

	public static function getRed(rgb:String,isHex:Bool=true):String;
	public static function getGreen(rgb:String,isHex:Bool=true):String;
	public static function getBlue(rgb:String,isHex:Bool=true):String;

	public static function changeBrightness(hex:String,adjustPercentage:Float):String;

	public static function indexedColor(index:Int,isBackground:Bool=false):Color;
	
	public function getHashCode():String;

}
