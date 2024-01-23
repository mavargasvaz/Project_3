const csvFilePath = './Data/overdose_DB.csv';


// Define selector # ID SelDataset on HTML
function populateSelector() {
    const selector = d3.select("#selDataset");
    const yearUnique = [2020, 2021, 2022];

    // Select existing options and bind data
    const options = selector
        .selectAll("option")
        .data(yearUnique);

    // Enter selection for new data points
    const newOptions = options
        .enter()
        .append("option");

    // Set "value" attribute and text content for new and existing options
    options.merge(newOptions)
        .attr("value", d => d)
        .text(d => d);

    // Optionally, you can remove any options that are no longer needed
    options.exit().remove();
}




function renderChart(data) {

// Get the selected year from the dropdown
const selectedYear = d3.select('#selDataset').property('value');

// Filter data based on the selected year
const filteredData = data.filter(d => d.year === selectedYear);
console.log(d3.max(filteredData, d => d.alldrug_rate))
d3.select("#svg").selectAll("*").remove();

// set the dimensions and margins of the graph
const margin = {top: 60, right: 30, bottom: 40, left: 120},
    width = 1000 - margin.left - margin.right,
    height = 600 - margin.top - margin.bottom;
// append the svg object to the body of the page
const svg = d3.select("#svg")
  .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", `translate(${margin.left}, ${margin.top})`);

// append the svg object to the body of the page and group elements
const ChartContainer = d3.select('svg').attr("width", width + margin.left + margin.right)
.attr("height", height + margin.top + margin.bottom)
.append("g")
.attr("transform", `translate(${margin.left}, ${margin.top})`);

// Add X axis
const x = d3.scaleLinear()
.domain([0, d3.max(filteredData, d => d.alldrug_rate)])
.range([ 0, width]);
svg.append("g")
.attr("transform", `translate(0, ${height})`)
.call(d3.axisBottom(x))
.selectAll("text")
  .attr("transform", "translate(5,0)rotate(0)")
  .style("text-anchor", "end");

// X title

svg.append("text")
        .attr("x", width/2)
        .attr("y", height-margin.bottom+75)
        .attr("text-anchor", "middle")
        .style("font-size", "16px")
        .text("Age-adjusted rate of deaths per 100,000 persons");

// Y axis
const y = d3.scaleBand()
.range([ 0, height ])
.domain(filteredData.map((d) => d.Jurisdiction))
.padding(.12);
svg.append("g")
.call(d3.axisLeft(y))

//Bars
svg.selectAll("myRect")
.data(filteredData)
.join("rect")
.attr("x", x(0) )
.attr("y", d => y(d.Jurisdiction))
.attr("width", d => x(d.alldrug_rate))
.attr("height", y.bandwidth())
.attr("fill", "#712177")

}

//function menu(column) {
    //const filteredData = data.map(item => ({ name: item.name, category: item[column] }));
    //renderChart(filteredData);
//}

// Use d3.csv() to load and process the CSV file
d3.csv(csvFilePath).then(function(data) {
// This callback function will be executed once the CSV file is loaded

// Log the loaded data to the console (for verification)
console.log(data[0]);
console.log(data[75]);
populateSelector();
renderChart(data);
//d3.select('#1').on('click', () => menu('alldrug_rate'));
//d3.select('#2').on('click', () => menu('opioids_rate'));
d3.select('#selDataset').on('change', function () {
    renderChart(data);
});

 });
 console.log(data[75]);