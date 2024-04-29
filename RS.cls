\ProvidesClass{RS}

\LoadClass[12pt, notitlepage]{report}

%-----------------------------Packages----------------------------------

\usepackage{xcolor, color} % For colors
\usepackage{listings} % For code listings
\usepackage{lstautogobble} % For code listings
\usepackage{lipsum} % For generating dummy text
\usepackage{import} % For the \import command
\usepackage{fontspec}  % For loading fonts
\usepackage{float} % For floating figures
\usepackage{graphicx} % For including images
\graphicspath{ {figures/} } % Specifies the directory where pictures are stored
\usepackage[hidelinks]{hyperref} % For adding hyperlinks
\usepackage{pgf, tikz} % For drawing figures

\usepackage[top=3cm, bottom=2cm, left=2cm, right=2cm]{geometry} % For setting the margins

%---------------------------------TikZ-----------------------------------

\usetikzlibrary{bending}
\usetikzlibrary{patterns}
\usetikzlibrary{tikzmark,calc}
\usetikzlibrary{positioning}
\usetikzlibrary{decorations.pathmorphing}
\usepgflibrary{arrows.meta} % LATEX and plain TEX and pure pgf
\usepgflibrary[arrows.meta] % ConTEXt and pure pgf 
\usetikzlibrary{arrows.meta} % LATEX and plain TEX when using TikZ 
\usetikzlibrary[arrows.meta] % ConTEXt when using TikZ

%---------------------------------Ruler------------------------------------

\newcommand{\HRule}{\rule{.7\textwidth}{0.5mm}} 

%---------------------------------Number-----------------------------------

\usepackage{fancyhdr} % For setting the header and footer

%------------------------------Remove dots from ToC--------------------------

\usepackage{tocloft} % For customizing the Table of Contents
\renewcommand{\cftchapleader}{\cftdotfill{\cftsecdotsep}}  % for chapters

%------------------------------Increase spacing in ToC------------------------

\renewcommand\cftbeforechapskip{8pt} % Space before chapter title
\renewcommand\cftsecafterpnum{\vskip 6pt} % Space after section number
\renewcommand\cftsubsecafterpnum{\vskip 6pt} % Space after subsection number
\renewcommand\cftchapafterpnum{\vskip 8pt} % Space after chapter number

\usepackage[nottoc]{tocbibind} % For adding the bibliography to the Table of Contents

%-----------------------------Abstract Styling------------------------------

\usepackage[style]{abstract} % For styling the abstract
\renewcommand{\abstractnamefont}{\normalfont} % For setting the abstract title font
\renewcommand{\abstitlestyle}[1]{{{\let\clearpage\relax\section*{#1}}}} % For setting the abstract title style

%---------------------------------Keywords---------------------------------

\providecommand{\keywords}[1]
{
  \textbf{\textit{Keywords ---}} #1
}

%----------------------------------Mots-clés-------------------------------

\providecommand{\mots}[1]
{
  \textbf{\textit{Mots-clés ---}} #1
}

%--------------------------------abbreviations--------------------------

\usepackage[automake]{glossaries} % For the list of abbreviations
\makeglossaries % For making the glossary

\import{./other/}{abbreviations.tex} % For importing the abbreviations file

%---------------------------------Arabic-----------------------------------

\usepackage{polyglossia} % For multilingual support
\setmainlanguage{english} % Set the main language to English
\setotherlanguages{arabic} % Set the other language to Arabic

%---------------------------------font-------------------------------------

\newfontface\arabicfont[Script=Arabic]{Arial} % or any other font
% \setmainfont{Source Serif Pro} % For setting the main font
% \setmonofont{Fira Sans}  % For setting the monospace font (used in code listings)

%-------------------------------Bibliography-------------------------------

\usepackage[backend=biber,style=chem-angew, defernumbers=true]{biblatex} % For the bibliography
\addbibresource{bibliography.bib} % For adding the bibliography file

\defbibfilter{online} {
  type=online
}

%---------------------------------Colors-----------------------------------

\definecolor{bluekeywords}{rgb}{0.13, 0.19, 0.7}
\definecolor{greencomments}{rgb}{0.1, 0.5, 0.2}
\definecolor{graynumbers}{rgb}{0.5, 0.5, 0.5}
\definecolor{subtlegray}{rgb}{0.98, 0.98, 0.98}
\definecolor{redstrings}{rgb}{0.8, 0.15, 0.1}

%---------------------------------Code-----------------------------------

\lstset{
  autogobble,    
  columns=fullflexible,
  showspaces=false,
  showtabs=false,
  breaklines=false,
  showstringspaces=false,
  breakatwhitespace=true,
  escapeinside={(*@}{@*)},
  rulecolor=\color{lightgray},
  backgroundcolor=\color{subtlegray},
  commentstyle=\color{greencomments},
  keywordstyle=\color{bluekeywords},
  stringstyle=\color{redstrings},
  numberstyle=\color{graynumbers},
  basicstyle=\ttfamily\footnotesize,
  frame=tb,
  breaklines=true,
  framesep=12pt,
  framexleftmargin=12pt,
  tabsize=4,
  keepspaces=true,
  captionpos=b
}

%---------------------------------Title-----------------------------------

\renewcommand\maketitle{
\import{./}{title} % For importing the title page
}