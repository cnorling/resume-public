% Created by Cerise Norling
\ProvidesClass{resume}[2022/12/29 v1.0 Resume class]

\LoadClass{article}

% packages
% ----------------------------------------------------------------------
\usepackage[default]{comfortaa}             % font
\usepackage[T1]{fontenc}                    % font encoding
\usepackage{fontawesome}                    % icons
\usepackage[hidelinks]{hyperref}            % hrefs
\usepackage[dvipsnames]{xcolor}             % color names
\usepackage{geometry}                       % set page margins
\usepackage{tabularx}                       % make advanced tables
\usepackage{multirow}                       % merge rows in a table
\usepackage{multicol}                       % distribute a list across multiple columns
\usepackage[parfill]{parskip}               % paragraph indentation
\usepackage[framemethod=TikZ]{mdframed}     % fancy colored boxes
\usepackage[none]{hyphenat}                 % don't hyphenate
\usepackage{lipsum}                         % lipsum text for filler

% document and library parameters
% ----------------------------------------------------------------------
\pagestyle{empty}
\color{darkgray}
\setlength\parindent{0pt}
\tolerance=4000

% geometry
\geometry{
    a4paper,
    % total={170mm,257mm},
    left=20mm,
    right=20mm,
    top=8mm,
    bottom=8mm,
}

% hyperref
\hypersetup{colorlinks=false}
\urlstyle{same}

% multicol
\multicoltolerance = 20

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

\newenvironment{qualifications}{
    \begin{list}{\setcolor\faCheckSquare}{
        \setlength{\leftmargin}{15pt}
        \setlength{\itemsep}{0pt}
        \itemsep -0.5em \vspace{-0.5em}
        \raggedright
    }
}{
    \end{list}
}

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
    \vspace{-5pt}
}{
    
}

% commands
% ----------------------------------------------------------------------
\newcommand{\heading}{
    \begin{infobox}[
        innertopmargin=4pt,
        innerbottommargin=25pt,
        innerleftmargin=0pt
    ]
        \begin{tabular}{ p{200pt} >{\raggedleft\arraybackslash}p{30pt} p{90pt}>{\raggedleft\arraybackslash} p{90pt} >{\raggedright\arraybackslash} p{30pt} }
            \multirow{2}{150pt}{\printname} & \icogithub & \github & \website & \icowebsite \\
            & \icophone & \phone & \email & \icomail
        \end{tabular}
    \end{infobox}
}

\newcommand{\sector}[1]{
    \begin{infobox}[userdefinedwidth=143pt]
        \section*{\MakeUppercase{#1}}
    \end{infobox}
}

\newcommand{\nextpage}{
    \vfill
        \begin{infobox}[
            innerleftmargin=235pt,
            innertopmargin=8pt,
            innerrightmargin=30pt,
            innerbottommargin=4pt
        ]
            \Huge\faCaretDown
        \end{infobox}
    \pagebreak
}

\newcommand{\setcolor}{
    \color{\colour}
}

\newcommand{\printname}{
    \MakeUppercase{\Huge \name}
}

\newcommand{\ico}[2]{
    {\large\href{#1}{#2}}
}

\newcommand{\icogithub}{
    \ico{https://github.com/\github}{\faGithub}
}

\newcommand{\icomail}{
    \ico{mailto:\email}{\faEnvelope}
}

\newcommand{\icophone}{
    \ico{tel:\phone}{\faPhone}
}

\newcommand{\icowebsite}{
    \ico{https://\website}{\faGlobe}
}