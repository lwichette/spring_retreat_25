\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dfki}[2023/11/14 DFKI class]

\PassOptionsToClass{\CurrentOption}{beamer}
\LoadClass[aspectratio=169]{beamer}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\usepackage{mathpazo}
\usepackage[sfdefault]{plex-sans}
\usepackage{plex-mono}
\usepackage{tcolorbox}

\RequirePackage[english]{babel}
\RequirePackage[backend=biber,
                style=numeric,
                mincrossrefs=99,
                isbn=false,
                autopunct=false]{biblatex}

\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{calc}
\RequirePackage[activate={true,nocompatibility},
                final,tracking=true,
                kerning=true,
                spacing=true,
                factor=1100,
                stretch=10,shrink=10]{microtype}
\RequirePackage{ellipsis}

\RequirePackage[english,vlined, linesnumbered, slide]{algorithm2e}
\RequirePackage{animate}
\RequirePackage{pgfplots}
\RequirePackage{forloop}
\RequirePackage{etoolbox}
\RequirePackage[all]{xy}

\RequirePackage{appendixnumberbeamer}
\RequirePackage{pdfpages}
\RequirePackage{blindtext}
\RequirePackage{url}
\RequirePackage{subfigure}
\RequirePackage{multirow}
\RequirePackage{booktabs}

\RequirePackage{textcomp}
\RequirePackage{stmaryrd}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{physics}
\RequirePackage{blochsphere}
\RequirePackage[absolute, overlay]{textpos}

\RequirePackage{csquotes}

\usetikzlibrary{calc, arrows.meta, positioning, backgrounds, fit, quantikz, cd, tikzmark, quotes}

\usepackage[OT2,T1]{fontenc}
\DeclareSymbolFont{cyrletters}{OT2}{wncyr}{m}{n}
\DeclareMathSymbol{\Zhe}{\mathalpha}{cyrletters}{"11}

% Algo
\SetAlgoSkip{medskip}
\setlength{\algomargin}{1em}

% Colors
\definecolor{dark}{RGB}{5, 23, 28}
\definecolor{bright}{RGB}{254, 255, 255}
\definecolor{moongrey}{RGB}{214, 218, 221}
\definecolor{guamblue}{RGB}{29, 97, 158}
\definecolor{osakared}{RGB}{236, 97, 159}
\definecolor{abiskogreen}{RGB}{106, 191, 163}
\definecolor{erfoudorange}{RGB}{247, 167, 18}

% Basic appearance
\setbeamercovered{invisible}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{itemize items}[circle]
\setbeamerfont{enumerate item}{series=\bfseries}

% Coloring
\setbeamercolor{background canvas}{bg=moongrey}

\setbeamercolor{frametitle}{fg=dark}

% \setbeamercolor{block title}{bg=unibluedark, fg=white}
% \setbeamercolor{block body}{bg=unibluelight!20, fg=black}
% \setbeamercolor{block title alerted}{bg=unireddark, fg=white}
% \setbeamercolor{block body alerted}{bg=uniredlight!20, fg=black}
% \setbeamercolor{block title example}{bg=unigreendark, fg=white}
% \setbeamercolor{block body example}{bg=unigreenlight!20, fg=black}

% \setbeamercolor{alerted text}{fg=uniredmedium}

\setbeamercolor{enumerate item}{fg=dark}
\setbeamercolor{enumerate subitem}{fg=dark}
\setbeamercolor{enumerate subsubitem}{fg=dark}
\setbeamercolor{itemize item}{fg=dark}
\setbeamercolor{itemize subitem}{fg=dark}
\setbeamercolor{itemize subsubitem}{fg=dark}

\setbeamercolor{section in toc}{fg=dark}
\setbeamercolor{subsection in toc}{fg=dark}
\setbeamercolor{section in toc shaded}{fg=dark}
\setbeamercolor{subsection in toc shaded}{fg=dark}

\setbeamercolor{bibliography entry author}{fg=dark}
\setbeamercolor{bibliography entry title}{fg=dark}
\setbeamercolor{bibliography entry location}{fg=dark}
\setbeamercolor{bibliography entry note}{fg=dark}
\setbeamercolor{bibliography item}{fg=dark}

% \setbeamercolor{box}{fg=black, bg=unibluelight!40}
% \setbeamercolor{alerted box}{fg=black, bg=uniredlight!40}
% \setbeamercolor{example box}{fg=black, bg=unigreenlight!60}
% \setbeamercolor{caption name}{fg=unibluemedium, bg=white}

% Templates

\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[sections numbered]
\setbeamertemplate{section in toc shaded}[sections numbered]
\setbeamertemplate{subsection in toc shaded}[sections numbered]

\setbeamertemplate{frametitle continuation}[from second]

% \setbeamertemplate{footline}{%
%     \hspace{1.05cm}\texttt{DFKI | Robotics Innovation Center}
%     \hspace{9.2cm}\texttt{\insertpagenumber}
%     \vspace{0.2cm}
% }

\setbeamertemplate{footline}{%
    \begin{beamercolorbox}[wd=\textwidth,ht=0.8cm,dp=0.2cm]{footline}
        \hspace{0.3cm}
        \includegraphics[height=0.6cm]{fig/dfki_Logo_vz.png}
        \hfill
        \insertpagenumber
        \hspace{0.3cm}
    \end{beamercolorbox}
}

\setbeamertemplate{frametitle}{%
    \vspace{1cm}
    {\fontsize{20}{24}\selectfont
    \textbf{\insertframetitle}}
}

\setbeamertemplate{title page}{%
        % \vspace{1.8cm}
        {\bfseries \fontsize{10}{12}\selectfont\insertsubtitle}\\
        {\bfseries \fontsize{24}{24}\parbox{0.67\linewidth}{\selectfont\inserttitle}}\\ %inserttitle}\\
        \vspace{1cm}
        {\fontsize{11}{12}\selectfont\insertauthor}\\
        {\fontsize{11}{12}\selectfont\insertdate}


        \begin{textblock*}{4.5cm}(11.5cm, 6.1cm)
            \fontsize{6}{8}\selectfont
            Deutsches Forschungszentrum für Künstliche Intelligenz,
            DFKI GmbH\\
            Robotics Innovation Center \\
            \vspace{6pt}
            Institutsleiter: Prof.\,Dr.\,Dr.\,hc Frank Kirchner \\
            Robert-Hooke-Straße 1 \\
            D-28259 Bremen
        \end{textblock*}
}

\newcommand{\titleframe}{%
    {
        \setbeamertemplate{background}{\includegraphics[width=\paperwidth]{fig/bg.pdf}}%
        \begin{frame}[plain]
            \titlepage
        \end{frame}
        \setbeamertemplate{background}{}
    }
}

\newcommand{\projectsep}[3]{
    {
        \usebackgroundtemplate{\includegraphics[width=\paperwidth]{fig/section_bg.pdf}}
        \frame[plain]{
            \begin{columns}
                \begin{column}{0.5\textwidth}
                    \begin{figure}[h]
                        \centering
                        \includegraphics[width=5cm]{#1}
                    \end{figure}
                \end{column}
                \begin{column}{0.5\textwidth}
                    {\fontsize{24}{30}\selectfont\textbf{#2:}}\\
                    \vspace{0.5cm}
                    {\fontsize{11}{12}\selectfont
                        #3
                    }
                \end{column}
            \end{columns}
        }
    }
}


\newenvironment{qbox}{%
    \begin{beamercolorbox}[sep=1em]{box}
        \centering
}{%
    \end{beamercolorbox}
}

\newenvironment{alertqbox}{%
    \begin{beamercolorbox}[sep=1em]{alerted box}
        \centering
}{%
    \end{beamercolorbox}
}

\newenvironment{exampleqbox}{%
    \begin{beamercolorbox}[sep=1em]{example box}
        \centering
}{%
    \end{beamercolorbox}
}
