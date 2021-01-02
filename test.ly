\version "2.20.0"

#(set-default-paper-size "a4landscape")
#(set-global-staff-size 18)
\paper {
    system-system-spacing = #'((basic-distance . 15) (padding . 20))
     system-separator-markup = \slashSeparator
    #(define after-title-space (* 0.5 cm))
    #(define head-separation (* 0.5 cm))
    print-page-number = ##t
    print-first-page-number = ##t
    first-page-number =#1
   top-margin = 2\cm
   bottom-margin = 3\cm
         two-sided = ##t
   inner-margin = 20\mm
   outer-margin = 20\mm
%%%%%these come together:%%%%
    %left-margin = 20\mm
    %line-width = 380\mm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  tagline = \markup {

  }

  
}





\header {
breakbefore =##t
title = \markup {"Title"}
composer = \markup {"El Guapo"}
}

 
"one"=
{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% VOICE : 1 %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#(set-accidental-style 'dodecaphonic)

\clef "G"
%%%%%%%%%%%%%%%%%%%%%%% MESURE : 1 %%%%%%%%%%%%%%%%%%%%%%%
\tempo 4 = 60
\time 4/5
c'4 \mf

\tuplet 12/8 {
dis'16.
e'8~
e'32
f'8~
}
f'8
g'8

\tuplet 3/2 {
gis'8
a'4~
}
|
%%%%%%%%%%%%%%%%%%%%%%% MESURE : 2 %%%%%%%%%%%%%%%%%%%%%%%
a'4
r2.
|
} 
 

\score { 
 { 


<<

% #(with-output-to-file "temp.lisp"
% (lambda () #{ \displayMusic { 

\new StaffGroup
 << 



\new Staff  {
\one
}
 >> 



 % } #}))


 >> 


} 
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%omlily template%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





\layout {
	ragged-last = ##f
indent = 0.0
\context {\Score 
         \override TupletBracket #'staff-padding = #1.5
         \override TupletBracket #'direction = #1
         \override TupletBracket #'bracket-visibility = ##t
          \override Stem #'stemlet-length = #0.75
	  \remove "Mark_engraver" %%%for the fermata on barline 
	   \override MetronomeMark #'padding = #2.5
	  %\remove "Timing_translator"
	  %\remove "Default_bar_line_engraver"

         }
\context {\Staff
         \numericTimeSignature
          \override NoteHead #'style = #'baroque
	   \override DynamicLineSpanner #'staff-padding = #3  %%add this by default Should I ??
\override Flag #'stencil = #modern-straight-flag
	   \consists "Mark_engraver" %%%for the fermata on barline
       %   \consists "Timing_translator"
	%  \consists "Default_bar_line_engraver"

}
}
}


