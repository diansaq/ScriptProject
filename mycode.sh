# script in bash:
#!/bin/bash
# simple folder/file creation script

# Creating a directory:
# Creates root_dir variable
root_dir="$1" # mycode

# Create root folder
mkdir -p $root_dir

# Create subfolders for css, assets (with images), scripts
mkdir -p $root_dir/css 
mkdir -p $root_dir/assets 
mkdir -p $root_dir/assets/thumbs 
mkdir -p $root_dir/assets/fonts 
mkdir -p $root_dir/assets/sounds 
mkdir -p $root_dir/js

# Generate files: app.css file, index.html file

touch $root_dir/css/app.css

echo "* {" >> $root_dir/css/app.css
echo "  margin: 0;" >> $root_dir/css/app.css
echo "  padding: 0" >> $root_dir/css/app.css
echo "  box-sizing: border-box;" >> $root_dir/css/app.css
echo "  scroll-behavior: smooth;" >> $root_dir/css/app.css
echo "}" >> $root_dir/css/app.css

# app.js file
touch $root_dir/js/app.js

echo "// your javascript goes here..." >> $root_dir/js/app.js

# Index.html file
index=index.html
touch $root_dir/$index

echo "<!DOCTYPE html>" >> $root_dir/$index
echo "<html lang='en'>" >> $root_dir/$index
echo >> $root_dir/$index # blank line
echo "<head>" >> $root_dir/$index
echo "  <link rel='stylesheet' href='css/app.css' />" >> $root_dir/$index
echo "  <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet' />" >> $root_dir/$index
echo "  <title>My Script Project</title>" >> $root_dir/$index
echo "</head>" >> $root_dir/$index
echo >> $root_dir/$index # blank line
echo "<body>" >> $root_dir/$index
echo "  <h1>Hello, Welcome! </h1>" >> $root_dir/$index
echo "  <img src='assets/myimages/codeimg.jpg' alt='codeimg' width="500" height=auto />" >> $root_dir/$index
echo "  <h3>Thanks For Visiting!</h3>" >> $root_dir/$index
echo "  <script src='js/app.js'></script>" >> $root_dir/$index
echo "</body>" >> $root_dir/$index

# Add default images
# Copies a single image, or file or folder
# Copies the entire images directory
cp -r ~/MY_SCRIPTPROJECT/myimages $root_dir/assets/

# Successful Completion Message
echo "Job Complete!"

# code $root_dir