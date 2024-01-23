// Path to the CSV data
const csvData = "Data/cleaned_data.csv";

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
    updateMap();

    // Add event listener for dropdown change
    d3.select('#yearDropdown').on('change', updateMap);
});

// Function to update the map based on selected year
function updateMap() {
    // Get the selected year from the dropdown
    const selectedYear = d3.select('#yearDropdown').property('value');

    // Filter data based on the selected year
    const filteredData = data.filter(d => d.year === selectedYear);

    // Create a map container
    const map = L.map('svg').setView([37.7749, -122.4194], 4);

    // Add a tile layer (you can choose a different tile layer as needed)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '© OpenStreetMap contributors'
    }).addTo(map);

    // Create a custom icon for the bubbles
    const customIcon = L.divIcon({
        className: 'custom-div-icon',
        html: "<div style='background-color:#007BFF;' class='marker-pin'></div><div class='pulse'></div>",
        iconSize: [30, 42],
        iconAnchor: [15, 42]
    });

    // Add markers with bubbles to the map
    filteredData.forEach(d => {
        const Coordinates = d.Coordinates.split(',').map(Number);
        const marker = L.marker(Coordinates, { icon: customIcon }).addTo(map);
        
        // Create a circle marker with a radius based on alldrug_deaths
        const circle = L.circle(Coordinates, {
            radius: +d.alldrug_deaths * 100, // Adjust the multiplier for a suitable bubble size
            fillColor: '#007BFF',
            color: '#007BFF',
            fillOpacity: 0.5
        }).addTo(map);

        // Add a tooltip with jurisdiction and alldrug_deaths information
        const tooltipContent = `<strong>${d.Jurisdiction}</strong><br>Deaths: ${d.alldrug_deaths}`;
        circle.bindTooltip(tooltipContent);
    });
}
