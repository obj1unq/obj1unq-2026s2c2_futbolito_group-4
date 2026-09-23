# Futbolito

Este ejercicio guía una clase de como trabajar en grupo usando GIT. La dinámica de la clase
está en esta presentación: https://docs.google.com/presentation/d/1-o5zEUfuUT72ea8q2rk8mwHSqMkdJvTyQ9Y8eqUTVZA


Los requerimientos esperan que ya se haya explicado wollok game (parte 1: objetos visuales, posiciones y mapeo de teclas (bloques)). También incluye validaciones (excepciones) y testing.
Se epera que los estudiantes ya sean capaces de trabajar con git de manera individual (clonar y pushear en main)


## Dinámica

Cada integrante del grupo debe resolver sólo uno de los requerimientos en un 
*feature branch*, y luego realizar un *pull request (PR)* sobre *main*. Esperar a que 
cada estudiante termine su requerimiento antes de comenzar a *mergear* los *pull requests*

## Requerimientos (pizarrón)

- **inicio** : al apretar la tecla *i* la pelota se debe quedar en el origen borde izquierdo (0,5)
- **Buscarla** : al apretar la tecla *b* lionel se mueve a donde está la pelota


## Requerimientos (Estudiantes)
- **Patear**: Hacer que Lionel patee la pelota al apretar la tecla *p*: La pelota se desplaza 3 posiciones
 a la derecha (o lo máximo que se pueda antes de salir de pantalla). Tip: usar el método min de los números entre el x actual de la pelota + 3 y el ancho del tablero - 1.
Validar que la pelota se encuentre en la misma posicion que Lionel
- **Taquito**: Hacer Lionel de un pase atrás al apretar la tecla *t*: La pelota se mueve 2 posiciones a la izquierda. (o lo máximo que se pueda mover)
  Tip: usar el método max de los números entre el x actual de la pelota - 2 y 0.
  Validar que la pelota se encuentre en la misma posición que Lionel.
- **Camiseta** Hacer que Lionel cambie su camiseta al apretar la tecla *c*. Si tiene la camiseta titular pasará a 
usar la suplente y viceversa. Validar que solo se puede realizar si lionel está sobre el borde izquierdo (El x de la posición debe ser 0)
- **Sombrero** Al apretar la tecla *L*, hacer que la pelota suba por (eje y) 1 posición, y luego de 2 segundos baje nuevamente a dónde estaba. Tip: Usar un scheduler. Validar que la pelota se encuentre en la misma posicion que Lionel.

Nota: No olvidarse de hacer los tests también, son parte del requerimiento!
Nota: Ojo con asumir en los tests que el tablero tiene el mismo tamaño que en el program. No es así. 
Usar un describe con el método initialize

## Luego de los *merges* 
Puede pasar que haya quedado código duplicado (¿Tal vez en las validaciones?). Si es así, en un nuevo feature branch
hacer el refactor para eliminar el código duplicado.

También podría pasar que un lo que andaba muy bien en tu feature branch se vea afectado por lo que introdujo otro.
Según como lo hayan implementado, podría pasar que si levantás la pelota, y la mandás al inicio antes que caiga, quede un efecto raro.
En ese caso hay que hacer un nuevo feature branch, armar un test case que detecte el problema y resolverlo 
(elijan de que manera se debería comportar en ese caso)





   


