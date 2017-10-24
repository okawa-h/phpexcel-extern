package office.phpexcel;

import office.phpexcel.Exception;
import office.phpexcel.reader.IReader;
import office.phpexcel.writer.IWriter;

@:native("PHPExcel_IOFactory")
extern class IOFactory {

	public static function getSearchLocations():Array<Dynamic>;
	public static function setSearchLocations(values:Array<Dynamic>):Void;
	public static function addSearchLocation(type:String='',location:String='',classname:String=''):Void;

	public static function createWriter(excel:PHPExcel,type:String):IWriter;
	public static function createReader(readerType:String=''):IReader;

	public static function load(filename:String):PHPExcel;
	public static function identify(filename:String):String;
	public static function createReaderForFile(filename:String):IReader;

}
