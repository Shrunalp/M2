GEO = 2^16
AUTO1 = 2^14
AUTO2 = 2^15
LEVEL = 2^13
LEVELSTRIP = 2^13 + 2^18  -- not a minimal resolution... but generally fast to compute

DESCENDING = 8
REVERSE = 16
DEGREE = 32

COMPARE'LEX = 0
COMPARE'LEX'EXTENDED = 1
COMPARE'LEX'EXTENDED2 = 2
COMPARE'ORDER = 3
COMPARE'MONORDER = 4

-- multiply by these:
SKELETON = 1
REDUCTIONS = 64

gor = (n,d) -> (
     R = ZZ/101[vars(0..n-1), MonomialSize=>8];
     F = random(R^1, R^{-d});
     ideal fromDual F
     )

R = ZZ/101 [a, b, c, d, e, f, g, h, MonomialSize => 8]
I = I83 = ideal (g^2+19*a*h-46*b*h+8*c*h-36*d*h+31*e*h+42*f*h-29*g*h+32*h^2,
    f*g+5*a*h+50*b*h-45*c*h+42*d*h-47*e*h-37*f*h-22*g*h+4*h^2,
    e*g-31*a*h+5*b*h+50*c*h-35*d*h+39*e*h-27*f*h+10*g*h+46*h^2,
    d*g-27*a*h+31*b*h+22*c*h-5*d*h-36*e*h+26*f*h-31*g*h+11*h^2,
    c*g+28*a*h-b*h+42*c*h-49*d*h+38*e*h+13*f*h+4*g*h-18*h^2,
    b*g-48*a*h-7*b*h+45*c*h+18*d*h+20*e*h-31*f*h+26*g*h+39*h^2,
    a*g-34*a*h-48*b*h-22*c*h-22*d*h+28*e*h-f*h-8*g*h-19*h^2,
    f^2-9*a*h+10*b*h+13*c*h-5*d*h-21*e*h+24*f*h-13*g*h-50*h^2,
    e*f-47*a*h-21*b*h+13*c*h+26*d*h-49*e*h-7*f*h+11*g*h-3*h^2,
    d*f-17*a*h+20*b*h+14*c*h+10*d*h-2*e*h-35*f*h-24*g*h+18*h^2,
    c*f-36*a*h+22*b*h-c*h-34*d*h+25*e*h-10*f*h-26*g*h-10*h^2,
    b*f-35*a*h-16*b*h+6*c*h+33*d*h-46*e*h-40*f*h-18*g*h+33*h^2,
    a*f-47*a*h+46*b*h-43*c*h+12*d*h-7*e*h+8*f*h+21*g*h-18*h^2,
    e^2-2*a*h+42*b*h+37*c*h+48*d*h-22*e*h+32*f*h+45*g*h+10*h^2,
    d*e+45*a*h-11*b*h-38*c*h+7*d*h-10*e*h+5*f*h-25*g*h-32*h^2,
    c*e+42*a*h-48*b*h-36*c*h-3*d*h-45*e*h+43*f*h+4*g*h+31*h^2,
    b*e-44*a*h-8*b*h-8*c*h+18*d*h+13*e*h+35*f*h-13*g*h+24*h^2,
    a*e+35*a*h-43*b*h-29*c*h+22*d*h-26*e*h-25*f*h+2*g*h+43*h^2,
    d^2+19*a*h+23*b*h-17*c*h-2*d*h-44*e*h+41*f*h+12*g*h-16*h^2,
    c*d-41*a*h-10*b*h+3*c*h-5*d*h-49*e*h-45*f*h-7*g*h-29*h^2,
    b*d+27*a*h-31*b*h-31*c*h-30*d*h+16*e*h+11*f*h+5*g*h-25*h^2,
    a*d+10*a*h+22*b*h+49*c*h-43*d*h-11*e*h+3*f*h+3*h^2,
    c^2+24*a*h-37*b*h-14*c*h+17*d*h-45*e*h-26*f*h-19*g*h-h^2,
    b*c+27*a*h+49*b*h+4*c*h+8*d*h-4*e*h+23*f*h-47*g*h+26*h^2,
    a*c-50*a*h+20*b*h+2*c*h-50*d*h-44*e*h-23*f*h+2*g*h-43*h^2,
    b^2-35*a*h+7*b*h+44*d*h-9*e*h+46*f*h-13*g*h-10*h^2,
    a*b-46*a*h+2*b*h-30*c*h+9*d*h+17*e*h-19*f*h-29*g*h+20*h^2,
    a^2+15*a*h+21*b*h-31*c*h-12*d*h-14*e*h+38*f*h+4*g*h+21*h^2)
time res I -- 23.57 sec
time res(I, Strategy=>0)  -- 25.64 sec

R = ZZ/101 [a, b, c, d, e, f, g, h, MonomialSize => 8]
I = I84 = ideal (g^2*h+19*a*h^2-45*b*h^2-21*c*h^2-42*d*h^2+32*e*h^2+39*f*h^2-30*g*h^2-4*h^3,
    f*g*h-45*a*h^2-22*b*h^2-15*c*h^2+37*d*h^2+35*e*h^2+10*f*h^2-33*g*h^2+19*h^3,
    e*g*h-34*a*h^2-43*b*h^2+2*c*h^2+42*d*h^2+8*e*h^2+19*f*h^2+23*g*h^2+45*h^3,
    d*g*h-6*a*h^2-35*b*h^2+41*c*h^2+9*d*h^2-23*e*h^2-18*f*h^2+12*g*h^2+2*h^3,
    c*g*h+40*a*h^2-36*b*h^2+27*c*h^2+28*d*h^2-40*e*h^2+46*f*h^2-22*g*h^2-3*h^3,
    b*g*h-30*a*h^2-10*b*h^2-26*c*h^2+49*d*h^2+36*e*h^2-27*f*h^2-35*g*h^2+44*h^3,
    a*g*h-47*a*h^2-24*b*h^2-5*c*h^2-14*d*h^2-30*e*h^2+f*h^2-2*g*h^2-7*h^3,
    f^2*h-11*a*h^2-30*b*h^2+50*c*h^2+46*d*h^2+45*e*h^2+f*h^2-11*g*h^2-11*h^3,
    e*f*h+14*a*h^2-17*b*h^2-5*c*h^2-4*d*h^2+45*e*h^2+33*f*h^2-41*g*h^2-14*h^3,
    d*f*h+25*a*h^2-45*b*h^2+45*c*h^2+22*d*h^2+23*e*h^2+23*f*h^2-3*g*h^2-h^3,
    c*f*h-23*a*h^2+35*b*h^2+18*c*h^2+9*d*h^2+6*e*h^2-2*f*h^2-37*g*h^2+21*h^3,
    b*f*h-38*a*h^2+18*b*h^2-25*c*h^2+16*d*h^2+5*e*h^2+10*f*h^2-50*g*h^2+5*h^3,
    a*f*h+26*a*h^2-14*b*h^2-35*c*h^2+28*d*h^2+e*h^2-36*f*h^2-42*g*h^2+29*h^3,
    e^2*h-47*a*h^2+30*b*h^2-33*c*h^2+10*d*h^2+5*e*h^2+43*f*h^2+9*g*h^2+3*h^3,
    d*e*h+16*a*h^2-39*b*h^2+38*c*h^2-48*d*h^2-42*e*h^2-46*f*h^2-6*g*h^2+18*h^3,
    c*e*h+36*a*h^2-45*b*h^2-10*c*h^2+21*d*h^2-35*e*h^2-9*f*h^2-28*g*h^2-46*h^3,
    b*e*h+29*a*h^2-46*b*h^2+38*c*h^2+40*d*h^2+8*e*h^2+40*f*h^2-33*g*h^2+3*h^3,
    a*e*h-15*a*h^2+24*b*h^2-39*c*h^2-12*d*h^2-32*e*h^2-21*f*h^2+48*g*h^2+46*h^3,
    d^2*h+50*a*h^2+2*b*h^2+30*c*h^2-26*d*h^2+26*e*h^2+17*f*h^2+26*g*h^2-14*h^3,
    c*d*h+16*a*h^2-42*b*h^2+12*c*h^2+43*d*h^2+32*e*h^2-20*f*h^2-5*g*h^2+16*h^3,
    b*d*h+20*a*h^2-41*b*h^2-28*c*h^2-15*d*h^2+35*e*h^2+14*f*h^2+26*g*h^2-46*h^3,
    a*d*h+41*a*h^2-10*b*h^2+31*c*h^2-5*d*h^2-7*e*h^2-20*f*h^2+5*g*h^2-4*h^3,
    c^2*h+35*a*h^2-30*b*h^2-50*c*h^2+9*d*h^2-40*e*h^2-38*f*h^2+8*g*h^2+5*h^3,
    b*c*h-a*h^2-7*b*h^2+36*c*h^2+26*d*h^2-24*e*h^2+39*f*h^2+19*g*h^2-22*h^3,
    a*c*h+20*a*h^2+10*b*h^2-36*c*h^2+14*d*h^2+42*e*h^2-37*f*h^2+36*g*h^2+22*h^3,
    b^2*h-48*a*h^2+10*b*h^2+50*c*h^2-27*d*h^2-33*e*h^2+30*f*h^2+20*g*h^2-17*h^3,
    a*b*h-15*a*h^2+27*b*h^2-32*c*h^2+13*d*h^2-7*e*h^2+17*f*h^2+3*g*h^2-48*h^3,
    a^2*h+26*a*h^2+19*b*h^2-50*c*h^2+15*d*h^2+10*e*h^2+24*f*h^2-7*g*h^2-10*h^3,
    g^3+32*a*h^2-46*b*h^2-50*c*h^2+31*d*h^2+21*e*h^2-4*f*h^2-26*g*h^2-16*h^3,
    f*g^2-12*a*h^2-42*b*h^2-49*c*h^2+42*d*h^2-16*e*h^2-48*f*h^2-7*g*h^2+25*h^3,
    e*g^2-24*a*h^2-39*b*h^2+34*c*h^2+19*d*h^2+25*e*h^2+50*f*h^2-3*g*h^2+13*h^3,
    d*g^2-13*a*h^2+11*b*h^2+37*c*h^2+7*d*h^2+29*e*h^2+16*f*h^2-19*g*h^2+50*h^3,
    c*g^2+34*a*h^2-30*b*h^2+23*c*h^2-d*h^2-36*e*h^2+23*f*h^2+45*g*h^2+31*h^3,
    b*g^2+20*a*h^2+22*b*h^2-50*c*h^2+3*d*h^2-18*e*h^2+3*f*h^2-37*g*h^2,
    a*g^2-8*a*h^2-7*b*h^2-18*c*h^2+23*d*h^2-10*e*h^2-27*f*h^2-23*g*h^2-34*h^3,
    f^2*g+9*a*h^2-34*b*h^2-36*c*h^2+21*d*h^2+33*e*h^2-36*f*h^2-24*g*h^2+14*h^3,
    e*f*g-19*a*h^2+33*b*h^2-20*c*h^2+12*d*h^2+43*e*h^2-50*f*h^2-27*g*h^2-40*h^3,
    d*f*g-47*a*h^2+27*b*h^2-45*c*h^2-16*d*h^2-10*e*h^2-45*f*h^2-47*g*h^2+5*h^3,
    c*f*g+50*a*h^2-11*b*h^2+25*c*h^2-17*d*h^2-42*e*h^2+19*f*h^2-18*g*h^2-39*h^3,
    b*f*g+32*a*h^2+47*b*h^2-47*c*h^2+26*d*h^2-28*e*h^2+45*f*h^2+20*g*h^2-42*h^3,
    a*f*g+35*a*h^2+12*b*h^2+33*c*h^2-24*d*h^2-47*e*h^2+49*f*h^2+34*g*h^2+23*h^3,
    e^2*g-12*a*h^2+b*h^2+9*c*h^2-7*d*h^2-9*e*h^2+28*f*h^2+34*g*h^2+3*h^3,
    d*e*g-19*a*h^2+44*b*h^2-41*c*h^2-2*d*h^2+40*e*h^2+11*f*h^2-30*g*h^2+6*h^3,
    c*e*g-8*a*h^2-24*b*h^2-28*c*h^2+34*d*h^2-19*e*h^2+f*h^2+46*g*h^2+39*h^3,
    b*e*g+50*a*h^2+44*b*h^2-7*c*h^2+37*d*h^2-31*e*h^2+7*f*h^2-23*g*h^2-48*h^3,
    a*e*g-12*a*h^2+45*b*h^2-20*d*h^2-21*e*h^2+30*f*h^2+5*g*h^2-29*h^3,
    d^2*g-16*a*h^2+20*b*h^2-19*c*h^2+41*d*h^2+36*e*h^2-27*f*h^2+19*g*h^2-20*h^3,
    c*d*g+2*a*h^2-3*b*h^2+20*c*h^2-33*d*h^2-32*e*h^2+5*f*h^2+13*g*h^2+47*h^3,
    b*d*g-21*a*h^2+17*b*h^2+50*c*h^2+10*d*h^2+39*e*h^2-48*f*h^2+g*h^2-50*h^3,
    a*d*g-13*a*h^2-9*b*h^2+41*c*h^2-6*d*h^2+46*e*h^2+36*f*h^2-8*g*h^2-15*h^3,
    c^2*g+7*a*h^2+50*b*h^2-32*c*h^2+44*d*h^2-35*e*h^2+43*f*h^2+46*g*h^2+47*h^3,
    b*c*g+a*h^2-2*b*h^2-40*c*h^2-49*d*h^2+e*h^2+30*f*h^2+22*g*h^2+36*h^3,
    a*c*g+20*a*h^2-29*b*h^2-7*c*h^2+19*d*h^2+40*e*h^2-31*f*h^2-15*g*h^2+45*h^3,
    b^2*g-28*a*h^2-26*b*h^2-21*c*h^2+38*d*h^2-36*e*h^2-5*f*h^2+44*g*h^2-17*h^3,
    a*b*g-47*a*h^2+36*b*h^2-20*c*h^2+26*d*h^2+17*e*h^2+49*f*h^2+7*g*h^2+43*h^3,
    a^2*g+42*a*h^2-47*b*h^2-6*c*h^2-32*d*h^2+17*e*h^2+29*f*h^2+12*g*h^2-28*h^3,
    f^3+50*a*h^2-15*b*h^2-41*c*h^2-d*h^2-36*e*h^2+43*f*h^2+32*g*h^2+43*h^3,
    e*f^2-44*a*h^2+28*b*h^2-13*c*h^2+44*d*h^2-5*e*h^2+16*f*h^2+35*g*h^2-43*h^3,
    d*f^2+14*a*h^2+41*b*h^2+45*c*h^2+48*d*h^2-30*e*h^2+30*f*h^2+32*g*h^2-48*h^3,
    c*f^2-11*a*h^2+7*b*h^2+45*c*h^2+44*d*h^2+46*e*h^2-22*f*h^2-47*g*h^2-7*h^3,
    b*f^2+12*a*h^2+6*b*h^2-39*c*h^2+33*d*h^2-46*e*h^2-26*f*h^2+45*g*h^2+41*h^3,
    a*f^2+42*a*h^2+47*b*h^2+45*c*h^2+5*d*h^2+8*e*h^2-46*f*h^2+40*g*h^2-40*h^3,
    e^2*f+41*a*h^2-40*c*h^2-19*d*h^2+17*e*h^2-35*f*h^2-15*g*h^2,
    d*e*f-39*a*h^2+b*h^2-20*c*h^2-45*d*h^2-19*e*h^2-17*f*h^2-22*g*h^2-33*h^3,
    c*e*f+21*a*h^2+7*b*h^2-4*c*h^2+28*d*h^2-3*e*h^2-23*f*h^2+50*g*h^2+33*h^3,
    b*e*f-43*a*h^2+50*b*h^2-7*c*h^2+27*d*h^2-48*e*h^2-30*f*h^2-36*g*h^2+24*h^3,
    a*e*f+47*a*h^2+3*b*h^2-7*c*h^2-19*d*h^2+41*e*h^2-18*f*h^2+4*g*h^2-35*h^3,
    d^2*f+37*a*h^2+23*b*h^2+19*c*h^2-28*d*h^2-22*e*h^2+19*f*h^2+24*g*h^2+h^3,
    c*d*f+33*a*h^2+20*b*h^2-45*c*h^2+36*d*h^2+17*e*h^2+17*f*h^2-23*g*h^2+38*h^3,
    b*d*f+26*a*h^2-6*b*h^2-45*c*h^2+19*d*h^2-37*e*h^2+47*f*h^2+5*g*h^2-48*h^3,
    a*d*f+24*a*h^2+38*b*h^2-25*c*h^2-36*d*h^2-48*e*h^2+13*f*h^2-34*g*h^2+47*h^3,
    c^2*f+41*a*h^2+5*b*h^2-23*c*h^2+23*d*h^2+32*e*h^2+41*f*h^2+39*g*h^2-39*h^3,
    b*c*f-3*a*h^2-35*b*h^2-14*c*h^2+12*d*h^2+30*e*h^2+48*f*h^2+7*g*h^2-26*h^3,
    a*c*f-38*a*h^2+12*b*h^2+13*c*h^2+11*d*h^2+45*e*h^2-36*f*h^2+34*g*h^2+45*h^3,
    b^2*f+10*a*h^2+33*b*h^2-10*c*h^2+50*d*h^2+36*e*h^2+36*f*h^2+42*g*h^2-39*h^3,
    a*b*f+47*a*h^2-36*b*h^2+10*c*h^2+19*d*h^2-38*e*h^2+10*f*h^2+15*g*h^2+12*h^3,
    a^2*f+7*a*h^2-25*b*h^2+41*c*h^2+48*d*h^2+50*e*h^2+24*f*h^2+18*g*h^2+40*h^3,
    e^3+28*a*h^2+31*b*h^2+36*c*h^2+2*d*h^2+41*e*h^2+30*f*h^2+31*g*h^2+11*h^3,
    d*e^2-46*a*h^2-20*b*h^2-28*c*h^2+22*d*h^2-31*e*h^2+30*f*h^2+23*g*h^2-41*h^3,
    c*e^2+13*a*h^2-44*b*h^2+c*h^2+47*d*h^2-36*e*h^2-17*f*h^2-38*g*h^2+23*h^3,
    b*e^2+38*a*h^2+7*b*h^2+5*c*h^2+44*d*h^2-34*e*h^2-11*f*h^2+5*g*h^2-41*h^3,
    a*e^2+48*a*h^2-41*b*h^2-41*c*h^2-11*d*h^2+13*e*h^2-15*f*h^2-30*g*h^2-45*h^3,
    d^2*e-3*a*h^2+b*h^2-49*c*h^2-24*d*h^2+36*e*h^2-27*f*h^2+26*g*h^2+50*h^3,
    c*d*e-17*a*h^2+50*b*h^2+22*c*h^2-35*d*h^2-8*e*h^2-39*f*h^2+29*g*h^2+45*h^3,
    b*d*e-2*a*h^2+40*b*h^2+4*c*h^2+26*d*h^2-32*e*h^2-42*f*h^2+29*g*h^2+28*h^3,
    a*d*e-26*a*h^2+6*b*h^2-27*c*h^2+31*d*h^2+43*e*h^2-43*f*h^2-2*g*h^2+17*h^3,
    c^2*e-2*a*h^2-50*b*h^2+5*c*h^2-25*d*h^2+46*e*h^2+49*f*h^2-41*g*h^2+45*h^3,
    b*c*e-30*a*h^2+32*b*h^2-16*c*h^2-28*d*h^2-47*e*h^2-34*f*h^2+27*g*h^2-49*h^3,
    a*c*e-18*a*h^2-20*b*h^2+40*c*h^2+7*d*h^2-22*e*h^2+25*f*h^2-34*g*h^2+50*h^3,
    b^2*e+26*a*h^2-26*b*h^2-6*c*h^2+3*d*h^2-17*e*h^2-27*f*h^2-16*g*h^2+50*h^3,
    a*b*e-48*a*h^2-34*b*h^2-19*c*h^2-40*d*h^2+29*e*h^2-26*f*h^2+27*g*h^2+43*h^3,
    a^2*e+35*a*h^2+15*b*h^2+c*h^2-44*d*h^2-26*e*h^2+32*f*h^2-5*g*h^2+38*h^3,
    d^3-39*a*h^2-9*b*h^2+30*c*h^2-27*d*h^2-35*e*h^2+39*f*h^2-24*g*h^2+50*h^3,
    c*d^2+8*a*h^2+40*b*h^2+48*c*h^2-50*d*h^2+29*e*h^2+28*f*h^2+3*g*h^2-40*h^3,
    b*d^2-13*a*h^2-7*b*h^2+33*c*h^2+16*d*h^2-33*e*h^2+35*f*h^2-2*g*h^2+14*h^3,
    a*d^2+4*a*h^2-25*b*h^2+6*c*h^2-46*d*h^2-14*e*h^2+34*f*h^2-g*h^2-47*h^3,
    c^2*d+49*a*h^2-5*b*h^2-16*c*h^2-36*d*h^2-45*e*h^2-34*f*h^2+11*g*h^2+8*h^3,
    b*c*d-4*a*h^2+30*b*h^2-46*c*h^2+34*d*h^2+17*e*h^2-8*f*h^2+43*g*h^2+40*h^3,
    a*c*d+27*a*h^2+34*b*h^2+28*c*h^2+40*d*h^2-39*e*h^2+38*f*h^2+7*g*h^2+9*h^3,
    b^2*d-36*a*h^2+4*b*h^2+29*c*h^2-37*d*h^2-45*e*h^2+27*f*h^2-32*g*h^2-30*h^3,
    a*b*d+39*a*h^2+22*b*h^2-6*c*h^2+34*d*h^2+44*e*h^2-30*f*h^2+40*g*h^2+41*h^3,
    a^2*d+7*a*h^2+16*b*h^2+38*c*h^2-38*d*h^2-34*e*h^2+14*f*h^2+18*g*h^2+22*h^3,
    c^3+46*a*h^2-23*b*h^2+19*c*h^2+15*d*h^2-19*e*h^2-45*f*h^2-32*g*h^2+11*h^3,
    b*c^2-31*a*h^2-8*b*h^2-c*h^2+2*d*h^2-45*e*h^2+31*f*h^2+39*g*h^2-37*h^3,
    a*c^2+36*a*h^2+2*b*h^2-38*c*h^2+21*d*h^2+42*e*h^2+33*f*h^2+11*g*h^2+16*h^3,
    b^2*c-4*a*h^2-21*b*h^2+9*c*h^2-33*d*h^2-43*e*h^2-48*f*h^2+3*g*h^2-16*h^3,
    a*b*c+16*a*h^2+19*b*h^2-4*c*h^2+16*d*h^2+16*e*h^2+22*f*h^2+13*g*h^2+37*h^3,
    a^2*c-37*a*h^2-35*b*h^2-22*c*h^2-48*d*h^2-8*e*h^2-2*f*h^2+9*g*h^2-8*h^3,
    b^3+30*a*h^2-32*b*h^2+31*c*h^2-41*d*h^2-29*e*h^2+19*f*h^2+5*g*h^2+31*h^3,
    a*b^2-14*a*h^2+50*b*h^2+21*c*h^2-15*d*h^2-17*e*h^2-50*f*h^2+34*g*h^2-41*h^3,
    a^2*b-46*a*h^2+42*b*h^2-5*c*h^2+45*d*h^2-25*e*h^2+44*f*h^2+45*g*h^2-h^3,
    a^3+48*a*h^2-b*h^2-33*c*h^2+13*d*h^2+41*e*h^2-24*f*h^2-41*g*h^2+49*h^3)
time res I -- 35.79 sec
time res(I, Strategy=>0)  -- 33.25 sec



I = gor(8,3)
time res I
I = ideal flatten entries gens I;
time res(I, Strategy=>0, SortStrategy => GEO)
time C = res(I, Strategy=>0, SortStrategy=>GEO + REDUCTIONS*(COMPARE'ORDER + DESCENDING));
time res(I, Strategy=>3)  -- long time

I83 = toString gor(8,3);
print replace(",", ",\n    ",I83)

I84 = toString gor(8,4);
print replace(",", ",\n    ",I84)

I = gor(8,4)
time res I  -- 38.75 sec

I = gor(9,3)
time res I  -- 