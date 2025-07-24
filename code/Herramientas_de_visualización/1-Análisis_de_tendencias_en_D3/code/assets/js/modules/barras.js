// Definimos las dimensiones del SVG del gráfico de barras
const widthBarras = 960;
const heightBarras = 600;

// Creamos el contenedor SVG dentro del div con id="barras_exportaciones"
const svgExport = d3.select("#barras_exportaciones")
  .append("svg")
  .attr("width", widthBarras)
  .attr("height", heightBarras);

// Definimos los márgenes internos del gráfico
const marginExport = { top: 40, right: 30, bottom: 100, left: 70 },
      widthExport = widthBarras - marginExport.left - marginExport.right,
      heightExport = heightBarras - marginExport.top - marginExport.bottom;

// Añadimos el grupo principal desplazado según los márgenes
const gExport = svgExport.append("g")
  .attr("transform", `translate(${marginExport.left},${marginExport.top})`);

// Cargamos y procesamos el CSV
d3.dsv(";", "assets/data/volumen_de_las_exportaciones_de_la_ue_a_otros_paises.csv").then(data => {

  // Convertimos los valores con coma decimal a números flotantes
  data.forEach(d => {
    const valor = d["€"]?.replace?.(",", ".");
    d["€"] = valor && !isNaN(parseFloat(valor)) ? parseFloat(valor) : 0;
  });

  // Ordenamos los datos de mayor a menor
  data.sort((a, b) => b["€"] - a["€"]);

  // Creamos la escala de color basada en el valor
  const colorExport = d3.scaleSequential()
    .domain([d3.min(data, d => d["€"]), d3.max(data, d => d["€"])])
    .interpolator(d3.interpolateRgb("blue", "red"))
    .clamp(true);

  // Creamos la escala horizontal con nombres de países
  const x = d3.scaleBand()
    .domain(data.map(d => d["Parámetro"]))
    .range([0, widthExport])
    .padding(0.2);

  // Creamos la escala vertical con valores de exportación
  const y = d3.scaleLinear()
    .domain([0, d3.max(data, d => d["€"])])
    .nice()
    .range([heightExport, 0]);

  // Añadimos el eje X con rotación del texto
  gExport.append("g")
    .attr("transform", `translate(0,${heightExport})`)
    .call(d3.axisBottom(x))
    .selectAll("text")
    .attr("transform", "rotate(-45)")
    .style("text-anchor", "end");

  // Añadimos el eje Y
  gExport.append("g")
    .call(d3.axisLeft(y));

  // Añadimos texto de leyenda para la unidad del eje Y
  gExport.append("text")
    .attr("x", -marginExport.left + 20)
    .attr("y", -20)
    .attr("fill", "#333")
    .attr("font-size", "20px")
    .text("Miles de millones de €");

  // Seleccionamos el tooltip definido en el HTML
  const tooltip = d3.select("#tooltip_barras");

  // Dibujamos las barras del gráfico y aplicamos color según valor
  gExport.selectAll(".bar")
    .data(data)
    .enter()
    .append("rect")
    .attr("class", "bar")
    .attr("x", d => x(d["Parámetro"]))
    .attr("y", d => y(d["€"]))
    .attr("width", x.bandwidth())
    .attr("height", d => heightExport - y(d["€"]))
    .attr("fill", d => colorExport(d["€"]))

    // Interacción: al pasar el cursor
    .on("mouseover", function (event, d) {
      d3.select(this)
        .attr("stroke", "#000")
        .attr("stroke-width", 1.5);

      const nombre = d.Parámetro;
      const valor = d["€"] * 1000;

      tooltip
        .style("opacity", 1)
        .html(`<strong>${nombre}</strong><br>${valor.toLocaleString("es-ES")} millones €`);
    })

    // Movemos el tooltip con el cursor
    .on("mousemove", function (event) {
      tooltip
        .style("left", (event.pageX + 10) + "px")
        .style("top", (event.pageY - 28) + "px");
    })

    // Al salir del área de la barra ocultamos el tooltip
    .on("mouseout", function () {
      d3.select(this).attr("stroke", null);
      tooltip.style("opacity", 0);
    });

});
