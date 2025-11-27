# -------- NÓ --------
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None


# -------- ÁRVORE MANUAL --------
root = Node("A")
root.left = Node("B")
root.right = Node("C")

root.left.left = Node("D")
root.left.right = Node("E")

root.right.left = Node("F")
root.right.right = Node("G")


# -------- TRAVESSIAS --------
def pre_order(node):
    if node:
        print(node.value)
        pre_order(node.left)
        pre_order(node.right)

def in_order(node):
    if node:
        in_order(node.left)
        print(node.value)
        in_order(node.right)

def post_order(node):
    if node:
        post_order(node.left)
        post_order(node.right)
        print(node.value)


# -------- MOSTRAR FILHOS --------
def mostrar_filhos(node):
    print(f"Nó: {node.value}")
    print("  Filho esquerdo:", node.left.value if node.left else None)
    print("  Filho direito :", node.right.value if node.right else None)
    print()


# -------- RAIZ --------
def raiz_da_arvore():
    return root.value


# -------- CONTAR NÓS --------
def contar_nos(node):
    if node is None:
        return 0
    return 1 + contar_nos(node.left) + contar_nos(node.right)


# -------- FOLHAS --------
def folhas(node):
    if node is None:
        return []
    if node.left is None and node.right is None:
        return [node.value]
    return folhas(node.left) + folhas(node.right)


# -------- NÓS INTERNOS --------
def nos_internos(node):
    if node is None:
        return []
    if node.left or node.right:   # se tem pelo menos 1 filho
        return [node.value] + nos_internos(node.left) + nos_internos(node.right)
    return []


# -------- ALTURA DA ÁRVORE --------
def altura(node):
    if node is None:
        return -1  # altura de árvore vazia
    return 1 + max(altura(node.left), altura(node.right))


# ---------------------------------------
#               TESTES
# ---------------------------------------

print("=== Travessias ===")
print("Pre-order:")
pre_order(root)
print("\nIn-order:")
in_order(root)
print("\nPost-order:")
post_order(root)

print("\n=== Filhos ===")
mostrar_filhos(root)
mostrar_filhos(root.left)
mostrar_filhos(root.right)

print("=== Raiz ===")
print("Raiz da árvore:", raiz_da_arvore())

print("\n=== Contagem de Nós ===")
print("Total de nós:", contar_nos(root))

print("\n=== Folhas ===")
print("Folhas:", folhas(root))

print("\n=== Nós Internos ===")
print("Nós internos:", nos_internos(root))

print("\n=== Altura ===")
print("Altura da árvore:", altura(root))
