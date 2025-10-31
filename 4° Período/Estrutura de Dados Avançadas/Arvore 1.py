class Node:
    def __init__(self, value):
        self.value = value      
        self.left = None       
        self.right = None

A = Node('2')
B = Node('4')
C = Node('8')
D = Node('16')
E = Node('32')
F = Node('64')
G = Node('128')

A.left = B 
A.right = C

B.left = D
B.right = E

C.left = F
C.right = G


def print_tree(node, level=0): #node: O nó atual que a função está processando e level: O nível de profundidade do nó na árvore, usado para indentação na impressão.
    if node is not None:
        # Primeiro chamamos a função recursivamente para o filho da direita
        print_tree(node.right, level + 1)

        # Imprimimos o valor do nó atual com indentação proporcional ao nível
        print('    ' * level + node.value)

        # Depois chamamos a função recursivamente para o filho da esquerda
        print_tree(node.left, level + 1)

print_tree(A)

def in_order(no):
    if no:
        in_order(no.left)
        print(no.value)
        in_order(no.right)
in_order(A)