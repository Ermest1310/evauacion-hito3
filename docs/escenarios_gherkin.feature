Feature: Flujos principales de SauceDemo

  Scenario: Acceso exitoso al catálogo
    Given que estoy en la pantalla de login
    When ingreso "standard_user" y "secret_sauce"
    And presiono "Login"
    Then debería acceder al catálogo "Products"

  Scenario: Credenciales incorrectas
    Given que estoy en la pantalla de login
    When ingreso "standard_user" y "12345678"
    And presiono "Login"
    Then debería permanecer fuera del catálogo
    And debería ver un mensaje de error de autenticación

  Scenario: Rechazar compra sin productos
    Given que el usuario tiene el carrito vacío
    When intenta completar el checkout
    Then debería impedirse confirmar el pedido
    And debería mostrarse un aviso de validación
