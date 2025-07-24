# Aprendizaje automático no supervisado
Esta sección agrupa actividades centradas en técnicas de aprendizaje automático no supervisado, esenciales para descubrir patrones ocultos, agrupar datos sin etiquetas y reducir la dimensionalidad de conjuntos complejos. Se abordan desde enfoques clásicos hasta métodos más sofisticados de detección de anomalías, ofreciendo una visión aplicada y analítica del tratamiento de datos sin supervisión externa.

Los trabajos incluyen análisis exploratorio, selección de métricas, visualización avanzada y comparación crítica de resultados. Cada notebook está estructurado para evidenciar el razonamiento detrás de las decisiones metodológicas, fomentando el pensamiento analítico y la capacidad de interpretación en entornos reales.



## Notebooks

### Exploración y comparación de algoritmos de agrupamiento

Este proyecto aborda la agrupación automática de datos sin etiquetas mediante múltiples algoritmos de clustering, aplicados al dataset de Mall Customers. Se comparan modelos como *K-Means*, DBSCAN y *Agglomerative Clustering*, evaluando su comportamiento en términos de inercia, silueta y estructura de agrupamiento.

Se realiza un análisis exploratorio inicial, reducción de dimensionalidad con PCA y visualización de resultados. El estudio destaca por mostrar cómo diferentes técnicas pueden ofrecer segmentaciones dispares, y cómo elegir el método más adecuado según la distribución de los datos y el objetivo de negocio.

🔗[`Exploración_y_comparación_de_algoritmos_de_agrupamiento.ipynb`](1-Exploración_y_comparación_de_algoritmos_de_agrupamiento/Exploración_y_comparación_de_algoritmos_de_agrupamiento.ipynb)



### Análisis de reducción de dimensionalidad (PCA y t-SNE)

Este trabajo se centra en técnicas de reducción de dimensionalidad aplicadas al *dataset* <u>Fashion MNIST</u> , permitiendo representar datos de alta dimensión en espacios bidimensionales comprensibles.

Se implementan y comparan dos enfoques: *Principal Component Analysis (PCA)* y *t-distributed Stochastic Neighbor Embedding (t-SNE)*. El objetivo es evaluar su capacidad para preservar la estructura de los datos, reducir el ruido y facilitar el análisis visual posterior. Las visualizaciones obtenidas evidencian las fortalezas de cada método en distintos contextos.

🔗[`Análisis_de_reducción_de_dimensionalidad_(PCA_y_t-SNE).ipynb`](2-Análisis_de_reducción_de_dimensionalidad_(PCA_y_t_SNE)/Análisis_de_reducción_de_dimensionalidad_(PCA_y_t_SNE).ipynb)



### Detección de anomalías en datos del sistema eléctrico

Esta actividad aplica múltiples técnicas para la detección de anomalías en un conjunto de datos datos del sistema eléctrico. Se exploran métodos univariantes (media móvil, Z-score) y multivariantes (*Isolation Forest*, *Local Outlier Factor*), evaluando su capacidad para identificar comportamientos anómalos en series temporales.

El análisis incluye normalización, comparación de modelos, y una tabla resumen que sintetiza la cantidad de anomalías detectadas por técnica. El trabajo se complementa con la interpretación visual de resultados y justificación metodológica para entornos de mantenimiento predictivo.

🔗[`Detección_de_Anomalías_en_datos.ipynb`](3-Detección_de_Anomalías_en_datos/Detección_de_Anomalías_en_datos.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>

