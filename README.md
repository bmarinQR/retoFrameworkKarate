# Reto Karate Framework 🥋
Repositorio para el reto sobre Karate Framework.

Reto sobre el uso de Karate Framework 🥋.

En este reto haremos el uso de Karate para realizar el diseño y pruebas automatizadas de acerca de la siguiente plataforma: [GeoNames](http://api.geonames.org/)
Este reto hará uso de la API de GeoNames para consultar algunas ubicaciones de distintos lugares del mundo, y verificar por medio de `tests` su validez, de acuerdo a como estos se hayan definido.

Para poder trabajar con esta plataforma es necesaria crear una cuenta, y posteriormente **habilitarla** para el consumo de API's.
La siguiente *URL* para las pruebas será la siguiente:

```bash
http://api.geonames.org/timezoneJSON?formatted=true&lat=XXX&lng=XXX&username=YOURUSERNAME
```

Para este reto, se requerirá:
- Uso de control de versiones (GIT). **Puedes hacer uso de este repositorio, en el uso de una *nueva rama*, y trabajar sobre ella.**
- Uso de `Gradle` para la estructuración del proyecto y ejecución de los tests.
- Uso del `JDK` de Java.
- Los escenarios de prueba que crea convenientes utilizando estrategia de pruebas BDD (feature).
  - Escenarios de prueba exitosos de cualquier parte del mundo (minimo 10 ubicaciones).
  - Escenarios de prueba exitosos de cualquier lugar de colombia (minimo 5 ubicaciones).
  - Escenarios de prueba inválidos (**Cualquier tipo de invalidez**).
- Implementación de los step definitions que permitan ejecutar los escenarios establecidos anteriormente.

Opcional:
- Generación de reportes, para la visualización de los resultados de las pruebas.

Para la ejecución de las pruebas mediante una terminal, puedes usar:

```bash
.\gradlew clean test -i
```

Para esta prueba se brindarán los siguientes archivos:

- `ParallelTests.java`
- `logback-test.xml`

Algunos ejemplos de latitudes y longitudes:
| Latitud | Longitud |
|---|---|
| 40 | 127 |
| 40.712 | -74 |
| 3 | -77 |
| -140 | 36 |
| 90 | 99 |

> [!NOTE]
> Para este reto es necesario como pre-requisitos.
> - Java JDK 17: Se recomienda esta versión para evitar problemas de compatibilidad.
> - Git: Para el control de versiones.
> - IDE (Recomendado): IntelliJ IDEA o VS Code con las extensiones de Java y Karate.
> - Uso de terminal (ya sea con la terminal integrada del IDE, o una terminal aparte).

## ¿Que se debe entregar para este reto?
- Documentación del proceso de como se resolvió el reto (README.MD o serie de README.MD, de ser necesario.)
- Código fuente: Proyecto funcional.
- Gestionamiento de versiones (GIT), como ya se mencionó anteriormente en esta documentación.
- Reporte de pruebas mediante la interaz gráfica de Karate Framework.
- (Opcional) Reporte de pruebas mediante alguna herramienta diferente a Karate Framework.
