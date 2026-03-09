# Visión artificial
En esta sección se recopilan prácticas desarrolladas en el contexto del aprendizaje automático supervisado, una de las áreas fundamentales de la inteligencia artificial. Todas las actividades siguen un enfoque estructurado de resolución de problemas reales mediante algoritmos de clasificación o regresión, abarcando desde el análisis exploratorio inicial hasta la evaluación comparativa de modelos entrenados.

Se abordan tanto datos estructurados como textuales, aplicando técnicas de preprocesamiento, selección de características, ajuste de hiperparámetros y validación del rendimiento. Además, cada *notebook* está documentado con detalle e incluye reflexiones sobre la aplicabilidad práctica de los modelos implementados, así como revisiones bibliográficas que conectan el trabajo con investigaciones recientes.

Estas actividades han sido desarrolladas como parte del itinerario formativo del Máster en Inteligencia Artificial, y reflejan tanto la progresión técnica como la capacidad analítica aplicada a contextos reales.



## Notebooks

### Regresión lineal y árboles de decisión para predicción ambiental
Este proyecto aborda la predicción de la calidad del aire a partir de sensores químicos integrados en estaciones urbanas. Se desarrolla un flujo completo de *machine learning* sobre un conjunto de datos real del *<u>UCI Air Quality Dataset</u>*, combinando técnicas de regresión lineal múltiple y árboles de decisión para modelar la relación entre contaminantes y condiciones ambientales.

Incluye un análisis exploratorio exhaustivo, imputación de valores ausentes, codificación y normalización, seguido por la evaluación comparativa de modelos mediante métricas de error. El trabajo se completa con la revisión de literatura científica reciente, conectando la teoría con aplicaciones reales.

🔗[`Regresión_lineal_y_árboles_de_decisión_para_tareas_de_regresión.ipynb`](1-Regresión_lineal_y_árboles_de_decisión_para_tareas_de_regresión/Regresión_lineal_y_árboles_de_decisión_para_tareas_de_regresión.ipynb)



### Clasificación geospacial con *Random Forest* y SVM
Este estudio técnico aplica algoritmos de clasificación avanzada al *dataset <u>Covertype</u>*, con el objetivo de predecir el tipo de cobertura forestal utilizando variables cartográficas obtenidas de sistemas GIS. Se implementan y comparan modelos de *Random Forest* y *Support Vector Machines*, incorporando técnicas de preprocesamiento, escalado, validación cruzada y análisis de correlaciones.

El proyecto destaca por su enfoque aplicado a datos geoespaciales binarios y por el análisis crítico del rendimiento de los modelos en escenarios de clasificación multiclase. Se complementa con la revisión de un artículo científico que profundiza en el uso de estas técnicas en problemas reales.

🔗[`Clasificación_con_máquinas_de_vectores_de_soporte_y_random_forest.ipynb`](2-Clasificación_geospacial_con_Random_Forest_y_SVM/Clasificación_con_máquinas_de_vectores_de_soporte_y_random_forest.ipynb)



### Clasificación automática de mensajes de odio en español
Este proyecto simula un caso real de despliegue de un modelo de clasificación binaria en el contexto del social *media monitoring*. Se parte de un *dataset* anonimizado con comentarios en español y se implementa un *pipeline* completo de procesamiento del lenguaje natural (NLP) y *machine learning*, desde la limpieza textual avanzada (lemmatización, *stopwords*, signos, *emojis*, bigramas, sentimientos) hasta la extracción combinada de características lingüísticas y sentimentales.

Se entrenan y evalúan tres modelos supervisados, optimizados para detectar discurso de odio, y se aplican métricas de evaluación ajustadas a escenarios de desbalanceo. El resultado es un modelo validado, interpretado y justificado que podría integrarse en un sistema de moderación automática.

🔗[`Clasificación_de_mensajes_de_odio.ipynb`](3-Clasificación_automática_de_mensajes_de_odio_en_español/Clasificación_de_mensajes_de_odio.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>
