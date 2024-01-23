// Path to the CSV data for Mike's plots
const csvData = "Data/merged_data_real.csv";

// Parse CSV data for plots
let data;
d3.csv(csvData).then((csv) => {
    data = csv;

    // Extract unique years from the data
    const years = [...new Set(data.map(d => d.year))];
    const states = [...new Set(data.map(d => d.Jurisdiction))];

    // Create a dropdown menu
    d3.select('#yearDropdown3')
        .selectAll('option')
        .data(years)
        .enter()
        .append('option')
        .text(d => d)
        .attr('value', d => d);

    let initial_entry = years[0];
    fillPlots(initial_entry);
});

function optionChanged(newyear) {
    // Call functions to build plots and display data for the selected year
    fillPlots(newyear);
}

function fillPlots(year) {
    d3.csv(csvData).then((csv) => {
        // Get the selected year from the dropdown
        const selectedYear = d3.select('#yearDropdown3').property('value');

        let filter_states = csv.filter(d => d.year === selectedYear && d.Jurisdiction === "Overall");

        const columns = ['aian_nh_percent', 'asian_nh_percent', 'black_nh_percent', 'multi_nh_percent', 'nhpi_nh_percent', 'white_nh_percent', 'hisp_percent'];

        let race_death_percentage = [];

        for (let i of columns) {
            race_death_percentage.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            );
        }

        console.log(filter_states);
        console.log(race_death_percentage);
        console.log(columns);

        // Bar Chart
        let bar_trace = {
            type: "bar",
            orientation: 'h',
            x: race_death_percentage,
            y: columns,
        };

        let data = [bar_trace];
        let layout = {
            yaxis: { autorange: true },
            title: 'All Deaths for Overdose',
            font: { size: 10 },
        };

        // New bar chart using Plotly
        Plotly.newPlot("bar", data, layout);
    });
}

// Path to the CSV data for Rene's map
let csvDataMap = "Data/cleaned_data_real.csv";

// Parse CSV data for the map
let dataMap;
d3.csv(csvDataMap).then((csv) => {
    dataMap = csv;

    // Extract unique years from the data
    let yearsMap = [...new Set(dataMap.map(d => d.year))];

    // Create a dropdown menu
    d3.select('#yearDropdown2')
        .selectAll('option')
        .data(yearsMap)
        .enter()
        .append('option')
        .text(d => d)
        .attr('value', d => d);

    // Create the map once outside the function
    let map = L.map('map').setView([37.7749, -122.4194], 4);

    // Add a tile layer
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Initial rendering
    updateMap(map);

    // Add event listener for dropdown change
    d3.select('#yearDropdown2').on('change', () => updateMap(map));
});

// Function to update the map based on selected year
function updateMap(map) {
    // Get the selected year from the dropdown
    let selectedYear = d3.select('#yearDropdown2').property('value');

    // Filter data based on the selected year
    let filteredData = dataMap.filter(d => d.year === selectedYear);

    // Clear existing markers
    map.eachLayer(layer => {
        if (layer instanceof L.CircleMarker) {
            map.removeLayer(layer);
        }
    });

    // Create a new color scale for the map markers
    let colorScale = d3.scaleSequential(d3.interpolateReds).domain([0, d3.max(filteredData, d => +d.alldrug_deaths)]);

    // Add markers to the map
    filteredData.forEach(d => {
        let marker = L.circleMarker([+d.latitude, +d.longitude], {
            radius: 10,
            fillColor: colorScale(+d.alldrug_deaths),
            color: 'black',
            weight: 1,
            opacity: 1,
            fillOpacity: 0.8
        }).addTo(map);

        // Add a tooltip to each marker
        marker.bindTooltip(`<strong>${d.Jurisdiction}</strong><br>Deaths: ${d.alldrug_deaths}`).openTooltip();
    });
}
