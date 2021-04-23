#!/bin/sh
echo "Enter project name:"
read PROJECT_NAME

if [ -d ./"${PROJECT_NAME:-"New Project"}" ]
  then
    i=2
    while [ -d ./"${PROJECT_NAME} (${i})" ]
      do
        i=$((i+1))
      done
    PROJECT_NAME="${PROJECT_NAME} (${i})"
  fi

mkdir "${PROJECT_NAME:-"New Project"}"
mkdir ./"${PROJECT_NAME:-"New Project"}"/js
mkdir ./"${PROJECT_NAME:-"New Project"}"/css

touch ./"${PROJECT_NAME:-"New Project"}"/README.md
touch ./"${PROJECT_NAME:-"New Project"}"/css/stylesheet.css
touch ./"${PROJECT_NAME:-"New Project"}"/js/main.js

cat >  ./"${PROJECT_NAME:-"New Project"}"/index.html << EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>${PROJECT_NAME:-"New Project"}</title>
  <link rel="stylesheet" href="./css/stylesheet.css" type="text/css">
  </head>
  <body>
    <script src="./js/main.js"></script>
  </body>
</html>
EOF