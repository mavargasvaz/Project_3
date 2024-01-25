// Path to the CSV data Mike's
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
        // Filter data based on the selected year and only one Jurisdiction
        let filter_states = csv.filter(d => d.year === selectedYear && d.Jurisdiction === "Overall" )
             
                 
        const columns_race = ['aian_nh_percent', 'asian_nh_percent', 'black_nh_percent', 'multi_nh_percent', 'nhpi_nh_percent', 'white_nh_percent', 'hisp_percent'];
        xlabels_columns_race = ['AI / AN','Asian','Black','Multi-race','NH/PI','White','Hispanic']
         

        let race_death_percentaje = []

        for (let i of columns_race){
            race_death_percentaje.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            )
        }

        
        console.log(race_death_percentaje.map(String))
        console.log(filter_states)
        console.log(race_death_percentaje)
        console.log(xlabels_columns_race)

    // Bar Chart Deaths by Race / Ethnicity
      let bar_trace = {
        type: "bar",
        orientation: 'h',
        x: race_death_percentaje,
        y: xlabels_columns_race,
        text: race_death_percentaje.map(String),
        hovertemplate:'<i>Death By Overdose</i>: %%{x}'+
                      '<br><b>Race</b>: %{y}<br>',                    
        textposition:'auto',       
        marker: {
                color: ["#bb8abc","c362c5","bb30a9","f5a1ea","f5afec","57034c","b558a9"],
                //,"#330234","#730375","#e193e3","#330234","c362c5","#bb8abc"
                opacity: 0.9,
                line: {
                  color: 'rgb(8,48,107)',
                  width: 1.5
                }},
       };
   
    let data = [bar_trace];
    let layout = {
        width :1000,
        height:400,
        yaxis: {autorange: true},
        title:'By Race/Ethnicity',
        font:{
            family: 'Raleway, sans-serif',
            color : '#6f42c1',
            size: 12                 
          },
                     
    };
        
    // bar chart using Plotly
    Plotly.newPlot("bar", data, layout);



    const columns_age = ['age_under15_percent','age_15_24_percent','age_25_34_percent','age_35_44_percent','age_45_54_percent','age_55_64_percent','age_65plus_percent'];
    
    const columns_age_list = ['Under 15','15 to 24','25 to 34','35 to 44','45 to 54','55 to 64','65 and more'];
    
        let age_death_percentaje = []

        for (let i of columns_age){
            age_death_percentaje.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            )
        }

        console.log(filter_states)
        console.log(age_death_percentaje)
        console.log(columns_age)
    
    // Bar Chart Deaths by Age given in Years
    let bar_age = {
        type: "bar",
        orientation: 'h',
        x: age_death_percentaje,
        y:  columns_age_list,
        text: age_death_percentaje.map(String),
        hovertemplate:'<i>Death By Overdose</i>: %%{x}'+
                      '<br><b>Age</b>: %{y}<br>',                    
        textposition:'auto', 
        marker: {
                color: ["#bb8abc","c362c5","bb30a9","f5a1ea","f5afec","57034c","b558a9"],
                  line: {
                  color: '9A10F9',
                  width: 1.5
                }},
        };
   
    let data_age = [bar_age];
    let layout_age = {
        width :1000,
        height:400,
        yaxis: {autorange: true},
        title:'By Age (In Years)',
        font:{
            family: 'Raleway, sans-serif',
            color : '#6f42c1',
            size: 12                 
          },
                            
      };
        
    // Bar Chart
    Plotly.newPlot("bar_age", data_age, layout_age);

    const columns_male_age_percent = ['male_under15_percent','male_15_24_percent','male_25_34_percent','male_35_44_percent','male_45_54_percent','male_55_64_percent','male_65plus_percent'];
    
    const columns_female_age_percent = ['female_under15_percent','female_15_24_percent','female_25_34_percent','female_35_44_percent','female_45_54_percent','female_55_64_percent','male_65plus_percent'];
      
    const columns_sex = ['Under 15','15 to 24','25 to 34','35 to 44','45 to 54','55 to 64','65 and more'];
    
        let male_age_death_percentaje = []
        let female_age_death_percentaje = []


        for (let i of columns_male_age_percent){
            male_age_death_percentaje.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            )
        }

        for (let i of columns_female_age_percent){
            female_age_death_percentaje.push(
                d3.mean(filter_states.map(d => parseFloat(d[i])))
            )
        }

        console.log(filter_states)
        console.log(male_age_death_percentaje)
        console.log(columns_male_age_percent)
    
  // Bar Chart Deaths by Age and Sex given in Years
  // Bar Trace for Male
    let bar_male_age = {
        type: "bar",
        x: columns_sex,
        y: male_age_death_percentaje,
        name: 'Male',
        text: male_age_death_percentaje.map(String),
        hovertemplate:'<i>Death By Overdose</i>: %%{y}'+
                      '<br><b>Male between</b>: %{x} years<br>',                    
        textposition:'auto',
        marker: {
            color: '#007bff',
            opacity: 0.9,
            line: {
              color: '8035B4',
              width: 1.5
            }}
        };
    
     // Bar Trace for Female   
    let bar_female_age = {
        type: "bar",
        x: columns_sex,
        y: female_age_death_percentaje,
        name: 'FeMale',
        text: female_age_death_percentaje.map(String),
        hovertemplate:'<i>Death By Overdose</i>: %%{y}'+
                      '<br><b>Women between</b>: %{x} years<br>',                    
        textposition:'auto',
        marker: {
            color: '#6610f2',
            opacity: 0.6,
            line: {
              color: '8035B4',
              width: 1.5
            }}
       };
        
    let data_age_sex = [bar_male_age,bar_female_age];
    let layout_age_sex = {
        width :1000,
        height:400,
        title: 'By Sex',
        font:{
            family: 'Raleway, sans-serif',
            color : '#6f42c1',
            size: 12                 
          },
        barmode: 'group',
       
    };
           
    // New bar chart using Plotly
    Plotly.newPlot("bar_s", data_age_sex, layout_age_sex);

             
    const columns_drugs_deaths = ['opioids_deaths', 'imfs_deaths', 'heroin_deaths', 'rxopioids_deaths', 'stimulant_deaths', 'cocaine_deaths', 'meth_deaths','benzodiazepines_deaths','nonopioid_sedatives_deaths'];
    xlabels_columns_drugs = ['Any Opiods','Illegally-made Fentanyls','Heroin','Preescription Opiods','Any Stimulants','Cocaine','Methamphetamine','Benzodiazepines','Non-opioid Sedatives']
     

    let drugs_death_count = []

    for (let i of columns_drugs_deaths){
        drugs_death_count.push(
            d3.mean(filter_states.map(d => parseFloat(d[i])))
        )
    }
    
    console.log(drugs_death_count)
    console.log(xlabels_columns_drugs)

    let bar_drugs_deaths = {
        type: "bar",
        x: xlabels_columns_drugs,
        y: drugs_death_count,
        name: 'Drugs',
        text: drugs_death_count.map(String),
        hovertemplate:'<i>Death By Drugs</i>: %{y}'+
                      '<br><b>Drug Type</b>: %{x}<br>',                    
        textposition:'auto',
        marker: {
            color: ['57034c',"c362c5","bb30a9","f5a1ea","f5afec","#bb8abc","b558a9",'#E633FF','#AC33FF'],
            opacity: 0.9,
            line: {
              color: '340456',
              width: 1.5
            }}
        };

        let data_drugs = [bar_drugs_deaths];
        let layout_drugs = {
            width :1000,
            height:400,
            yaxis: {autorange: true},
            title:'Deaths Overdose by Drug Clasess',
            font:{
                family: 'Raleway, sans-serif',
                color : '#6f42c1',
                size: 12                 
              },
                                
          };
           // New bar chart using Plotly
    Plotly.newPlot("bar_d", data_drugs, layout_drugs);   
     

   });

};


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

    // Create a new color scale for the map circles
    let colorScale = d3.scaleSequential(d3.interpolateReds).domain([0, d3.max(filteredData, d => +d.alldrug_deaths)]);

    // Add circles to the map with colors
    filteredData.forEach(d => {
        let circle = L.circleMarker([+d.latitude, +d.longitude], {
            radius: 10,
            fillColor: colorScale(+d.alldrug_deaths),
            color: 'black',
            weight: 1,
            opacity: 1,
            fillOpacity: 0.8,  // Set initial fillOpacity to 0.8 (visible)
            interactive: true,  // Make circles interactive
            riseOnHover: true   // Raise the circle on hover
        }).addTo(map);

        // Add a tooltip to each circle
        circle.bindTooltip(`<strong>${d.Jurisdiction}</strong><br>Deaths: ${d.alldrug_deaths}`);

        // Hide the marker by default
        circle.on('add', function () {
            map.removeLayer(this);  // Remove the circle from the map
        });

        // Add hover behavior to show/hide markers
        circle.on('mouseover', function () {
            map.addLayer(this);  // Add the circle to the map
        });

        // Modify the mouseout behavior to adjust fillOpacity
        circle.on('mouseout', function () {
            this.setStyle({ fillOpacity: 0.8 });
        });
    });
}




// David's code
const csvFilePath = './Data/Updated_merged_data_no9999.csv';


// Define selector # ID SelDataset on HTML
function populateSelector() {
    const selector1 = d3.select("#yearDropdown1");
    const yearUnique = [2020, 2021, 2022];

    // Select existing options and bind data
    const options = selector1
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


function buttonMenu(data) {
var buttons = document.querySelectorAll(".button_click");
    buttons.forEach((id)=>{
        id.addEventListener("click", ()=>{
            buttons.forEach((id)=>{
                id.classList.remove("active");
            })

            id.classList.add("active");
            var idVal = id.getAttribute("id");
            renderChart(data,idVal);
            console.log(idVal);
        })
    })
}
    
function drugType() {
    const selector2 = d3.select("#selDataset2");
    var drugUnique = ["alldrug_rate", "opioids_rate", "imfs_rate","heroin_rate","rxopioids_rate","stimulant_rate","cocaine_rate",
    "meth_rate","benzodiazepines_rate","nonopioid_sedatives_rate"];

    // Select existing options and bind data
    const options2 = selector2
        .selectAll("option")
        .data(drugUnique);

    // Enter selection for new data points
    const newOptions2 = options2
        .enter()
        .append("option");

    // Set "value" attribute and text content for new and existing options
    options2.merge(newOptions2)
        .attr("value", d => d)
        .text(d => d);

    // Optionally, you can remove any options that are no longer needed
    options2.exit().remove();
}



function renderChart(data,idVal) {

// Get the selected year from the dropdown
const selectedYear = d3.select('#yearDropdown1').property('value');
//const selectedDrug = d3.select('#selDataset2').property('value');
// Filter data based on the selected year
const filteredData = data.filter(d => d.year === selectedYear);
const filteredData2 = filteredData.map(d => d[idVal]);
filteredData.sort((a, b) => b[idVal]- a[idVal]);
console.log(filteredData);
console.log(filteredData2);
idVal= idVal || "alldrug_rate";
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

console.log(d3.max(filteredData.map(d => parseFloat(d[idVal]))))
// Add X axis
const x = d3.scaleLinear()
.domain([0, d3.max(filteredData.map(d => parseFloat(d[idVal])))])
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
.attr("width", d => x(d[idVal]))
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
buttonMenu(data);
//drugType();
renderChart(data,"alldrug_rate");
d3.select('#yearDropdown1').on('change', function () {
    renderChart(data);
});
// d3.select('#selDataset2').on('change', function () {
//     renderChart(data);
// });

 });

 anime({
    targets: 'body div h1',
    translateX: 500,
    rotate: '1turn',
    backgroundColor: 'rgba(155, 15, 236, 0)',
    duration: 2500
  });
  