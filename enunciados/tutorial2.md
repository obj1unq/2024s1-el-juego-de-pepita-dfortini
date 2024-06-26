# Tutorial 2

> Objetivo del nivel: acciones con las teclas

### Contexto
Ahora necesitamos que pepita gaste energía cada vez que se mueve, es por eso que en este nivel necesitamos tener mayor control sobre qué hacer cuando se presionen determinadas teclas. Ya están configuradas las teclas de movimiento izquierda y derecha para que Pepita se mueva y pierda la energía correspondiente por volar dicha distancia.

Como Pepita pierde energía al moverse, vamos a necesitar que pueda comer las comidas para evitar que se quede sin energía...


### Requerimientos
- Pepita comienza con energía = 100.
- Configurar las teclas arriba, abajo, izquierda y derecha para que mueva a Pepita a las respectivas posiciones. Pepita debe volar hacia la nueva distancia, y gastará 9 joules de energía por cada kilómetro volado (considerar la distancia entre la posición nueva y la anterior).
- Hacer que Pepita se vea gris al quedarse sin energía. Además, no debería poder moverse una vez que se quedó sin energía.

- Configurar la C para que Pepita coma la comida sobre la que está parada. Al comer una comida, pepita aumenta su energía correspondiente a la otorgada por la comida y ésta última desaparece del juego.

> Para obtener el objeto con el que pepita se encuentra colisionando usar el mensaje `game.uniqueCollider(pepita)`.
- **BONUS**: 
  - Antes de mover a pepita, controlar que no se vaya del rango visible del juego.
  - Luego de moverse, si se queda sin energía, terminar el juego.
  - Utilizar el evento `onTick` para agregar gravedad, haciendo que pepita pierda altura cada `800` milisegundos, es decir, descienda su coordenada `y` en 1, pero _sin perder energía_.
  - Agregar muros y paredes que pepita no puede atravesar
