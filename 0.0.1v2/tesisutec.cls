% 06 28 2018: Change in UTEC logo: using EPS and confirmed logo + change on the top: ".... TECNOLOGÍA - UTEC"

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{tesisutec}[2017/05/03 v1.0 LaTeX document class]
\def\baseclass{book}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

% For Spanish
\usepackage[utf8]{inputenc}
\PassOptionsToPackage{english}{babel}
\PassOptionsToPackage{spanish,es-tabla,es-nodecimaldot}{babel}
\RequirePackage{babel}
% For Times New Roman
\RequirePackage{times}
% For section styles
\RequirePackage{titlesec}

% For contents table
\RequirePackage[subfigure]{tocloft}
%\usepackage[tocflat]{tocstyle}
%\usetocstyle{standard}

% ====================================================================
\newcommand\Aprobado[1]{
  \setstretch{1.5}  % Set line spacing to 1.5
  \thispagestyle{empty}
  \noindent La tesis\\
  \textbf{\@title} \\
  ha sido aprobada.
  {\normalsize #1}

  \vspace{2.5cm}
  \hfill\rule[0.5em]{16.5em}{0.5pt} \\  % Line for the signature
  ${~}$\hfill \presname \\

  \vspace{1.5cm}
  \hfill\rule[0.5em]{16.5em}{0.5pt} \\  % Line for the signature
  ${~}$\hfill \supname \\

  \vspace{1.5cm}
  \hfill\rule[0.5em]{16.5em}{0.5pt} \\  % Line for the signature
  ${~}$\hfill \examname \\

  \clearpage
}

% ====================================================================
\newcommand\dedicatory[1]{
  \setstretch{1.0}  % Set line spacing to 1.0
  \thispagestyle{empty}
  \null\vfil
  \vskip 60\p@
  \vspace{4.5cm}
  ${~}$\hfill \textit{Dedicatoria}: \\
  \begin{flushright}{ \sl #1}\end{flushright}
  \vfil\null
  \cleardoublepage
  \setstretch{1.5}  % Set line spacing to 1.0
}


% ====================================================================
\newcommand\acknowledgements[1]{
  \setstretch{1.0}  % Set line spacing to 1.0
  \thispagestyle{empty}
  \null\vfil
  \vskip 60\p@
  \vspace{4.5cm}
  ${~}$\hfill \textit{Agradecimientos}: \\
  \begin{flushright}{ \sl #1}\end{flushright}
  \vfil\null
  \cleardoublepage
  \setstretch{1.5}  % Set line spacing to 1.0
}


% ====================================================================
\newcommand\intro[1]{
  \btypeout{INTRODUCCIÓN}
  \addtotoc{INTRODUCCIÓN}
  \thispagestyle{plain}
  \begin{center}{\Large \textbf{INTRODUCCIÓN} \par}\end{center}
  \vspace{0.5cm}
  {\normalsize #1}
  \vfil\vfil\null
  \clearpage
}


% ====================================================================
\newcommand\conclusions[1]{
  \btypeout{CONCLUSIONES}
  \addtotoc{CONCLUSIONES}
  \clearpage
  \thispagestyle{plain}
  \begin{center}{\Large \textbf{CONCLUSIONES} \par}\end{center}
  \vspace{0.5cm}
  {\normalsize #1}
  \vfil\vfil\null
  \clearpage
}


% ====================================================================
\newcommand\recommendations[1]{
  \btypeout{RECOMENDACIONES}
  \addtotoc{RECOMENDACIONES}
  \clearpage
  \thispagestyle{plain}
  %\null\vfil
  % \vskip 60\p@
  \begin{center}{\Large \textbf{RECOMENDACIONES} \par}\end{center}
  % \vskip 60\p@
  \vspace{0.5cm}
  {\normalsize #1}
  \vfil\vfil\null
  \clearpage
  % \cleardoublepage
}


% ====================================================================

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 3.0cm}  % left margin
                        { 3.0cm}  % top margin
                        { 3.0cm}  % right margin
                        { 3.0cm}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\chead{}\rfoot{\thepage}\lfoot{}\cfoot{}
\renewcommand{\headrulewidth}{0pt} % To remove header line
\fancyhead{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}

\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\president}[1]{\def\presname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\renewcommand*{\author}[1]{\def\authornames{#1}}
\newcommand*{\authorid}[1]{\def\studentid{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\renewcommand*{\date}[1]{\def\dateMY{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\author      {}
\subject     {}
\keywords    {}


% ====================================================================
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    %\vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      \vspace{-0.5cm}
      {\large \textbf{UNIVERSIDAD DE INGENIERÍA Y TECNOLOGÍA - UTEC}\par}
      \vspace{0.5cm}
      {\Large \textbf{Carrera de \deptname }\par}
      \vfill
      \vspace{0.5cm}
      %\includegraphics[height=2.34cm]{images/logo-utec.png}\\
      \includegraphics[height=3.675cm]{images/UTEC-HORIZONTAL}\\
      \vfill
      {\LARGE \bf \@title \par}
      \vspace{0.5cm}
      {\large Tesis para optar el título profesional de \degreename \par}
      \vfill
      \smallskip
      {\large \bf \authornames \par}
      \vspace{0.5cm}
      {\large \textbf{Código \studentid} \par}
      \vspace{1.5cm}
      {\large \bf Asesor \par}
      \vspace{0.5cm}
      \smallskip
      {\large \supname \par}
      \vfill
      {\large Lima - Perú \par}
      \vspace{0.5cm}
      {\large \dateMY \par}
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\and\relax
  \cleardoublepage
}


% ====================================================================
\newcommand\resumen[1]{
\btypeout{Resumen}
\addtotoc{Resumen}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Resumen\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}


% ====================================================================
\newcommand\abstract[1]{
\btypeout{Abstract}
\addtotoc{Abstract}
\thispagestyle{plain}
\null\vfil
\begin{center}{\huge\bf Abstract\par}\end{center}
{\normalsize #1}
\vfil\vfil\null
}



\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}


% ====================================================================
% \renewcommand\tableofcontents{
%   \begin{spacing}{1}{
%       \setlength{\parskip}{1pt}
%       \pagenumbering{gobble}
%       \if@twocolumn
%       \@restonecoltrue\onecolumn
%       \else
%       \@restonecolfalse
%       \fi
%       \chapter*{\vspace{-2.0cm}\begin{center}\Large{\textbf{TABLA DE CONTENIDO}}\end{center}
%         \@mkboth{
%           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
%       %\thispagestyle{empty}
%       \@starttoc{toc}
%       \if@restonecol\twocolumn\fi
%       \cleardoublepage
%      }\end{spacing}
%    \addtocontents{toc}{~\hfill{P\'ag.}\par}
%    %\vspace{-1.5cm}
%  }


% \renewcommand\tableofcontents{%
%   %\null\hfill\textbf{\Large{TABLA DE CONTENIDO}}\hfill\null\par
%   \hfill\textbf{\Large{TABLA DE CONTENIDO}}\hfill\null\par{$~$}\par
%   %{\vspace{-2.0cm}\begin{center}\Large{\textbf{TABLA DE CONTENIDO}}\end{center}
%   \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
%   \@starttoc{toc}%
%   %\vspace{3cm}
%   \addtocontents{toc}{\hfill{P\'ag.}\par}
%   %\vspace{-3cm}
% }

% \renewcommand\tableofcontents{
\cftsetindents{section}{0em}{2em}
\cftsetindents{subsection}{0em}{2.5em}
\renewcommand\contentsname{ff}
\renewcommand{\contentsname}{\centering Contents}
%\renewcommand\cfttoctitlefont{\hfill\Large\bfseries ff}
\renewcommand\cftaftertoctitle{\hfill\mbox{}}
%\setcounter{tocdepth}{2}

\renewcommand{\cftchapfont}{\bfseries CAP\'ITULO }
% \addtocontents{toc}{~\hfill{P\'ag.}\par}
\addtocontents{toc}{\hfill{P\'ag.}\par}
% }


%\RequirePackage{tocloft}
%\renewcommand{\cftchapfont}{\scshape d}
%\renewcommand{\cftchapfont}{\bfseries CAP\'ITULO }
%\renewcommand{\cftsecfont}{\bfseries}
% \renewcommand{\cftfigfont}{Figure }
% \renewcommand{\cfttabfont}{Table }


% ====================================================================
\renewcommand\listoffigures{
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
    \@restonecoltrue\onecolumn
    \else
    \@restonecolfalse
    \fi
    \chapter*{\vspace{-2.0cm}\begin{center}\Large{\textbf{ÍNDICE DE FIGURAS}}\end{center}
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}


% ====================================================================
\renewcommand\listoftables{
  \begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
    \@restonecoltrue\onecolumn
    \else
    \@restonecolfalse
    \fi
    \chapter*{\vspace{-2.0cm}\begin{center}\Large{\textbf{ÍNDICE DE TABLAS}}\end{center}
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}


% ====================================================================
% For the chapter
\def\@makechapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \centering
    \normalfont
    \ifnum \c@secnumdepth >\m@ne
    \if@mainmatter
    \Large\bfseries \@chapapp\space \thechapter
    \par\nobreak
    %\vskip 20\p@
    \fi
    \fi
    \interlinepenalty\@M
    \Large \bfseries #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
  }}


\titleformat{\section}
  {\normalfont \bf}{\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont \bf}{\thesubsection}{1em}{}


% \renewcommand\backmatter{
%   \if@openright
%     \cleardoublepage
%   \else
%     \clearpage
%   \fi
%   \addtotoc{\bibname}
%   \btypeout{\bibname}
%   \@mainmatterfalse}
% \endinput

%%
%% End of file `tesisutec.cls'.
