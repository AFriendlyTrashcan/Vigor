#! /bin/bash
name=$(printf $@ | sed -e 's,\\[trn],,g')
mkdir $(pwd)/figures &> /dev/null
xclip -selection clipboard -t image/png -o > "$(pwd)/figures/$name.png"
printf '\\begin{figure}[ht]\n\t\\centering\n\t\\includegraphics[width=\\textwidth]{figures/%s.png}\n\t\\caption{%s}\n\t\\label{%s}\n\\end{figure}' $name $name $name
