echo "Building the PDF ...";
prince --javascript --input-list=_site/assets/prince-list.txt -o pdf/jekyllhowto.pdf;
echo "Done. Look in the /pdf folder in your project directory.";
