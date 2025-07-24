// Definimos las dimensiones base del gráfico de tarta
const widthPie = 600;
const heightPie = 500;
const radius = Math.min(widthPie, heightPie) / 2;

// Cargamos los datos desde el archivo CSV
d3.dsv(";", "assets/data/exportaciones_espana_eeuu.csv").then(data => {

    data.forEach(d => {
        d.Valor = +d.Valor;
    });

    const filasLeyenda = Math.ceil(data.length / 2);
    const extraHeight = filasLeyenda * 20 + 40;

    const svgPie = d3.select("#graficoCircular")
        .append("svg")
        .attr("width", widthPie)
        .attr("height", heightPie + extraHeight)
        .append("g")
        .attr("transform", `translate(${widthPie / 2}, ${heightPie / 2})`);

    const colorPie = d3.scaleOrdinal()
        .domain(data.map(d => d.Categoría))
        .range(d3.quantize(t => d3.interpolateSpectral(t * 0.8 + 0.1), data.length).reverse());

    const pie = d3.pie()
        .sort(null)
        .value(d => d.Valor);

    const arc = d3.arc()
        .innerRadius(0)
        .outerRadius(radius - 10);

    const arcLabel = d3.arc()
        .innerRadius(radius * 0.75)
        .outerRadius(radius * 0.75);

    const arcs = pie(data);

    const tooltip = d3.select("#tooltip_graficoCircular");

    const gArcs = svgPie.selectAll("g.arc")
        .data(arcs)
        .enter()
        .append("g")
        .attr("class", "arc");

    gArcs.append("path")
        .attr("d", arc)
        .attr("fill", d => colorPie(d.data.Categoría))
        .on("mouseover", function (event, d) {
            d3.select(this).attr("stroke", "#000").attr("stroke-width", 1.5);
            tooltip
                .style("opacity", 1)
                .html(`<strong>${d.data.Categoría}</strong><br>${d.data.Valor.toLocaleString("es-ES")} millones €`);
        })
        .on("mousemove", function (event) {
            tooltip
                .style("left", (event.pageX + 10) + "px")
                .style("top", (event.pageY - 28) + "px");
        })
        .on("mouseout", function () {
            d3.select(this).attr("stroke", null);
            tooltip.style("opacity", 0);
        });

    gArcs.append("text")
        .attr("transform", d => `translate(${arcLabel.centroid(d)})`)
        .attr("text-anchor", "middle")
        .attr("alignment-baseline", "middle")
        .style("font-size", "10px")
        .style("font-weight", "bold")
        .text(d => {
            const angle = d.endAngle - d.startAngle;
            return angle > 0.25 ? `${d.data.Valor} M €` : "";
        });

    const legend = svgPie.append("g")
    .attr("transform", `translate(${-widthPie / 2 + 20}, ${radius + 40})`);

    data.forEach((d, i) => {
        const legendRow = legend.append("g")
            .attr("transform", `translate(${(i % 2) * 300}, ${Math.floor(i / 2) * 20})`);

        legendRow.append("rect")
            .attr("width", 12)
            .attr("height", 12)
            .attr("fill", colorPie(d.Categoría));

        legendRow.append("text")
            .attr("x", 18)
            .attr("y", 10)
            .text(d.Categoría)
            .style("font-size", "12px")
            .attr("fill", "#333");
    });
});
