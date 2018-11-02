package office.phpexcel;

@:native("PHPExcel_Autoloader")
extern class Autoloader {

	public static function register():Void;
	public static function load(pClassName:String):Bool;

}
