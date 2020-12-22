%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% UFC Beamer Class File
%% author: Maurício Moreira Neto
%% description: This file creates a custom beamer class for the Federal University of Ceará (UFC).
%% The same color hue as the university emblem is used.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{libs/ufc_format}[15/12/20120, v1.0]

\PassOptionsToPackage{svgnames}{xcolor} 
\LoadClass[compress, 11pt]{beamer}

%% Putting the background image in the frames
\usebackgroundtemplate{\includegraphics[width=1.7\paperwidth]{figures/logoUFCbackground.png}}
\logo{\includegraphics[scale=0.1]{figures/brasao1_horizontal_cor.pdf}\hspace{9.5cm}}

%% Packages Used
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{pdfpages}
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage[footnotesize,hang]{caption}
\RequirePackage{algorithm2e}

% colors
\definecolor{blue_theme}{RGB}{0, 83, 134}
\definecolor{yellow}{RGB}{206, 177, 68}
\definecolor{black}{RGB}{0, 0, 0}
\definecolor{white}{RGB}{255, 255, 255}
\definecolor{red}{RGB}{215, 0, 0}
\definecolor{green_ufc}{RGB}{0, 146, 62}

% style of the blocks ufc
\beamerboxesdeclarecolorscheme{blockUFC}{blue_theme}{white}

\usecolortheme[named=blue_theme]{structure}

\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}


\setbeamercolor{section in head/foot}{bg=blue_theme, fg=white}
\setbeamercolor{subsection in head/foot}{bg=yellow, fg=white}
\setbeamercolor{institute in head/foot}{bg=blue_theme, fg=white}
\setbeamerfont{block title}{size={}}


%% ---------- bottom fields ---------------------
\setbeamercolor{author in head/foot}{bg=blue_theme, fg=white}
\setbeamercolor{title in head/foot}{bg=yellow, fg=white}
\setbeamercolor{date in head/foot}{bg=blue_theme, fg=white}

% footer style
\defbeamertemplate*{footline}{infolines theme}
{
  \leavevmode%
  \hbox{%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor~~\insertshortinstitute
  \end{beamercolorbox}%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot} \insertshorttitle
    \usebeamerfont{title in head/foot}
  \end{beamercolorbox}%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{2ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
}
\mode
<all>

% command of the example
\renewcommand{\example}[1]{\textcolor{blue_theme}{\textbf{#1}}}
% command of the emphases 
\renewcommand{\emph}[1]{\textcolor{red}{\textbf{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create the blocks of the beamer template

%% draw the blocks
\setbeamertemplate{blocks}[rounded][shadow=true]
% \setbeamercolor{separation line}{use=structure,bg=structure.fg!50!bg} % color on the top 

% block
\setbeamercolor*{block title}{fg=white, bg=blue_theme}
\setbeamercolor*{block body}{fg=black,bg=white}
% alert block
\setbeamercolor*{block title alerted}{fg=white,bg=red}
\setbeamercolor*{block body alerted}{fg=black,bg=white}
% example block
\setbeamercolor*{block title example}{fg=white,bg=green_ufc}
\setbeamercolor*{block body example}{fg=black,bg=white}


% creating the environment the block
\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=green_ufc!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=red!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=blue_theme!70}
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% determine some color for the text

\setbeamercolor*{normal text}{fg=black,bg=white}
\setbeamercolor*{example text}{fg=yellow}
\setbeamercolor*{alerted text}{fg=red}
\setbeamercolor{itemize item}{fg=blue_theme!70}
\setbeamercolor{enumerate item}{fg=black!70}
\setbeamercolor{success}{fg=green}

% create the alert box
\newcommand{\alertbox}[1]{
\begin{center}
\fcolorbox{red}{white}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

% create the example box
\newcommand{\examplebox}[1]{
\begin{center}
\fcolorbox{blue_theme}{white}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

% create the success box
\newcommand{\successbox}[1]{
\begin{center}
\fcolorbox{green_ufc}{white}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}