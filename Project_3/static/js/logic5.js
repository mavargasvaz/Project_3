// Path to the CSV data
const csvData = "Data/cleaned_data_real.csv";  // 

// Parse CSV data
let data;
d3.csv(csvData).then((csv) => {
    data = csv;

    // Extract unique years from the data
    const years = [...new Set(data.map(d => d.year))];

    // Create a dropdown menu
    d3.select('#yearDropdown')
        .selectAll('option')
        .data(years)
        .enter()
        .append('option')
        .text(d => d)
        .attr('value', d => d);

    // Initial rendering
    updateChart();

    // Add event listener for dropdown change
    d3.select('#yearDropdown').on('change', updateChart);
});

// Function to update the chart based on selected year
function updateChart() {
    // Get the selected year from the dropdown
    const selectedYear = d3.select('#yearDropdown').property('value');

    // Filter data based on the selected year
    const filteredData = data.filter(d => d.year === selectedYear);

    // Create a color scale for the bars
    const colorScale = d3.scaleSequential(d3.interpolateBlues).domain([0, d3.max(filteredData, d => +d.alldrug_deaths)]);

    // Create an SVG container for the chart
    const svg = d3.select('#chart-container').html('').append('svg')
        .attr('width', 800)
        .attr('height', 400);

    // Create a bar chart
    svg.selectAll('rect')
        .data(filteredData)
        .enter().append('rect')
        .attr('x', (d, i) => i * 80)
        .attr('y', d => 400 - +d.alldrug_deaths)
        .attr('width', 75)
        .attr('height', d => +d.alldrug_deaths)
        .attr('fill', d => colorScale(+d.alldrug_deaths))
        .on('mouseover', handleMouseOver)
        .on('mouseout', handleMouseOut);

    // Create x-axis labels
    svg.selectAll('text')
        .data(filteredData)
        .enter().append('text')
        .attr('x', (d, i) => i * 80 + 37.5)
        .attr('y', 420)
        .attr('text-anchor', 'middle')
        .text(d => d.Jurisdiction);
}

// Handle mouseover event for displaying information
function handleMouseOver(event, d) {
    const tooltip = d3.select('body').append('div')
        .attr('class', 'tooltip')
        .style('position', 'absolute')
        .style('opacity', 0.9);

    tooltip.html(`<strong>${d.Jurisdiction}</strong><br>Deaths: ${d.alldrug_deaths}`)
        .style('left', (event.pageX + 10) + 'px')
        .style('top', (event.pageY - 30) + 'px');
}

// To handle mouseout event for hiding the tooltip
function handleMouseOut() {
    d3.select('.tooltip').remove();
}

// This is done with D3