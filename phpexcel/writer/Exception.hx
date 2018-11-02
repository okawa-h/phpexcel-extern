package office.phpexcel.writer;

import office.phpexcel.Exception as ParentException;

@:native("PHPExcel_Writer_Exception")
extern class Exception extends ParentException {

	public function errorHandlerCallback(code:String,string:String,file:String,line:String,context:String):Exception;

}
