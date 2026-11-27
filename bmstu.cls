\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bmstu}[2023/01/28 v2.0.0 BMSTU class]

% Установка базового класса
\LoadClass[a4paper,oneside,14pt]{extreport}

% Настройка кодировки и языков
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,russian]{babel}
%\RequirePackage{fix-cm}
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
	right=15mm, 
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
% \RequirePackage{indentfirst}
%\setlength{\parindent}{12.5mm}
\parindent=1.25cm
\sloppy
\hyphenpenalty=10000
\exhyphenpenalty=10000
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

\renewcommand{\cfttoctitlefont}{\large\bfseries\centering}
\renewcommand{\cftaftertoctitle}{\vspace{0pt}} % Убираем отступ после заголовка

% Убираем большой отступ перед заголовком
\setlength{\cftbeforetoctitleskip}{-22pt} % Такой же как у глав

% Убираем отступы между заголовком и первым пунктом
\setlength{\cftaftertoctitleskip}{0mm} % Минимальный отступ

% Дополнительно: настройка отступов для пунктов содержания
\setlength{\cftchapindent}{0pt} % Отступ для глав
\setlength{\cftsecindent}{0pt}  % Отступ для разделов
\setlength{\cftsubsecindent}{0pt}

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
\RequirePackage{siunitx}
\sisetup{
	round-mode          = places,
	round-precision     = 2,
}

% Настройка TikZ и схем алгоритмов по ГОСТ 19.701-90
\usetikzlibrary{arrows.meta, shapes.geometric, shapes.misc, positioning}
\tikzset{
	gostbase/.style={
		draw=black,
		thick,
		fill=white,
		align=center,
		font=\scriptsize
	},
	gost_term/.style={
		gostbase,
		rounded rectangle,
		rounded rectangle arc length=180,
		minimum width=4.0cm,
		text width=3.3cm,
		minimum height=0.8cm
	},
	gost_proc/.style={
		gostbase,
		rectangle,
		minimum width=4.0cm,
		text width=3.6cm,
		minimum height=0.85cm
	},
	gost_sub/.style={
		gostbase,
		rectangle,
		minimum width=4.0cm,
		text width=3.35cm,
		minimum height=0.85cm,
		path picture={
			\draw[thick] ([xshift=0.18cm]path picture bounding box.north west) --
			([xshift=0.18cm]path picture bounding box.south west);
			\draw[thick] ([xshift=-0.18cm]path picture bounding box.north east) --
			([xshift=-0.18cm]path picture bounding box.south east);
		}
	},
	gost_io/.style={
		gostbase,
		trapezium,
		trapezium left angle=75,
		trapezium right angle=105,
		minimum width=3.4cm,
		text width=3.2cm,
		minimum height=0.85cm
	},
	gost_dec/.style={
		gostbase,
		diamond,
		aspect=2.3,
		minimum width=4.0cm,
		text width=2.55cm,
		inner sep=1.5pt,
		minimum height=1.15cm
	},
	gost_loop_start/.style={
		gostbase,
		chamfered rectangle,
		chamfered rectangle corners={north west,north east},
		chamfered rectangle xsep=0.22cm,
		chamfered rectangle ysep=0.22cm,
		minimum width=3.6cm,
		text width=3.3cm,
		minimum height=0.85cm
	},
	gost_loop_end/.style={
		gostbase,
		chamfered rectangle,
		chamfered rectangle corners={south west,south east},
		chamfered rectangle xsep=0.22cm,
		chamfered rectangle ysep=0.22cm,
		minimum width=3.6cm,
		text width=3.3cm,
		minimum height=0.75cm
	},
	gost_conn/.style={
		gostbase,
		circle,
		minimum size=0.65cm,
		inner sep=1pt
	},
	gost_arrow/.style={
		thick,
		-{Latex[length=2.2mm, width=1.5mm]}
	},
	gost_line/.style={
		thick
	},
	arch_box/.style={
		draw=black,
		thick,
		fill=white,
		rectangle,
		rounded corners=2pt,
		align=center,
		font=\scriptsize,
		inner sep=5pt
	}
}

% Язык Rust для listings
\lstdefinelanguage{Rust}{
	morekeywords=[1]{
		as, async, await, break, const, continue, crate, dyn, else, enum,
		extern, false, fn, for, if, impl, in, let, loop, match, mod, move,
		mut, pub, ref, return, self, Self, static, struct, super, trait, true,
		type, unsafe, use, where, while
	},
	morekeywords=[2]{
		bool, char, f32, f64, i8, i16, i32, i64, i128, isize, str,
		u8, u16, u32, u64, u128, usize, Vec, String, Option, Result, Box
	},
	morecomment=[l]{//},
	morecomment=[s]{/*}{*/},
	morestring=[b]",
}

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
    


\AtBeginDocument{
  \def\labelitemi{---}
  \def\labelitemii{---}
  \def\labelitemiii{---}
  \def\labelitemiv{---}
  \setlist[itemize]{label=---, leftmargin=1.25cm, itemindent=0.76cm}
  \setlist[enumerate]{leftmargin=1.25cm, itemindent=0.66cm}
  \linespread{1.3}
  \frenchspacing
}
