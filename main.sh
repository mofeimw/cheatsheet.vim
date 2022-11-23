#!/bin/bash

[ ! -d src ] && mkdir src

index=$(cat <<-END
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <title>vim cheat sheet</title>
        <link rel="stylesheet" href="normalize.css">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>
        <main>
END
)

section=""
body=""

while read -r line; do
    prev="$section"
    [[ "$line" =~ ^#.(.+)$ ]] && section="${BASH_REMATCH[1]}" || [[ "$line" =~ ^(.+)[[:space:]]-[[:space:]](.+)$ ]] && {
        [ ! "$section" = "$prev" ] && {
            body+="\n\t\t\t\t</ul>\n\t\t\t</section>\n\n\t\t\t<section>\n\t\t\t\t<h2>${section}</h2>\n\t\t\t\t<ul>"
        } || {
            key="${BASH_REMATCH[1]}"
            def="${BASH_REMATCH[2]}"

            body+="\n\t\t\t\t\t<li><kbd>${key}</kbd> - ${def}</li>"
        }
    } || body+="\n\t\t\t\t\t<br>"
done < cheatsheet

index+="${body:35}"
index+=$(cat <<-END

                </ul>
            </section>
        </main>
    </body>
</html>
END
)

echo -e "$index" > src/index.html
