const uploadForm = document.getElementById('upload-form');
const previewTable1 = document.getElementById('preview-table1');
const previewTable2 = document.getElementById('preview-table2');

uploadForm.addEventListener('submit', event => {
	event.preventDefault();

	const file1 = document.getElementById('file1').files[0];
	const file2 = document.getElementById('file2').files[0];

	const file1Reader = new FileReader();
	const file2Reader = new FileReader();
file1Reader.addEventListener('load', () => {
	const file1Data = file1Reader.result;
	const file1Rows = file1Data.split('\n');
	const file1Headers = file1Rows[0].split(',');

	// Clear previous table data
	previewTable1.innerHTML = '';

	// Create table header row
	const tableHeaderRow = document.createElement('tr');
	for (let i = 0; i < Math.min(5, file1Headers.length); i++) {
		const th = document.createElement('th');
		th.textContent = file1Headers[i];
		tableHeaderRow.appendChild(th);
	}
	previewTable1.appendChild(tableHeaderRow);

	// Create table data rows
	for (let i = 1; i < Math.min(6, file1Rows.length); i++) {
		const rowData = file1Rows[i].split(',');
		if (rowData.length !== file1Headers.length) {
			continue; // skip row if data length doesn't match header length
		}
		const tableDataRow = document.createElement('tr');
		for (let j = 0; j < Math.min(5, rowData.length); j++) {
			const td = document.createElement('td');
			td.textContent = rowData[j];
			tableDataRow.appendChild(td);
		}
		previewTable1.appendChild(tableDataRow);
	}
});

file2Reader.addEventListener('load', () => {
	const file2Data = file2Reader.result;
	const file2Rows = file2Data.split('\n');
	const file2Headers = file2Rows[0].split(',');

	// Clear previous table data
	previewTable2.innerHTML = '';

	// Create table header row
	const tableHeaderRow = document.createElement('tr');
	for (let i = 0; i < Math.min(5, file2Headers.length); i++) {
		const th = document.createElement('th');
		th.textContent = file2Headers[i];
		tableHeaderRow.appendChild(th);
	}
	previewTable2.appendChild(tableHeaderRow);

	// Create table data rows
	for (let i = 1; i < Math.min(6, file2Rows.length); i++) {
		const rowData = file2Rows[i].split(',');
		if (rowData.length !== file2Headers.length) {
			continue; // skip row if data length doesn't match header length
		}
		const tableDataRow = document.createElement('tr');
		for (let j = 0; j < Math.min(5, rowData.length); j++) {
			const td = document.createElement('td');
			td.textContent = rowData[j];
			tableDataRow.appendChild(td);
		}
		previewTable2.appendChild(tableDataRow);
	}
});

if (file1) {
	file1Reader.readAsText(file1);
}

if (file2) {
	file2Reader.readAsText(file2);
}});