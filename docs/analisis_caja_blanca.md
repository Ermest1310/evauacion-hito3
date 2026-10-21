# Análisis de caja blanca

Código fuente entregado en diapositivas:

```python
def validar_compra(edad, cuenta_activa, saldo, monto):
    if edad < 18:
        return "Compra no permitida: edad"
    if not cuenta_activa:
        return "Compra no permitida: cuenta"
    if saldo >= monto and monto > 0:
        return "Compra aprobada"
    return "Compra rechazada"
```

## Decisiones

- D1: `edad < 18`
- D2: `not cuenta_activa`
- D3: `(saldo >= monto) and (monto > 0)`
- Simples C1, C2, C3 y C4: `edad < 18`, `not cuenta_activa`, `saldo >= monto`, `monto > 0`.
- En D3, Python aplica cortocircuito: C4 solo se evalúa si C3 es verdadera.

## Diseño de casos

| Caso | edad | cuenta_activa | saldo | monto | Resultado esperado |
|---|---:|---|---:|---:|---|
| CB-01 | 17 | True | 100 | 20 | Compra no permitida: edad |
| CB-02 | 20 | False | 100 | 20 | Compra no permitida: cuenta |
| CB-03 | 20 | True | 100 | 20 | Compra aprobada |
| CB-04 (adicional) | 20 | True | 10 | 30 | Compra rechazada |
| CB-05 (adicional) | 20 | True | 100 | 0 | Compra rechazada |

## Cobertura

- **Mínimo 4** pruebas para cobertura de sentencias (4 retornos excluyentes).
- **Mínimo 4** pruebas para cobertura de decisiones (cada D1, D2, D3 con salida verdadero y falso).
- **Mínimo 5** pruebas para cobertura de condiciones simples efectivamente evaluadas (C4 falsa necesita C3 verdadera y monto igual a cero). 
- Los tres casos exigidos por la consigna por sí solos **no** alcanzan la cobertura total.

**Estado:** diseño analítico. No existe evidencia aportada de ejecución del script.
