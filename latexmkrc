# http://users.phys.psu.edu/~collins/software/latexmk/latexmk-445.txt

# Format of command specifications
#
# %B: Base of filename for current command. E.g., if a postscript file
#     document.ps is being made from the dvi file document.dvi, then the
#     basename is document.
# %D: Destination file (e.g., the name of the postscript file when converting a
#     dvi file to postscript).
# %O: Options.
# %R: Root filename. This is the base name for the main tex file.
# %S: Source file (e.g., the name of the dvi file when converting a dvi file to
#     ps).
# %T: The name of the primary tex file.
# %Y: Name of directory for auxiliary output files (see the configuration
#     variable $aux_dir). A directory separation character ('/') is appended if
#     $aux_dir is non-empty and does not end in a suitable character, with
#     suitable characters being those appropriate to UNIX and MS-Windows, i.e.,
#     ':', '/' and '\'.
# %Z: Name of directory for output files (see the configuration variable
#     $out_dir). A directory separation character ('/') is appended if $out_dir
#     is non-empty and does not end in a suitable character, with suitable
#     characters being those appropriate to UNIX and MS-Windows, i.e., ':', '/'
#     and '\'.

# Default list of files to be proccessed.
@default_files = ('en.tex', 'ko.tex');

# 0: Do not generate a pdf version of the document.
# 1: Generate a pdf version of the document using pdflatex.
# 2: generate a pdf version of the document from the ps file, by using the
#    command specified by the $ps2pdf variable.
# 3: Generate a pdf version of the document from the dvi file, by using the
#    command specified by the $dvipdf variable.
#
# Equivalent to the -pdf-, -pdf, -pdfdvi, -pdfps options.
$pdf_mode = 1;

# The LaTeX processing program in the version that makes a pdf file instead of a
# dvi file.
$pdflatex = 'xelatex %O %S';

# The command to invoke a pdf-previewer.
if ($^O eq 'darwin') {
  $pdf_previewer = 'open -a Skim %O %S';
}

# vim: set syntax=perl:
