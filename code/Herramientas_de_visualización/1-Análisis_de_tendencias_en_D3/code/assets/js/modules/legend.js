// Función reutilizable para generar una leyenda continua de colores para escalas con interpolador
function Legend(color, {
  title,
  tickSize = 6,
  width = 320,
  height = 44 + tickSize,
  marginTop = 18,
  marginRight = 0,
  marginBottom = 16 + tickSize,
  marginLeft = 0,
  ticks = width / 64,
  tickFormat,
  tickValues
} = {}) {

// Creamos el SVG principal para la leyenda
const svg = d3.create("svg")
  .attr("width", width)
  .attr("height", height)
  .attr("viewBox", [0, 0, width, height])
  .style("overflow", "visible")
  .style("display", "block");

let x;

// Si la escala es continua con interpolador, generamos un degradado como imagen
if (color.interpolator) {

  // Creamos una escala lineal con el dominio de la escala de color
  x = Object.assign(d3.scaleLinear()
    .domain(color.domain())
    .range([marginLeft, width - marginRight]));

  // Añadimos la imagen que representa el gradiente
  svg.append("image")
    .attr("x", marginLeft)
    .attr("y", marginTop)
    .attr("width", width - marginLeft - marginRight)
    .attr("height", height - marginTop - marginBottom)
    .attr("preserveAspectRatio", "none")
    .attr("xlink:href", ramp(color.interpolator(), width - marginLeft - marginRight).toDataURL());
}

// Añadimos el eje con los ticks
svg.append("g")
  .attr("transform", `translate(0,${height - marginBottom})`)
  .call(d3.axisBottom(x)
    .ticks(ticks, tickFormat)
    .tickSize(tickSize)
    .tickValues(tickValues))
  .call(g => g.select(".domain").remove())
  .call(g => g.append("text")
    .attr("x", marginLeft)
    .attr("y", -15)
    .attr("fill", "currentColor")
    .attr("text-anchor", "start")
    .attr("font-weight", "bold")
    .text(title));

return svg.node();

// Función auxiliar para generar un gradiente en canvas que se usará como imagen
function ramp(color, n = 256) {
  const canvas = document.createElement("canvas");
  canvas.width = n;
  canvas.height = 1;
  const context = canvas.getContext("2d");
  for (let i = 0; i < n; ++i) {
    context.fillStyle = color(i / (n - 1));
    context.fillRect(i, 0, 1, 1);
  }
  return canvas;
}
}