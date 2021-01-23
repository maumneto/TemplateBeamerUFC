%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% UFC Beamer Class File
%% author: Maurício Moreira Neto
%% description: This file creates a custom beamer class for the Federal University of Ceará (UFC).
%% It was used the same color hue as the university emblem.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{libs/ufc_format}[15/12/2020 v1.0 ufc template beamer]

\PassOptionsToPackage{svgnames}{xcolor} 
\LoadClass[compress, 10pt]{beamer}

%% Putting the background image in the frames
\usebackgroundtemplate{\includegraphics[width=1.7\paperwidth]{libs/logoUFCbackground.png}}
\logo{\includegraphics[scale=0.1]{libs/emblemufc.pdf}\hspace{9.7cm} \vspace{-0.2cm}}

%% Packages Used
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{pdfpages}
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{fancybox}
\RequirePackage[footnotesize,hang]{caption}
% Option management
\RequirePackage{beamerbaseoptions}


% colors
\definecolor{blue_theme}{RGB}{0, 83, 134}
\definecolor{yellow}{RGB}{206, 177, 68}
\definecolor{black}{RGB}{0, 0, 0}
\definecolor{white}{RGB}{255, 255, 255}
\definecolor{red}{RGB}{215, 0, 0}
\definecolor{green_ufc}{RGB}{0, 146, 62}

% style of the blocks ufc
\beamerboxesdeclarecolorscheme{blockUFC}{blue_theme}{white}
\beamer@autopdfinfotrue
\beamer@notesnormalstrue


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
\begin{flushleft}
\fcolorbox{red}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the simple box
\newcommand{\simplebox}[1]{
\begin{flushleft}
\fcolorbox{blue_theme}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the success box
\newcommand{\successbox}[1]{
\begin{flushleft}
\fcolorbox{green_ufc}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the source of the image
\newcommand{\source}[1]{
    \caption*{\textcolor{blue_theme}{Fonte:} {#1}} 
}

% create a command for UFC
\newcommand{\ufc}{
  \bfseries
  \normalsize{Universidade Federal do Ceará}
}

% department command
\newcommand{\department}[1]{
    \vspace*{0.2cm}
    \bfseries
    \normalsize{#1}
}

% 
\newcommand{\email}[1]{
    \texttt{
      \href{mailto:#1}{#1}
    }
}