FT_LINE1=7
FT_LINE2=15

file=/etc/passwd

grep -v '^#' $file \
| cut -d ':' -f 1 \
| sed 'n;d' \
| rev \
| sort -r \
| sed -n "${FT_LINE1},${FT_LINE2}p" \
| awk '{printf "%s%s",sep,$0;sep=", "}' \
| sed 's/$/./'
# | tr '\n' ',' 
