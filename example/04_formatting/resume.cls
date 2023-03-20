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
    % define how many columns are in the table and how wide they are 
    % cell formatting options are prefixed on the cell with >{}
    \begin{tabular}{p{200pt} p{120pt} >{\RaggedLeft}p{120pt}}
        % define the table content and separate cells with &
        % newlines in tables are declared with \\ at the end
        \multirow{2}{200pt}{\printName} & \github & \website \\
              & \email & \phone
    \end{tabular}
}

\newcommand{\printName}{
    \MakeUppercase{\huge\name}
}

% environments
% ----------------------------------------------------------------------
\newenvironment{skills}[1]{
    \vspace*{-5pt}
    \begin{multicols}{#1}
        \begin{list}{\faCheckSquare}{
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
    \begin{list}{\faCheckSquare}{
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
    \begin{tabularx}{1\textwidth} {
        @{}>{\hsize=1\hsize\linewidth=\hsize\raggedright\arraybackslash}X@{}
        @{}>{\hsize=1\hsize\linewidth=\hsize\raggedleft\arraybackslash}X@{}
    }
        \textbf{\large #1} & \MakeUppercase{\textbf{#3}} \\ 
        \textit{#2}
    \end{tabularx}
}{}