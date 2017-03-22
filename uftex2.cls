\def\filename{uftex2.dtx}
\def\fileversion{v2.0.0}
\def\filedate{2017/03/21}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass {uftex2} [\filedate\ \fileversion\ Classe personalizada para o curso de Ciência da Computação da UFT - CUP]

\def\@@ptsize{12pt}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions \relax
\LoadClass[oneside,\@@ptsize]{book}

% ------------------------------------------------------------------------------------------------------ %
% --------------- Pacotes
% ------------------------------------------------------------------------------------------------------ %
% --------------- A codificação de fonte T1 é uma codificação de 8 bits e utiliza fontes que têm 256 glifos
\RequirePackage[T1]{fontenc}
% --------------- Idioma da texto, a acentuação pode ser escrita normalmente
\RequirePackage[english,brazil]{babel}
% --------------- Codificação do arquivo
\RequirePackage[utf8]{inputenc}
% --------------- Inclusão de arquivos em PDF no documento
\RequirePackage{pdfpages}
% --------------- Utilização da marca d'agua
\RequirePackage{wallpaper}  
% --------------- Usamos arquivos pdf/png como figuras
\RequirePackage{graphicx}
% --------------- Espaçamento flexível
\RequirePackage{setspace}
% --------------- Tabelas maiores que quebram com a nova página
\RequirePackage{longtable}
\RequirePackage{mdframed}
% --------------- Utilização de cores
\RequirePackage{color}
\definecolor{azul}{RGB}{000,074,128}
\definecolor{verde}{RGB}{000,133,119}
\definecolor{amarelo}{RGB}{253,185,019}
\definecolor{cinza}{RGB}{102,102,102}
\definecolor{preto}{RGB}{0,0,0}
\definecolor{branco}{RGB}{255,255,255}
\definecolor{cortexto}{RGB}{255,255,255}
\definecolor{cor}{RGB}{102,102,102}
% --------------- Multiplas colunas e linhas em tabelas
\RequirePackage{multirow}
% --------------- Utilização de cores em tabelas
\RequirePackage{colortbl}
\begingroup
\toks0=\expandafter{\multicolumn{#1}{#2}{#3}}
\edef\x{\endgroup
  \long\def\noexpand\multicolumn##1##2##3{\the\toks0 }}\x
% --------------- Rotação e objeto flutuante, como figuras e tabelas
\RequirePackage{rotating}
% --------------- Referenciar o número de páginas no documento
\RequirePackage{lastpage}
% --------------- Conjunto de construção de fontes virtual, a partir das fontes CM Padrão
\RequirePackage{ae}
% --------------- Customização de items
\RequirePackage{enumitem}
% --------------- Utilização de linhas pontilhadas nas avaliações
\RequirePackage{dashrule}
% --------------- Utilização de subfiguras
\RequirePackage{subfigure}
% --------------- Rotação e reposicionamento de figuras
\RequirePackage{wrapfig}
% --------------- Utilização das mais variadas fórmulas matemáticas
\RequirePackage{amsfonts,amsthm,amsopn,amssymb,latexsym}
% --------------- Para utilização e formatação de código fonte em diversas linguagens
\RequirePackage{listings}
\lstset{ %
basicstyle=\footnotesize,       % the size of the fonts that are used for the code
numbers=left,                   % where to put the line-numbers
numberstyle=\footnotesize,      % the size of the fonts that are used for the line-numbers
stepnumber=1,                   % the step between two line-numbers. If it's 1 each line will be numbered
numbersep=5pt,                  % how far the line-numbers are from the code
showspaces=false,               % show spaces adding particular underscores
showstringspaces=false,         % underline spaces within strings
frame=single,	                % adds a frame around the code
captionpos=b,                   % sets the caption-position to bottom
breaklines=true,                % sets automatic line breaking
breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
backgroundcolor=\color[rgb]{1.0,1.0,1.0}, % choose the background color.
rulecolor=\color[rgb]{0.8,0.8,0.8},
extendedchars=true,
xleftmargin=10pt,
xrightmargin=10pt
}  
% --------------- Margens
\RequirePackage[a4paper,top=2cm,bottom=2.0cm,left=3.0cm,right=2.cm]{geometry} 
% --------------- Links em preto
\RequirePackage[pdftex,unicode=true,plainpages=false,pdfpagelabels,pagebackref,colorlinks=true,citecolor=black,linkcolor=black,urlcolor=black,filecolor=black,bookmarksopen=true]{hyperref}
% --------------- Garantir que dois ou mais blocos de texto ocupam o mesmo espaço horizontal na página.
\RequirePackage{eqparbox}
% --------------- Este pacote exporta algumas macros a partir do kernel LATEX em um namespace separado e torna disponível para outros formatos, como TEX.
\RequirePackage{ltxcmds}
% --------------- Utilização de comandos básicos como \ifthenelse
\RequirePackage{ifthen}
% --------------- Este pacote pode desativar toda a hifenização ou ativar a hifenização de fontes não-alfabéticos ou monoespaçadas.
\RequirePackage{hyphenat}
% --------------- Cabeçalho e rodapé
%\RequirePackage{fancyhdr}
% --------------- Utilizado para construir a capa e folha de rosto
\RequirePackage{tabularx}

\RequirePackage{titlesec}

\RequirePackage{newtxmath,newtxtext}

%\RequirePackage{hyperref}

\RequirePackage{helvet}

\RequirePackage{lineno}
% ------------------------------------------------------------------------------------------------------ %
% --------------- Redefinição de comandos e criação de comandos básicos para documento
% ------------------------------------------------------------------------------------------------------ %

\newcommand\department[1]{%
  \ifthenelse{\equal{#1}{EC}}
    {\global\def\local@deptname{Engenharia Civil}
     \global\def\foreign@deptname{Civil Engineering}}{}
  \ifthenelse{\equal{#1}{EE}}
    {\global\def\local@deptname{Engenharia El{\' e}trica}
     \global\def\foreign@deptname{Electrical Engineering}}{}
  \ifthenelse{\equal{#1}{EA}}
    {\global\def\local@deptname{Engenharia Ambiental}
     \global\def\foreign@deptname{Production Engineering}}{}
  \ifthenelse{\equal{#1}{CC}}
    {\global\def\local@deptname{Ci{\^ e}ncia da Computa{\c c}{\~ a}o}
     \global\def\foreign@deptname{Computer Science}}{}
   \ifthenelse{\equal{#1}{AL}}
    {\global\def\local@deptname{Engenharia de Alimentos}
     \global\def\foreign@deptname{Food Engineering}}{}
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
% ------------------------------------------------------------------------------------------------------ %
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}

\renewcommand\date[2]{%
  \month=#1
  \year=#2
}

\newcommand\term[2]{
  \global\def\@termyear{#1}
  \global\def\@termnumber{#2}
}

\newcommand{\mybox}[1]{\par\noindent\colorbox{cor}
{\parbox{\textwidth-2\fboxsep\relax}{\color{cortexto}\centering #1}}}

\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}

\newcommand\address[1]{%
  \global\def\local@address{#1}%
}

\newcommand\cep[1]{%
  \global\def\local@cep{#1}%
}

\newcommand\phone[1]{%
  \global\def\local@phone{#1}%
}

\newcommand\mail[1]{%
  \global\def\local@mail{#1}%
}

\newcommand\matricula[1]{%
  \global\def\local@matricula{#1}%
}

\newcommand\codigo[1]{%
  \global\def\local@codigo{#1}%
}

\newcommand\creditos[1]{%
  \global\def\local@creditos{#1}%
}

\newcommand\turma[1]{%
  \global\def\local@turma{#1}%
}

\newcommand\carga[1]{%
  \global\def\local@carga{#1}%
}

\newcommand\tipo[1]{%
  \global\def\local@tipo{#1}%
}

\newcommand\city[1]{%
  \global\def\local@city{#1}%
}

\renewcommand\date[3]{%
  \day=#1
  \month=#2
  \year=#3
}

\newcommand\monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}

\newcommand\global@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
  
\newcommand{\descricao}[1]{
  \global\def\local@descricao{#1}
}

\renewcommand\maketitle{
%\begin{vwcol}[widths={0.1,0.5},rule=1pt] 
\newpage
\thispagestyle{empty}
\noindent
\begin{minipage}{.8\textwidth}
\begin{flushright}\renewcommand{\familydefault}{\sfdefault}\normalfont
UNIVERSIDADE FEDERAL DO {\bf TOCANTINS} \vspace{-.1\baselineskip} \\
PRÓ-REITORIA DE {\bf GRADUAÇÃO} \vspace{-.1\baselineskip} \\
CAMPUS DE {\bf\MakeUppercase \local@city} \vspace{-.1\baselineskip} \\
CURSO DE  {\bf\MakeUppercase \local@deptname} \vspace{-.5\baselineskip}\\
\noindent\makebox[\linewidth]{\rule{\textwidth}{.5pt}}\vspace{-.2\baselineskip}
\small\fontfamily{phv}\fontseries{mc}\selectfont
\local@address\ | \local@cep\ | \local@city /TO \vspace{-.2\baselineskip} \\
\local@phone\ | www.uft.edu.br | \local@mail 
\end{flushright}
\end{minipage}% This must go next to `\end{minipage}`
\begin{minipage}{.225\textwidth}
\centering
\includegraphics[scale=.4]{logouft}
\end{minipage}
 %\end{vwcol}
 
\begin{center}
\mybox{\bf PROGRAMA DE DISCIPLINA \\ \MakeUppercase{\local@title}}
\end{center}

\begin{center}
\begin{tabular}{|p{3.2cm}|l|l|l|}
\rowcolor{cor} \multicolumn{4}{c}{\color{cortexto}\bf INFORMAÇÕES GERAIS} \\
\hline
{\bf Código:} \local@codigo & {\bf Créditos:} \local@creditos & {\bf Carga Horária:} \local@carga\ horas-aula & {\bf Tipo:} \local@tipo\\
\hline
\multicolumn{3}{|l|}{{\bf Turma:} \local@turma} & {\bf Semestre:} \@termyear / \@termnumber \\
\hline
\multicolumn{3}{|l|}{{\bf Professor:} \@authname\ \@authsurn} & {\bf Matrícula:} \local@matricula  \\
\hline
\end{tabular}
\end{center}

}

\newcommand{\colorsection}[2]{%
  \colorbox{cor}{\parbox{\dimexpr\textwidth-2\fboxsep}{\color{cortexto}\MakeUppercase{ #1~.~#2}}}}
\renewcommand{\thechapter}{\arabic{chapter}}
\titleformat{\chapter}[display]
  {\bf}
  {}
  {-5pt}
  {\colorsection\thechapter}
\titlespacing*{\chapter}{0pt}{0pt}{\baselineskip}


\newcommand{\colorsectionss}[2]{%
  \colorbox{white}{\parbox{\dimexpr\textwidth-2\fboxsep}{\color{black} #1~.~#2}}}
%\renewcommand{\thesection}{\arabic{section}}
\titleformat{\section}[display]
  {\bf}
  {}
  {-15pt}
  {\colorsectionss\thesection}
\titlespacing*{\section}{0pt}{0pt}{\baselineskip}


\renewpagestyle{plain}{%
  \setfoot{}{}{\thepage}%
}
\pagestyle{plain}

\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

\setlength{\parindent}{0cm}
\renewcommand{\baselinestretch}{1.}

\newcommand\class[1]{%
  \global\def\local@class{#1}%
}

\newcommand{\receipt} {
\vfill
\noindent\makebox[\linewidth]{\hdashrule{\paperwidth}{1pt}{1pt}}
\hspace*{\dimexpr-2\fboxsep-\fboxrule} \fbox{
\noindent\begin{minipage}{\textwidth}
Curso de \local@deptname\  \\
\textbf{Disciplina}: \local@class\ \hfill \local@title\  - \@termyear\ / \@termnumber \hfill \textbf{Nota:} \_\_\_\_\_\_\_ \\ 
\textbf{Prof.}: \@authname\ \@authsurn\ \\
Data: \_\_\_\_/\_\_\_\_/\_\_\_\_ \hfill  Assinatura: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ 
\end{minipage}
}
}

\newenvironment{questions}{ 
\begin{enumerate}[partopsep=10pt, topsep=-\parskip, parsep=0pt, itemsep=0pt, leftmargin=*, label={\bfseries \arabic*) }]\relax
}{
\end{enumerate}
}

\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}

\newcommand{\makeheader} {
\hspace*{\dimexpr-2\fboxsep-\fboxrule} \fbox{
\noindent\begin{minipage}{\textwidth}
\large{Nome: \hspace{0.6\textwidth} Matrícula:}
\end{minipage}}
}

\newcount\@conteudo\@conteudo0
\newcommand\conteudo[1]{%
  \global\@namedef{uftexContent:\expandafter\the\@conteudo}{#1}
  \global\advance\@conteudo by 1
}

\newcommand{\imprimirConteudo} {
\begin{mdframed}
%\begin{longtable}{|p{.95\textwidth}|}
%\hline
%\rowcolor{gray}  {\bf Conteúdo Programático} \\ \hline
    \count1=0
    \count2=1
   \relax\@whilenum \count1<\@conteudo \do { %
    \ifnum\count2=\@conteudo  
        \the\count2\ -- \protect\csname uftexContent:\the\count1 \endcsname\ 
    \else
        \the\count2\ -- \protect\csname uftexContent:\the\count1 \endcsname\ \par
    \fi
   \advance\count2 by 1
   \advance\count1 by 1} 
%   \\  \hline
%\end{longtable}
\end{mdframed}
}


% ------------------------------------------------------------------------------------------------------ %

\DeclareOption{consuni}{
   \colorlet{cor}{azul}
}

\DeclareOption{consepe}{
   \colorlet{cor}{verde}
}

\DeclareOption{geral}{
   \colorlet{cor}{amarelo}
   \colorlet{cortexto}{preto}
}


% ------------------------------------------------------------------------------------------------------ %
% Inicio Avaliação
% ------------------------------------------------------------------------------------------------------ %

\DeclareOption{exam}{

\geometry{a4paper,left=2cm,right=2cm,top=4.5cm,bottom=2cm,headsep=1cm,headheight=4cm,voffset=-1.5cm}

\renewcommand{\mybox}[1]{\par\noindent%\colorbox{white}
{\parbox{.6\textwidth-2\fboxsep\relax}{\color{black} #1}}}

\sethead{
\mybox{\large{\textbf{Disciplina}: \local@class\ \\
\textbf{Prof.}: \@authname\ \@authsurn }
}}{}{\mybox{\includegraphics[scale=.04]{logo-novo-ccomp-uft3}}}

%\headrule

\setfoot{}{}{P\'agina \thepage\ de \pageref{LastPage} }

\renewcommand\maketitle{
\begin{center}
\large{\textbf{\local@title}}\par
\@termyear\ / \@termnumber
\end{center}
}

%\URCornerWallPaper{.25}{logo-novo-ccomp-uft3}

}
% ------------------------------------------------------------------------------------------------------ %
% Fim Avaliação
% ------------------------------------------------------------------------------------------------------ %

\ProcessOptions\relax

\endinput