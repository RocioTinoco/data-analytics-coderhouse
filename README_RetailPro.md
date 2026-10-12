# RetailPro --- Proyecto de Data Analytics

## Descripción del proyecto

RetailPro es un proyecto académico desarrollado como parte del curso de
**Data Analytics de Coderhouse**. El objetivo es organizar y analizar
información comercial mediante consultas SQL y herramientas de Business
Intelligence, para facilitar la exploración de ventas, productos y
clientes.

Este repositorio reúne entregas y avances realizados durante el curso.
La estructura visible incluye una carpeta de trabajo SQL y archivos de
Power BI.

## Objetivos

-   Organizar y consultar información comercial con SQL.
-   Relacionar datos de ventas con información de clientes y productos.
-   Explorar indicadores y preguntas de negocio mediante consultas
    analíticas.
-   Preparar información para su revisión y visualización en Power BI.
-   Documentar el proceso para que otra persona pueda comprender y
    continuar el proyecto.

## Herramientas utilizadas

-   **Microsoft SQL Server:** motor de base de datos para ejecutar
    consultas SQL.
-   **SQL Server Management Studio (SSMS):** entorno para abrir,
    ejecutar y revisar los scripts SQL.
-   **Microsoft Power BI Desktop:** herramienta de análisis y
    visualización de datos.
-   **GitHub:** repositorio para documentar y versionar las entregas del
    proyecto.

## Estructura del repositorio

``` text
data-analytics-coderhouse/
├── sql-checkpoint/
│   └── Scripts SQL del checkpoint
├── Pipeline_ETL_Tinoco_Rocio.pbix
├── Pipeline_ETL_Tinoco_Rocio_Checkpoint 2.pbix
└── README.md
```

Los nombres de los archivos SQL pueden consultarse directamente dentro
de la carpeta `sql-checkpoint`. Los archivos `.pbix` contienen avances
de Power BI del proyecto.

## Cómo ejecutar los scripts SQL

1.  Instalar y abrir Microsoft SQL Server y SQL Server Management Studio
    (SSMS).
2.  Descargar o clonar este repositorio en la computadora.
3.  Abrir la carpeta `sql-checkpoint` e identificar el script de
    creación o preparación de la base de datos y los scripts de
    consultas.
4.  Abrir el script correspondiente en SSMS y revisar sus comentarios
    antes de ejecutarlo.
5.  Si el script requiere una base de datos específica, confirmar el
    nombre y seleccionarla en el contexto de ejecución. No ejecutar
    instrucciones `DROP`, `DELETE` o similares sin entender su efecto.
6.  Ejecutar primero los scripts de estructura y carga de datos, si
    están incluidos, y después los scripts de análisis, respetando las
    dependencias y el orden indicado en sus comentarios.
7.  Revisar los mensajes de ejecución y los resultados de cada consulta.
    Comparar los resultados con los datos de origen antes de utilizarlos
    en un análisis comercial.

> **Importante:** el orden exacto depende de los scripts que estén
> dentro de `sql-checkpoint`. Verifica sus comentarios y nombres antes
> de ejecutar; no se debe asumir que todos los scripts pueden ejecutarse
> en cualquier orden.

## Cómo abrir los archivos de Power BI

1.  Instalar Microsoft Power BI Desktop.
2.  Descargar el archivo `.pbix` que se desea revisar.
3.  Abrirlo con Power BI Desktop.
4.  Si el archivo solicita una conexión o una ruta de origen,
    actualizarla según la ubicación de los datos disponibles.
5.  Actualizar los datos y revisar que las tablas, relaciones, medidas y
    visualizaciones funcionen correctamente.

## Alcance y validación

Los resultados del proyecto deben interpretarse considerando la calidad
y el alcance de los datos disponibles. Antes de comunicar cifras o
conclusiones comerciales, se recomienda:

-   comprobar que las consultas SQL se ejecuten sin errores;
-   validar las relaciones entre tablas y revisar posibles duplicados;
-   contrastar totales y muestras de registros con los datos de origen;
-   confirmar las definiciones de los indicadores;
-   revisar en Power BI que las relaciones, medidas y visualizaciones
    representen correctamente los datos.

Las conclusiones deben basarse en resultados verificables. Las
herramientas de análisis aceleran el trabajo, pero la validación y la
interpretación final corresponden al analista.

## Estado del proyecto

Este repositorio documenta las entregas y los avances del curso de Data
Analytics. La estructura y los archivos pueden actualizarse a medida que
se incorporen nuevas consultas, transformaciones, visualizaciones y
documentación.

## Autora

**Rocio Tinoco**\
Curso de Data Analytics --- Coderhouse

Repositorio: https://github.com/RocioTinoco/data-analytics-coderhouse
