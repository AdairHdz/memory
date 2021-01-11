func @_DataAccess.Repositories.Repository$TEntity$.Get$object$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :70 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :70 :27)
cbde.store %_id, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :70 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :72 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :72 :19) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :72 :48) // Not a variable of known type: id
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :72 :19) // _context.Set<TEntity>().Find(id) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.GetAll$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :79 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :81 :19) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :81 :19) // _context.Set<TEntity>() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :81 :19) // _context.Set<TEntity>().ToList() (InvocationExpression)
return %2 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :81 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.Find$System.Func$TEntity.bool$$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :89 :8) {
^entry (%_predicate : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :89 :41)
cbde.store %_predicate, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :89 :41)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :91 :51) // new List<TEntity>() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :92 :16) // Not a variable of known type: predicate
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :92 :29) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :92 :16) // comparison of unknown type: predicate != null
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :92 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :94 :34) // Not a variable of known type: _context
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :94 :34) // _context.Set<TEntity>() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :94 :64) // Not a variable of known type: predicate
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :94 :34) // _context.Set<TEntity>().Where(predicate) (InvocationExpression)
br ^2

^2: // JumpBlock
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :96 :19) // Not a variable of known type: matchingResults
return %10 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :96 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.FindFirstOccurence$System.Func$TEntity.bool$$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :104 :8) {
^entry (%_predicate : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :104 :42)
cbde.store %_predicate, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :104 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :106 :43) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :106 :43) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :106 :73) // Not a variable of known type: predicate
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :106 :43) // _context.Set<TEntity>().Where(predicate) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :107 :16) // Not a variable of known type: results
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :107 :16) // results.Any() (InvocationExpression)
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :107 :16)

^1: // JumpBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :109 :23) // Not a variable of known type: results
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :109 :23) // results.First() (InvocationExpression)
return %9 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :109 :16)

^2: // JumpBlock
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :111 :19) // null (NullLiteralExpression)
return %10 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :111 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.Add$TEntity$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :118 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :118 :24)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :118 :24)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :120 :15) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :120 :25) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :120 :15) // comparison of unknown type: entity != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :120 :15)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :122 :16) // Not a variable of known type: _context
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :122 :16) // _context.Set<TEntity>() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :122 :44) // Not a variable of known type: entity
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :122 :16) // _context.Set<TEntity>().Add(entity) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function AddRange(none), it contains poisonous unsupported syntaxes

func @_DataAccess.Repositories.Repository$TEntity$.Remove$TEntity$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :143 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :143 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :143 :27)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :145 :16) // Not a variable of known type: entity
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :145 :26) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :145 :16) // comparison of unknown type: entity != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :145 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :147 :16) // Not a variable of known type: _context
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :147 :16) // _context.Set<TEntity>() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :147 :47) // Not a variable of known type: entity
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :147 :16) // _context.Set<TEntity>().Remove(entity) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function RemoveRange(none), it contains poisonous unsupported syntaxes

