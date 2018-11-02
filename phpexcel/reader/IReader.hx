package office.phpexcel.reader;

import haxe.extern.EitherType;
import office.PHPExcel;
import office.phpexcel.reader.Exception as ReaderException;

@:native("PHPExcel_Reader_IReader")
extern class IReader {

	public function canRead(pFilename:String):Bool;
	public function load(pFilename:String):EitherType<PHPExcel,ReaderException>;

}
