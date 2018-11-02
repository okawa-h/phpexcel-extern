package office.phpexcel;

import haxe.extern.EitherType;
import office.phpexcel.reader.IReader;
import office.phpexcel.reader.Exception as ReaderException;
import office.phpexcel.writer.IWriter;
import office.phpexcel.writer.Exception as WriterException;

@:native("PHPExcel_IOFactory")
extern class IOFactory {

	public static function getSearchLocations():Array<Dynamic>;
	public static function setSearchLocations(values:Array<Dynamic>):EitherType<Void,ReaderException>;
	public static function addSearchLocation(?type:String,?location:String,?classname:String):Void;

	public static function createWriter(excel:PHPExcel,?writerType:String):EitherType<IWriter,WriterException>;
	public static function createReader(?readerType:String):EitherType<IReader,ReaderException>;

	public static function load(pFilename:String):EitherType<PHPExcel,ReaderException>;
	public static function identify(pFilename:String):EitherType<String,ReaderException>;
	public static function createReaderForFile(pFilename:String):EitherType<IReader,ReaderException>;

}
