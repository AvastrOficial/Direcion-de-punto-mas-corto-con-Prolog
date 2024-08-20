# Direcion-de-punto-mas-corto-con-Prolog
> Es una herramienta para poder interactuar con números de mayor a menor cual es la distancia de un punto mas corta dando el resultado
>
> El reusltado se muestra en un block de notas ejemplo :
> 
> exportar_ruta(a, d).
<br></br>
![image](https://github.com/user-attachments/assets/1280de85-57f4-4459-9534-335771009441)
>
# Como se usa ?
> [exportar].
> 
> exportar_ruta(a, d).
# Informacion : 
> Leer el Archivo Exportado:
> 
> leer_ruta(file_name):
Abre el archivo ruta.txt.
Lee cada línea y extrae los nodos y aristas.
Almacena los nodos y las aristas en listas.
Crear el Grafo:
> 
> crear_grafo(nodos, aristas):
Usa networkx para construir un grafo a partir de las listas de nodos y aristas.
Cada arista tiene un costo asociado, que se añade como atributo en el grafo.
> 
