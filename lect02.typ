#import "definitions.typ": *

#corollary[
  $Rad(attach(A, bl: A)) = attach(J(A), bl: A), Rad(attach(A, br: A)) = attach(J(A), br: A)$ и $Rad(A) = J(A)$ (в коммутативном случае).
]

Ниже под $R$ понимается ассоциативное кольцо с единицей.
#definition[
  Подмодуль $X$ модуля $M_R$ называется малым, если для всякого $K lt.eq.slant M$\ из $X+K=M$ следует $K = M$.
]

#lemma[
  Пусть $A$ -- конечномерная алгебра, $M_R$ -- правый $A$-модуль. Тогда
  + Любой малый подмодуль $M$ лежит в $Rad(M)$.
  + $Rad(M)$ есть сумма малых модулей.
]
#proof[
  + Пусть имеется малый подмодуль $N subset.eq.not Rad(M)$. Тогда существует максимальный подмодуль $U$, не содержащий $N$. Из максимальности $U$ следует $N + U = M$, а значит $U = M$. Противоречие с максимальностью $U$.
  + $Rad(M) = sum_(x in Rad(M)) A x$. Покажем, что каждый $A x$ мал. "Дело за малым" - А. В. Семёнов.\
  Пусть $A x + K = M$, проверим, что $K = M$.
  $ M arrow.twohead^(pi_1) M/K = (A x)/(A x sect K) =: D_A tilde.equiv^(pi_2) A/Ker((A arrow.long_(1 arrow.bar x) M)) arrow.twohead^(pi_3) A/I = S. $
  Первое равенство получено по второй теореме об изоморфизме. $D_A$ -- циклический модуль. $I$ -- некоторый максимальный подмодуль, в который вложено ядро. $S$ -- простой модуль.\
  Положим $f = pi_3 pi_2 pi_1 : M -> S$ -- эпиморфизм в простой модуль. Значит $Ker(f)$ -- максимальный подмодуль $M$, тогда $x in Ker(f)$ так как он изначально брался из радикала.\
  $K subset.eq Ker(f)$ так как $K subset.eq Ker(pi_1)$. Получаем, что $Ker(f) = M$. Противоречие.
]

#theorem[
  Если $A$ -- конечномерная алгебра и $M_A$ -- модуль, то $Rad(M)$ мал.
]
#proof[
  + Пусть $M$ конечнопорождён. Тогда $Rad(M)$ конечнопорождён по (#text(fill: author)[У МЕНЯ НАПИСАНО НЁТЕРОВОСТИ, НО НАДО ПРОВЕРИТЬ]). Тогда можно считать, что радикал представляется конечной суммой малых модулей. Остаётся показать, что сумма двух малых мала. Действительно, $(N_1 + N_2) + K = M  arrow.double.long N_2 + K = M arrow.double.long K = M$.
  + #scam-alert[
    $M = lim_(arrow^n) M_n$, где $M_n$ конечнопорождённые. $Rad(M) = lim_(arrow^n) Rad(M_n)$ так как радикал сохраняется при гомоморфизмах. Тогда $Rad(M)$ мал так как $ |Rad(M)-Rad(M_n)| < epsilon arrow.double Rad(M) + K = M. $
  ]
]

= Проективные модули
== Свойства

#definition[
  Модуль $P_R$ называется проективным, если $ forall f : P -> N quad forall sigma : M arrow.twohead N quad exists g: P -> M : f = sigma g. $
  #align(center, diagram(cell-size: 15mm, {
  let (P,M,N) = ((1,0),(0,1),(1,1))
  node(P, $P$)
  edge(P, N,  label-side: left, $forall f$, "->")
  edge(P, M, $exists g$, "-->") 
  node(M, $M$)
  edge(M, N, label-side: right, $forall sigma$, "->>")
  node(N, $N$)
  }))]

#lemma[
  Любой свободный модуль проективен.
]
#proof[
  Рассмотрим свободный модуль $F$ и зафиксируем диаграмму #align(center, diagram(cell-size: 15mm, {
    let(M,N,F) = ((0,0),(1,0),(2,0))
    node(M,$M$)
    node(N,$N$)
    node(F,$F$)
    edge(M, N, $sigma$, "->>")
    edge(N, F, $f$, "<-")
  }))
  Пусть ${w_j}_(j in I)$ -- базис $F$, $f(w_j) = y_j$. Так как $sigma$ сюръективно, $forall j in I : exists x_j in M : sigma(x_j) = y_j $.
  Положив $g(w_j) = x_j$ замкнём диаграмму до коммутативной:
  #align(center, diagram(cell-size: 15mm, {
    let(M,N,F) = ((0,0),(1,0),(2,0))
    node(M,$M$)
    node(N,$N$)
    node(F,$F$)
    edge(M, N, $sigma$, "->>")
    edge(N, F, $f$, "<-")
    edge(F, M, $g$, bend: 30deg, "->")
  }))
]
