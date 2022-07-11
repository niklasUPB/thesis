\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cukthesis}

\newif\ifgerman\germanfalse

\DeclareOption{german}{\germantrue}

\ProcessOptions

\LoadClass[a4paper, 11pt, twoside, openright, BCOR = 15mm, appendixprefix, cleardoublepage=empty, numbers=noenddot, bibliography=totoc]{scrbook}

\ifgerman
	\RequirePackage[ngerman]{babel}
\else
	\RequirePackage[english]{babel}
\fi
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{eurosym}
\RequirePackage{lmodern}
\RequirePackage{geometry}
\RequirePackage{setspace}

% Some older versions of MiKTeX are still missing the scrlayer-scrpage package ... -.-'
\IfFileExists{scrlayer-scrpage.sty}
{
	\RequirePackage[automark,headsepline]{scrlayer-scrpage}
}{
	\RequirePackage{fancyhdr}
}

% Header and footer Layout depending on the loaded package
\IfFileExists{scrlayer-scrpage.sty}
{
	\pagestyle{scrheadings}

	\clearpairofpagestyles
	\lefoot[\pagemark]{\pagemark}
	\rofoot[\pagemark]{\pagemark}
	\lehead{\headmark}
	\rohead{\headmark}
}{
	\pagestyle{fancy}

	\lhead[\fancyplain{}{\leftmark}]{}
	\rhead[]{\fancyplain{}{\rightmark}}
	\lfoot[\fancyplain{\thepage}{\thepage}]{}
	\rfoot[]{\fancyplain{\thepage}{\thepage}}
	\cfoot[]{}

	\fancypagestyle{plain}{
	\fancyhf{}
	\fancyfoot[LE,RO]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	}
}

\renewcommand{\chaptermark}[1]{\markboth{\textsc{\thechapter~#1}}{}}
\renewcommand{\sectionmark}[1]{\markright{\textsl{\thesection~#1}}}

% Essential math packages
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,mathtools}

% Theorem style
\newtheoremstyle{thmstyle}
  {3pt}{3pt}{\itshape}{}{\bfseries}{}{.5em}
  {\thmname{#1}\thmnumber{ #2}\thmnote{ \textmd{(#3)}}}
\theoremstyle{thmstyle}

% Theorem environments
\newtheorem{definition}{Definition}[chapter]
\newtheorem{lemma}[definition]{Lemma}
\newtheorem{problem}[definition]{Problem}

\ifgerman
	\newtheorem{proposition}[definition]{Satz}
	\newtheorem{theorem}[definition]{Satz}
	\newtheorem{corollary}[definition]{Korollar}
	\newtheorem{example}[definition]{Beispiel}
	\newtheorem{claim}[definition]{Behauptung}
	\newtheorem{remark}[definition]{Bemerkung}
	\newtheorem{observation}[definition]{Beobachtung}
\else
	\newtheorem{proposition}[definition]{Proposition}
	\newtheorem{theorem}[definition]{Theorem}
	\newtheorem{corollary}[definition]{Corollary}
	\newtheorem{example}[definition]{Example}
	\newtheorem{claim}[definition]{Claim}
	\newtheorem{remark}[definition]{Remark}
	\newtheorem{observation}[definition]{Observation}
\fi
