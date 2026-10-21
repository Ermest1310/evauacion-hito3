# Caja negra: pruebas funcionales en SauceDemo

Resultados comunicados por estudiante; evidencia gráfica pendiente. Horas referenciales asignadas para el formato.

| ID | Funcionalidad | Hora* | Resultado | Resultado observado |
|---|---|---|---|---|
| TC-001 | Inicio de sesión con credenciales válidas | 21:30 | PASS  | Se accedió correctamente al catálogo con credenciales válidas (resultado informado por el tester). |
| TC-002 | Rechazo de contraseña incorrecta | 21:33 | PASS  | El acceso fue bloqueado y se mostró un error (texto exacto no registrado). |
| TC-003 | Agregar un producto al carrito | 21:36 | PASS  | El producto Sauce Labs Backpack se agregó correctamente al carrito (informado por el tester). |
| TC-004 | Eliminar un producto del carrito | 21:39 | PASS  | El producto se eliminó correctamente y el carrito quedó vacío (informado por el tester). |
| TC-005 | Finalizar un proceso de compra | 21:42 | PASS  | El proceso finalizó y se mostró confirmación (informado por el tester). |
| TC-006 | Validación de checkout con carrito vacío | 21:45 | FAIL reportado | El tester informó que pudo finalizar el checkout con 0 artículos; cuenta y pantalla final por confirmar. |

* No son tiempos acreditados mediante logs.

## TC-001 — Inicio de sesión con credenciales válidas

**Objetivo:** Verificar que las credenciales válidas permitan acceder al catálogo de productos.

**Precondiciones:** Pantalla de inicio de sesión visible; sesión anterior cerrada.; Cuenta de demostración standard_user, sin permisos especiales.; Acceso a https://www.saucedemo.com/ y conexión web.

**Datos:** standard_user / secret_sauce

1. **Abrir la web SauceDemo.** (www.saucedemo.com) → esperado: Se presenta el formulario de acceso.
2. **Ubicar el campo Username.** (Formulario Login) → esperado: El campo está disponible.
3. **Ingresar el usuario válido.** (standard_user) → esperado: El usuario queda ingresado.
4. **Ingresar la contraseña válida.** (secret_sauce) → esperado: La contraseña queda ingresada.
5. **Pulsar Login.** (Botón Login) → esperado: El sistema autentica al usuario.
6. **Comprobar la pantalla Products.** (Catálogo) → esperado: Se abre el catálogo de productos.
7. **Verificar la ausencia de alertas.** (Pantalla Products) → esperado: No aparece error de credenciales.

**Criterio:** El usuario accede al catálogo sin errores de autenticación.

**Resultado:** PASS. Se accedió correctamente al catálogo con credenciales válidas (resultado informado por el tester).

**Evidencia:** no adjunta.

## TC-002 — Rechazo de contraseña incorrecta

**Objetivo:** Comprobar que una contraseña incorrecta impida el acceso y genere un aviso de error.

**Precondiciones:** Pantalla de Login visible; sin sesión iniciada.; Cuenta válida standard_user; contraseña deliberadamente errónea.; Acceso a https://www.saucedemo.com/.

**Datos:** standard_user / 12345678

1. **Abrir la web SauceDemo.** (www.saucedemo.com) → esperado: Se muestra el formulario Login.
2. **Cerrar sesión previa, si existe.** (Logout) → esperado: La sesión queda cerrada.
3. **Ingresar el usuario.** (standard_user) → esperado: Se admite el texto del usuario.
4. **Ingresar contraseña errónea.** (12345678) → esperado: Se admite el texto de prueba.
5. **Pulsar Login.** (Botón Login) → esperado: La validación rechaza el ingreso.
6. **Revisar el aviso mostrado.** (Alerta de acceso) → esperado: Aparece un mensaje de error.
7. **Comprobar que no hay catálogo.** (Pantalla actual) → esperado: Permanece fuera del catálogo.

**Criterio:** No se inicia sesión y se presenta un mensaje de error de autenticación.

**Resultado:** PASS. El acceso fue bloqueado y se mostró un error (texto exacto no registrado).

**Evidencia:** no adjunta.

## TC-003 — Agregar un producto al carrito

**Objetivo:** Verificar que Sauce Labs Backpack pueda agregarse al carrito correctamente.

**Precondiciones:** Inicio de sesión válido; catálogo Products disponible.; Cuenta standard_user.; Carrito inicialmente vacío para una comprobación clara.

**Datos:** standard_user / Sauce Labs Backpack / 1

1. **Iniciar sesión.** (standard_user) → esperado: Se abre el catálogo.
2. **Localizar el producto.** (Sauce Labs Backpack) → esperado: El producto se muestra disponible.
3. **Pulsar Add to cart.** (Botón del producto) → esperado: El producto se agrega al carrito.
4. **Verificar el botón del producto.** (Add to cart / Remove) → esperado: El botón cambia a Remove.
5. **Revisar el indicador del carrito.** (Ícono carrito) → esperado: Se indica 1 producto.
6. **Entrar al carrito.** (Ícono carrito) → esperado: Se muestra la página Your Cart.
7. **Comprobar el artículo añadido.** (Sauce Labs Backpack) → esperado: Aparece el producto con cantidad 1.

**Criterio:** El producto aparece correctamente en el carrito y la interfaz refleja la adición.

**Resultado:** PASS. El producto Sauce Labs Backpack se agregó correctamente al carrito (informado por el tester).

**Evidencia:** no adjunta.

## TC-004 — Eliminar un producto del carrito

**Objetivo:** Validar que se elimine Sauce Labs Backpack y el carrito quede vacío.

**Precondiciones:** Sesión iniciada con standard_user.; Sauce Labs Backpack agregado previamente al carrito.; Acceso a la vista Your Cart.

**Datos:** Sauce Labs Backpack / 1

1. **Abrir el carrito.** (Ícono carrito) → esperado: Se presenta Your Cart.
2. **Verificar el artículo cargado.** (Sauce Labs Backpack) → esperado: Se muestra 1 artículo.
3. **Identificar el botón Remove.** (Sauce Labs Backpack) → esperado: La acción Remove está disponible.
4. **Pulsar Remove.** (Botón Remove) → esperado: El sistema retira el artículo.
5. **Comprobar la lista del carrito.** (Your Cart) → esperado: No se muestran productos.
6. **Revisar el indicador numérico.** (Ícono carrito) → esperado: No queda contador con 1.
7. **Volver al catálogo.** (Continue Shopping) → esperado: El producto se puede volver a agregar.

**Criterio:** El artículo desaparece y el carrito queda vacío, sin errores.

**Resultado:** PASS. El producto se eliminó correctamente y el carrito quedó vacío (informado por el tester).

**Evidencia:** no adjunta.

## TC-005 — Finalizar un proceso de compra

**Objetivo:** Comprobar que un pedido con un artículo avance hasta la confirmación de compra simulada.

**Precondiciones:** Cuenta standard_user autenticada.; Carrito vacío antes de agregar el producto de prueba.; Sitio de demostración disponible.

**Datos:** Backpack (1); Juan / Perez / 12345

1. **Agregar el artículo al carrito.** (Sauce Labs Backpack) → esperado: Aparece 1 producto en el carrito.
2. **Abrir el carrito.** (Ícono carrito) → esperado: Se visualiza el artículo.
3. **Seleccionar Checkout.** (Botón Checkout) → esperado: Se abre el formulario de datos.
4. **Completar campos obligatorios.** (Juan / Perez / 12345) → esperado: Los datos son aceptados.
5. **Seleccionar Continue.** (Botón Continue) → esperado: Se muestra Checkout: Overview.
6. **Revisar la información del pedido.** (Resumen e importes) → esperado: Contiene el artículo y total informado.
7. **Pulsar Finish.** (Botón Finish) → esperado: Se muestra la confirmación del pedido.

**Criterio:** Se completa el checkout y aparece la confirmación de la compra simulada.

**Resultado:** PASS. El proceso finalizó y se mostró confirmación (informado por el tester).

**Evidencia:** no adjunta.

## TC-006 — Validación de checkout con carrito vacío

**Objetivo:** Comprobar que el sistema impida terminar un pedido si no hay productos en el carrito.

**Precondiciones:** Cuenta válida de demostración con sesión iniciada.; El carrito debe estar totalmente vacío.; Caso exploratorio reportado; cuenta exacta por confirmar.

**Datos:** 0 productos / usuario no identificado

1. **Ingresar al sitio con cuenta válida.** (Cuenta utilizada: por confirmar) → esperado: Se accede a Products.
2. **Verificar carrito sin productos.** (0 artículos) → esperado: El carrito aparece vacío.
3. **Abrir la vista del carrito.** (Ícono carrito) → esperado: Se muestra Your Cart sin artículos.
4. **Intentar continuar con Checkout.** (Botón Checkout) → esperado: Se impide un pedido sin artículos.
5. **Si permite avanzar, llenar formulario.** (Datos válidos de prueba) → esperado: No debería habilitarse un checkout vacío.
6. **Intentar continuar y finalizar.** (Continue / Finish) → esperado: Se bloquea la confirmación sin artículos.
7. **Comprobar el resultado final.** (Pantalla de confirmación) → esperado: No existe confirmación de pedido vacío.

**Criterio:** Una compra sin productos debe quedar bloqueada antes de su confirmación.

**Resultado:** FAIL. El tester informó que pudo finalizar el checkout con 0 artículos; cuenta y pantalla final por confirmar.

**Evidencia:** no adjunta.

