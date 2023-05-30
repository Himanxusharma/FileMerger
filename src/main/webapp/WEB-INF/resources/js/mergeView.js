function view(dataMap) {

	// Assuming you have the HashMap data available in a JavaScript variable called 'dataMap'

	// Get the table body element
	 alert ("Entered");  
	var tableBody = document.getElementById("data-body");

	// Iterate over the HashMap data
	for (var key in dataMap) {
		if (dataMap.hasOwnProperty(key)) {
			// Create a new table row
			var row = document.createElement("tr");

			// Create table cells for key and value
			var keyCell = document.createElement("td");
			keyCell.textContent = key;

			var valueCell = document.createElement("td");
			valueCell.textContent = dataMap[key];

			// Append cells to the row
			row.appendChild(keyCell);
			row.appendChild(valueCell);

			// Append the row to the table body
			tableBody.appendChild(row);
		}
	}


}