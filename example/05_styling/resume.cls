% declare the provided class name and some version info
\ProvidesClass{resume}[2022/03/19 v1.0 Resume class]

% declare the parent class 
\LoadClass{article}

% import packages
\usepackage{lipsum}                         % create placeholder text
\usepackage{geometry}                       % set page margins
\usepackage{ragged2e}                       % ragged ends
\usepackage{tabularx}                       % make advanced tables
\usepackage{multirow}                       % merge rows in a table
\usepackage{multicol}                       % distribute a list across multiple columns
\usepackage[parfill]{parskip}               % paragraph indentation
\usepackage[none]{hyphenat}                 % don't hyphenate
\usepackage[default]{comfortaa}             % font
\usepackage[dvipsnames]{xcolor}             % color names
\usepackage{fontawesome}                    % icons
\usepackage[hidelinks]{hyperref}            % hrefs
\usepackage[framemethod=TikZ]{mdframed}     % fancy colored boxes

% document settings
% ----------------------------------------------------------------------
\tolerance=4000
\color{darkgray}
\geometry{
    a4paper,
    left=20mm,
    right=20mm,
    top=8mm,
    bottom=8mm,
}

% commands
% ----------------------------------------------------------------------
% define the heading here
\newcommand{\heading}{
    \begin{infobox}[
        innertopmargin=4pt,
        innerbottommargin=25pt,
        innerleftmargin=0pt
    ]
        \begin{tabular}{ p{200pt} >{\raggedleft}p{30pt} p{90pt}>{\raggedleft} p{90pt} >{\raggedright\arraybackslash} p{30pt} }
            \multirow{2}{150pt}{\printName} & \icogithub & \github & \website & \icowebsite \\
            & \icophone & \phone & \email & \icomail
        \end{tabular}
    \end{infobox}
}

\newcommand{\printName}{\MakeUppercase{\Huge \name}}
\newcommand{\ico}[2]{{\large\href{#1}{#2}}}
\newcommand{\icogithub}{\ico{https://github.com/\github}{\faGithub}}
\newcommand{\icomail}{\ico{mailto:\email}{\faEnvelope}}
\newcommand{\icophone}{\ico{tel:\phone}{\faPhone}}
\newcommand{\icowebsite}{\ico{https://\website}{\faGlobe}}

\newcommand{\sector}[1]{
    \begin{infobox}[userdefinedwidth=143pt]
        \section*{\MakeUppercase{#1}}
    \end{infobox}
}

\newcommand{\setcolor}{
    \color{\colour}
}

% environments
% ----------------------------------------------------------------------
\newmdenv[
  middlelinewidth=0pt,
  backgroundcolor=\colour,
  roundcorner=2pt,
  fontcolor=White,
  innerleftmargin=5pt,
  innertopmargin=-8pt,
  userdefinedwidth=150pt
]{infobox}

\newmdenv[
  userdefinedwidth=\textwidth,
  linecolor=\colour,
  linewidth=1pt,
  backgroundcolor=White,
  roundcorner=2pt,
  fontcolor=\colour,
  innerleftmargin=5pt,
  innerbottommargin=2pt
]{infoboxinvert}

\newenvironment{skills}[1]{
    \vspace*{-5pt}
    \begin{multicols}{#1}
        \begin{list}{\setcolor\faCheckSquare}{
            \setlength{\leftmargin}{15pt}
            \setlength{\itemsep}{0pt}
            \itemsep -0.5em \vspace{-0.5em}
            \raggedright
        }
}{
        \end{list}
    \end{multicols}
    \vspace*{-5pt}
}

\newenvironment{qualifications}{
    \vspace*{8pt}
    \begin{list}{\setcolor\faCheckSquare}{
        \setlength{\leftmargin}{15pt}
        \setlength{\itemsep}{0pt}
        \itemsep -0.5em \vspace{-0.5em}
        \raggedright
    }
}{
    \end{list}
    \vspace*{8pt}
}

\newenvironment{job}[3]{
    \vspace{5pt}
    \begin{infoboxinvert}[]
        \begin{tabularx}{1\textwidth} {
            @{}>{\hsize=1\hsize\linewidth=\hsize\raggedright\arraybackslash}X@{}
            @{}>{\hsize=1\hsize\linewidth=\hsize\raggedleft\arraybackslash}X@{}
        }
            \textbf{\large #1} & \MakeUppercase{\textbf{#3}} \\ 
            \textit{#2}
        \end{tabularx}
    \end{infoboxinvert}
}{}