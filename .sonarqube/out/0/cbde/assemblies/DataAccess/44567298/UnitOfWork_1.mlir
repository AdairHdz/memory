func @_DataAccess.Units_of_work.UnitOfWork.Complete$$() -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :51 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :53 :19) // Not a variable of known type: _context
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :53 :19) // _context.SaveChanges() (InvocationExpression)
return %1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :53 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Units_of_work.UnitOfWork.Dispose$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :59 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :61 :12) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Units of work\\UnitOfWork.cs" :61 :12) // _context.Dispose() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
