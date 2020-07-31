#!/bin/sh
echo "Enter project name:"
read PROJECT_NAME

mkdir "$PROJECT_NAME"
mkdir ./"$PROJECT_NAME"/js
mkdir ./"$PROJECT_NAME"/css

touch ./"$PROJECT_NAME"/README.md
touch ./"$PROJECT_NAME"/css/stylesheet.css
touch ./"$PROJECT_NAME"/js/main.js

cat >  ./"$PROJECT_NAME"/index.html << EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>$PROJECT_NAME</title>
  <link rel="stylesheet" href="./css/stylesheet.css" type="text/css">
  </head>
  <body>
    <script src="./js/main.js"></script>
  </body>
</html>
EOF