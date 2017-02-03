%produto(#nome_prduto, #categoria).
%existencia(#nome_produto, #quantidade, #preço_custo_unitario, #tempo_de_deterioração   )
produto(macas, fruta).
produto(laranjas, fruta).
produto(ananas, fruta).
ivo.teixeira@x.pt
produto(feijao, legumes).
produto(cafe, merciaria).
existencia(macas, 20, 0.50, rapido ).
existencia(laranjas, 50, 1, rapido ).
existencia(ananas, 50, 1, medio).
existencia(feijao, 20, 0.10, medio).
existencia(cafe, 320, 4, longo).

:-dynamic imobilizado/3.

calcularTotal([],0).
calcularTotal([(V,Q)|C],T):-calcularTotal(C,T1), R is V * Q, T is T1 + R.

total_categoria(C):-produto(_,C),findall((V,Q),(produto(N,C),existencia(N,V,Q,_)),ListaValores),findall((V1,Q1),(produto(N1,C),existencia(N1,V1,Q1,'rapido')),ListaValoresR),calcularTotal(ListaValores,T),calcularTotal(ListaValoresR,TT),!,retractall(imobilizado(C,_,_)),assertz(imobilizado(C,T,TT)).

ivo.joaoteixeira@hotmail.com
