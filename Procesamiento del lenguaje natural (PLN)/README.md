# Redes Neuronales y Aprendizaje Profundo

En esta sección se reúnen prácticas avanzadas centradas en el diseño, entrenamiento y evaluación de redes neuronales, abarcando desde arquitecturas densas clásicas como **perceptrones multicapa** hasta modelos especializados como **redes convolucionales (CNN)** y **redes recurrentes (RNN)**. Estas actividades forman parte del itinerario del Máster en Inteligencia Artificial y reflejan un dominio progresivo de técnicas profundas aplicadas a diferentes tipos de datos y tareas.

Cada *notebook* implementa un caso práctico completo, desde la preparación y transformación de datos hasta la definición del modelo, su entrenamiento con distintas estrategias y el análisis crítico de los resultados. Se presta especial atención a la arquitectura de las redes, el impacto de los hiperparámetros, el uso de técnicas de regularización, y la adecuación de cada tipo de red al problema planteado.

Esta colección de trabajos demuestra la capacidad para aplicar técnicas de *Deep Learning* de forma eficaz, tanto en entornos visuales como en procesamiento secuencial de datos, con un enfoque analítico y orientado a resultados reales.



## Notebooks

### Clasificación de dígitos con perceptrones multicapa

Este trabajo explora el uso de redes neuronales densas (*fully connected*) para la clasificación del conjunto de imágenes manuscritas *MNIST*. Se define una arquitectura tipo *Multilayer Perceptron (MLP)*, evaluando el impacto del número de neuronas, funciones de activación, épocas y algoritmos de optimización.

El estudio incluye una comparación de optimizadores como *SGD*, *Adam*, *RMSprop* o *Adagrad*, así como técnicas de regularización (*Dropout*, *L2*) y el uso de *EarlyStopping*. Se automatiza el entrenamiento y evaluación mediante funciones personalizadas y se recopilan métricas clave en un *DataFrame* para su análisis comparativo.

🔗[`Clasificación_de_dígitos_utilizando_perceptrones_multicapa.ipynb`](1-Clasificación_de_dígitos_utilizando_perceptrones_multicapa/Clasificación_de_dígitos_utilizando_perceptrones_multicapa.ipynb)



### Clasificación visual con redes convolucionales (CNN)

En este notebook se implementa un modelo basado en redes convolucionales profundas para abordar la clasificación de imágenes del conjunto *MNIST*. Se definen múltiples bloques de capas *Conv2D*, *MaxPooling* y *Dropout*, adaptando la arquitectura a la complejidad de los datos visuales.

El trabajo incluye la comparación de distintos tamaños de filtros, funciones de activación y configuraciones de *pooling*, así como una optimización progresiva del rendimiento mediante ajuste de hiperparámetros. Se analiza el efecto de la regularización y se interpretan los resultados a partir de las curvas de aprendizaje y las métricas de evaluación obtenidas.

🔗[`Redes_neuronales_convolucionales.ipynb`](2-Redes_Neuronales_Convolucionales/Redes_neuronales_convolucionales.ipynb)



### Predicción secuencial con redes neuronales recurrentes (RNN)

Este proyecto aborda la predicción de la intensidad de odio en mensajes escritos en español mediante redes neuronales recurrentes, utilizando una versión simplificada y preprocesada del *dataset* original del proyecto transversal.

Se construye una arquitectura basada en una capa de *embedding* seguida de una *Bidirectional LSTM*. El trabajo incluye técnicas de ponderación de clases para mitigar el desbalanceo, y se evalúan distintas configuraciones de regularización, función de pérdida y optimizadores.

🔗[`Redes_Neuronales_Recurrentes.ipynb`](3-Redes_Neuronales_Recurrentes/Redes_Neuronales_Recurrentes.ipynb)



<center>by <strong>Jose Manuel Pinillos</strong></center>
