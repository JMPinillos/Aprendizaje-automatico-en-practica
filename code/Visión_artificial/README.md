# Visión artificial
En esta sección se recopilan trabajos centrados en el análisis y procesamiento de imágenes digitales, una de las áreas fundamentales de la inteligencia artificial aplicada a la percepción automática. Los ejercicios exploran diferentes etapas del procesamiento visual, desde la mejora de imágenes degradadas hasta la segmentación de estructuras relevantes en distintos contextos.

A lo largo de los trabajos se aplican técnicas clásicas de procesamiento digital de imágenes como transformaciones de intensidad, análisis de histogramas, filtrado espacial y operaciones morfológicas. Estas herramientas permiten mejorar la calidad visual de las imágenes, resaltar estructuras de interés y facilitar tareas posteriores de análisis automático.

Las actividades han sido desarrolladas como parte del itinerario formativo del Máster en Inteligencia Artificial y siguen un enfoque experimental en el que se analizan las técnicas de forma individual y combinada, evaluando su impacto visual y cuantitativo mediante métricas como contraste, entropía o distribución tonal.



## Notebooks

### Operaciones elementales para la mejora de imágenes con baja iluminación

Este trabajo analiza distintas técnicas de mejora aplicadas a imágenes capturadas en condiciones de iluminación adversa. Este tipo de escenas suele presentar bajo contraste, ruido y pérdida de detalle en sombras, lo que dificulta su interpretación y análisis. 

Se estudian transformaciones de intensidad como el negativo, la transformación logarítmica, la corrección gamma y funciones a trozos, junto con métodos basados en histogramas como la ecualización global y la ecualización adaptativa (CLAHE). También se aplican filtros espaciales de media, mediana y gaussiano, además de técnicas de realce estructural como la máscara de nitidez. 

El estudio analiza el efecto visual de cada técnica y su impacto en métricas cuantitativas como contraste, entropía, brillo medio y expansión del rango dinámico. Finalmente se diseñan pipelines de procesamiento que combinan varias transformaciones para mejorar simultáneamente la visibilidad, la estabilidad tonal y la definición estructural de las imágenes. 

🔗[`Operaciones_elementales_para_la_mejora_de_imágenes_con_baja_iluminación.ipynb`](1-Operaciones_elementales_para_la_mejora_de_imágenes_con_baja_iluminación/Operaciones_elementales_para_la_mejora_de_imágenes_con_baja_iluminación.ipynb)



### Exploración de filtros espaciales y morfológicos en escenarios reales

En este estudio se explora el uso de filtros espaciales y transformaciones morfológicas para analizar imágenes en distintos contextos de inspección visual. El objetivo es estudiar cómo estas técnicas permiten reducir ruido, mejorar la definición de estructuras y facilitar la identificación de regiones relevantes dentro de la imagen. 

Se aplican filtros de suavizado y realce para mejorar la calidad estructural de las imágenes, seguidos de operaciones morfológicas como dilatación, erosión, apertura y cierre. Estas transformaciones permiten modificar la geometría de las regiones presentes en la imagen, eliminar artefactos y resaltar estructuras específicas. 

El análisis se realiza evaluando cada técnica de forma independiente y posteriormente mediante combinaciones progresivas, lo que permite observar cómo la integración de diferentes operaciones mejora la detectabilidad de patrones y defectos en las escenas analizadas.

🔗[`Exploración_de_filtros_espaciales_y_morfológicos_en_escenarios_reales.ipynb`](2-Exploración_de_filtros_espaciales_y_morfológicos_en_escenarios_reales/Exploración_de_filtros_espaciales_y_morfológicos_en_escenarios_reales.ipynb)



### Análisis de la deforestación en la selva amazónica con técnicas de segmentación

Este proyecto aborda el análisis de cambios en la cobertura forestal mediante técnicas de segmentación aplicadas a imágenes satelitales. El objetivo es identificar y cuantificar áreas deforestadas utilizando diferentes estrategias de segmentación basadas en características espectrales y espaciales. 

Se analizan métodos de umbralización global y adaptativa, segmentación basada en color en distintos espacios cromáticos y operaciones morfológicas para mejorar la delimitación de las regiones detectadas. Estas técnicas permiten separar áreas de vegetación densa de zonas degradadas o deforestadas dentro de las imágenes. 

El análisis combina procedimientos de segmentación con evaluación cuantitativa de las regiones obtenidas, mostrando cómo las técnicas de visión artificial pueden emplearse para estudiar cambios ambientales a partir de datos de teledetección. 

🔗[`Análisis_de_la_deforestación_en_la_selva_amazónica_con_técnicas_de_segmentación.ipynb`](3-Análisis_de_la_deforestación_en_la_selva_amazónica_con_técnicas_de_segmentación/Análisis_de_la_deforestación_en_la_selva_amazónica_con_técnicas_de_segmentación.ipynb)



## Artículos

Los trabajos desarrollados en esta sección se documentan también en formato de artículo técnico:

- 🔗[`Operaciones elementales para la mejora de imágenes con baja iluminación`](1-Operaciones_elementales_para_la_mejora_de_imágenes_con_baja_iluminación/Operaciones_elementales_para_la_mejora_de_imágenes_con_baja_iluminación.pdf)
- 🔗[`Exploración de filtros espaciales y morfológicos en escenarios reales`](2-Exploración_de_filtros_espaciales_y_morfológicos_en_escenarios_reales/Exploración_de_filtros_espaciales_y_morfológicos_en_escenarios_reales.pdf)
- 🔗[`Análisis de la deforestación en la selva amazónica con técnicas de segmentación`](3-Análisis_de_la_deforestación_en_la_selva_amazónica_con_técnicas_de_segmentación/Análisis_de_la_deforestación_en_la_selva_amazónica_con_técnicas_de_segmentación.pdf)



<center>by <strong>Jose Manuel Pinillos</strong></center>
