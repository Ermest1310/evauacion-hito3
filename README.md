# Examen Práctico Hito 3 - Testing & Quality Assurance

**Aplicación evaluada:** https://www.saucedemo.com/  
**Fecha de registro:** 20/10/2026  
**Autor:** Boris Ernesto Arias Salvatierra

## Resumen

- Cinco casos funcionales de caja negra informados como **PASS**.
- Un caso exploratorio sobre checkout con carrito vacío (**FAIL reportado**, sin capturas adjuntas).
- Dos observaciones de comportamiento pendientes de contraste con requisitos (carga dinámica y selección de cantidades).
- Caja blanca sobre `validar_compra` (tres casos solicitados y dos adicionales de cobertura).
- Tres escenarios Gherkin.

**Nota sobre las horas:** se consignaron 21:30–21:48 por solicitud para las plantillas; no se dispone de log que las verifique. Los datos detallados de pasos y hallazgos deben corroborarse con evidencia antes de la entrega definitiva.

## Documentos

- `docs/casos_caja_negra.md`: descripción y resultados de caja negra.
- `docs/analisis_caja_blanca.md`: ramas, decisiones y cobertura.
- `docs/escenarios_gherkin.feature`: escenarios BDD.
- `bugs/bugs_encontrados.md`: defectos reportados y observaciones.
- `entregable/informe_hito3.pdf`: informe final.
- `evidencias/capturas/`: carpeta para capturas reales. No se inventaron imágenes.
- `issues_propuestos.md`, `project_board.md`: organización sugerida para implementar en GitHub.

## Para publicar en GitHub

```bash
git init
git add .
git commit -m "docs: agrega examen hito 3 TQA"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/Examen-Hito-3-TQA.git
git push -u origin main
```

Después de crear el repositorio, crear Issues, organizar el GitHub Project Board y dar acceso al docente mediante el correo institucional (pendiente de conocer).
