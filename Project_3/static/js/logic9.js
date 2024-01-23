// Path to the CSV data
let csvData = "Data/cleaned_data_real.csv";

// Parse CSV data
let data;
d3.csv(csvData).then((csv) => {
    data = csv;

    // Extract unique years from the data
    let years = [...new Set(data.map(d => d.year))];

    // Create a dropdown menu
    d3.select('#yearDropdown')
        .selectAll('option')
        .data(years)
        .enter()
        .append('option')
        .text(d => d)
        .attr('value', d => d);

    // Initial rendering
    updateMap();

    // Add event listener for dropdown change
    d3.select('#yearDropdown').on('change', updateMap);
});

// Function to update the map based on selected year
function updateMap() {
    // Get the selected year from the dropdown
    let selectedYear = d3.select('#yearDropdown').property('value');

    // Filter data based on the selected year
    let filteredData = data.filter(d => d.year === selectedYear);

    // Create a map
    let map = L.map('map').setView([37.7749, -122.4194], 4);

    // Add a tile layer
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Create a color scale for the map markers
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
