\def\filename{uftex2.dtx}
\def\fileversion{v1.2.0}
\def\filedate{2016/03/09}
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
\RequirePackage[a4paper,top=3cm,bottom=2.0cm,left=3.0cm,right=2.cm]{geometry} 
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
\RequirePackage{fancyhdr}
% --------------- Utilizado para construir a capa e folha de rosto
\RequirePackage{tabularx}
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
\newcommand\local@universityname{Universidade Federal do Tocantins}
\newcommand\local@deptstring{Curso}
\newcommand\foreign@deptstring{Course}
\newcommand\local@cityname{Palmas}
\newcommand\local@statename{TO}
\newcommand\local@countryname{Brasil}

\renewcommand\date[2]{%
  \month=#1
  \year=#2
}

\newcommand\term[2]{
  \global\def\@termyear{#1}
  \global\def\@termnumber{#2}
}

\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
% ------------------------------------------------------------------------------------------------------ %
% Inicio Plano de Ensino
% ------------------------------------------------------------------------------------------------------ %

\DeclareOption{PlanoEnsino}{

\geometry{a4paper,
  top=5cm,              % distance of the text block from the top of the page
  headheight=4cm, % height for the header block
  headsep=12pt,     % distance from the header block to the text block
  heightrounded,      % ensure an integer number of lines
  left=2cm,
  right=2cm,
  bottom=2cm
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{
\includegraphics[scale=.3]{logouft}\\
\large{UNIVERSIDADE FEDERAL DO TOCANTINS\\
CAMPUS UNIVERSIT\'ARIO DE PALMAS\\
BACHARELADO EM CI\^ENCIA DA COMPUTA\c{C}\~AO}}
\lfoot{P\'agina \thepage\ de \pageref{LastPage} } 

\newcommand{\cabecalho}[2] {
\begin{center}
\large{\textbf{Plano de Ensino - #1}} \\
\large{\textbf{Período: #2}}
\end{center}}

\newcommand{\tbltitulo}[1] {
\multicolumn{5}{|l|}{\cellcolor{verde} \textcolor{white}{\bf #1}}}

\newcommand{\tbltitulodois}[1] {
\cellcolor{verde} \textcolor{white}{\bf #1}}

\newcommand{\curso}[1] {
\tbltitulo{Curso} \\ 
\multicolumn{5}{|l|}{#1} \\ }

\newcommand{\disciplina}[2] {
\multicolumn{3}{|l|}{\cellcolor{verde} \textcolor{white}{\bf Disciplina}} & \multicolumn{2}{|l|}{\cellcolor{verde} \textcolor{white}{\bf Período}} \\
\multicolumn{3}{|l|}{#1} & \multicolumn{2}{|l|}{#2} \\ }

\newcommand{\prerequisito}[1] {
\tbltitulo{Pré-requisito} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\docente}[1] {
\tbltitulo{Docente} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\carga}[5] {
\tbltitulodois{C.H. Total} & \tbltitulodois{C.H. Teórica}  & \tbltitulodois{C.H. Prática}  & \tbltitulodois{C. H. Presencial}  & \tbltitulodois{C.H. à Distância}\\
#1 horas & #2 horas & #3 horas & #4 horas & #5 horas \\ }

\newcommand{\ementa}[1] {
\tbltitulo{Ementa} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\objetivos}[1] {
\tbltitulo{Objetivos} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\tblconteudopresencial}{
\tbltitulo{Conteúdo Programático - Módulo Presencial} \\
\hline
\cellcolor{cinza}\textcolor{white} {\bf Aula} & \multicolumn{4}{|c|}{\cellcolor{cinza}\textcolor{white} {\bf Conteúdo}}\\ }

\newcommand{\tblconteudodistancia}[1] {
\tbltitulo{Conteúdo Programático - Módulo à Distância ou semi-presencial} \\
\hline
\cellcolor{cinza}\textcolor{white} {\bf Aula} & \multicolumn{4}{|c|}{\cellcolor{cinza}\textcolor{white} {\bf Conteúdo}}\\ }

\newcommand{\conteudo}[2] {
#1 & \multicolumn{4}{|p{0.768\textwidth}|}{#2}\\
\hline }

\newcommand{\metodologia}[5] {
\tbltitulo{Metodologia e Procedimentos de Ensino} \\
\hline
\multicolumn{5}{|l|}{\cellcolor{cinza}\textcolor{white}{\bf Atividades Teóricas}} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\
\hline
\multicolumn{5}{|l|}{\cellcolor{cinza}\textcolor{white}{\bf Atividades Práticas}}\\
\multicolumn{5}{|p{.96\textwidth}|}{#2} \\
\hline
\multicolumn{5}{|l|}{\cellcolor{cinza}\textcolor{white}{\bf Atividades à Distância}}\\
\multicolumn{5}{|p{.96\textwidth}|}{#3} \\
\hline
\multicolumn{5}{|l|}{\cellcolor{cinza}\textcolor{white}{\bf Atividades Interdisciplinares}}\\
\multicolumn{5}{|p{.96\textwidth}|}{#4} \\
\hline
\multicolumn{5}{|l|}{\cellcolor{cinza}\textcolor{white}{\bf Recursos Humanos, Materiais e Tecnológicos}}\\
\multicolumn{5}{|p{.96\textwidth}|}{#5} \\ }


\newcommand{\avaliacao}[1] {
\tbltitulo{Procedimento de Avaliação} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }


\newcommand{\bibbasica}[1] {
\tbltitulo{Bibliogafia Básica} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\bibcomplementar}[1] {
\tbltitulo{Bibliografia Complementar} \\
\multicolumn{5}{|p{.96\textwidth}|}{#1} \\ }

\newcommand{\assinatura}[1] {
\vfill
\noindent\begin{minipage}{\textwidth}
\hfill Palmas TO, \today .\\
\vspace{8mm}
\begin{center}
\large{\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ \\
#1}
\end{center}
\end{minipage}}
}
% ------------------------------------------------------------------------------------------------------ %
% Fim Plano Ensino
% ------------------------------------------------------------------------------------------------------ %


% ------------------------------------------------------------------------------------------------------ %
% Inicio Avaliação
% ------------------------------------------------------------------------------------------------------ %

\DeclareOption{exam}{

\geometry{a4paper,left=2cm,right=2cm,top=3.2cm,bottom=2cm,headheight=2.2cm}

% ------------------------------------------------------------------------------------------------------ %
\newcommand\class[1]{%
  \global\def\local@class{#1}%
}
% ------------------------------------------------------------------------------------------------------ %

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{
\large{\local@deptstring\ de \local@deptname\ \\
\textbf{Disciplina}: \local@class\ \\
\textbf{Prof.}: \@authname\ \@authsurn 
}}
\lfoot{P\'agina \thepage\ de \pageref{LastPage} }

\newcommand{\makeheader} {
\hspace*{\dimexpr-2\fboxsep-\fboxrule} \fbox{
\noindent\begin{minipage}{\textwidth}
\large{Nome: \hspace{0.6\textwidth} Matrícula:}
\end{minipage}}
%\vspace{1mm}
}

\renewcommand\maketitle{
\begin{center}
\large{\textbf{\local@title}}\par
\@termyear\ / \@termnumber
\end{center}
}

\newcommand{\receipt} {
\vfill
\noindent\makebox[\linewidth]{\hdashrule{\paperwidth}{1pt}{1pt}}
\hspace*{\dimexpr-2\fboxsep-\fboxrule} \fbox{
\noindent\begin{minipage}{\textwidth}
 \local@deptstring\ de \local@deptname\  \\
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

\URCornerWallPaper{.6}{logouft2}

}
% ------------------------------------------------------------------------------------------------------ %
% Fim Avaliação
% ------------------------------------------------------------------------------------------------------ %

\ProcessOptions\relax

\endinput