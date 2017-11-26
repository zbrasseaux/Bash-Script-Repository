# requires the package 'imagemagick'

# Step 1 - Change the file extensions from '.cbz' to '.zip'

for f in *.cbz; do
cp "$f" "$(basename "$f" .cbz).zip
done

# Step 2 - Unzip the files and convert the contained images to '.pdf'

unzip *.zip
convert * final.pdf

# I would like to improve this in the future, to where it accepts a
# single file input or *, something to learn

# I would also like to include cleanup steps

# I would like to have the final file name be the same as the original
# with the extension changed from '.cbz' to '.pdf'
