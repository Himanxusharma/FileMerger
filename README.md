# FileMerger
### A tool which can be able to merge two files.

##  Functionalities 
- It can merge 2 files based on unique key.
- It should have an option to choose the columns to show in merged file.
- It should have an option to provide encrypted files.
- It should have an option to get encrypted output file.
- It can provide matched records, unmatched records both.
- Ability to provide details through UI.
- Ability to download the file from UI.




##  Technologies used 
- HTML/CSS for UI develop (TODO: use React js)
- JavaScript for UI responsiveness and event handling
- Node js or Java for backend development
- Mongo database




##  Version 2.0 Data Flow Diagram 

![DFD (4)](https://user-images.githubusercontent.com/66838782/232209370-2dd09e95-d186-491b-ae79-c15b67505175.png)


##  Program steps 

1.  User will enter to our website.
2.  We'll give the option to upload the two files by Drag & Drop method or by simple clicking on the button "Upload file"
3.  We'll process the files and extract the extension of these files by with the help of delimiter values.
4.  Then we'll ask user "Is these files have headers or not, if not then we'll provide the name to the columns as column1,column2, etc.
5.  We'll provide the file headers with few records on the UI to make the help of user in choosing key column name.
6.  In case user entered the invalid key column name then we'll make one step backward to step 5.
7.  If valid, compare these two table on the basis of the both key column values and merge them only the matched values of the key columns.
8.  after merging file successfully we'll show that file on the screen and 10 users at a time there is the next button to iterate the next values in the output file.
9.  There will also provided a download button so that user can download the merged file on their system also they have option to choose the format of file to download.
10.  We'll provided a message to user for their data privacy " Thankyou  Don't worry  Your data is only upto you. "


