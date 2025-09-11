Proyecto ETL Chinook
Este proyecto contiene un proceso de Extracción, Transformación y Carga (ETL) diseñado para la base de datos de ejemplo "Chinook". El objetivo principal es tomar los datos de una base de datos transaccional, procesarlos y cargarlos en una base de datos dimensional (Data Warehouse) para su posterior análisis.

Contenido del Repositorio
A continuación se describen los archivos y carpetas que encontrarás en este repositorio:

Chinook_ETL: Contiene la solución de SQL Server Integration Services (SSIS) con el paquete ETL diseñado para realizar el proceso de extracción, transformación y carga de los datos.

Chinook.bak: Es el archivo de copia de seguridad de la base de datos transaccional original (OLTP) de Chinook. Esta es la fuente de los datos.

Chinook_DW.bak: Es el archivo de copia de seguridad de la base de datos del Data Warehouse (OLAP). Esta es la base de datos de destino donde se cargan los datos procesados.

Consultas_Analisis.sql: Un archivo de script SQL que contiene varias consultas diseñadas para realizar análisis sobre los datos ya cargados en el Data Warehouse.

Documentacion_ETL_Chinook.pdf: Un documento en formato PDF que detalla el proceso ETL, la arquitectura del proyecto y las decisiones de diseño tomadas.

Tecnologías Utilizadas
Microsoft SQL Server: Como sistema de gestión de bases de datos tanto para la fuente (Chinook) como para el destino (Chinook_DW).

SQL Server Integration Services (SSIS): Como herramienta para el diseño y la ejecución del flujo de trabajo ETL.

Cómo Empezar
Para poner en marcha este proyecto en tu entorno local, sigue estos pasos:

Restaurar las Bases de Datos:

Restaura el archivo Chinook.bak en tu instancia de SQL Server para crear la base de datos de origen.

Restaura el archivo Chinook_DW.bak para crear la base de datos del Data Warehouse.

Abrir el Proyecto ETL:

Abre la solución Chinook_ETL utilizando Visual Studio con la extensión de SQL Server Data Tools (SSDT) instalada.

Asegúrate de configurar las conexiones a las bases de datos (origen y destino) para que apunten a tu instancia local de SQL Server.

Ejecutar el Paquete SSIS:

Ejecuta el paquete ETL desde Visual Studio para iniciar el proceso de extracción, transformación y carga.

Realizar Consultas de Análisis:

Una vez que el proceso ETL haya finalizado con éxito, puedes utilizar el script Consultas_Analisis.sql en SQL Server Management Studio (SSMS) para ejecutar consultas sobre el Data Warehouse y analizar los resultados.
