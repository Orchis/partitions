\version "2.18.2"
edition = " — éd: 1.10 — Prix	 3.00 CHF"
date_perso="26 février 2018"
\include "../lib/copyright_lorimier.ly"
\include "../lib/printAllMesure.ly"

tranpostion = ees % origine ees
tonalite = "Mi♭"
#(set-default-paper-size "a4")
%Définition de la taille de portée, 20 par défaut = 7.03mm
#(set-global-staff-size 20)
%{
Ne pas oublier de copier le label ci-dessous à la fin de la dernière voix.
\label #'lastPage
1.00
  Terminé du premier coup
%}



\header {
  title = \markup { \fontsize#4 \override #'(font-name . "ExoBold")  "Mòlìhuā"}
  subtitle = "莫 麗 華 (Fleur de Jasmin)"
  subsubtitle = \markup \medium { "Tonalité :" \tonalite }
  instrument = \markup{ \small  "Choeur d'homme à 2 voix  — TB" }
  composer =  \markup  { \small  { "Composée au 17ième Siècle"} }
}
% END \header ------------------------------------------
\paper {
  system-system-spacing #'basic-distance = # 5 % espace entre les portée
  %annotate-spacing = ##t 
}
global = {
  \key ees \major
  \time 4/4
  \tempo "Andante " 4=62
  \override Score.MetronomeMark.padding = #3 % distance d'éloignement du tempo
}


tenors = \relative c'' {  
\dynamicUp
\printAllMesure  
\override AmbitusLine.gap = #0
%\sourcefileline 862
\compressFullBarRests R1*6 |	
%{  7%}	g4 g8 bes8 c8_( ees) ees c 
%{  8%}	bes4 bes8_( c) bes2
%{  9%}	g4 g8 bes8 c8_( ees) ees c
%{10%}	bes4 bes8_( c) bes2
%------------------------------------------- ligne 10---------------------------------------%
%{11%}	bes4 bes bes g8_( bes)
%{12%}	c4 c bes2
%{13%}	g4 f8_( g8) bes4 g8_( f)
%{14%}	ees4 ees8_( f8) ees2
%{15%}	g8_( f) ees_( g) f4. g8
%{16%}	bes4 c8_(ees8) bes2
%{17%}	f4 g8_( bes8) f8_( g8) ees8_( c8) 
%{18%}	bes2 c4 ees4
%{19%}	f4._( g8) ees8_( f8) ees8_( c8)
%{20%}	bes2. r4
%------------------------------------------- ligne 20---------------------------------------%
%{21%}	g'4 g8 bes8 c8_( ees8) ees8 c8 
%{22%}	bes4 bes8_( c8) bes2
%{23%}	g4 g8 bes8 c8_( ees8) ees8 c8
%{24%}	bes4 bes8_( c8) bes2
%{25%}	ees4 ees4 ees4 c8_( ees8)
%{26%}	ees4 ees4 ees2
%{27%}	bes4 c8_( bes) ees4 c8_( bes8)
%{28%}	g4 g8_( c8) bes2
%{29%}	bes8_( c8) bes8_( ees8) c4. ees8
%{30%}	ees4 ees4 ees2
%------------------------------------------- ligne 30---------------------------------------%
%{31%}	c2.^( c4
%{32%}	g4. f8 g2)
%{33%}	c4.^( bes8 c4 bes8 aes8
%{34%}	g2.) r8 bes,8
}

basses = \relative c, {  
\override AmbitusLine.gap = #0
\compressFullBarRests R1*6 |

%{  7%}		ees4 ees8 f g_( c) c aes
%{  8%}		g4 g4 g2
%{  9%}		ees4 ees8 f g_( c) c aes
%{10%}		g4 g4 g2
%------------------------------------------- ligne 10---------------------------------------%
%{11%}		r1
%{12%}		r1
%{13%}		r1
%{14%}		r2 r8 ees'8_( <c f>8 <bes g'>8
%{15%}		<bes g>2 <f c'>2
%{16%}		<g bes>2.) r4
%{17%}		r1
%{18%}		r1
%{19%}		<f c'>2 _( <g bes>2
%{20%}		<g bes>8 <ees g>8 <g bes>8 <f c'>8 <ees bes'>4.) r8 
%------------------------------------------- ligne 20---------------------------------------%
%{21%}		ees4 ees8 f8 g8_( c8) c8 aes8
%{22%}		g4 g4 g2
%{23%}		ees4 ees8 f8 g8_( c8) c8 aes8
%{24%}		g4 g4 g2
%{25%}		bes4 bes4 bes4 g8_( bes8) 
%{26%}		c4 c4 bes2
%{27%}		g4 f8_( g8) bes4 g8_( f8)
%{28%}		ees4 ees8_( f8) ees2
%{29%}		g8_( f8) ees8_( g8) f4. g8
%{30%}		bes4 c8_(  ees8) bes2
%------------------------------------------- ligne 30---------------------------------------%
%{31%}		f4 g8_( bes8) f8_( g8) ees8_( c8) 
%{32%}		bes2 c4 ees4
%{33%}		f4._( g8) ees8_( f8) ees8_( c8) 
%{34%}		bes2. r8 bes8
}
VoiceRest = {
\compressFullBarRests R1*6 |
%{ 6%} 	s8^\markup { \halign #4 \italic "Intro. Piano" } 
%{ 6%}	s8^\mf s4 s2 				s1
%{ 9%}	s4^\mp s4 s2 				s1*5
%{15%} 	s8^\mf s8*3 s2			s1*5
%{21%} 	s4^\mf s4 s2				s1
%{23%}	s4^\mp s4 s2				s1*5
%{29%}	s8^\mf  
}



%%%--------------- Verser ténors ----------------------%%%
verseTenors = \lyricmode {
  \set stanza = \markup{ \medium	"Pinyin : "}
  Hǎo yi duo mei __ li di mo li __ hua
  Hao yi duo mei __ li di mo li __ hua
  fen fang mei li __ man zhi ya
  you xiang __ you bai __ ren ren __ kua
  rang wo lai jiang ni zhai xia
  song gei bie ren jia mo li
  hua __ mo li hua
  
  
  Hao yi duo mei __ li di mo li __ hua  
  Hao yi duo mei __ li di mo li __ hua
  fen fang mei li __ man zhi ya
  you xiang __ you bai __ ren ren __ kua
  rang wo lai jiang ni zhai xia
  hun __
  hun __
  Ni
  
}
verseSinoTenors = \lyricmode {
  \set stanza = \markup{ \medium	"Sinogrammes simplifés : "}
  好	一	朵	美 __	麗	的	茉	莉 __	花
  好	一	朵	美 __	麗	的	茉	莉 __	花
  芬	芳	美	麗  __	满	枝	桠
  又	香	又	白	人	人	夸
  让	我	来	将	你	摘 __	下
  送	给	别	人	家 茉 莉
  花	__ 茉	莉	花
  
  
  好	一	朵	美 __	麗	的	茉	莉 __	花
  好	一	朵	美	 __ 丽	的	茉	莉	__ 花
  芬	芳	美	丽 __	满	枝	桠
  又	香 __	又	白 __	人	人 __	夸
  让	我	来	将	你	摘	下
  朩 __ % pin
  朩 __ % pin
  尼 % ni
}

%%%--------------- Verser Basses ----------------------%%%
verseBasses = \lyricmode {
  \set stanza = \markup{ \medium	"Pinyin : "}
  Hao yi duo mei li di mo li hua
  Hao yi duo mei __ li di mo li hua
  hun __
  hun __
  
  Hao yi duo mei __ li di mo li hua  
  Hao yi duo mei __ li di mo li hua
  fen fang mei li __ man zhi ya
  you xiang __ you bai __ ren ren __ kua
  rang wo lai jiang ni zhai __ xia
  
  song gei bie ren jia mo li
  hua __ mo li
  hua Ni  
}


verseSinoBasses = \lyricmode {
  \set stanza = \markup{ \medium	"Sinogrammes simplifés :"}
  好 一 朵 美 麗 的 茉 莉 花
  好 一 朵 美 __ 麗 的 茉 莉 花
  忶 __ % hun
  忶 __ % hun
  
    
  好	一	朵	美 __	麗	的	茉	莉	花
  好	一	朵	美 __	丽	的	茉	莉	花
  芬	芳	美	丽 __	满	枝	桠
  又	香 __	又	白 __	人	人 __	夸
  让	我	来	将	你	摘 __	下
  
  
  送	给	别	人	家 茉 莉
  花 __	茉	莉	花
  花 尼 % ni
}


\score {
  \transpose ees \tranpostion  {
    \new ChoirStaff << 
      %%%%%--------------TENORS --------------------------%%
      \new Staff \with {
          instrumentName =  \markup\column {"Ténor 1" "Ténor 2"}
          shortInstrumentName =  \markup\column {"T1" "T2"}
          midiInstrument = "bassoon"
        } << \new Voice ="tenors" { \clef treble \voiceOne \global  \tenors }
             \new Voice { \voiceTwo \global  \VoiceRest }
          >>
    
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenors" \verseTenors
            \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenors" \verseSinoTenors

      %%%%%--------------BASSES --------------------------%%
      \new Staff \with {
        instrumentName =  \markup\column {"Baryton" "Basse"}
        shortInstrumentName =  \markup\column {"Br" "Bs"}
        midiInstrument = "bassoon"
      } << 
          \new Voice ="basses" { \clef bass \voiceOne\global \basses  }
           \new Voice { \voiceTwo \VoiceRest }
        >>
            \new Lyrics \with {
              \override VerticalAxisGroup #'staff-affinity = #CENTER
            } \lyricsto "basses" \verseBasses 
            \new Lyrics \with {
              \override VerticalAxisGroup #'staff-affinity = #CENTER
            } \lyricsto "basses" \verseSinoBasses
    
               
      %\label #'lastPage
      
    >> % END ChoirStaff --------------------------------------
  }
  \layout {
    \context {
      \Lyrics
      % espacement entre des paroles.
      \override LyricSpace.minimum-distance = #1.8
      \override LyricText.font-size =  #1.4
      % Ensure hyphens are visible / s'assurer que les trait d'union soyent visibles
      \override LyricHyphen.minimum-distance = #1.8
    }
    
    \context { 
      \Voice
      \consists "Ambitus_engraver"
    }
    
    
  }
}

\pageBreak
  
  \include "Mo-Li-Hua_paroles.ly"
  
\score {
\relative { 
 
\hide Staff.BarLine % barre de mesures  
\hide Staff.Clef % clé
\hide Staff.StaffSymbol % lignes de portée
\omit Staff.TimeSignature % 4/4
\hide Voice.NoteHead %note
\hide Voice.Stem % hampe  
  a'4 a1
  \label #'lastPage
 }
}  