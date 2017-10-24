package office.phpexcel.reader;

import office.PHPExcel;

@:native("PHPExcel_Reader_IReader")
extern class IReader {

	public function canRead(filename:String):Bool;
	public function load(filename:String):PHPExcel;

}
