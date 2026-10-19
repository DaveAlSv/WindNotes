#set page(margin: 1.5in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
// #show raw: set text(font: "New Computer Modern Mono")
#show heading: set block(above: 1.4em, below: 1em)
#let spaceV = v(0.3em)

#set document(
	title: [Euler e a saga no infinito]
)

#align(center)[
	#title()
]

#spaceV
== About
autores: Dave Alves Silvino \
data: 24/jul

== Introdução
Leonhard Euler foi principalmente um matemático rencentista (século 18) que abriu o seu espaço atravéz de contribuições a diversos ramos da ciênecia, incluindo a linguagem matemática. Assim como a sua lendária capacidade de produzir artigos matamáticos complexos, para a sua época, com os olhos blindados pela catarata. A saber, seus trbalhos fundaram o estudo da topologia, teoria de grafos, geometria, teoria dos numeros, análise complexa e cauculo. Sendo uma das suas maiores contruibuições a popularização e utilização de, alguns, simbolos gergos para denotar coneceitos matemáticos abstartos tal como o $pi, sum, f(x), i, e$ . Este artigo se proporá a discutir o ultimo simbolo da lista, anteriore, desenvolvendo a sua intuição e efeitos. 

== O numero de Euler
=== História
A primeira descrição do numero euler ocorreu sobre a analise dos juros compostos por Jacob Bernulli, contemporanio de Euler.
Juros, são utilizados desda antiguidade para multiplicar o montante eprestado a outrem.

Exemplo: Se 100R\$ fossem emprestados, durante 2 meses, no qual a cada mes requistarmos 10% do valor inicial

#par(first-line-indent: 0pt)[
O seu pretexto basico, é um acrecimo persentual "$J$", linear, ao longo do periodo, "$n$", em que o emprestimo foi realizado. Na seguinte formula $M = V + V dot J n = V(1 + J n)$. Contudo se quisermos compor o juros em cada periodo de modo a obter um montante mais "gordo", será necessario abdicar da lineardiade e tornar a expreção exponencial, na forma $M = V(1 + J)^n$, em que J é juros nominal de cada perido. Observe que J é o juro cobrado por periodo, isso significa que temos um acrecimo persentual total, j , iugual a $J dot n$. sendo diluido durante o peridodo n. Portanto podemo re-escrever o montante como $M = V(1 + j/n)^n$
A acumulação obtida, a saber $a_j(n) = (1 + j/n)^n$, é uma sequencia cresente e converjente para todo j - veja Theorem 1. Sendo assim, para cada juro, exite um acumulação maximo o qual pode ser obtido. De modo que se j for igual a $1 = 100%$ então no limite em que n tende ao infinito temos que $lim_(n arrow infinity) a_1(n) approx 2,7$. Jacob Bernulli batisou de b, contudo foi o "e" de euler que se popularisou.
]

=== Propiedades
o numero de Euler pode ter se originado das finanças, contudo o seu valor não se restringe apenas a ela.
==== Theorem 1
A seguir demonstrarei que o a função de acumulçâo é uma sequencia convergente
$
	a(n) - a(n-1) > a(n-1) - a(n-2) \
	a(n) (1 + frac(1, a(n))) > a_n (frac(1, a(n)) + frac(1, a(n)^2)) \
	1 > frac(1, a(n)^2) space qed text("CQD")
$ 

Sendo uma sequncia infinita e convergente, segundo os criterios de Cauchy, então esiste o limite e ele é igual a "e"  - quando j é igual a 1

==== Forma numerica
Para além da definição, o numero de euler, pode ser re-obtido através de manipulações algebricas sobre a função de acumulação.
$ e = lim_(n -> oo) (1 + 1/n)^n = sum_(k=0)^(oo) 1/k! $
Da seguinte forma:

#spaceV
1. Aplicamos o Binômio de Newton:
$ (1 + 1/n)^n = sum_(k=0)^n binom(n, k) (1/n)^k $

2. Desenvolvendo o coeficiente binomial:
$ binom(n, k) (1/n)^k = n! / (k! (n - k)!) . 1/n^k = 1/k! . (n(n - 1)(n - 2) ... (n - k + 1)) / n^k $

3. Distribuindo o denominador $n^k$ entre os $k$ fatores do numerador:

$ 1/k! . [ 1 . (1 - 1/n) (1 - 2/n) ... (1 - (k - 1)/n) ] $

4. Portanto, a soma completa para um $n$ finito fica:

$ (1 + 1/n)^n = sum_(k=0)^n 1/k! product_(j=0)^(k-1) (1 - j/n) $

5. Tomando o limite quando $n -> oo$, observamos que para qualquer $j$ fixo:

$
lim_(n -> oo) (1 - j/n) = 1 space space qed text("CQD")
$

==== Funções exponenciais e logaritimicas
Dentro do cauculo as funções exponenciais e logaritimicas compõem um dueto dificil de se derivar sem a ajuda do numero de euler pois, pela definição de derivada temos que

Para a função exponencial: $g(x) = a^x$
$
	g'(x) = lim_(h arrow 0) frac(a^(x+h) - a^x,h) = a^x lim_(h arrow 0)frac(a^(h) - 1,h)
$
#h(1.8em)
Para a função logartimica: $p(x) = log_a(x)$
$
	p'(x) = lim_(h arrow 0) frac(log_a (x+h) - log_a (x),h) = lim_(h arrow 0) frac(log_a (1 + h/x),h)\
	frac(1,x) lim_(h arrow 0) log_a (1 + h/x)^frac(x,h) = frac(1,x) log_a ( lim_(h arrow 0) (1 + h/x)^frac(x,h) )
$

*E ai, como é que resolve esses limites ?*
#spaceV
Bom, atravez da definição do numero de euler, sabemos que $lim_(h arrow 0) (1 + h/x)^frac(x,h) = e$ atrvés de subistuições de variaveis. Portanto
$
	p'(x) = frac(1,x)log_a (e)
$

E, o limite de $frac(a^(h) - 1,h)$ pode ser resolvido atravez de uma mundança de varival, a saber $u = a^h - 1$, sendo que 
Quando $h -> 0$, temos $u -> 0$. $ a^h = 1 + u arrow h . ln(a) = ln(1 + u)$. Portanto $ h = ln(1 + u) / ln(a) $

1. Substituindo no limite original:

$ lim_(h -> 0) (a^h - 1)/h = lim_(u -> 0) u / (ln(1 + u) / ln(a)) = ln(a) . lim_(u -> 0) 1 / (1/u . ln(1 + u)) $

2. Aplicando a propriedade dos logaritmos $k . ln(x) = ln(x^k)$:

$ = ln(a) . lim_(u -> 0) 1 / ln((1 + u)^(1/u)) $

3. Como $lim_(u -> 0) (1 + u)^(1/u) = e$ e $ln(e) = 1$:

$ = ln(a) . 1 / ln(e) = ln(a) . 1/1 = ln(a) $

Concluindo que:
$
	g'(x) = a^x ln (a)
$

==== Identidade fundamental de Euler
Por se tartar de um abuso de anotação, omitirei o seu resultado