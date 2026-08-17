#set page(margin: 1.5in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
// #show raw: set text(font: "New Computer Modern Mono")
#show heading: set block(above: 1.4em, below: 1em)
#let spaceV = v(0.3em)

= Inicio 
Essas são notas que eu fiz durante o, meu, curso de Algebra Linear, usando o livro do Elon Langes Lima. 
Preconisei utilizar o maximo da intuição e a arborização dos conceitos para formular melhores conexões com outras metérias,
afim de mostar a beleza da matemática sem o rigor formal para tal.

= Sumario
... Você pode esperar uma estrutura similar ao livro do Elon.

= 1.1 Espaços vetoriais
Algebra Linear é um nome dado, hitoricamente, ao estudo de uma estrutura fundamental em toda a matematica, incluindo a fisca, quimica e outras areas naturais.
Formalmente um Espaço Vetorial é uma estrutura algebrica, com um dominio V sobre um campo K, tendo uma relação de adição e constante $arrow(0)$
$
	E.V : ({V, K}, +, arrow(0))
$  

a onde os elemntos de V (vetores) ficam definidos pelos seguintes axiomas:

#[
	#spaceV
	#set enum(spacing : 1em)
	+ Comutaticvidade :$forall v_1,v_2 in V(v_1 + v_2 = v_2 + v_1)$
	+ Associatividade :
		#list(
			marker: "",
			spacing: 1em,
			[$forall v_1,v_2,v_3 in V((v_1 + v_2) + v_3 = v_1 + (v_2 + v_3)$] ,
			[$forall alpha, beta in K ; forall v in V(alpha (beta v) = beta (alpha v))$]
		)
	+ Distributividae :
	+ Neutro aditivo : 
	+ Neutro multiplicativo : 
	+ inverso aditivo :
	#spaceV
]
/* TODO : add the others axioms*/

Você, caro leitor, que talvez não tenha lido um livro de albegra abstrata, possa estár se perguntando o que é uma estrutura alberica, e um campo, ou porque de tantos axiomas tão "simplorios" 
Bem, para começar a falar de algebra linear, precisamos primeiro olhar para um objeto, que creio eu, já bem conhecido. Os numero reais $RR$, portanto me diga dois elementos primordiais que é possivel elencar da expreção abaixo.

$ 1 + 2 = 3 $

Espero que tenhas dito algo como numero e soma. Não obstante, podemos dizer que há conceitos e simbolos. Pois, 1, 2, 2 e "+" são concetos de contagem assim como simbolos indo-arabicos. Observe que, sem perda de informação, a mesma expreção pode ser re-escrita em outros alfabetos. Como o Grego "$I + I I = I I I$"  ou hebraico "$gimel = beth + aleph$" ou ... etc. De outro modo podemos mudar os conceitos, se estivermos contando horas em relogio, de 12 horas comessando do 1, temos que $11 + 1 = 12$ , mas $12 + 1 = 1$ ou se estivermos contado casais, temos um homen mais uma mulher é igual a um casal $1 + 1 = 1$. E, assim por diante.

Portanto, precisamos dizer sobre qual conceito estamos trabalhando (estrutura algebrica) antes de afirmar qualquer outra coisa. Para a primeira expreção, observa-se que os simbolos operados estão se referindo aos reais $RR$ e o conceito de soma está no seu sentido usal, preservando ordinalidade e cardinalidade do mesmo. Para representar esses dois elementos que atestam sobre o scopo dos sibolos, usamos um par de parentese que segue a ordem, Dominio, Relação funcão, constantes e.g. $(RR,+)$. Dessa forma, se adicionarmos outras relações como subração, multiplicação e divião termeos uma estrutura algenrica nomeada campo (ou corpo) - Dada a resalva que está é apenas um pequena intrudção a Algebra Abstata e não vejo a necessidade de re-interar que não pretendo ser formal.

Sendo assim, quando dizeos que os vetores (elementos do espaço vetorial) são associativos e comutativos, estamos elegantemente descrenvendo a natureza destes que não precisma estár em ordem para si somar. Caso contario de uma linha de produção industrial, o ultimo elemento não pode ser o primeiro. De mesmo modo, o neutro aditivo e multiplicativo está nos informando que  exite um elemento o qual não muda o vetor operado. E, subsequentemete exite um vetor que ao ser somado com algum outro vetor determindado resulta no vetor nulo $arrow(0)$.
A distributitivade é o cargo chefe da algebra linear, pois é elá quem dá o carater "Linear" que será discutido adiante.

= Hitória
Os axiomas acima não surgiram do nada, como alguem que tropeça em uma folha escriturada e assinada, mas sim de uma intricada abstração de elementos que são muito utilizados na fisica. Se pecisarmos descrever os movimentos de corpos, então estaremos jogando com os concetos de velocidade, acelreção e posição os quais precisam de uma direção sentido e intecidade. Observe que as ternas ordenadas elemetos do $RR^3$, e.g. (1,2,3), são perfeitas para esse tipo de situação. Pois apontam um sentido, pssuem uma drireção positiva ou negativa - quando fixado a origem como ponto de partida- e pode ser atribuido uma intencidade a partir da sua distancia á origem. Não por outro mutivo o pai da fisica, Newton, fundou os alicerces de sua teoria nelas. O conjunto de todos os seguimentos de retas que partem de A á B - esta seria a definição de vetor na época. E, por "co-encidência" estranha stisafzem todos os axiomas acima.

Nesse sentido de utilização, se tomou como norma, utilizar uma flecha para indicar um vetor no espaço.

*Exemplo:* Se quisermos saber a posição de uma lâmpada, no teto, no referencial de uma mosca voando em um quarto (de duas dimeções espaciais e uma temporal).
Podemos usar as ternas ordenas para identificar a posição da mosca $mu = (z, y, t)$ e da lâmpada l =  $(l_1, l_2, l_3)$ ( no referncial do quarto). De modo que o vetor resultante $gamma$ da subtração $l - mu$ é o vetor que aponta para a lampda no referencial de mosca.
De outro modo, tendo um conjunto de equações que mapeão a posição da mosca na posição da lâmpada, podemos construir um sistema que delega a posição da lâmpada no refrencial da mosca.
#spaceV
$
cases(
	a x + b y + &lambda t &= l_1,
	c x + d y + &lambda t &= l_2,
	&lambda t &= l_3
) \
cases(
	a x + b y + &lambda t - x &= l_1 - x,
	c x + d y + &lambda t - y &= l_2 - y,
	&lambda t - lambda t &= l_3 - lambda t
)
=
cases(
	(a - 1)x + b y + &lambda t &= gamma_1,
	c x + (d -1)y + &lambda t &= gamma_2,
	&0 &= gamma_3
)
$
#spaceV

= Matrizes
Poderiamos ter parado aqui, mas _Joseph Sylvester_ decidiu continuar, ousando, com uma sacada de genio. Porquê não separamos as vriaveis, a saber x, y e t, das contentes atravez de um lista fechada com chaves (matriz) ? A onde a multiplicação satisfaz as condições acima
#spaceV
$
mat(
	a-1 , b, lambda;
	c, d-1, lambda;
	0, 0 , 0	
)
mat(
	x;
	y;
	t
) = 
mat(
	gamma_1;
	gamma_2;
	gamma_3
)
$
#spaceV

Isso permite escrever a terna ordenada $gamma$ como a multiplicação de um componente A pela terna ordenada $mu$, obtendo uma forma concisa de representar transformções de vetores no espaço euclidiano. Contudo essa informalidade não vislumbra todo o poder que este "gatilho" pode estourar.
Observe que a matriz, denotada por A, pode ser re-inetrpretada como uma função $phi : I times J subset NN^2 -> RR | I = {1,2,3} \;J = {1,2,3}$. No qual as linhas e colunas são representadas pelo produto cartesiano dos subconjuntos I e J dos naturais, e o conteudo de cada linha por coluna é a sua imagem (nos reais).
Observe que podemos mudar a o conteudo da matriz, mantendo a quantidade de linhas e colunas, gerando uma infinidade de funções. Nesse sentido, denotaremos phi na forma $phi in M_(i,j)$. Assim, podemos definir a multiplição entre matrizes, quando a quntidade de colunas da matriz a esquerda for igual a quantidade de linhas da direita $alpha in M_(a,b) \; beta in M_(b,d) ( alpha times beta = gamma in M_(a,d) | gamma (i,j) = sum ...)$

Note que, a partir dessa definção, podemos com extrema ficilidade verificar que essas funções - um tanto peculiares - goza de todas os, 6, axiomas do E.V. Portanto matrizes, como conhecemos, é um vetor no espaço vetorial gerado sobre todas as matrizes.

= Sub-espaços vetoriais

= Bases

= Transformações Lineares

= Auto-Vetores Auto-Valores

= Kernel

= Geometria Analitica
Pssuindo em mãos as ferramentas para o desbravamento dos espaços vetorias. Certamente podemos comessar a explorar as usas aplicações.

Rotomando a definição de reta. Sabemos que o seu conjunto de pontos, possui o mesmo angulo para uma mesma referencia. Sendo a sua expreção como uma função no corpo dos reais : $f(x) = a x + b$ em que (0, b) é o ponto que intercepta o eixo $y$. Observe-que, isto carcteriz um sub-espaço veotiral do $R^2$ em podemos achar uma base com muita facilidade.


== Quádricas
Dentro do cojunto de espaçõs geoemtricos, há aqueles obtidos pela rotação de figuras planas já conhecidas, a saber, parabola, elpise e hiperbole.
Sendo necessario escolher uma reta do espaço $R^3$, a qua será a referencia para rotação. Nesse sentido, usa-se o eixo z quando a conica a ser rotacionada está normalizada  ( sem rotações ou translações em relação a origem ).

=== Paraboloide
Admintindo o, pleno, conhecimnto da função polinomial quadratica $f(x) = a_0x^2$. Obtemos uma verção para o $RR^3$ da seguinte forma $z(x,0) = a_0^x^2$ ou $x(0,y) a_0^'y^2$. Observe-que para um $x = y$ z é equipotente, possui o mesmo valor. Portanto:
$
z(x,y) = z(x, 0) + z(0, y)
z = a_0^x^2 + a_0^'y^2\
$
Assumindo que $a_0 = a_0^'$
$
z(x,y) = a_0(x^2 + y^2)
$
Assumindo que $a_0 != a_0^'$, ou seja os traços verticais( no plano zx ou zy) germa parabulas diferentes. Então :
$
	a_0 = frac(c, a^2)\
	a_0^' = frac(c, b^2)\
	frac(z, c) = frac(x^2, a^2) + frac(y^2, b^2)
$

=== Elipsoide
Admintindo o, pleno, conhecimnto da equação eliptica $frac(x^2, a^2) + frac(y^2, b^2) = 1$. Obtemos uma verção para o plano $xz$ da seguinte forma $frac(x^2, a^2) + frac(z^2, c^2) = 1$. Assim como para o plano $zy$ da seguinte forma $frac(y^2, b^2) + frac(z^2, c^2) = 1$ . Portanto :

$
frac(y^2, b^2) + frac(x^2, a^2) + frac(z^2, c^2) = 1
$

=== Hiperboloide
Admintindo o, pleno, conhecimnto da equação hiperbolica $frac(x^2, a^2) - frac(y^2, b^2) = 1$. O Obtemos uma verção para o plano $xz$ da seguinte forma $frac(x^2, a^2) - frac(z^2, c^2) = 1$. Observe-que, ao rotacionar a hiperbole entrono do eixo Z em cada plano de rotação a distnacia $r = sqrt(x^2 + y ^2)$ staisfaz o equação acima. Portanto :
$
frac(x^2 + y ^2, a^2) + frac(z^2, c^2) = = frac(x^2, a^2) + frac(y^2, a^2) + frac(z^2, c^2) = 1 ; Admintindo a indenpendecia do eixo y \
frac(x^2, a^2) + frac(y^2, b^2) + frac(z^2, c^2) = 1
$