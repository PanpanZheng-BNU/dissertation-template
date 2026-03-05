$pdf_mode = 5; # Use xelatex to produce pdf
$bibtex_use = 2; # Run bibtex if needed

# Custom xelatex command with shell-escape
$xelatex = "xelatex -synctex=0 -interaction=nonstopmode -shell-escape %O %S";
$pdflatex = $xelatex;

# Ensure bibtex is run on all .aux files (for bibunits)
$bibtex = "bibtex %O %B";

# Tracking extra files
push @generated_exts, 'bbl', 'blg', 'out', 'toc', 'lof', 'lot', 'loa', 'xdv', 'synctex.gz';
