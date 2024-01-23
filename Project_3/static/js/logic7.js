// Your CSV data
const csvData = "Data/your_data.csv";  // Replace with your actual CSV data

// Parse CSV data
Plotly.d3.csv(csvData, function (data) {
    // Extract unique years from the data
    const years = [...new Set(data.map(d => d.year))];

    // Populate the dropdown with years
    const dropdown = Plotly.d3.select("#year-dropdown");
    dropdown.selectAll("option")
        .data(years)
        .enter().append("option")
        .text(year => year)
        .attr("value", year => year);

    // Set the initial selected year
    const selectedYear = dropdown.property("value");

    // Filter data based on the selected year
    const filteredData = data.filter(d => d.year === selectedYear);

    // Create a trace for the plot
    const trace = {
        x: filteredData.map(d => d.Jurisdiction),
        y: filteredData.map(d => +d.alldrug_deaths),
        type: 'bar',
        text: filteredData.map(d => +d.alldrug_deaths),
        marker: {color: 'blue'},
    };

    // Create layout for the plot
    const layout = {
        title: `Drug Deaths in ${selectedYear}`,
        xaxis: {title: 'Jurisdiction'},
        yaxis: {title: 'All Drug Deaths'},
    };

    // Create the plot
    Plotly.newPlot('chart', [trace], layout);

    // Update plot when the dropdown selection changes
    dropdown.on("change", function () {
        const selectedYear = this.value;
        const updatedData = data.filter(d => d.year === selectedYear);

        // Update the chart with new data
        Plotly.update('chart', {
            x: [updatedData.map(d => d.Jurisdiction)],
            y: [updatedData.map(d => +d.alldrug_deaths)],
            text: [updatedData.map(d => +d.alldrug_deaths)],
        }, {
            title: `Drug Deaths in ${selectedYear}`,
        });
    });
});

