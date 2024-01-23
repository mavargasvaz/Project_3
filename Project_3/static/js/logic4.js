// We use the following line to start the app
function startup() {
    // Using D3 we select the dropdown
    let selector = d3.select("#selDataset");

    // We load data from samples.json using a Promise
    d3.json("./Data/overdose_DB.csv").then(function(samplesData){
        // We extract names from the loaded data
        let year = samplesData.year;
