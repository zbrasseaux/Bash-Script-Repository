for f in *.cbr; do
cp "$f" "$(basename "$f" .cbr).rar
done

p7zip -d *.rar
convert * final.pdf
