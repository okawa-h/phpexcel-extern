package office.phpexcel.writer;

import haxe.extern.EitherType;
import office.phpexcel.writer.Exception as WriterException;

@:native("PHPExcel_Writer_IWriter")
extern class IWriter {

	public function save(?path:String):EitherType<Void,WriterException>;

}
