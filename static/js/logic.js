
// Specify the path to your CSV file
let csvFilePath = './Data/overdose_DB.csv';

// Use d3.csv() to load and process the CSV file
d3.csv(csvFilePath).then(function(data) {
// This callback function will be executed once the CSV file is loaded

// Log the loaded data to the console (for verification)
 console.log(data);
})
