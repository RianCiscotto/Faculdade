# Árvores
#Arvore binaria de bisca bst
#arvore avle
#B e B+
'''
Raiz - 
Nó - cada elemento da árvore é chamado de nó
Folha - é um nó que não possui filhos, esquerda e direita sao none
Nó interno - peno pelos um filho, não é folha enm raíz necessariamente
Pai - Um nó que possui um ou mais filhos
Filhos - é um nó que possui pai
Irmão - é um nó que compartilha do mesmo pai
Aresta - é a ligaçãoe entre os nós, o numero de arestas pe sempre igual ao numero de nós menos 1
altura - Comprimento do maior caminho da raiz até uma folha, numero maximo de arestas do caminho mais longo da raiz ate uma folha
Ascendente - acendente de um nó é qualquer nó no caminho da raiz até ele, isso inclui pai, avo, bisavo, ate a raiz
Descendente - um descendente de um nó é qualquer nó abaixo dele na hierarquia
Subarvores - é qualquer nó e seus descendentes, toda arvore é composta por subasvores, isso permite a implementacao recursiva de algoritmos
Grau de um nó - é o numero de filhos que um nó possui ( arvores binarias, o grau maximo é 2 )
Profundidade - é o numero de arestas desde a raiz até ele, a raiz tem profundidade 0 e seus filhos tem produnfidade de 1 a 5 em diante
Nivel - o nivel de um nó é igual a sua profundidade mas muitas vezes contado a partir de 1


Raiz - A
Nó - A, B, C, D, E, F, G, H
Pai - A, B, C, D
Filhos - B, C, D, E, F, G, H
Grau - A = 1, B = 2, C = 2, D = 1
Nivel - 4
Profundidade - 3 
Folhas - E, F, G, H
Ascendente - B = A   /  C = A  / D = B, A  / E = B, a  / F = C, A  / G = C, A  / H = D, B, A
Descendente - A = B, C, D, E, F, G, H  /  B = D, E e H   /  C = F e G    / D = H 
Altura da arvore - 3
Nós internos - A, B, C, D
Irmão - B e C, D e E, F e G
Arestas - 7





Árvore binária balanceada - é quando ela tem ramificações para ambos os lados, direita e erda, Complexidade O(log n)

  1
 / \
5    2
     \
      3
       \
        4 
         \
          5
Árvore binária Desbalanceada - Normalmente ela segue só um padrão, complexidade O(n)
1
\
 2
 \
  3
  \
   4
   \
    5




Árvore binária de busca (BST) ----------- usa a tabela unicode quando for string


     Uva
 /          \
banana    Maça
     

Regras: 

vantagens: 

desvantagens: 






/              Pre-order (nó -> Esquerda -> Direita)                 /





/              Post-order (Esquerda -> direita -> nó)                 /









  8                     Pre ordem: 8, 3, 10
 / \                    In ordem:
3   10
     










/              Para que serve um árvore?                 /












'''
