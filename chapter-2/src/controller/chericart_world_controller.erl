-module(chericart_world_controller, [Req]).
-compile(export_all).
  
hello('GET', []) ->
    {ok, [{world}]}.