// Definimos las dimensiones del SVG del mapa
const widthMapa = 960;
const heightMapa = 600;

// Creamos el contenedor SVG dentro del div con id="mapa"
const svg = d3.select("#mapa")
    .append("svg")
    .attr("width", widthMapa)
    .attr("height", heightMapa);

// Definimos la proyección geográfica y el generador de rutas
const projection = d3.geoNaturalEarth1()
    .scale(160)
    .translate([widthMapa / 2, heightMapa / 2]);

const path = d3.geoPath().projection(projection);

// Creamos estructura para almacenar los aranceles
let aranceles = new Map();

// Cargamos el archivo CSV de aranceles
d3.dsv(";", "assets/data/aranceles_adaptados_d3.csv").then(data => {

    // Convertimos los valores de aranceles a números y los guardamos en el mapa
    data.forEach(d => aranceles.set(d["Parámetro"], +d["Aranceles"]));
    const valores = data.map(d => +d["Aranceles"]);

    //  Creamos la escala de color con interpolador Turbo y dominio dinámico
    const minArancel = d3.min(valores);
    const maxArancel = d3.max(valores);

    const colorScale = d3.scaleSequential()
        .domain([minArancel, maxArancel])
        .interpolator(d3.interpolateTurbo)
        .clamp(true);

    // Creamos y añadimos la leyenda generada con la función Legend
    const legend = Legend(colorScale, {
        title: "Arancel aplicado (%)",
        width: 300
    });

    svg.append(() => legend)
        .attr("transform", `translate(${widthMapa - 340}, ${heightMapa - 50})`);

    // Cargamos el GeoJSON del mundo y dibujamos el mapa
    d3.json("https://raw.githubusercontent.com/holtzy/D3-graph-gallery/master/DATA/world.geojson")
        .then(world => {

            const tooltip = d3.select("#tooltip_mapa");

            svg.append("g")
                .selectAll("path")
                .data(world.features)
                .enter()
                .append("path")
                .attr("d", path)
                .attr("class", "country")
                .attr("fill", d => {
                    const nombre = d.properties.name;
                    const valor = aranceles.get(nombre);
                    return valor != null ? colorScale(valor) : "#e0e0e0";
                })
                .on("mouseover", function (event, d) {
                    const nombre = d.properties.name;
                    const valor = aranceles.get(nombre);

                    d3.select(this).classed("highlight", true);

                    tooltip
                        .style("opacity", 1)
                        .html(`<strong>${nombre}</strong><br>${valor != null ? valor + "%" : "Sin datos"}`);
                })
                .on("mousemove", function (event) {
                    tooltip
                        .style("left", `${event.pageX + 10}px`)
                        .style("top", `${event.pageY - 28}px`);
                })
                .on("mouseout", function () {
                    d3.select(this).classed("highlight", false);
                    tooltip.style("opacity", 0);
                });
        });
});