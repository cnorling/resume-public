% declare the provided class name and some version info
\ProvidesClass{resume}[2022/03/19 v1.0 Resume class]

% declare the parent class 
\LoadClass{article}

% import packages
\usepackage{lipsum}                         % create placeholder text
\usepackage{geometry}                       % set page margins
\usepackage{ragged2e}                       % ragged ends

% document settings
\geometry{
    a4paper,
    left=20mm,
    right=20mm,
    top=8mm,
    bottom=8mm,
}


% commands

% define the heading here
\newcommand{\heading}{
    % define how many columns are in the table and how wide they are 
    \begin{tabular}{p{200pt} p{120pt} p{120pt}}
        % define the table content and separate cells with &
        % newlines in tables are declared with \\ at the end
        \MakeUppercase{\huge\name} & \github & \website \\
              & \email & \phone
    \end{tabular}
}