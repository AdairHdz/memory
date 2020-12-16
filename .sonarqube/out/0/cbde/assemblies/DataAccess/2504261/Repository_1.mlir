func @_DataAccess.Repositories.Repository$TEntity$.Get$object$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :16 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :16 :27)
cbde.store %_id, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :16 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :18 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :18 :19) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :18 :48) // Not a variable of known type: id
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :18 :19) // _context.Set<TEntity>().Find(id) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.GetAll$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :21 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :23 :19) // Not a variable of known type: _context
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :23 :19) // _context.Set<TEntity>() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :23 :19) // _context.Set<TEntity>().ToList() (InvocationExpression)
return %2 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.Find$System.Func$TEntity.bool$$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :27 :8) {
^entry (%_predicate : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :27 :41)
cbde.store %_predicate, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :27 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :29 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :29 :19) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :29 :49) // Not a variable of known type: predicate
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :29 :19) // _context.Set<TEntity>().Where(predicate) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_DataAccess.Repositories.Repository$TEntity$.Add$TEntity$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :32 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :32 :24)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :32 :24)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :34 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :34 :12) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :34 :40) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :34 :12) // _context.Set<TEntity>().Add(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Repositories.Repository$TEntity$.AddRange$System.Collections.Generic.IEnumerable$TEntity$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :37 :8) {
^entry (%_entities : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :37 :29)
cbde.store %_entities, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :37 :29)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :39 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :39 :12) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :39 :45) // Not a variable of known type: entities
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :39 :12) // _context.Set<TEntity>().AddRange(entities) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Repositories.Repository$TEntity$.Remove$TEntity$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :42 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :42 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :42 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :44 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :44 :12) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :44 :43) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :44 :12) // _context.Set<TEntity>().Remove(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Repositories.Repository$TEntity$.RemoveRange$System.Collections.Generic.IEnumerable$TEntity$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :47 :8) {
^entry (%_entities : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :47 :32)
cbde.store %_entities, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :47 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :49 :12) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :49 :12) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :49 :48) // Not a variable of known type: entities
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\Repository.cs" :49 :12) // _context.Set<TEntity>().RemoveRange(entities) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
