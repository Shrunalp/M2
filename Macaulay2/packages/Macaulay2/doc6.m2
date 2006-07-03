--		Copyright 1993-2002 by Daniel R. Grayson
document {
     Key => odd,
     Headline => "tell whether an integer is odd",
     TT "odd x", " -- returns true or false, tells whether x is an odd integer.",
     PARA{},
     "See also ", TO "even", "."}
document {
     Key => even,
     Headline => "tell whether an integer is even",
     TT "even x", " -- returns true or false, tells whether x is an even integer.",
     PARA{},
     "See also ", TO "odd", "."}

undocumented {(numeric, CC),(numeric, CCC),(numeric, Number),(numeric, RR),(numeric, RRR),(numeric, Thing),(numeric, VisibleList)}
document {
     Key => numeric,
     Headline => "convert to floating point",
     TT "numeric x", " -- yields the expression obtained from x by converting the 
     integers and rational numbers within to double precision floating 
     point numbers.",
     PARA{},
     EXAMPLE "numeric {1,2,3}",
     PARA{},
     "See also ", TO "RR", "."}
document {
     Key => "pi",
     Headline => "the number 'pi'",
     TT "pi", " the numerical value of the arithmetic quantity pi.",
	EXAMPLE {
		"pi"
		}
	}
document {
     Key => Engine,
     Headline => "specify whether a ring is handled by the engine",
     TT "Engine", " -- a key for rings which yields the value ", TT "true", " if this
     ring is supported by the ", TO "engine", "."}


document {
     Key => baseRings,
     Headline => "store the list of base rings of a ring",
     TT "baseRings", " -- a symbol used as a key in a ring ", TT "R", " under which is
     stored a list of base rings for ", TT "R", ".",
     PARA{},
     "A base ring ", TT "A", " of ", TT "R", " is one of the rings involved in the
     construction of ", TT "R", ".  The natural ring homomorphism from ", TT "A", "
     to ", TT "R", " is implemented with ", TO "promote", ".",
     PARA{},
     "The base rings are presented in chronological order."}

document {
     Key => RingElement,
     Headline => "the class of all ring elements handled by the engine",
     SeeAlso => "engine"}
document {
     Key => EngineRing,
     Headline => "the class of rings handled by the engine",
     "The ", TO "engine", " handles most of the types of rings in the
     system.",
     PARA{},
     "The command ", TT "new Engine from x", " is not meant for general 
     users, and provides the developers with a way to create top-level 
     rings corresponding to rings implemented in the engine.  Here ", TT "x", "
     may be:",
     UL {
	  "commands for the engine, as a string, or a sequence or list
	  of strings, which cause a ring to be placed on the top of the
	  engine's stack.",
	  "a ring, in which case another top-level ring is formed as
	  an interface to the same underlying engine ring.",
	  "the handle of on engine ring"
	  }}
document {
     Key => {fraction,(fraction, RingElement, RingElement)},
     TT "fraction(f,g)", " -- manufactures the fraction ", TT "f/g", " in the fraction
     field of the ring containing ", TT "f", " and ", TT "g", " without reducing
     it to lowest terms."}
TEST ///
frac(QQ[a,b])
assert ( a == denominator(b/a) )
assert ( b == numerator(b/a) )
assert ( 1 == numerator(b/b) )
///
document {
     Key => FractionField,
     Headline => "the class of all fraction fields",
     "Macaulay 2 provides for fraction fields of integral domains.",
     PARA{},
     "In some cases, normal forms of fractions makes sense, but in general
     for fraction fieldss of quotient rings, there is no notion of
     normal form for a fraction.
     In other words, fractions
     may be equal without displaying the same numerator and denominator.",
     PARA{},
     "Computations over fraction fields, or polynomial rings over fraction fields,
     especially Groebner basis computations, are much slower than over prime fields.
     Still, an attempt is made to speed up these computations as much as possible, and
     more is planned in the future.",
     PARA{},
     "For an overview, see ", TO "fraction fields", " and  ", TO frac, ".",
     HEADER4 "Useful functions for use with fractions and fraction fields include:",
     UL {
	  TO frac,
	  TO numerator,
	  TO denominator,
	  TO liftable,
	  TO lift
	  }
     }
document {
     Key => ZZ,
     Headline => "the class of all integers" }

document {
     Key => QQ,
     Headline => "the class of all rational numbers",
     EXAMPLE "1/2 + 3/5"}
TEST ///
     assert( net (2/1) === "2" )
     assert( net (1/1) === "1" )
///
document {
     Key => RR,
     Headline => "the class of all real numbers",
     "A real number is entered as a sequence of decimal digits with a point.",
     EXAMPLE "3.14159",
     }

undocumented {
	  (symbol -,ZZ,CC), 
	  (symbol +,ZZ,CC), 
	  (symbol -,RR,CC), 
	  (symbol +,RR,CC), 
	  (symbol /,ZZ,CC), 
	  (symbol /,RR,CC), 
	  (symbol -,CC), 
	  (symbol -,CC,ZZ), 
	  (symbol -,CC,QQ), 
	  (symbol -,QQ,CC), 
	  (symbol +,CC,ZZ), 
	  (symbol +,CC,QQ), 
	  (symbol +,QQ,CC), 
	  (symbol -,CC,RR), 
	  (symbol -,CC,CC), 
	  (symbol +,CC,RR), 
	  (symbol +,CC,CC), 
	  (symbol /,CC,ZZ), 
	  (symbol /,CC,QQ), 
	  (symbol /,QQ,CC), 
	  (symbol /,CC,RR), 
	  (symbol /,CC,CC), 
	  (symbol ^,CC,ZZ)}
document {
     Key => CC,
     Headline => "the class of all complex numbers",
     "In Macaulay 2, complex numbers are represented as floating point numbers, and so are 
     only approximate.  The symbol ", TO "ii", " represents the square root of -1.",
     PARA{}, 
     EXAMPLE {
	  "z = 3-4*ii",
      	  "z^5",
      	  "1/z",
	  },
     "Arithmetic involving ZZ, QQ, RR, and CC works as one might expect.",
     EXAMPLE {
	  "3 + ii",
	  "4/5 + 12*ii",
	  "3 == 3 + 0*ii",
	  "(2-ii)^5",
	  "(1+ii)/3"
	  },
     Caveat => {"Strictly speaking, ", TT "CC", " is not a ring, since floating point approximations
     are used.  Consequently, functions which rely on Groebner bases are notoriously unreliable with
     rings such as ", TT "RR", " or ", TT "CC", "."}
     }

     
document {
     Key => ii,
     Headline => "square root of -1"}
document {
     Key => realPart,
     Headline => "real part",
     Usage => "realPart z",
     Inputs => {"z" => "an integer, rational, real or complex number"},
     Outputs => {"the real part of the complex number z."},
     EXAMPLE {
	  "realPart(3/4)",
	  "realPart(1.5+2*ii)"
	  },
     SeeAlso => {CC}
     }
document {
     Key => imaginaryPart,
     Headline => "imaginary part",
     Usage => "imaginaryPart z",
     Inputs => {"z" => "an integer, rational, real or complex number"},
     Outputs => {"the imaginary part of the complex number z."},
     EXAMPLE {
	  "imaginaryPart(3/4)",
	  "imaginaryPart(1.5+2*ii)"
	  },
     SeeAlso => {CC}
     }

document {
     Key => conjugate,
     Headline => "complex conjugate",
     TT "conjugate z", " -- the complex conjugate of the complex number z."}
document {
     Key => {(conjugate,CC),(conjugate,CCC),(conjugate,Number)},
     Headline => "complex conjugate",
     Usage => "conjugate z",
     Inputs => {"z"},
     Outputs => {CC => {"the complex conjugate of ", TT "z"}},
     EXAMPLE {
	  "conjugate(1+2.5*ii)",
	  "conjugate 3"
	  }
     }
document {
     Key => {gcdCoefficients,(gcdCoefficients, RingElement, RingElement),(gcdCoefficients, ZZ, ZZ)},
     Headline => "gcd with coefficients",
     TT "gcdCoefficients(a,b)", " -- returns ", TT "{d,r,s}", " so that
     ", TT"a*r + b*s", " is the greatest common divisor ", TT "d", " of ", TT "a", "
     and ", TT "b", ".",
     PARA{},
     "Works for integers or elements of polynomial rings.",
     SeeAlso => "gcd"}
document {
     Key => mod,
     Headline => "reduce modulo an integer",
     TT "mod(i,n)", " -- reduce the integer ", TT "i", " modulo ", TT "n", ".",
     PARA{},
     "The result is an element of ", TT "ZZ/n", "."}
document {
     Key => OrderedMonoid,
     Headline => "the class of all ordered monoids",
     "An ordered monoid is a multiplicative monoid together with an ordering of 
     its elements.  The ordering is required to be compatible with the 
     multiplication in the sense that if x < y then x z < y z.  The class
     of all ordered monomials is ", TO "OrderedMonoid", ".",
     PARA{},
     "The reason for making a separate class for ordered monoids is that monoid
     rings can be implemented more efficiently for them - an element of the 
     monoid ring can be stored as a sorted list, each element of which is
     a pair consisting of an element of the monoid and a coefficient.
     See ", TO "PolynomialRing", ".",
     PARA{},
     "A free commutative ordered monoid can be created with ", TO "monoid", ".",
     SeeAlso =>  {"Monoid"}}
document {
     Key => PolynomialRing,
     Headline => "the class of all ordered monoid rings",
     "Every element of a polynomial ring is also a ", TO "RingElement", ".",
     SeeAlso => "polynomial rings"}
document {
     Key => {exponents,(exponents, MonoidElement),(exponents, RingElement)},
     Headline => "list the exponents in a polynomial",
     TT "exponents m", " -- for a monomial ", TT "m", " provides the list
     of exponents.",
     BR{},
     TT "exponents f", " -- for a polynomial ", TT "f", " provides a list
     whose elements are the lists of exponents of the terms of ", TT "f", ".",
     PARA{},
     EXAMPLE {
	  "R = ZZ/101[x,y,z];",
      	  "exponents (f = x^2 - 7 + x*y*z^11 + y)",
	  "leadMonomial f",
	  "exponents leadMonomial f"
	  }}
document {
     Key => {standardForm,(standardForm, RingElement),(standardForm, MonoidElement)},
     Headline => "convert to standard form",
     TT "standardForm f", " -- converts a polynomial or monomial to a
     form involving hash tables.",
     PARA{},
     "A polynomial is represented by hash tables in which the keys are
     hash tables representing the monomials and the values are the 
     coefficients.",
     PARA{},
     "The monomials themselves are represented by hash tables 
     in which the keys are the variables and the values are the 
     corresponding exponents.",
     EXAMPLE {
	  "R = ZZ/101[x,y,z];",
      	  "standardForm (x^2 - 7 + x*y*z^11 + y)"
	  }}
document {
     Key => {listForm,(listForm, MonoidElement),(listForm, RingElement)},
     Headline => "convert to list form",
     TT "listForm f", " -- converts a polynomial or monomial to a form
     represented by nested lists.",
     PARA{},
     "A monomial is represented by the list of its exponents.",
     PARA{},
     "A polynomial is represented by lists of pairs (m,c), one for each
     term, where m is a list of exponents for monomial, and c is the
     coefficient.",
     EXAMPLE {
	  "R = ZZ/101[x,y,z];",
      	  "listForm (x^2 - 7 + x*y*z^11 + y)"
	  }}

TEST "
-- test name
R = ZZ/101[a..e]
f = symmetricPower(2,vars R)
assert( f == value toExternalString f )
assert( f == value toString f )
"
document {
     Key => assign,
     Headline => "assign a value",
     TT "assign(x,v)", " -- assigns v as the value of x.",
     PARA{},
     "If the value of x is a symbol or indexed variable, then it
     can be assigned the value v with ",
     PRE "          assign(x,v)",
     "When the value of x is an indexed variable y_i then what happens
     is that the i-th element of the list y is replaced by v.",
     PARA{},
     "Differs from x=v in that here x is evaluated.",
     PARA{},
     "Note: it would be better if we could arrange for ",
     PRE "          x <- v",
     "to work with indexed variables.  See ", TO "<-", "."}
document {
     Key => IndexedVariable,
     Headline => "the class of all indexed variables",
     "Indexed variables provide the possibility of producing 
     polynomial rings ", TT "R[x_0, x_1, ..., x_(n-1)]", " in n variables,
     where n is not known in advance.  If ", TT "x", " is an symbol,
     and i is an integer, then ", TT "x_i", " produces an indexed variable.
     After this has been done, an assignment ", TT "x_i=v", " will assign another
     value to it.  A new sequence of indexed variables of
     length n assigned to the symbol ", TT "x", " can be produced with ",
     TT "x_1 .. x_n", " and that sequence can be used in constructing
     a polynomial ring.",
     EXAMPLE {
	  "ZZ/101[t_0 .. t_4]",
      	  "(t_0 -  2*t_1)^3",
	  }}
document {
     Key => MonoidElement,
     Headline => "the class of all monoid elements",
     SeeAlso => "monoid"}
document {
     Key => GeneralOrderedMonoid,
     Headline => "the class of all ordered free commutative monoids",
     "This is the class of free monoids that can be handled by 
     the ", TO "engine", ".  Elements of such monoids are implemented
     as instances of ", TO "MonoidElement", ".",
     PARA{},
     SeeAlso => { "monoid" }
     }     
document {
     Key => {degreesMonoid,(degreesMonoid, GeneralOrderedMonoid), (degreesMonoid, ZZ)},
     Headline => "get the monoid of degrees",
     TT "degreesMonoid n", " -- returns the monoid whose elements correspond
     to the multidegrees of length ", TT "n", ", or, if ", TT "n", " is a monoid, the monoid whose elements correspond to 
     degrees of elements of ", TT "n", "."
     }
document {
     Key => (symbol SPACE, Ring, Array),
     Headline => "the standard way to make a polynomial ring",
     TT "R[...]", " -- produces the monoid ring from a ring ", TT "R", " and the
     ordered monoid specified by ", TT "[...]", ".",
     PARA{},
     "This is the customary way to make a polynomial ring.",
     PARA{},
     "Optional arguments (placed inside the array):",
     UL (TO \ keys value Core#"private dictionary"#"monoidDefaults"),
     SeeAlso => "polynomial rings"}
document {
     Key => (symbol SPACE,Ring, OrderedMonoid),
     Headline => "make a polynomial ring",
     TT "R M", " -- produces the monoid ring from a ring ", TT "R", " and an ordered monoid
     ", TT "M", ".",
     SeeAlso => "polynomial rings"}
document {
     Key => (symbol **, Monoid, Monoid),
     Headline => "tensor product of monoids",
     TT "M ** N", " -- tensor product of monoids.",
     PARA{},
     "For complete documentation, see ", TO "tensor", "."}

undocumented {}
document {
     Key => {tensor,(tensor, Ring, Ring),(tensor, QuotientRing, QuotientRing),(tensor, PolynomialRing, PolynomialRing),(tensor, Module, Module),
	  (tensor, QuotientRing, PolynomialRing),(tensor, PolynomialRing, QuotientRing),(tensor, Monoid, Monoid),(tensor, CoherentSheaf, CoherentSheaf)},
     Headline => "tensor product",
     TT "tensor(M,N)", " -- tensor product of rings or monoids.",
     PARA{},
     "This method allows all of the options available for monoids, see
     ", TO "monoid", " for details.  This routine essentially combines the 
     variables of M and N into one monoid.",
     PARA{},
     "For rings, the rings should be quotient rings of polynomial rings over the same
     base ring.",
     PARA{},
     "Here is an example with monoids.",
     EXAMPLE {
	  "M = monoid[a..d, MonomialOrder => Eliminate 1]",
	  "N = monoid[e,f,g, Degrees => {1,2,3}]",
	  "P = tensor(M,N,MonomialOrder => GRevLex)",
	  "describe P",
	  "tensor(M,M,Variables => {t_0 .. t_7}, MonomialOrder => ProductOrder{4,4})",
	  "describe oo",
	  },
     "Here is a similar example with rings.",
     EXAMPLE "tensor(ZZ/101[x,y], ZZ/101[r,s], MonomialOrder => Eliminate 2)",
     SeeAlso => "**"}
document {
     Key => table,
     Headline => "make a table (nested list)",
     TT "table(u,v,f)", " -- yields a table m in which m_i_j is f(u_i,v_j).",
     PARA{},
     "A table is a list of lists, all of the same length.  The entry m_i_j is 
     computed as f(u_i,v_j).",
     PARA{},
     "table(m,n,f) -- yields, when m and n are integers, a table of size m by n
     whose entries are obtained by evaluating f() repeatedly.",
     PARA{},
     "See also ", TO "isTable", ", and ", TO "subtable", "."}
document {
     Key => applyTable,
     Headline => "apply a function to elements of a table",
     TT "applyTable(m,f)", " -- applies the function f to each element of the table m.",
     PARA{},
     "It yields a table of the same shape as m containing the resulting values.",
     PARA{},
     "See also ", TO "table", "."}
document {
     Key => subtable,
     Headline => "extract a subtable from a table",
     TT "subtable(u,v,m)", " -- yields the subtable of the table m obtained from the
     list u of row numbers and the list v of column numbers.",
     PARA{},
     EXAMPLE {
	  "m = table(5,5,identity)",
      	  "subtable({1,3,4},toList(2..4), m)"
	  }}
document {
     Key => vector,
     Headline => "make a vector",
     TT "vector {a,b,c,...}", " -- produces an element of a free module from a list.",
     PARA{},
     "The elements a,b,c,... must be elements of the same ring, or be
     convertible to elements of the same ring."}
document {
     Key => {relations,(relations, Module)},
     Headline => "the defining relations",
     TT "relations M", " -- produce the relations defining a module M.",
     PARA{},
     "The relations are represented as a matrix, and if not stored
     in the module under M.relations, the matrix is understood to be
     empty.",
     PARA{},
     SeeAlso => {"generators","subquotient"}}
TEST "
R = ZZ/101[a,b,c]
M = cokernel matrix {{a,b^2,c^3}}
N = image M_{0}
assert( M == N )
"
document {
     Key => Vector, 
     Headline => "the class of all elements of free modules which are handled by the engine",
     "If ", TT "R", " is a ring handled by the engine, and ", TT "M", " is a free
     module over ", TT "R", ", then M is a subclass of Vector.",
     PARA{},
     SeeAlso => {"engine", "Module"}}
document { Key => degrees,
     Headline => "degrees of generators" }
document {
     Key => (degrees, Ideal),
     Usage => "degrees I",
     Inputs => {"I"},
     Outputs => {{ "the list of multi-degrees for the generators of the module ", TT "I" }}}
document {
     Key => (degrees, Matrix),
     Usage => "degrees f",
     Inputs => {"f"},
     Outputs => {{ "a list ", TT "{x,y}", " where ", TT "x", " is the list
	       of degrees of the target of ", TT "f", " and ", TT "y", " is the
	       list of degrees of the source of ", TT "f", "." }}}
document {
     Key => (degrees, Module),
     Usage => "degrees M",
     Inputs => {"M"},
     Outputs => {{ "the list of multi-degrees for the generators of the module ", TT "M" }},
     EXAMPLE {
	  "R = ZZ/101[x,y,z]",
      	  "E = R^5",
      	  "degrees E",
      	  "F = R^{1,2,3,4}",
      	  "degrees F" } }
document {
     Key => {(degrees, Ring),(degrees, GeneralOrderedMonoid)},
     Usage => "degrees R",
     Inputs => {"R"},
     Outputs => {},
     Consequences => {{ "the list of multi-degrees for the generators (variables) of the ring (or monoid) ", TT "R"}},
     EXAMPLE lines ///
	  R = ZZ/101[x,y,z]
      	  degrees R
	  monoid R
	  degrees oo
	  S = ZZ/101[x,y,z,Degrees => {{2,3},{1,2},{2,0}}]
      	  degrees S
      ///}
document {
     Key => (symbol ^, Ring, List),
     Headline => "make a free module",
     Usage => "M = R^{i,j,k,...}",
     Inputs => {"R", 
	  Nothing => {TT "{i,j,k, ...}", ", ", ofClass List, ", of integers or lists of integers"}},
     Outputs => {
          Module => {
	       {", a free module over ", TT "R", " whose generators have degrees ", TT "-i", ", ", TT "-j", ", ", TT "-k", ", ..."}}},
     EXAMPLE lines ///
     	  R = QQ[a..d]
	  R^{-1}
	  R^{-1,2:-2,-3}
     	  ///,
     PARA{},
     "If ", TT "i", ", ", TT "j", ", ... are lists of integers, then
     they represent multi-degrees, as in ", TO "graded and multigraded polynomial rings", ".",
     EXAMPLE lines ///
     	  R = QQ[x,y,z,Degrees=>{{1,0},{1,-1},{1,-2}}]
	  R^{{1,2}}
     	  ///,
     SeeAlso => {"degrees", "free modules", "graded and multigraded polynomial rings"}}
document {
     Key => {components,(components, GradedModuleMap),(components, Module),(components, Matrix),(components, GradedModule),(components, ChainComplexMap)},
     Headline => "list the components of a direct sum",
     TT "components x", " -- produces a list of the components of an element of a 
     free module.",
     BR{},
     TT "components M", " -- the list of components for a module ", TT "M", " which was
     formed as a direct sum, or ", TT "{M}", " if ", TT "M", " was not formed as a 
     direct sum.  Works also for homomorphism, chain complexes, and graded modules.",
     SeeAlso => {"vector", "directSum", "++"}}
document {
     Key => (symbol ^,Module,ZZ),
     Headline => "direct sum",
     Usage => "M^n",
     Inputs => {"M", "n"},
     Outputs => {{"the direct sum of ", TT "n", " copies of ", TT "M"}},
     EXAMPLE lines ///
     	  M = coker matrix{{1,2,3}}
	  M^3
	  directSum(3:M)
     ///,
     SeeAlso => {directSum, symbol++}
     }
document {
     Key => (symbol ^,Ring,ZZ),
     Headline => "make a free module",
     Usage => "R^n",
     Inputs => {"R", "n"},
     Outputs => {{"a new free ", TT "R", "-module of rank ", TT "n", "." }},
     "The new free module has basis elements of degree zero.  To specify the
     degrees explicitly, see ", TO (symbol ^,Ring,List), ".",
     EXAMPLE lines ///
     	  R = ZZ[x,y,z]/(x^2-y*x)
	  F = R^4
	  degrees F
     	  ///,
     SeeAlso => {(degrees,Module), (symbol^,Ring,List), "graded and multigraded polynomial rings"}
     }
document {
     Key => (symbol ^, SheafOfRings, List),
     Headline => "make a graded free coherent sheaf",
     Usage => "M = R^{i,j,k,...}",
     Inputs => {"R", 
	  Nothing => {TT "{i,j,k, ...}", ", ", ofClass List, ", of integers or lists of integers"}},
     Outputs => {
          Module => {
	       {", a graded free coherent sheaf whose generators have degrees ", TT "-i", ", ", TT "-j", ", ", TT "-k", ", ..."}}},
     EXAMPLE lines ///
     	  R = QQ[a..d]/(a*b*c*d)
	  X = Proj R
	  OO_X^{-1,-2,3}
     	  ///,
     PARA{},
     "If ", TT "i", ", ", TT "j", ", ... are lists of integers, then
     they represent multi-degrees, as in ", TO "graded and multigraded polynomial rings", ".",
     EXAMPLE lines ///
     	  Y = Proj (QQ[x,y,z,Degrees=>{{1,0},{1,-1},{1,-2}}])
	  OO_Y^{{1,2},{-1,3}}
	  degrees oo
     	  ///,
     SeeAlso => {OO, Proj, degrees, "graded and multigraded polynomial rings"}}
document {
     Key => {
	  (symbol ^, CoherentSheaf, ZZ),
	  (symbol ^, SheafOfRings, ZZ)},
     Headline => "direct sum",
     Usage => "F^n",
     Inputs => {"F" => {", or a ", ofClass SheafOfRings}, "n"},
     Outputs => {
	  CoherentSheaf => {"the direct sum of ", TT "n", " copies of ", TT "F"},
	  },
     EXAMPLE lines ///
     	  R = QQ[a..d]/(a*d-b*c)
	  Q = Proj R
	  OO_Q^5
	  IL = sheaf ideal(a,b)
	  IL^3
     	  ///,
     SeeAlso => {Proj, sheaf}
     }
document {
     Key => (symbol ^, RingElement, ZZ),
     Headline => "power",
     Usage => "f^n",
     Inputs => {"f", "n"},
     Outputs => {
     	  RingElement => TT "f^n"
	  },
     EXAMPLE lines ///
     	  R = ZZ/7[x]/(x^46-x-1);
	  (x+4)^(7^100)
     	  ///,
     PARA{},
     "If the ring allows inverses, negative values may be used.",
     EXAMPLE lines ///
     	  S = ZZ[t,Inverses=>true,MonomialOrder=>RevLex];
	  t^-1
	  T = frac(ZZ[a,b,c]);
	  (a+b+c)^-1
     	  ///,
     SeeAlso => {frac, "polynomial rings"}
     }
document {
     Key => (symbol ^, Matrix, ZZ),
     Headline => "power",
     Usage => "f^n",
     Inputs => {"f", "n"},
     Outputs => {
     	  Matrix => TT "f^n"
	  },
     EXAMPLE lines ///
     	  R = ZZ/7[x]/(x^6-3*x-4)
	  f = matrix{{x,x+1},{x-1,2*x}}
	  f^2
	  f^1000
     	  ///,
     PARA{},
     "If the matrix is invertible, then f^-1 is the inverse.",
     EXAMPLE lines ///
     	  M = matrix(QQ,{{1,2,3},{1,5,9},{8,3,1}})
	  det M
	  M^-1
	  M^-1 * M
	  R = QQ[x]
	  N = matrix{{x^3,x+1},{x^2-x+1,1}}
	  det N
	  N^-1
	  N^-1 * N
     	  ///,
     SeeAlso => {det}
     }
document {
     Key => {(symbol ^, ChainComplex, ZZ)},
     Headline => "access member, cohomological degree",
     Usage => "C^n",
     Inputs => {"C", "n"},
     Outputs => {
     	  Module => {"The ", TT "(-n)", "-th component ", TT "C_(-n)", " of ", TT "C"}
	  },
     "Subscripts refer to homological degree, and superscripts refer to cohomological degree.
     It is only a matter of notation: ", TT "C_(-n)", " is always the same as ", TT "C^n", ".",
     EXAMPLE lines ///
     	  R = QQ[x,y,z];
	  C = res coker vars R
	  C = dual C
	  C^2
	  C^2 == C_(-2)
     	  ///,
     SeeAlso => {ChainComplex, (symbol^, ChainComplex, Array)}
     }
document {
     Key => {(symbol ^, ChainComplexMap, ZZ),
	  (symbol ^, GradedModuleMap, ZZ)},
     Headline => "iterated composition",
     Usage => "f^n",
     Inputs => {"f" => {"or a ", ofClass GradedModuleMap}, "n"},
     Outputs => {
     	  ChainComplexMap => {"the composite ", TT "f o f o ... o f", " (", TT "n", " times)"}
	  },
     "If ", TT "f", " is a ", TO GradedModuleMap, ", then so is the result.",
     PARA{},
     "One use of this function is to determine if a chain complex is well-defined.  
     The chain complex will be well-defined if the square of the differential is zero.",
     EXAMPLE lines ///
     	  R = QQ[x,y,z];
	  C = res coker vars R
	  C.dd^2 == 0
     	  ///,
     SeeAlso => {ChainComplex}
     }

document {
     Key => cover,
     Headline => "get the covering free module",
     TT "cover M", " -- yields the free module whose basis elements correspond
     to the generators of M.",
     SeeAlso => {"ambient", "super"}}

document {
     Key => {(coverMap,Module),coverMap},
     Headline => "the surjective map from a free module to a module corresponding to the generators",
     Usage => "coverMap M",
     Inputs => {"M"},
     Outputs => {{"the surjective map from a free module to ", TT "M", " corresponding to the generators"}},
     EXAMPLE lines ///
     	  M = image matrix {{2},{0}}
	  f = coverMap M
	  isSurjective f
     ///,
     TEST ///
     	  R = ZZ[x]
     	  M = image map(R^2,,{{2},{0}})
	  f = coverMap M
	  assert isSurjective f
	  assert ( cokernel f == 0 )
	  -- now check it over ZZ, too!
     	  M = image matrix {{2},{0}}
	  f = coverMap M
	  assert isSurjective f
	  assert ( cokernel f == 0 )
     ///
     }


document {
     Key => {(cover,Module),(cover, CoherentSheaf),(cover, GradedModule)},
     Usage => "F = cover M",
     Inputs => {"M"},
     Outputs => {"F" => {"the free module whose basis elements correspond to the generators of ", TT "M", "."}},
     "The free module ", TT "F", " is the source of the generator matrix 
     of ", TT "M", ".",
     EXAMPLE {
	  "R = QQ[a..f];",
	  "g = matrix{{a,b},{c,d},{e,f}}",
	  "M = subquotient(g,matrix{{b},{c},{d}})",
	  "cover M",
	  "cover M == source generators M"},
     SeeAlso => {(ambient,Module), (super,Module)}}
document {
     Key => {(cover,Matrix)},
     Usage => "cover f",
     Inputs => {"f"},
     Outputs => {{"the corresponding map of free modules between the covers of the source and target of ", TT "f" }},
     SeeAlso => {(cover,Module)}
     }
document {
     Key => {super,(super, GradedModule),(super, CoherentSheaf),(super, Matrix),(super, Module)},
     Headline => "get the ambient module",
     TT "super M", " -- yields the module which the module ", TT "M", " is a submodule of.",
     BR{},
     TT "super f", " -- if ", TT "f", " is a map whose target is a submodule 
     of ", TT "M", ", yields the composite of ", TT "f", " with the inclusion into ", TT "M", ".",
     PARA{},
     SeeAlso => { "cover", "ambient" }}
document {
     Key => End,
     Headline => "module of endomorphisms",
     TT "End M", " -- constructs the module of endomorphisms of ", TT "M", "."}
document {
     Key => ModuleMap,
     Headline => "the class of all maps between modules",
     "This class is experimental, designed to support graded modules.",
     SeeAlso => {"Matrix"}}

document {
     Key => (symbol *, Matrix, Matrix),
     Headline => "matrix multiplication",
     Usage => "f * g",
     Inputs => {"f", "g"},
     Outputs => { Matrix },
     "Multiplication of matrices corresponds to composition of maps, and when
     the target ", TT "Q", "
     of ", TT "g", " equals the source ", TT "P", " of ", TT "f", ", the
     product ", TT "f*g", " is defined, its source is the source of ", 
     TT "g", ", and its target is the target of ", TT "f", ".  ",
     EXAMPLE {
	  "R = QQ[a,b,c,x,y,z];",
	  "f = matrix{{x},{y},{z}}",
	  "g = matrix{{a,b,c}}",
	  "f*g"
	  },
     PARA{},
     "The degree of ",
     TT "f*g", " is the sum of the degrees of ", TT "f", " and of ", TT "g",
     ".",
     PARA{},
     "The product is also defined when ", TT "P", " != ", TT "Q", ",
     provided only that ", TT "P", " and ", TT "Q", " are free modules of the
     same rank.  If the degrees of ", TT "P", " differ from the corresponding
     degrees of ", TT "Q", " by the same degree ", TT "d", ", then the degree
     of ", TT "f*g", " is adjusted by ", TT "d", " so it will have a good
     chance to be homogeneous, and the target and source of ", TT "f*g", "
     are as before.",
     EXAMPLE {
	  "target (f*g) == target f",
	  "source (f*g) == source g",
	  "isHomogeneous (f*g)",
	  "degree(f*g)",
	  },
     "Sometimes, it is useful to
     make this a map of degree zero.  Use ", TO (map,Matrix), " for this purpose.",
     EXAMPLE {
	  "h = map(f*g,Degree=>0)",
	  "degree h",
	  "degrees source h"
	  },
     SeeAlso => {(degree,Matrix),degrees}
     }

     
document {
     Key => Matrix,
     Headline => "the class of all matrices",
     "A matrix is a homomorphism between two modules, together with
     an integer (or vector of integers) called its degree, which is
     used when determining whether the map is homogeneous.  The matrix
     is stored in the usual way as a rectangular array of ring elements.
     When the source or target modules are not free, the matrix is
     interpreted as a linear transformation in terms of the generators
     of the modules.",
     SeeAlso => "matrices",
     PARA{},
     "A matrix ", TT "f", " is an immutable object, so if you want to 
     cache information about it, put it in the hash table ", TT "f.cache", ".",
     PARA{},
     "Common ways to make a matrix:",
     UL {
	  TO "map",
	  TO "matrix",
	  },
     "Common ways to get information about matrices:",
     UL {
	  TO (degree, Matrix),
	  TO (isHomogeneous, Matrix),
	  TO (matrix, Matrix),
	  },
     "Common operations on matrices:",
     UL {
	  TO (symbol +, Matrix, Matrix),
	  TO (symbol -, Matrix, Matrix),
	  TO (symbol *, RingElement, Matrix),
	  TO (symbol *, Matrix, Matrix),
	  TO (symbol ==, Matrix, Matrix),
	  TO (symbol ++, Matrix, Matrix),
	  TO (symbol **, Matrix, Matrix),
	  TO (symbol %, Matrix, Matrix),
	  TO (symbol //, Matrix, Matrix),
	  TO (symbol |, Matrix, Matrix),
	  TO (symbol ||, Matrix, Matrix),
	  TO (symbol ^, Matrix, List),
	  TO (symbol _, Matrix, List)
	  },
     "Common ways to use a matrix:",
     UL {
	  TO (cokernel, Matrix),
	  TO (image, Matrix),
	  TO (kernel, Matrix),
	  TO (homology, Matrix, Matrix),
	  }}
document {
     Key => {isWellDefined,(isWellDefined, Matrix)},
     Headline => "whether a map is well defined" }
document {
     Key => {isDirectSum,(isDirectSum, ChainComplex),(isDirectSum, GradedModule),(isDirectSum, Module)},
     Headline => "whether something is a direct sum",
     "Works for modules, graded modules, etc.  The components of the sum
     can be recovered with ", TO "components", ".",
     EXAMPLE lines ///
     	  isDirectSum ZZ^6
	  F = ZZ^2 ++ ZZ^3
     	  isDirectSum F
	  components F
     ///
     }
TEST "
assert isDirectSum (QQ^1 ++ QQ^2)
assert isDirectSum (QQ^1 ++ QQ^2)
"
document {
     Key => youngest,
     Headline => "the youngest member of a sequence",
     TT "youngest s", " -- return the youngest mutable hash table in the sequence
     ", TT "s", ", if any, else ", TO "null", "."}


document {
     Key => {
	  (symbol ++,Module,Module),
	  (symbol ++,Module,GradedModule),
	  (symbol ++,GradedModule,Module)
	  },
     Headline => "direct sum of modules",
     TT "M++N", " -- computes the direct sum of two modules (or coherent sheaves).",
     PARA{},
     EXAMPLE {
	  "R = ZZ/101[a..c];",
      	  "image vars R ++ kernel vars R",
	  },
     "Projection and inclusion maps for direct sums:",
     UL {
	  TO (symbol ^,Module,Array),
	  TO (symbol _,Module,Array)
	  },
     SeeAlso => directSum}

undocumented {
     (symbol ++,RingElement,ZZ),
     (symbol ++,ZZ,RingElement),
     (symbol ++,Matrix,ZZ),
     (symbol ++,ZZ,Matrix)
     }

document {
     Key => {
	  (symbol ++,Matrix,Matrix),
	  (symbol ++,GradedModuleMap,GradedModuleMap),
	  (symbol ++,RingElement,Matrix),
	  (symbol ++,Matrix,RingElement),
	  (symbol ++,RingElement,RingElement)
	  },
     Headline => "direct sum of maps",
     TT "f++g", " -- computes the direct sum of two maps between modules.",
     PARA{},
     "If an argument is a ring element or integer, it is promoted
     to a one by one matrix.",
     EXAMPLE {
	  "R = ZZ/101[a..c];",
      	  "vars R ++ transpose vars R",
      	  "oo^[1]",
      	  "a++b++c",
	  },
     "Selecting rows or columns of blocks:",
     UL {
	  TO (symbol ^,Matrix,Array),
	  TO (symbol _,Matrix,Array)
	  },
     SeeAlso => {directSum, (symbol |, Matrix, Matrix), (symbol ||, Matrix, Matrix)}}

document {
     Key => {directSum,(directSum, Module),(directSum, ChainComplex),(directSum, GradedModule),(directSum, List),(directSum, Matrix),(directSum, Option),(directSum, Sequence)},
     Headline => "direct sum of modules or maps",
     TT "directSum(M,N,...)", " -- forms the direct sum of matrices or modules.",
     PARA{},
     "The components can be recovered later with ", TO "components", ".",
     PARA{},
     "Projection and inclusion maps for direct sums:",
     UL {
	  TO (symbol ^,Module,Array),
	  TO (symbol _,Module,Array),
	  TO (symbol ^,Matrix,List),
	  TO (symbol _,Matrix,List)
	  },
     PARA{},
     "It sometimes happens that the user has indices for the components of
     a direct sum preferable to the usual consecutive small integers.  In 
     this case the preferred indices can be specified with code
     like ", TT "directSum(a=>M,b=>N,...)", ", as in the following example.",
     EXAMPLE {
	  ///F = directSum(a=>ZZ^1, b=>ZZ^2, c=>ZZ^3)///,
	  ///F_[b]///,
	  ///F^[c]///,
	  },
     "Similar syntax works with ", TO "++", ".",
     EXAMPLE {
	  ///F = (a => ZZ^1) ++ (b => ZZ^2)///,
	  ///F_[b]///,
	  },
     SeeAlso => {"++", "components", "indexComponents", "indices"}}
document {
     Key => indexComponents,
     Headline => "specify keys for components of a direct sum",
     TT "indexComponents", " -- a symbol used as a key in a direct sum
     under which to store a hash table in which to register preferred keys used
     to index the components of the direct sum.",
     PARA{},
     SeeAlso => {"directSum", "components", "indices"}}
-- MES: "indices" moved to functions/indices-doc.m2

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/m2 "
-- End:
