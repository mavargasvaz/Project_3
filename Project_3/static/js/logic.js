
// // // Specify the path to your CSV file
//  let csvFilePath = './Data/overdose_DB.csv';

// // // Use d3.csv() to load and process the CSV file
// d3.csv(csvFilePath).then(function(data) {
// // // This callback function will be executed once the CSV file is loaded

// // // Log the loaded data to the console (for verification)
// console.log(data);
// // })




// Your CSV data
const csvData = "Data/overdose_DB.csv";  // Replace with your actual CSV data

// Parse CSV data
const data = d3.csvParse(csvData);

// Create a color scale for the bars
const colorScale = d3.scaleSequential(d3.interpolateBlues).domain([0, d3.max(data, d => +d.alldrug_deaths)]);

// Create an SVG container for the chart
const svg = d3.select('body').append('svg')
    .attr('width', 800)
    .attr('height', 400);

// Create a bar chart
svg.selectAll('rect')
    .data(data)
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
    .data(data)
    .enter().append('text')
    .attr('x', (d, i) => i * 80 + 37.5)
    .attr('y', 420)
    .attr('text-anchor', 'middle')
    .text(d => d.Jurisdiction);

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

// Handle mouseout event for hiding the tooltip
function handleMouseOut() {
    d3.select('.tooltip').remove();
}
