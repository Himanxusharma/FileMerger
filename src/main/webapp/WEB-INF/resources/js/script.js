const navSlide = () => {
    const burger = document.querySelector('.burger');
    const nav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');
  
    burger.addEventListener('click', () => {
      // Toggle nav
      nav.classList.toggle('nav-active');
  
      // Animate links
      navLinks.forEach((link, index) => {
        if (link.style.animation) {
          link.style.animation = '';
        } else {
          link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
        }
      });
  
      // Burger animation
      burger.classList.toggle('active');
    });
  };
  
  navSlide();
  
  //  Drag and Drop 
  
  const fileUploadContainer = document.querySelector('.file-upload-container');
  const fileList = fileUploadContainer.querySelector('.file-list');
  const fileInput = fileUploadContainer.querySelector('.file-input');
  
  // Prevent default drag behaviors
  ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
    fileUploadContainer.addEventListener(eventName, preventDefaults, false);
  });
  
  // Highlight drop area when item is dragged over it
  ['dragenter', 'dragover'].forEach(eventName => {
    fileUploadContainer.addEventListener(eventName, highlight, false);
  });
  
  // Unhighlight drop area when item is dragged out of it
  ['dragleave', 'drop'].forEach(eventName => {
    fileUploadContainer.addEventListener(eventName, unhighlight, false);
  });
  
  // Handle dropped files
  fileUploadContainer.addEventListener('drop', handleDrop, false);
  
  // Handle file input change
  fileInput.addEventListener('change', handleInput, false);
  
  function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }
  
  function highlight() {
    fileUploadContainer.classList.add('highlight');
  }
  
  function unhighlight() {
    fileUploadContainer.classList.remove('highlight');
  }
  
  function handleDrop(e) {
    const dt = e.dataTransfer;
    const files = dt.files;
    const validFileTypes = ['application/pdf'];
  
    if (files.length > 2) {
      alert('You can only upload up to two files.');
      return;
    }
    
    handleFiles(files);
  }
  
  function handleInput() {
    const files = fileInput.files;
    
    
    
    if (files.length > 2) {
      alert('You can only upload up to two files.');
      return;
    }
    
    handleFiles(files);
  }
  
  function handleFiles(files) {
    fileList.innerHTML = '';
    
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      
          const extension =     file.name.split('.').pop().toLowerCase();
    const validExtensions = ['csv', 'txt'];
      if (!validExtensions.includes(extension)) {
        alert('Only csv and txt files are allowed.');
        return;
      }
      
      const fileElem = document.createElement('div');
      fileElem.classList.add('file');
      
      const fileNameElem = document.createElement('span');
      fileNameElem.textContent = file.name;
      
      const removeIconElem = document.createElement('i');
      removeIconElem.classList.add('fa', 'fa-times');
      removeIconElem.addEventListener('click', () => {
        fileElem.classList.add('hidden');
        fileInput.value = '';
      });
      
      fileElem.appendChild(fileNameElem);
      fileElem.appendChild(removeIconElem);
      
      fileList.appendChild(fileElem);
    }
  }
  
  
  // footer
    window.addEventListener('load', function() {
      adjustFooterHeight();
    });
    
    window.addEventListener('resize', function() {
      adjustFooterHeight();
    });
    
    function adjustFooterHeight() {
      const footer = document.querySelector('footer');
      const body = document.querySelector('body');
      const bodyHeight = body.getBoundingClientRect().height;
      const windowHeight = window.innerHeight;
      const footerHeight = footer.getBoundingClientRect().height;
      if (bodyHeight + footerHeight < windowHeight) {
        footer.style.position = 'absolute';
        footer.style.bottom = '0';
      } else {
        footer.style.position = 'static';
      }
    }
    

     //list

  const listItems = document.querySelectorAll('.list li');

  listItems.forEach(item => {
    item.addEventListener('click', () => {
      item.classList.toggle('selected');
    });
  });
  

  // table

  window.addEventListener('load', function() {
    makeTablesResponsive();
  });
  
  window.addEventListener('resize', function() {
    makeTablesResponsive();
  });
  
  function makeTablesResponsive() {
    const tables = document.querySelectorAll('table');
    tables.forEach(table => {
      const headers = table.querySelectorAll('th');
      const rows = table.querySelectorAll('tr');
      headers.forEach(header => {  header.setAttribute('scope', 'col');
  });
  rows.forEach(row => {
    const cells = row.querySelectorAll('td');
    cells.forEach((cell, index) => {
      const headerText = headers[index].textContent;
      cell.setAttribute('data-header', headerText);
    });
  });
  
});}


//  file upload
const fileUpload = document.getElementById("file-upload");
const customFileUpload = document.querySelector(".custom-file-upload");

customFileUpload.addEventListener("click", function () {
  fileUpload.click();
});

fileUpload.addEventListener("change", function () {
  const fileName = this.value.split("\\").pop();
  if (fileName) {
    customFileUpload.innerHTML = fileName;
  } else {
    customFileUpload.innerHTML = '<i class="fas fa-cloud-upload-alt"></i> Choose File';
  }
});


