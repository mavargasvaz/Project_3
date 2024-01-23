// Your CSV data
const csvData = "Data/overdose_DB.csv";  // Replace with your actual CSV data

// Parse CSV data
d3.csv(csvData).then(data => {
    // Extract unique years from the data
    const years = Array.from(new Set(data.map(d => +d.year)));

    // Populate the dropdown with years
    const yearDropdown = d3.select('#year');
    yearDropdown.selectAll('option')
        .data(years)
        .enter().append('option')
        .text(d => d)
        .attr('value', d => d);

    // Initialize the map
    const map = L.map('map').setView([37.7749, -122.4194], 4);

    // Add a tile layer (you can choose your preferred tile layer)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '© OpenStreetMap contributors'
    }).addTo(map);

    // Function to update the map based on the selected year
    function updateMap(selectedYear) {
        // Clear existing markers
        map.eachLayer(layer => {
            if (layer instanceof L.CircleMarker) {
                map.removeLayer(layer);
            }
        });

        // Filter data for the selected year
        const filteredData = data.filter(d => +d.year === selectedYear);

        // Create markers for each data point
        filteredData.forEach(d => {
            const marker = L.circleMarker([d.Latitude, d.Longitude], {
                radius: Math.sqrt(d.alldrug_deaths) * 2,  // Adjust radius based on alldrug_deaths
                fillColor: 'blue',
                fillOpacity: 0.7,
                color: 'black',
                weight: 1
            }).addTo(map);

            // Add a tooltip to display information on hover
            marker.bindTooltip(`<strong>${d.Jurisdiction}</strong><br>Deaths: ${d.alldrug_deaths}`).openTooltip();
        });
    }

    // Initial map update based on the first year in the dropdown
    const initialYear = years[0];
    updateMap(initialYear);

    // Event listener for dropdown change
    yearDropdown.on('change', function () {
        const selectedYear = +d3.select(this).property('value');
        updateMap(selectedYear);
    });
});


// This is done with leaflet