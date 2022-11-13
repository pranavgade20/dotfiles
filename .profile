export PATH="/home/p/.gem/ruby/1.9.1/bin:$PATH"
export READER="zathura"

merge-pdf() {
    cumulative=1                                                                                                      
    for f in "${@:2}"
    do
        cnt=$(gs -q -dNODISPLAY -dNOSAFER -c "($f) (r) file runpdfbegin pdfpagecount = quit")
        echo "[/Page $cumulative /Title ($f) /OUT pdfmark"
        cumulative=$((cnt+cumulative))
    done > pdfmark.txt

    gs -q -dBATCH -dNOPAUSE -dNOSAFER -sDEVICE=pdfwrite -sOutputFile="$1" -dPDFSETTINGS=/prepress pdfmark.txt "${@:2}"

    rm pdfmark.txt
}
