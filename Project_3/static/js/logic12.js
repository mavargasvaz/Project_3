// Path to the CSV data
const csvData = "Data/merged_data_real.csv";  // 

// Parse CSV data
let data;
d3.csv(csvData).then((csv) => {
    data = csv;

//console.log(data)

 // Extract unique years from the data
 const years = [...new Set(data.map(d => d.year))];

 const states = [...new Set(data.map(d => d.Jurisdiction))]; 

 //console.log(data)

 //console.log(years)
 //console.log(states)

  // Create a dropdown menu
  d3.select('#yearDropdown3')
  .selectAll('option')
  .data(years)
  .enter()
  .append('option')
  .text(d => d)
  .attr('value', d => d);

  let initial_entry = years[0];
  //console.log(initial_entry)
  fillPlots(initial_entry)

});
   
 function optionChanged(newyear){
    // Call functions to build plots and display data for the selected year
    fillPlots(newyear);
  }


 function fillPlots(year) {

        d3.csv(csvData).then((csv) => {
                
        // Get the selected year from the dropdown
        const selectedYear = d3.select('#yearDropdown3').property('value');
        //console.log(selectedYear)
        // Filter data based on the selected year
        //const filteredData = csv.filter(d => d.year === selectedYear && d.Jurisdiction !== "Overall" );
        let filter_states = csv.filter(d => d.year === selectedYear && d.Jurisdiction === "Overall" )
        
        const columns = ['aian_nh_percent', 'asian_nh_percent', 'black_nh_percent', 'multi_nh_percent', 'nhpi_nh_percent', 'white_nh_percent', 'hisp_percent'];
        
        let race_death_percentaje = []

        for (let i of columns){
            race_death_percentaje.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            )
        }

        console.log(filter_states)
        console.log(race_death_percentaje)
        console.log(columns)

    // Bar Chart
      let bar_trace = {
        type: "bar",
        orientation: 'h',
        x: race_death_percentaje,
        y: columns,
        };
   
    let data = [bar_trace];
    let layout = {
        yaxis: {autorange: true},
        title:'All Deaths for Overdose',
        font: {size: 10},              
        // aian_nh_percent , black_nh_percent
    };
        
    // New bar chart using Plotly
    Plotly.newPlot("bar", data, layout);
   });
};