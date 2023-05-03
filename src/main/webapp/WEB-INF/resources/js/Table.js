//Single Table Preview

const fileInput = document.getElementById("file-input");
const previewContainer = document.getElementById("preview-container");

fileInput.addEventListener("change", function() {
  const file = this.files[0];
  const reader = new FileReader();
  
  reader.addEventListener("load", function() {
    const csvData = reader.result;
    const rows = csvData.split("\n");
    const headers = rows[0].split(",");
    let tableHtml = "<table>";
    tableHtml += "<tr>";
    headers.forEach(function(header) {
      tableHtml += "<th>" + header + "</th>";
    });
    tableHtml += "</tr>";
    for (let i = 1; i < 5; i++) {
      const cells = rows[i].split(",");
      tableHtml += "<tr>";
      cells.forEach(function(cell) {
        tableHtml += "<td>" + cell + "</td>";
      });
      tableHtml += "</tr>";
    }
    tableHtml += "</table>";
    previewContainer.innerHTML = tableHtml;
  });
  
  reader.readAsText(file);
});
