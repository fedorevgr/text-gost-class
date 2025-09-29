\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bmstu}[2023/01/28 v2.0.0 BMSTU class]

% Установка базового класса
\LoadClass[a4paper,oneside,14pt]{extreport}

% Настройка кодировки и языков
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,russian]{babel}
\RequirePackage{fix-cm}
\RequirePackage{pgfplots}
\RequirePackage{graphicx}
\RequirePackage{tocloft}
\RequirePackage{listings}
\RequirePackage{caption}
\RequirePackage{tempora}
\RequirePackage{titlesec}
\RequirePackage{pdfpages}
\RequirePackage{enumerate,letltxmacro}
\RequirePackage{threeparttable}
\RequirePackage[unicode,hidelinks]{hyperref}
\RequirePackage{flafter}
\RequirePackage{enumitem}
\RequirePackage{multirow}
\RequirePackage[figure,table]{totalcount}
\RequirePackage{lastpage}

% Настройка полей
\RequirePackage[
	left=30mm,
	right=10mm, 
	top=20mm,
	bottom=20mm,
]{geometry}

% Настройка переносов
\RequirePackage{microtype}
\sloppy

% Настройка межстрочного интервала
\RequirePackage{setspace}
\onehalfspacing

% Настройка абзацного отступа
\RequirePackage{indentfirst}
\setlength{\parindent}{12.5mm}

% Настройка заголовков
\makeatletter
\renewcommand\LARGE{\@setfontsize\LARGE{22pt}{20}}
\renewcommand\Large{\@setfontsize\Large{20pt}{20}}
\renewcommand\large{\@setfontsize\large{16pt}{20}}
\makeatother
\RequirePackage{titlesec}
\titleformat{\chapter}[block]{\hspace{\parindent}\large\bfseries}{\thechapter}{0.5em}{\large\bfseries\raggedright}
\titleformat{name=\chapter,numberless}[block]{\hspace{\parindent}}{}{0pt}{\large\bfseries\centering}
\titleformat{\section}[block]{\hspace{\parindent}\large\bfseries}{\thesection}{0.5em}{\large\bfseries\raggedright}
\titleformat{\subsection}[block]{\hspace{\parindent}\large\bfseries}{\thesubsection}{0.5em}{\large\bfseries\raggedright}
\titleformat{\subsubsection}[block]{\hspace{\parindent}\large\bfseries}{\thesubsection}{0.5em}{\large\bfseries\raggedright}
\titlespacing{\chapter}{12.5mm}{-22pt}{10pt}
\titlespacing{\section}{12.5mm}{10pt}{10pt}
\titlespacing{\subsection}{12.5mm}{10pt}{10pt}
\titlespacing{\subsubsection}{12.5mm}{10pt}{10pt}

% Подключение пакета цветов
\RequirePackage{xcolor}

\RequirePackage{bmstu-figure}
\RequirePackage{bmstu-listing}

% Подключение пакетов таблиц
\RequirePackage{tabularx}
\RequirePackage{booktabs}

% Настройка подписей
\RequirePackage[
	labelsep=endash,
	figurename=Рисунок,
	singlelinecheck=false,
]{caption}
\captionsetup[figure]{justification=centering}

% Подключение пакетов для альбомной ориентации
\RequirePackage{lscape}
\RequirePackage{afterpage}

% Подключение математических пакетов
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Настройка библиографии
% \RequirePackage[
% 	style=gost-numeric,
% 	language=auto,
% 	autolang=other,
% 	sorting=none,
% ]{biblatex}
% \RequirePackage{csquotes}
% \DeclareFieldFormat{urldate}{(дата обращения:\addspace\thefield{urlday}\adddot \thefield{urlmonth}\adddot\thefield{urlyear})}
\RequirePackage{cite}
\makeatletter
\renewcommand{\@biblabel}[1]{#1.}
\makeatother

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\labelenumi}{\arabic{enumi}\text{)}}
\renewcommand{\theenumii}{.\arabic{enumii}}
\renewcommand{\labelenumii}{\asbuk{enumii}\text{)}}
\renewcommand{\theenumiii}{.\arabic{enumiii}}
\renewcommand{\labelenumiii}{\arabic{enumi}.\arabic{enumii}.\arabic{enumiii}.}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\pgfplotsset{compat=newest}
\pgfplotsset{width=0.85\linewidth, height=0.5\columnwidth}

% Подключение пакета управляющих конструкций
\RequirePackage{xifthen}

\RequirePackage{bmstu-title}
\RequirePackage{bmstu-essay}
\RequirePackage{bmstu-toc}
\RequirePackage{bmstu-defabbr}
\RequirePackage{bmstu-biblio}
\RequirePackage{bmstu-appendix}

\newcommand{\ssr}[1]{\begin{center}
		\LARGE\bfseries{#1}
	\end{center} \addcontentsline{toc}{chapter}{#1}  }

