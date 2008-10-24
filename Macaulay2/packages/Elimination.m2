newPackage("Elimination",
     Version => "1.0", 
     Date => "January 5, 2005",
     Authors => {{Name => "Michael E. Stillman", Email => "mike@math.cornell.edu"}},
     Headline => "a package for elimination of variables"
     )

export {eliminate, sylvesterMatrix, discriminant, resultant}

---------------------
--- Preliminaries  --
---------------------

getIndices = (R,v) -> unique apply(v, index)

------------------------------
-- Elimination of variables --
------------------------------

eliminate = method()

eliminate (List, Ideal) := (v,I) -> (     
     if #v === 0 then return I;
     R := ring I;
     varlist := getIndices(ring I,v);
     others := toList(set(0..numgens R-1) - set varlist);
     perm := join(varlist,others);
     invperm := inversePermutation perm;
     degs := (monoid R).Options.Degrees;
     degs = apply(perm, i -> degs_i);
     M := monoid [Variables=>numgens R,MonomialOrder=>ProductOrder{#varlist,#others}, Degrees=>degs, MonomialSize=>16];
     k := coefficientRing R;
     R1 := k M;
     toR1 := map(R1,R,apply(invperm,i->R1_i));
     toR := map(R,R1,apply(perm,i->R_i));
     J := toR1 I;
     if isHomogeneous I then
         (cokernel generators J).cache.poincare = poincare cokernel generators I;
     ideal mingens ideal toR selectInSubring(1,generators gb J)
     )

eliminate (Ideal, RingElement) := (I,v) -> eliminate({v},I)
eliminate (Ideal, List) := (I,v) -> eliminate(v,I)
eliminate(RingElement, Ideal) := (v,I) -> eliminate({v},I)

-----------------------------------------------
-- Sylvester matrix, resultant, discriminant --
-----------------------------------------------

sylvesterMatrix = method()
sylvesterMatrix(RingElement,RingElement,RingElement) := (f,g,x) -> (
     R := ring f;
     if R =!= ring g then error "expected same ring";
     v := index x;  -- just to check if x is a variable in the polyring R.
     if f == 0 or g == 0 
     then map(R^1,R^1,0)
     else (
       degf := degree(x,f);
       degg := degree(x,g);
       if degf === 0 or degg === 0 
       then matrix {{1_R}}
       else (
         x1 := matrix{{1,x}};
         xfg := transpose symmetricPower(degf + degg - 1, x1);
         xf := symmetricPower(degf-1, x1);
         xg := symmetricPower(degg-1, x1);
	 m := contract(xfg, (f ** xg) | (g ** xf));
         substitute(m, x=>0)))
     )

resultant = method()
resultant(RingElement, RingElement, RingElement) := (f,g,x) -> 
     det sylvesterMatrix(f,g,x)

discriminant = method()
discriminant(RingElement, RingElement) := (f,x) -> resultant(f, diff(x,f), x)

-----------------------------------------------
-- documentation and tests
-----------------------------------------------

beginDocumentation()

document {
     Key => Elimination,
     Headline => "eliminating specified variables, and Sylvester resultant",
     "This package contains functions to eliminate variables from an ideal (that is, 
     intersect an ideal with a subring generated by certain of the variables), and to compute
     Sylvester resultants.",
     PARA{
	  "It would be nice to implement multivariate resultants, Bezoutians, and
	  sparse resultants.  Laurent Buse has written code for this in the past.
	  We hope to provide a package, Resultants, which will do this.  If you
	  are willing to help write this, please contact the author if this package!"
	  },
     }

document {
     Key => {(resultant, RingElement, RingElement, RingElement),resultant},
     Usage => "resultant(f,g,x)",
     Inputs => { 
	  "f",
	  "g" => {"in the same polynomial ring ", TT "R", " as ", TT "f"},
	  "x" => {"a variable in ", TT "R"}
	  },
     Outputs => { RingElement => { "the Sylvester resultant of ", TT "f", " and ", TT "g", " with respect to the variable ", TT "x" }},
     PARA {
	  "The elements ", TT "f", " and ", TT "g", " should be polynomials in the same ring, and ", TT "x", " should be
	  a variable in that ring.  The result is the determinant of the Sylvester matrix, 
	  ", TT "sylvesterMatrix(f,g,x)", ".  The resultant of ", TT "f", " and its derivative with respect to ", TT "x", " is the
	  discriminant, ", TT "discriminant(f,x)", "."},
     EXAMPLE lines ///
	  R = ZZ[x,a,b,c,d]	  
	  f = x^7+3*x^4+a*x+b
	  g = x^8+x^5+c*x+d
	  time eliminate(ideal(f,g),x)
	  time ideal resultant(f,g,x)
	  sylvesterMatrix(f,g,x)
	  discriminant(f,x)
	  ///,
     SeeAlso => {"sylvesterMatrix", "discriminant", "eliminate"}
     }


undocumented {
	  (eliminate, Ideal, RingElement), 
	  (eliminate, Ideal, List)
     }
document {
     Key => {eliminate,
	  (eliminate, RingElement, Ideal), 
	  (eliminate, List, Ideal)
	  },
     Usage => "eliminate(v,J)",
     Inputs => {
	  "v" => Nothing => {ofClass RingElement, " or ", ofClass List, ", a variable or list of variables of a polynomial ring ", TT "R"},
	  "J" => Ideal => {"in the ring ", TT "R"},
	  },
     Outputs => {
	  Ideal => {"generated by the elements of J not involving the variables v"},
	  },
     "If the ideal ", TT "J", " is homogeneous, then an effort is made to use the Hilbert function to speed up the
     computation.",
     EXAMPLE lines ///
	  R = ZZ/101[x,a,b,c,d]	  
	  f = x^2+a*x+b
	  g = x^2+c*x+d
	  time eliminate(x,ideal(f,g))
	  time ideal resultant(f,g,x)
	  sylvesterMatrix(f,g,x)
	  discriminant(f,x)
	  ///,
     PARA{	  
       "One may also switch the order of arguments: the ideal being the first argument.  
       This usage has been deprecated, and should no longer be used."},
     Caveat => {"The ring ", TT "R", " should not be a quotient ring, or a non-commutative ring.
	  Additionally, it would be nice to be able to use a DegreeLimit, or to be able to interrupt
	  the computation."},
     SeeAlso => {resultant,discriminant,Elimination}
     }

document {
     Key => {(discriminant,RingElement,RingElement),discriminant},
     Usage => "discriminant(f,x)",
     Inputs => {
	  "f" => "a polynomial",
	  "x" => "a variable in the same ring"
	  },
     Outputs => {
     	  RingElement => {"the discriminant of ", TT "f", " with respect to ", TT "x"}
	  },
     EXAMPLE lines ///
	  R = ZZ/101[x,a,b,c,d]	  
	  f = x^2+a*x+b
	  g = x^2+c*x+d
	  time eliminate(x,ideal(f,g))
	  time ideal resultant(f,g,x)
	  sylvesterMatrix(f,g,x)
	  discriminant(f,x)
	  ///,
     SeeAlso => {resultant, eliminate, Elimination}
     }

document {
     Key => {(sylvesterMatrix, RingElement, RingElement, RingElement),sylvesterMatrix},
     Usage => "sylvesterMatrix(f,g,x)",
     Inputs => {
	  "f" => {"a polynomial in a ring ", TT "R"},
	  "g" => {"a polynomial in the same ring"},
	  "x" => {"a variable in ", TT "R"}
	  },
     Outputs => {
     	  Matrix => {"the Sylvester matrix of ", TT "f", " and ", TT "g", " with respect to ", TT "x"}
	  },
     "Its determinant is the resultant of ", TT "f", " and ", TT "g", ".",
     EXAMPLE lines ///
	  R = ZZ/101[x,a,b,c,d,Degrees=>{1,1,2,1,2}];
	  R = ZZ[x,a,b,c,d]	  
	  f = x^7+3*x^4+a*x+b
	  g = x^8+x^5+c*x+d
	  time eliminate(ideal(f,g),x)
	  time ideal resultant(f,g,x)
	  sylvesterMatrix(f,g,x)
	  discriminant(f,x)
	  ///,
     SeeAlso => {resultant, discriminant, Elimination}
     }

TEST ///
R = ZZ/101[a..d]
time I = monomialCurveIdeal(R,{1,3,4})
time eliminate(I,{b})

R = ZZ[a,b,c,d,e]
f1 = a^4 + b*a + c
degree(a,f1)
f2 = a^2 + d*a + e
time sylvesterMatrix(f1,f2,a)
time resultant(f1,f2,a)
time discriminant(f1,a)
f3 = 1_R
time resultant(f1,f3,a)

R = ZZ/32003[a,b,c,d,e]
f1 = a^4 + b*a + c
f2 = a^2 + d*a + e
time resultant(f1,f2,a)
time eliminate(ideal(f1,f2),a)
///

end
loadPackage "Elimination"
installPackage Elimination

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/packages NAMEOFPACKAGE=Elimination install-one"
-- End:
