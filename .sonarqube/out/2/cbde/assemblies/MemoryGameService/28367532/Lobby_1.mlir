func @_MemoryGame.MemoryGameService.DataTransferObjects.Lobby.AddPlayerToLobby$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :58 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :58 :37)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :58 :37)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :58 :50)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :58 :50)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :60 :44) // new PlayerInLobby()              {                  Host = host,                  Username = username,                  Connection = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>()              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :62 :23) // Not a variable of known type: host
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :63 :27) // Not a variable of known type: username
// Entity from another assembly: OperationContext
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :64 :29) // OperationContext.Current (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :64 :29) // OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :66 :12) // Not a variable of known type: _playersConnectedToLobby
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :66 :41) // Not a variable of known type: lobbyRequestDto
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :66 :12) // _playersConnectedToLobby.Add(lobbyRequestDto) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RemovePlayerFromLobby(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.MemoryGameService.DataTransferObjects.Lobby.GetPlayersConnectedToLobby$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :89 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :91 :19) // Not a variable of known type: _playersConnectedToLobby
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\Lobby.cs" :91 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetUsernamesOfPlayersConnectedToLobby(), it contains poisonous unsupported syntaxes

// Skipping function NotifyPlayersMatchHasBeenDeleted(), it contains poisonous unsupported syntaxes

// Skipping function NotifyOnePlayerLeftLobby(none), it contains poisonous unsupported syntaxes

// Skipping function NotifyNewPlayerEnteredLobby(none), it contains poisonous unsupported syntaxes

