% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

AltoIncipit = \markup {
	"Alto" \hspace #-17 \score {
		\new Staff \with {
			\remove Time_signature_engraver
		} {
			\clef alto s4 \bar empty
		}
		\layout { }
	} \hspace #-1.8
}

KyrieAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoKyrie
		\mvTr g'4.\fE^\tutti g8 g4 r
		r2 r8 g g([ e)]
		f4 r r2
		r8 a a4 g4. a8
		g4. g8 g4 r \noBreak %5
		R1\fermataMarkup \bar "||"
		\tempoKyrieB g8. g16 g8 g g g r g \noBreak
		g g r g a16([ g)] a8 r a
		g16([ f)] g8 r g f16([ e)] f8 r g
		g e4 e8 fis( g4 fis8) %10
		g g16([ a)] h([ c h a)] g8 g16([ a)] h([ c h a)]
		g8 g g([ fis)] g4 r
		R1
		g8. g16 g8 g fis g r g
		fis g r g g4 fis~ %15
		fis e2 d4
		d r8 h' a a r a
		gis gis r gis a gis r4
		r r8 e e e r e
		e( f4 e8) e4 r %20
		R1
		a8. a16 a8 a a a r4
		g8. g16 g8 g g g r g
		a16([ g)] a8 r a g16([ f)] g8 r g
		f16([ e)] f8 r g g4( a) %25
		a r8 d, d8([ e16 f] g4)
		g8 e16([ f)] g([ a g f)] e8 e16([ f)] g([ a g f)]
		e8 e d4 e r
		r2 r8 g g4
		g r \mvTr c4.\pE^\solo d16 c %30
		h4. c16 h \appoggiatura h4 a2\trill
		gis4 r r2
		R1
		c4. d16 c h4. c16 h
		\appoggiatura h4 a2\trillE ^\tweak TextScript.X-offset #-3.5 ^\critnote gis4 r %35
		r2 r8 d d e16([ f)]
		g4.( f8) e4 r
		r8 c c d16([ e)] \sbOn f16[( g \tuplet 3/2 8 { a g f] } g[ a \tuplet 3/2 8 { b a g]) } \sbOff
		a4 r8 a g4 f
		\appoggiatura f e2\trill d8 h'16([ c)] d8([ c16 h)] %40
		c8 c c([ h)] c4 r
		R1
		g4. a16 g f4. g16 f
		\appoggiatura f4 e2\trill d4 r
		R1 %45
		r8 c f e d8.([ e32 f] e8[ d)]
		cis a' a([ g)] fis4 r
		r8 g g([ f)] e4 r
		r8 f f([ e)] d4 r
		r8 e e([ d)] c? e e fis16([ gis)] %50
		\sbOn a[( h \tuplet 3/2 8 { c h a] } h[ c \tuplet 3/2 8 { d c h)] } \sbOff c4 r8 a
		a2 a8 a d d
		d c4 h a16[ gis] a4\trill
		gis8 gis16([ a)] h8([ a16 gis)] a8 a a([ gis)]
		a4 r r2 %55
		R1
		\mvTr a8.\fE^\tutti a16 a8 a a a r4
		g8. g16 g8 g g g r g
		a16([ g)] a8 r a g16([ f)] g8 r g
		f16([ e)] f8 r g g4( a) %60
		a r8 d, d([ e16 f] g4)
		g8 e16([ f)] g([ a g f)] e8 e16([ f)] g([ a g f)]
		e8 e d4 e r
		r2 r8 g g4
		g r r2\fermata \bar "|." %65 finis
	}
}

KyrieAltoLyrics = \lyricmode {
	Ky -- ri -- e
	e -- lei --
	son,
	e -- lei -- son, e --
	le -- i -- son. %5

	Ky -- ri -- e e -- lei -- son, e --
	lei -- son, e -- lei -- son, e --
	lei -- son, e -- lei -- son, e --
	lei -- son, e -- lei -- %10
	son, e -- lei -- son, e -- lei --
	son, e -- lei -- son.

	Ky -- ri -- e e -- lei -- son, e --
	lei -- son, e -- lei -- _ %15
	_ _
	son, e -- lei -- son, e --
	lei -- son, e -- lei -- son,
	e -- lei -- son, e --
	lei -- son. %20

	Ky -- ri -- e e -- lei -- son,
	Ky -- ri -- e e -- lei -- son, e --
	lei -- son, e -- lei -- son, e --
	lei -- son, e -- lei -- %25
	son, e -- lei --
	son, e -- lei -- son, e -- lei --
	son, e -- lei -- son,
	e -- lei --
	son. Chri -- ste e -- %30
	lei -- son, e -- lei --
	son.

	Chri -- ste e -- lei -- son, e --
	lei -- son, %35
	Chri -- ste e --
	lei -- son,
	Chri -- ste e -- lei --
	son, e -- lei -- _
	_ son, e -- lei -- %40
	son, e -- lei -- son.

	Chri -- ste e -- lei -- son, e --
	lei -- son,
	%45
	Chri -- ste e -- lei --
	son, e -- lei -- son,
	e -- lei -- son,
	e -- lei -- son,
	e -- lei -- son, Chri -- ste e -- %50
	lei -- son, e --
	lei -- son, Chri -- ste e --
	lei -- _ _ _ _
	son, e -- lei -- son, e -- lei --
	son. %55

	Ky -- ri -- e e -- lei -- son,
	Ky -- ri -- e e -- lei -- son, e --
	lei -- son, e -- lei -- son, e --
	lei -- son, e -- lei -- %60
	son, e -- lei --
	son, e -- lei -- son, e -- lei --
	son, e -- lei -- son,
	e -- lei --
	son. %65 finis
}

GloriaAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoGloria
		\mvTr g'8.\fE^\tutti g16 g4 r2
		g8. g16 g4 r2
		R1
		r4 g8 g f g g4
		g r r2 %5
		r g4 r
		g\p r8 g g8. g16 g4
		R1
		g4\f r g\p r8 g
		g8. f16 f4 a r8 a %10
		a8. g16 g4 h r8 h
		h8. a16 a4 a4.\f a8
		g g g g g2
		g4 r r2
		r r8 g g g %15
		g4 r r2
		R1*8 %24
		r2 \mvTr h4.\pE^\solo g16 a %25
		h4. c16 a h8 a16 g a4
		g r r g16([ fis)] g([ a)]
		h2~ h8 a16([ h)] c([ h)] a gis?
		a([ gis)] a8 r4 r2
		r8 a( h16[ c)] h([ a)] gis4. gis8 %30
		a16[ h c8]~ c16[ h a gis] a[ h c8]~ c16[ h a gis]
		a8 h16 a a8([ gis)] a4 r
		R1*9 %41
		r4 f8 f16 f f4 e
		g8 g a g g8. f16 f4
		b8[ a g f] e4 g~
		g f f( e) %45
		f r r2
		r r4 \mvTr a8\fE^\tutti a16 a
		g8 g g g g g g g16 g
		g8 g r4 c,8 f16 e f[ e d8]~
		d[ g16 f] g[ f \once \tieDashed e8]~ e[ a16 g] a[ g f8] %50
		g2 g4 r
		R1
		R\fermataMarkup \bar "||" %53 finis
	}
}

GloriaAltoLyrics = \lyricmode {
	Glo -- ri -- a,
	glo -- ri -- a

	in ex -- cel -- sis De --
	o. %5
	Pax,
	pax ho -- mi -- ni -- bus,

	pax, pax ho --
	mi -- ni -- bus, pax ho -- %10
	mi -- ni -- bus, pax ho --
	mi -- ni -- bus bo -- nae,
	bo -- nae vo -- lun -- ta --
	tis,
	in ter -- ra %15
	pax.

	Gra -- ti -- as %25
	a -- gi -- mus, a -- gi -- mus ti --
	bi pro -- pter
	ma -- gnam glo -- ri -- am
	tu -- am,
	pro -- pter ma -- gnam %30
	glo -- _
	_ ri -- am tu -- am.

	Do -- mi -- ne Fi -- li, %42
	Fi -- li u -- ni -- ge -- ni -- te,
	Je -- _ _
	su Chri -- %45
	ste.
	Do -- mi -- ne
	De -- us, A -- gnus De -- i, Fi -- li -- us
	Pa -- tris, Fi -- li -- us Pa --
	_ _ %50
	_ tris. %51 finis
}

QuiTollisAltoNotes = {
	\relative c' {
		\clef treble
		\key c \minor \time 3/4 \autoBeamOff \tempoQuiTollis
			\set Score.currentBarNumber = #54
		R2.
		r4 r \mvTr g'\pE^\solo %55
		g8.([ f16)] es4 r8 es
		d8.([ es32 f)] es4 r
		r r es
		d8.([ es16] f4) es
		es d r %60
		r \mvTr f\fE^\tutti f
		f es r
		r g g
		f f r
		r as as %65
		as2 g4~
		g f2
		g4 r r
		r r \mvTr g\pE^\solo
		g8.([ f16)] es4 r8 es %70
		d8.([ es32 f)] es4 r
		r r g
		f8.([ g16] as4) g
		g f r
		r \mvTr f2\fE^\tutti %75
		es4 es r
		r ges2
		g f4~
		f f( e)
		f r r %80
		R2.*2
		r4 r g~
		g f8([ es!)] des([ c)]
		h4.( d8) es8[( f)] %85
		g2 g4
		g2 as4~
		as as( g)
		as r r
		R2.*6 %95
		r4 \mvTr g\fE^\tutti g
		f f r
		r a a
		g g r
		r fis fis %100
		f2 es4~
		es \appoggiatura es d2\trill
		c4 r r
		R2.*4 %107
		R2.\fermataMarkup \bar "||" %108 finis
	}
}

QuiTollisAltoLyrics = \lyricmode {
	Qui %55
	tol -- lis pec --
	ca -- ta,
	pec --
	ca -- ta
	mun -- di: %60
	Mi -- se --
	re -- re,
	mi -- se --
	re -- re,
	mi -- se -- %65
	re -- re __
	no --
	bis.
	Qui
	tol -- lis pec -- %70
	ca -- ta,
	pec --
	ca -- ta
	mun -- di,
	qui %75
	tol -- lis
	pec --
	ca -- ta __
	mun --
	di: %80

	Su -- %83
	sci -- pe __
	de -- pre -- %85
	ca -- ti --
	o -- nem __
	no --
	stram.

	Mi -- se -- %96
	re -- re,
	mi -- se --
	re -- re,
	mi -- se -- %100
	re -- re __
	no --
	bis. %103 finis
}

QuoniamAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoQuoniam
			\set Score.currentBarNumber = #109
		R1*63 %171
		r8 \mvTr g'\fE^\tutti g g g8. g16 g4
		R1
		r4 r8 a g a16 h c8 a
		g2 g4 r\fermata \bar "||" %175 finis
	}
}

QuoniamAltoLyrics = \lyricmode {
	Cum San -- cto Spi -- ri -- tu %172

	in glo -- ri -- a De -- i
	Pa -- tris. %175 finis
}

InGloriaAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoInGloria
			\set Score.currentBarNumber = #176
		R1*6 %181
		\mvTr c2\fE^\tutti d4. d8
		e2 f4 e
		d2 c
		r4 g'4. fis16[ e] fis[ g a8]~ %185
		a[ g16 fis] g[ a g fis] e8[ fis] g4~
		g8[ fis16 e] fis4 g8 g4 f8
		e[( f16 g] a8[ g] f16[ e)] f8 r f(
		g16[ f)] g8 r c, d4 e8[ g]
		a4 g g8 e([ g a)] %190
		d, g4 g8 f16[( e f8] a[ h)]
		e, a4 a8 gis16([ fis gis8] a[ h)]
		e,4 r8 a4 gis16[ fis] gis[ a h8]~
		h[ a16 gis] a[ h a g] fis8[ gis] a4~
		a8[ gis16 fis] gis4 a8 a4 a8 %195
		g16([ fis)] g8 r g( a16[ g)] a8 r a(
		h16[ a)] h8 g16([ a g fis] e8[ fis)] g4
		a16([ g] a4 h16[ a)] g4 e
		fis4. fis8 g2
		a4 g fis2 %200
		e4 r8 a4 gis16[ fis] gis[ a h8]~
		h[ a16 gis] a4 r a,
		h4. h8 c4 c8 h
		a4( h) h^\critnote r8 e~
		e[ fis16 g] a[ g] fis4 g16[ a] h[ a g fis] %205
		e4 r r r8 a~
		a[ g16 fis] g8 g4 fis16[ e] fis[ g a8]~
		a[ g16 fis] g[ a g fis] e8[ fis] g4~
		g8[ fis16 e] fis[ g] a4 g16[ fis] g4
		r2 c, %210
		d4. d8 e2
		f4 e d2
		c4 r8 c( d16[ c)] d8 r d(
		e16[ d)] e8 r e16([ d] c[ h] c4 d16[ c)]
		h4 h'16[ a g fis] e8[ fis] g4~ %215
		g8[ fis16 e] fis4 g r
		r r8 e( d16[ c]) d8 g4
		g8 e([ f g)] c,4 f8([ g]
		a2) d,8 g4 a8
		h2 e,8 e( a16[ g)] a8 %220
		r d,( g16[ f)] g8 r f4( g8)
		g4 r e2
		f4. f8 g g4 a8
		d, d r g4 fis16[ e] fis[ g a8]~
		a[ g16 fis] g4 e8[ fis16 g] a4~ %225
		a d, e r
		r r8 a16[( g] f[ e] d4 e16[ f])
		g8 \once \tieDashed g~ g16[ a g f] e[ d] c4 d16[ e]
		f8 \once \tieDashed f~ f16[ g f e] d8 g g4
		g r8 g4 fis16[ e] fis[ g a8]~ %230
		a[ g16 fis] g[ a g f] e8[ fis] g4~
		g8[ f16 e] f4~ f8[ e16 d] g8[ f]
		e4. d16[ c] d2
		e8 g4 f16[ e] f[ g] a4 g16[ f]
		g[ f] g8 r g( a16[ g)] a8 r a( %235
		g) g g4 g r
		r2 g8 g g4
		g g g r\fermata \bar "|." %238 FINIS
	}
}

InGloriaAltoLyrics = \lyricmode {
	In glo -- ri -- %182
	a De -- i
	Pa -- tris,
	a -- _ _ %185
	_ _ _
	_ men, a -- men,
	a -- men, a --
	men, a -- _ _
	_ _ men, a -- %190
	men, a -- men, a --
	men, a -- men, a --
	men, a -- _ _
	_ _ _
	_ men, a -- men, %195
	a -- men, a -- men, a --
	men, a -- men,
	a -- men, in
	glo -- ri -- a
	De -- i Pa -- %200
	tris, a -- _ _
	men, in
	glo -- ri -- a De -- i
	Pa -- tris, a --
	_ _ _ _ %205
	men, a --
	men, a -- _ _
	_ _ _
	_ _ _ men,
	in %210
	glo -- ri -- a
	De -- i Pa --
	tris, a -- men, a --
	men, a --
	men, a -- _ _ %215
	_ men,
	a -- men, a --
	men, a -- men, a --
	men, a -- men,
	a -- men, a -- men, %220
	a -- men, a --
	men, in
	glo -- ri -- a De -- i
	Pa -- tris, a -- _ _
	men, a -- _ %225
	_ men,
	a --
	men, a -- _ _ _
	men, a -- _ men, a --
	men, a -- _ _ %230
	_ _ _
	_ _
	_ _ _
	men, a -- _ _ _ _
	_ men, a -- men, a -- %235
	men, a -- men,
	a -- men, a --
	men, a -- men. %238 FINIS
}

CredoAltoNotes = {
	\relative c' {
		\clef treble
		\key c \major \time 4/4 \autoBeamOff \tempoCredo
		\mvTr g'4\fE^\tutti g g8 g16 g g8 g
		g4 g g8 g16 g fis8 fis
		g g r e e e d4
		d r r8 h' a fis
		g g16 g g8([ fis)] g4 r %5
		R1*2
		r2 r4 g8 g
		fis4 f8 f e2
		f4 g4. f8 f4 %10
		a8 g f e d([ e16 f] g8.) g16
		g4 r r2
		r r4 \mvTr e8\pE^\solo f
		g f16([ e)] f8. f16 e4 e~
		e8 f16 g f8 e d d r4 %15
		r2 r8 f4 e16 f
		d8 d r g4 f16 g e8 fis16([ g)]
		a8 g g8. fis16 g4 r
		R1*17 %35
		r2 r4 e
		d d8 g g4( fis8.) fis16
		g4 r r2
		r4 g a4. g16([ f)]
		e4 e8 e e4 d %40
		r r8 \mvTr g\fE^\tutti g g r g
		f f r4 r2
		r4 r8 e d d r g
		g g16 g g4 g r
		r8 g a a16 a g2 %45
		g4 r r2
		R1\fermataMarkup \bar "||" %47 finis
	}
}

CredoAltoLyrics = \lyricmode {
	Cre -- do, cre -- do in u -- num
	De -- um, Pa -- trem o -- mni -- po --
	ten -- tem, fa -- cto -- rem coe --
	li, fa -- cto -- rem
	coe -- li et ter -- rae, %5

	vi -- si -- %8
	bi -- li -- um o --
	_ _ mni -- um %10
	et in -- vi -- si -- bi -- li --
	um.
	Et in
	u -- num Do -- mi -- num, Do --
	mi -- num Je -- sum Chri -- stum, %15
	Fi -- li -- um
	De -- i, Fi -- li -- um De -- i __
	u -- ni -- ge -- ni -- tum.

	Qui %36
	pro -- pter nos ho -- mi --
	nes
	et pro -- pter
	no -- stram sa -- lu -- tem %40
	de -- scen -- dit de
	coe -- lis,
	de -- scen -- dit, de --
	scen -- dit de coe -- lis,
	de -- scen -- dit de coe -- %45
	lis. %46 finis
}

% AltoNotes = {
% 	\relative c' {
% 		\clef treble
%
% 	}
% }
%
% AltoLyrics = \lyricmode {
%
% }
