
// Specify the path to your CSV file
const csvFilePath = './Data/overdose_DB.csv';
// Use d3.csv() to load and process the CSV file
 d3.csv(csvFilePath).then(function(data) {
// This callback function will be executed once the CSV file is loaded

// Log the loaded data to the console (for verification)
console.log(data[0]);
console.log(data[1]);

// Filtering the data per Year
//2020
let data_2020 = data.filter((data) => {
    return data.year === "2020";
     });
   console.log(data_2020) 
//2021
let data_2021 = data.filter((data) => {
    return data.year === "2021";
     });
   console.log(data_2021) 
//2022
let data_2022 = data.filter((data) => {
    return data.year === "2022";
     });
   console.log(data_2022) 

// Year Unique for Dropdown
const year_unique = [2020,2021,2022] 
console.log(year_unique)

// Mapping data for plotting
let states = data.map( d => d.Jurisdiction);
let alldrug_deaths_2020 = data_2020.map( d => d.alldrug_deaths);

console.log(alldrug_deaths_2020)
console.log(states)

// Define selector # ID SelDataset on HTML
let selector = d3.select("#selDataset");

// Populate the dropdown with the Unique Year
selector.selectAll("option")
.data(year_unique)
.enter()
.append("option")
.attr("value", d => d)
.text(d => d);

//We use the following line to get the initial selected value from the names array
let initial_entry = year_unique[0];
console.log(initial_entry)  

/* function updatePlotly() {
    // Use D3 to select the dropdown menu
    let dropdownMenu = d3.select("#selDataset");
    // Assign the value of the dropdown menu option to a variable
    let dataset = dropdownMenu.property("values"); */

/* function fillPlots(id) {
  // We do this to load data from samples.json using a Promise
   d3.csv(csvFilePath).then(function(data){
 // We filter samples based on the selected ID
   let filtered = data.data.filter(data => data.year == year);
   let result = filtered[0];

    // We process data to prepare for plotting
    let data_values = [];
    for (let i=0; i<result.sample_values.length; i++){
        data_values.push({
            id: `OTU ${result.otu_ids[i]}`,
            value: result.sample_values[i],
            label: result.otu_labels[i]
        }); */
  

// Bar Plot for 2020 All Deaths in the Sample
let trace1_2020 = {
    x: states,
    y: alldrug_deaths_2020,
    type: "bar",
    textposition: 'auto',
    opacity: 0.5,
    marker: {
        color: 'rgba(58,200,225,.5)',
         line: {
             color: 'rgb(8,48,107',
             width: 1.5
          }
  }
};

let values = [trace1_2020]
// Set the Layout
let layout = {
    title:'All Deaths for Overdose',
    font: {size: 10},
    color: 'rgb(8,48,107'
    };     
 
// Render the plot to the div tag with id "plot"

 Plotly.newPlot('plot',values, layout)  

 

});


