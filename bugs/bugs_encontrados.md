# Registro de bug y observaciones exploratorias

No se adjuntó evidencia gráfica. Solo BUG-01 es un fallo reportado por el estudiante; los otros requieren confirmar requisitos.

## BUG-01 — Se puede finalizar un pedido con el carrito vacío

**Descripción:** El estudiante reportó que, sin ningún producto agregado, el sitio permite recorrer el checkout y alcanzar la finalización de una compra simulada. El problema potencial es una validación de negocio ausente para impedir pedidos sin artículos. No existe cobro real en SauceDemo.

**Pasos de reproducción:**
1. Iniciar sesión con una cuenta válida (usuario exacto: por confirmar).
2. Asegurar que el carrito no tenga artículos.
3. Abrir «Your Cart» y seleccionar «Checkout».
4. Si avanza, completar los campos obligatorios con datos de prueba.
5. Pulsar «Continue» y luego «Finish».
6. Observar si se muestra una confirmación con cero productos.
Referencia: TC-006.

**Resultado observado:** El usuario informó que el proceso permite finalizar un pedido vacío. No aportó imagen, total exacto, texto final ni una segunda reproducción.

**Esperado:** El sistema debería impedir confirmar pedidos sin artículos si se establece la regla «pedido requiere al menos 1 producto» y mostrar un mensaje claro.

**Prioridad:** Alta (provisional; revisión de regla de negocio)

**Severidad:** Media (provisional; sin operación financiera real)

**Ambiente:** SauceDemo, web pública. Fecha: 20/10/2026. Hora consignada: 21:45*. Cuenta, navegador, sistema operativo y versión: no confirmados.

**Adjuntos:** Evidencia pendiente. Capturas sugeridas: 01_carrito_vacio.png y 02_checkout_vacio_confirmado.png.

**Notas:** Estado: FAIL reportado por el estudiante. Falta reproducción, evidencia visual y confirmar usuario y requisitos. *Hora asignada dentro del intervalo solicitado; no procede de log.

## OBS-02 — Repetición indefinida de productos en catálogo con carga diferida

**Descripción:** En https://www.saucedemo.com/dynamic-catalog-lazy-load.html, el estudiante observó un scroll continuo que vuelve a mostrar los mismos productos de manera repetida. Se desconoce si la página está diseñada intencionalmente como demostración de carga infinita.

**Pasos de reproducción:**
1. Abrir la URL de catálogo dinámico.
2. Registrar nombres e imágenes de la primera tanda de productos.
3. Desplazarse hacia abajo para provocar carga adicional.
4. Comparar nombres, imágenes y precios entre tandas.
5. Repetir después de recargar y grabar la secuencia.
Referencia: observación exploratoria; no es uno de los 5 TC obligatorios.

**Resultado observado:** Según el estudiante, la lista no parece terminar y los productos se repiten al seguir bajando.

**Esperado:** Pendiente de especificación: si el catálogo pretende tener elementos únicos, la carga debería evitar duplicados; si implementa un feed de demostración, la repetición podría ser normal.

**Prioridad:** Media (solo si la repetición viola los requisitos)

**Severidad:** Por definir; hipótesis no validada

**Ambiente:** SauceDemo, página dynamic-catalog-lazy-load.html. Fecha: 20/10/2026. Hora consignada: 21:47*. Navegador, cuenta y build no confirmados.

**Adjuntos:** Pendiente: video del scroll mostrando al menos dos tandas consecutivas y captura comparativa.

**Notas:** Estado: observación, no bug confirmado. No hay criterio publicado en el material del examen que establezca finitud o unicidad del catálogo. *Hora asignada, no medida.

## OBS-03 — El carrito no permite pedir varias unidades del mismo artículo

**Descripción:** El estudiante observó que puede agregarse una sola unidad de cada producto y no se muestra un control que permita seleccionar dos o más unidades del mismo artículo. Se trata de una limitación de la interfaz que podría ser intencional.

**Pasos de reproducción:**
1. Iniciar sesión y abrir catálogo (URL específica no confirmada).
2. Agregar Sauce Labs Backpack al carrito.
3. Intentar agregar otra unidad del mismo artículo.
4. Abrir «Your Cart» y comprobar cantidad y controles.
5. Revisar si existe opción para modificar cantidad a 2 o más.
Referencia: observación exploratoria.

**Resultado observado:** El estudiante no encontró forma de comprar más de una unidad de un mismo producto; cantidad observada: 1.

**Esperado:** Solo si el negocio requiere compras de varias unidades, debería ofrecerse selector o botón de incremento de cantidad. Sin ese requisito, la ausencia puede ser una decisión de diseño.

**Prioridad:** Baja (pendiente de requisitos)

**Severidad:** Por definir; no confirmado como defecto

**Ambiente:** SauceDemo (catálogo exacto pendiente de confirmación). Fecha: 20/10/2026. Hora consignada: 21:48*. SO, navegador y cuenta no confirmados.

**Adjuntos:** Pendiente: captura del producto añadido y carrito que muestre Qty=1 y ausencia de selector.

**Notas:** Estado: observación funcional pendiente de revisión de requisitos. No elevar a defecto confirmado ni asignar FAIL a las cinco pruebas aprobadas. *Hora asignada, no medida.

