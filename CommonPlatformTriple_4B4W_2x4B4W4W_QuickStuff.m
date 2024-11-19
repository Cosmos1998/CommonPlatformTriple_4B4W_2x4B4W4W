sm = {{(g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
        4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3), 0, 0, 0, 
      (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, 4*c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (4*c1*kw1*l1*(n0 - n1)^2*su^2 + g*(m1 + m2E + m2I + m3E + m3I)*
         (-((n0 - n1)^2*su^2) + l1^2*(n0*n1 + su^2)))/(c1*l1^3), 0, 0}, 
     {-((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + su^2))/(c1*l1), 
      0}, {0, (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3), 0, 0, 0, 
      (32*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))^2 - 
        8*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))^2 + 
        8*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + n0*n1))/
       (8*c1*l1^3)}}
 
c1 /: c1::usage = 
     "c1 is the cosine of the angle to the vertical of the upper wires."
 
g /: g::usage = "g is local gravity."
 
l1 /: l1::usage = "l1 is the wire length from the blades on the structure to \
the top/upper/platform mass. It is interpreted as either a stretched length \
or an unstretched length depending on the value of the switch constant \
unstretched."
 
m1 /: m1::usage = "m1 is mass of top/upper/platform mass."
 
m2E /: m2E::usage = "m2E is mass of end-chain intermediate mass."
 
m2I /: m2I::usage = "m2I is mass of input-chain intermediate mass."
 
m3E /: m3E::usage = "m3E is mass of end-chain optic."
 
m3I /: m3I::usage = "m3I is mass of input-chain optic."
 
dtop /: dtop::usage = "dtop is the distance down from the upper blades (on \
the structure) to the wire attachment points for the upper wires."
 
n0 /: n0::usage = "n0 is the two-sided y-direction separation of the wire \
attachment points at the top end of the upper wires."
 
n1 /: n1::usage = "n1 is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the upper wires."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to upper mass."
 
su /: su::usage = "su is the two-sided x-direction separation of upper wires."
 
qm = {{kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0}, {0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, kbuz + c1^2*kw1 + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0, 0}, {0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E)}}
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kbizI /: kbizI::usage = "kbizI is the net vertical elasticity of the \
input-chain intermediate blades (on upper mass)."
 
c2I /: c2I::usage = "c2I is the cosine of the angle to the vertical of the \
input-chain intermediate wires."
 
kw2I /: kw2I::usage = "kw2I is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
l2I /: l2I::usage = "l2I is part of the specification of the model and \
represents the wire length from the blades on the top/upper/platform mass to \
the input-chain intermediate mass. It is interpreted as either a stretched \
length or an unstretched length depending on the value of the switch constant \
unstretched."
 
kbizE /: kbizE::usage = "kbizE is the net vertical elasticity of the \
end-chain intermediate blades (on upper mass)."
 
c2E /: c2E::usage = "c2E is the cosine of the angle to the vertical of the \
end-chain intermediate wires."
 
kw2E /: kw2E::usage = "kw2E is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
l2E /: l2E::usage = "l2E is the wire length from the blades on the \
top/upper/platform mass to the end-chain intermediate mass. It is interpreted \
as either a stretched length or an unstretched length depending on the value \
of the switch constant unstretched."
 
cqsm = {{0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
       (4*l1^2), (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, m1, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iz, I2Iyz, I2Izx, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iyz, I2Iy, 
      I2Ixy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Izx, I2Ixy, I2Ix, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ez, I2Eyz, I2Ezx, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, I2Eyz, I2Ey, I2Exy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ezx, I2Exy, I2Ex, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3I, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Iz, I3Iyz, I3Izx, 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      I3Iyz, I3Iy, I3Ixy, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Izx, I3Ixy, I3Ix, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m3E, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ez, I3Eyz, I3Ezx}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Eyz, I3Ey, I3Exy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ezx, I3Exy, I3Ex}}
 
I1z /: I1z::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1yz /: I1yz::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1zx /: I1zx::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1y /: I1y::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1xy /: I1xy::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1x /: I1x::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I2Iz /: I2Iz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iyz /: I2Iyz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Izx /: I2Izx::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iy /: I2Iy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ixy /: I2Ixy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ix /: I2Ix::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ez /: I2Ez::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Eyz /: I2Eyz::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ezx /: I2Ezx::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ey /: I2Ey::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Exy /: I2Exy::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ex /: I2Ex::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I3Iz /: I3Iz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iyz /: I3Iyz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Izx /: I3Izx::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iy /: I3Iy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ixy /: I3Ixy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ix /: I3Ix::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ez /: I3Ez::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Eyz /: I3Eyz::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ezx /: I3Ezx::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ey /: I3Ey::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Exy /: I3Exy::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ex /: I3Ex::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
xm = {{g*((m2E + m3E)/(c2E*l2E) + (m2I + m3I)/(c2I*l2I) + 
        (m1 + m2E + m2I + m3E + m3I)/(c1*l1)), 0, 0, 0, 
      g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - (d1I*(m2I + m3I))/(c2I*l2I) + 
        (d0*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 
      -((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, -((g*(m2E + m3E))/(c2E*l2E)), 0, 
      0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0}, {0, (g*(m2E + m3E))/(c2E*l2E) + (g*(m2I + m3I))/(c2I*l2I) + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + (4*kw1*(n0 - n1)^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2)/(c1*l1^3) + 
       (4*kw2E*(n2E - n3E)^2)/l2E^2 - (g*(m2E + m3E)*(n2E - n3E)^2)/
        (c2E*l2E^3) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3), 0, 
      (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2))/(c2E*l2E^3) + (chainIx*g*(m2I + m3I)*
         (l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 0, 0, 
      (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 0, 0, 
      (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 4*c1^2*kw1 + 4*c2E^2*kw2E + 4*c2I^2*kw2I + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, -4*c2E^2*chainEx*kw2E - 
       (chainEx*g*(m2E + m3E))/(c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, 0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 0, 0, 0, 0, -4*c2E^2*kw2E - 
       (g*(m2E + m3E))/(c2E*l2E) + (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3) + 
       (chainIx*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      ((g*(m1 + m2E + m2I + m3E + m3I)*(-((n0 - n1)^2*su^2) + 
           l1^2*(n0*n1 + su^2)))/c1 + 
        (l1*((g*l1^2*(m2I + m3I)*(chainIx^2*(l2I^2 - (n2I - n3I)^2) - 
              (n2I - n3I)^2*siI^2 + l2I^2*(n2I*n3I + siI^2)))/c2I + 
           (l2I*(chainEx^2*l1^2*l2I^2*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^
                   2) + 4*c2E*kw2E*l2E*(n2E - n3E)^2) + g*l1^2*l2I^2*(m2E + 
                m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)) + 
              4*c2E*l2E*(chainIx^2*kw2I*l1^2*l2E^2*(n2I - n3I)^2 + 
                kw2E*l1^2*l2I^2*(n2E - n3E)^2*siE^2 + l2E^2*
                 (kw2I*l1^2*(n2I - n3I)^2*siI^2 + kw1*l2I^2*(n0 - n1)^2*
                   su^2))))/(c2E*l2E^3)))/l2I^3)/l1^3, 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + g*(m2I + m3I)*
          (-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/(c2I*l2I^3)), 
      0, (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + g*(m2E + m3E)*
          (-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/(c2E*l2E^3)), 
      0, (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0}, {g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - 
        (d1I*(m2I + m3I))/(c2I*l2I) + (d0*(m1 + m2E + m2I + m3E + m3I))/
         (c1*l1)), 0, -4*c2E^2*chainEx*kw2E - (chainEx*g*(m2E + m3E))/
        (c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, g*(d1E*(m2E + m3E) + d1I*(m2I + m3I) + 
         d0*(m1 + m2E + m2I + m3E + m3I)) + 4*c2E^2*kw2E*
        (chainEx^2 + siE^2) - (c2E*g*(m2E + m3E)*(chainEx^2 + siE^2))/l2E + 
       (g*(m2E + m3E)*(chainEx^2 + d1E^2 + siE^2))/(c2E*l2E) + 
       4*c2I^2*kw2I*(chainIx^2 + siI^2) - 
       (c2I*g*(m2I + m3I)*(chainIx^2 + siI^2))/l2I + 
       (g*(m2I + m3I)*(chainIx^2 + d1I^2 + siI^2))/(c2I*l2I) + 
       4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + su^2))/(c1*l1), 0, 
      (d1I*g*(m2I + m3I))/(c2I*l2I), 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (d1I*d2I*g*(m2I + m3I) + 
        (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI^2)/
       (c2I*l2I), 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, (d1E*d2E*g*(m2E + m3E) + 
        (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE^2)/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + c1*d0*l1 + n0*n1))/
        (c1*l1) + (4*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1))^2)/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/(c2E*l2E^3) + 
       (g*(m2E + m3E)*(d1E^2 + c2E*d1E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/(c2I*l2I^3) + 
       (g*(m2I + m3I)*(d1I^2 + c2I*d1I*l2I + n2I*n3I))/(c2I*l2I), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, 0, 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*n2E*(n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, (d1I*g*(m2I + m3I))/(c2I*l2I), 
      0, (g*(m2I + m3I))/(c2I*l2I) + (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
         g*m3I)/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 0, 0, 0, 0, 0, 
      0}, {0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 
      -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, (g*(m2I + m3I))/(c2I*l2I) + 
       (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3) + (2*kw3I*(n4I - n5I)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (n4I - n5I)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
         g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
          (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + 
         g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3)), 0, 0, 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, ((16*kw2I*(n2I - n3I)^2*siI^2)/l2I^2 - 
        (4*g*(m2I + m3I)*(n2I - n3I)^2*siI^2)/(c2I*l2I^3) + 
        (4*g*(m2I + m3I)*(n2I*n3I + siI^2))/(c2I*l2I) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) - 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n5I*siI - n4I*slI)^2)/(c3I*(c3I^2*l3I^2)^(3/2)) - 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n5I*siI - n4I*slI)^2)/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) + 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[l3I^2 + (siI - slI)^2]))/4, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {-((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      (d1I*d2I*g*(m2I + m3I) + (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + 
          c2I^2*g*(m2I + m3I))*siI^2)/(c2I*l2I), 0, 
      (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (-2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I*siI^2 - 
       (c2I*g*(m2I + m3I)*siI^2)/l2I + 
       (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + siI^2))/(c2I*l2I) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/
        (l3I^2 + (siI - slI)^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I)*(d3I^2 + c3I*d3I*l3I + siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I^2 + c3I*d3I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((8*g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + n2I*n3I))/(c2I*l2I) + 
        (32*kw2I*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/l2I^2 - 
        (8*g*(m2I + m3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/(c2I*l2I^3) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I^2*l3I^2) - 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I*(c3I^2*l3I^2)^(3/2)) + 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (d3I^2 + c3I*d3I*l3I + n4I*n5I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
        (4*(c3I*l3I*n4I + d3I*(n4I - n5I))^2*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(l3I^2 + (siI - slI)^2) + 
        (4*(d3I^2 + c3I*d3I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*Sqrt[l3I^2 + (siI - slI)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 
      0, 0, 0, 0, 0, 0, 0, (g*(m2E + m3E))/(c2E*l2E) + 
       (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0}, 
     {0, -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*n2E*
         (n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E))/(c2E*l2E) + (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
         g*m3E)/(2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)^2)/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)^2)/(c2E*l2E^3) + (2*kw3E*(n4E - n5E)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (n4E - n5E)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, 
     {0, 0, -4*c2E^2*kw2E - (g*(m2E + m3E))/(c2E*l2E) + 
       (c2E*g*(m2E + m3E))/l2E, 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*
        ((c3E^2*l3E^2)^(3/2) - (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/
       (2*(c3E^2*l3E^2)^(3/2)*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      4*c2E^2*kw2E + (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
         g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
          (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, 
     {0, 0, 0, -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + 
         g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, ((16*kw2E*(n2E - n3E)^2*siE^2)/l2E^2 - 
        (4*g*(m2E + m3E)*(n2E - n3E)^2*siE^2)/(c2E*l2E^3) + 
        (4*g*(m2E + m3E)*(n2E*n3E + siE^2))/(c2E*l2E) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) - 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n5E*siE - n4E*slE)^2)/(c3E*(c3E^2*l3E^2)^(3/2)) - 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n5E*siE - n4E*slE)^2)/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) + 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[l3E^2 + (siE - slE)^2]))/4, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {-((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 
      (d1E*d2E*g*(m2E + m3E) + (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
          c2E^2*g*(m2E + m3E))*siE^2)/(c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 
      (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (-2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 4*c2E^2*kw2E*siE^2 - 
       (c2E*g*(m2E + m3E)*siE^2)/l2E + 
       (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + siE^2))/(c2E*l2E) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/
        (l3E^2 + (siE - slE)^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
          g*m3E)*(d3E^2 + c3E*d3E*l3E + siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E^2 + c3E*d3E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0}, 
     {0, (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 
      (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((8*g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + n2E*n3E))/(c2E*l2E) + 
        (32*kw2E*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/l2E^2 - 
        (8*g*(m2E + m3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/(c2E*l2E^3) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E^2*l3E^2) - 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E*(c3E^2*l3E^2)^(3/2)) + 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (d3E^2 + c3E*d3E*l3E + n4E*n5E))/(c3E*Sqrt[c3E^2*l3E^2]) - 
        (4*(c3E*l3E*n4E + d3E*(n4E - n5E))^2*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(l3E^2 + (siE - slE)^2) + 
        (4*(d3E^2 + c3E*d3E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*Sqrt[l3E^2 + (siE - slE)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
        g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) - 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) - 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         slI)/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (g*m3I*(-((Sqrt[c3I^2*l3I^2]*(n5I*siI - n4I*slI)^2)/l3I^4) + 
          (c3I^4*(n4I*n5I + siI*slI))/Sqrt[c3I^2*l3I^2] + 
          (c3I^4*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
             siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + 
             n4I*n5I*(siI^2 + slI^2)))/(l3I^2 + (siI - slI)^2)^(3/2)))/
        (2*c3I^5) + 2*kw3I*(siI*((Sqrt[c3I^2*l3I^2]*n5I^2*siI)/
            (c3I^4*l3I^3) + (l3I*n5I^2*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
           2*slI - (l3I*slI)/Sqrt[c3I^2*l3I^2] - (l3I*slI)/
            Sqrt[l3I^2 + (siI - slI)^2]) + 
         n4I^2*((Sqrt[c3I^2*l3I^2]*slI^2)/(c3I^4*l3I^3) + 
           (l3I*slI^2)/(l3I^2 + (siI - slI)^2)^(3/2)) + 
         n4I*n5I*(2 - l3I/Sqrt[c3I^2*l3I^2] - (2*Sqrt[c3I^2*l3I^2]*siI*slI)/
            (c3I^4*l3I^3) - (l3I*(l3I^2 + siI^2 + slI^2))/
            (l3I^2 + (siI - slI)^2)^(3/2))), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
           g*m3I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/
        (2*c3I^4*l3I^3) - (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^
         (3/2) - (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d4I^2 + c3I*d4I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I))/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          n4I*n5I))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((c3I*l3I*n5I + d4I*(-n4I + n5I))^2*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(l3I^2 + (siI - slI)^2) + 
       ((d4I^2 + c3I*d4I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
        g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) - 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) - 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (g*m3E*(-((Sqrt[c3E^2*l3E^2]*(n5E*siE - n4E*slE)^2)/l3E^4) + 
          (c3E^4*(n4E*n5E + siE*slE))/Sqrt[c3E^2*l3E^2] + 
          (c3E^4*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
             siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + 
             n4E*n5E*(siE^2 + slE^2)))/(l3E^2 + (siE - slE)^2)^(3/2)))/
        (2*c3E^5) + 2*kw3E*(siE*((Sqrt[c3E^2*l3E^2]*n5E^2*siE)/
            (c3E^4*l3E^3) + (l3E*n5E^2*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
           2*slE - (l3E*slE)/Sqrt[c3E^2*l3E^2] - (l3E*slE)/
            Sqrt[l3E^2 + (siE - slE)^2]) + 
         n4E^2*((Sqrt[c3E^2*l3E^2]*slE^2)/(c3E^4*l3E^3) + 
           (l3E*slE^2)/(l3E^2 + (siE - slE)^2)^(3/2)) + 
         n4E*n5E*(2 - l3E/Sqrt[c3E^2*l3E^2] - (2*Sqrt[c3E^2*l3E^2]*siE*slE)/
            (c3E^4*l3E^3) - (l3E*(l3E^2 + siE^2 + slE^2))/
            (l3E^2 + (siE - slE)^2)^(3/2))), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0, (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/
        (2*c3E^4*l3E^3) - (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^
         (3/2) - (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d4E^2 + c3E*d4E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          n4E*n5E))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((c3E*l3E*n5E + d4E*(-n4E + n5E))^2*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(l3E^2 + (siE - slE)^2) + 
       ((d4E^2 + c3E*d4E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}}
 
d1E /: d1E::usage = "d1E is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the end-chain \
intermediate wires."
 
d1I /: d1I::usage = "d1I is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the input-chain \
intermediate wires."
 
d0 /: d0::usage = "d0 is the distance up from the FRP of the upper mass to \
the wire attachment points for the upper wires."
 
d2I /: d2I::usage = "d2I is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the input-chain intermediate wires."
 
d2E /: d2E::usage = "d2E is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the end-chainintermediate wires."
 
n2E /: n2E::usage = "n2E is the two-sided y-direction separation of the wire \
attachment points at the top end of the end-chain intermediate wires."
 
n3E /: n3E::usage = "n3E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain intermediate wires."
 
n2I /: n2I::usage = "n2I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain intermediate wires."
 
n3I /: n3I::usage = "n3I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain intermediate wires."
 
chainEx /: chainEx::usage = "chainEx is the x offset of the end chain, \
relative to the centre of the upper mass."
 
chainIx /: chainIx::usage = "chainIx is the x offset of the input chain, \
relative to the centre of the upper mass."
 
siI /: siI::usage = "siI is the two-sided x-direction separation of \
input-chain intermediate wires."
 
siE /: siE::usage = "siE is the two-sided x-direction separation of end-chain \
intermediate wires."
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
cqxm = {{0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
         (n0 - n1))/l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
        (n0 - n1))/(4*l1^2), (-4*c1^3*kw1*l1 - 
        g*(m1 + m2E + m2I + m3E + m3I) + c1^2*g*(m1 + m2E + m2I + m3E + m3I))/
       (4*c1*l1), ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*
        su)/(4*l1^2), ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx + siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/l2I^2, 
      ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx - siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/(4*l2I^2), 
      ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx + siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
       (4*l2I^2), ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx - siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
        l2I^2, ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx + siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx - siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/(4*l2E^2), 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx + siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E)*siE)/(4*l2E^2), ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
         c2E^2*g*(m2E + m3E))*siE)/(4*c2E*l2E), 
      (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 4*c2E^3*kw2E*l2E^2*n3E + 
        g*l2E*(m2E + m3E)*n3E - c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + 
          g*(m2E + m3E)*n3E))/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx - siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
        4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
        c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0}, 
     {0, -((g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
         4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3)), 0, 0, 0, 
      (dtop*(-(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2)) - 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, -4*c1^2*kw1 - (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (-8*c1*kw1*l1*(n0 - n1)^2*su^2 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2*su^2 - 
        2*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(n0*n1 + su^2))/(2*c1*l1^3), 0, 
      0}, {-((d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      -4*c1^2*kw1*su^2 + (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - su^2))/(c1*l1), 0}, 
     {0, (d0*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*n1)/(c1*l1^3), 0, 0, 0, 
      (g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - n0*n1) - 
        4*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)) + 
        g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3)}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21I, M31E, M31E}
 
g /: g::usage = "g is local gravity."
 
m1 /: m1::usage = "m1 is mass of top/upper/platform mass."
 
m2I /: m2I::usage = "m2I is mass of input-chain intermediate mass."
 
m2E /: m2E::usage = "m2E is mass of end-chain intermediate mass."
 
m3I /: m3I::usage = "m3I is mass of input-chain optic."
 
m3E /: m3E::usage = "m3E is mass of end-chain optic."
 
I1x /: I1x::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1y /: I1y::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1z /: I1z::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1xy /: I1xy::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1yz /: I1yz::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1zx /: I1zx::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I2Ix /: I2Ix::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iy /: I2Iy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iz /: I2Iz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ixy /: I2Ixy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iyz /: I2Iyz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Izx /: I2Izx::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ex /: I2Ex::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ey /: I2Ey::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ez /: I2Ez::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Exy /: I2Exy::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Eyz /: I2Eyz::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ezx /: I2Ezx::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I3Ix /: I3Ix::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iy /: I3Iy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iz /: I3Iz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ixy /: I3Ixy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iyz /: I3Iyz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Izx /: I3Izx::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ex /: I3Ex::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ey /: I3Ey::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ez /: I3Ez::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Exy /: I3Exy::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Eyz /: I3Eyz::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ezx /: I3Ezx::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
dtop /: dtop::usage = "dtop is the distance down from the upper blades (on \
the structure) to the wire attachment points for the upper wires."
 
d0 /: d0::usage = "d0 is the distance up from the FRP of the upper mass to \
the wire attachment points for the upper wires."
 
d1I /: d1I::usage = "d1I is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the input-chain \
intermediate wires."
 
d1E /: d1E::usage = "d1E is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the end-chain \
intermediate wires."
 
d2I /: d2I::usage = "d2I is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the input-chain intermediate wires."
 
d2E /: d2E::usage = "d2E is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the end-chainintermediate wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
chainIx /: chainIx::usage = "chainIx is the x offset of the input chain, \
relative to the centre of the upper mass."
 
chainEx /: chainEx::usage = "chainEx is the x offset of the end chain, \
relative to the centre of the upper mass."
 
n0 /: n0::usage = "n0 is the two-sided y-direction separation of the wire \
attachment points at the top end of the upper wires."
 
n1 /: n1::usage = "n1 is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the upper wires."
 
n2I /: n2I::usage = "n2I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain intermediate wires."
 
n2E /: n2E::usage = "n2E is the two-sided y-direction separation of the wire \
attachment points at the top end of the end-chain intermediate wires."
 
n3I /: n3I::usage = "n3I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain intermediate wires."
 
n3E /: n3E::usage = "n3E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain intermediate wires."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
su /: su::usage = "su is the two-sided x-direction separation of upper wires."
 
siI /: siI::usage = "siI is the two-sided x-direction separation of \
input-chain intermediate wires."
 
siE /: siE::usage = "siE is the two-sided x-direction separation of end-chain \
intermediate wires."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kbizI /: kbizI::usage = "kbizI is the net vertical elasticity of the \
input-chain intermediate blades (on upper mass)."
 
kbizE /: kbizE::usage = "kbizE is the net vertical elasticity of the \
end-chain intermediate blades (on upper mass)."
 
l1 /: l1::usage = "l1 is the wire length from the blades on the structure to \
the top/upper/platform mass. It is interpreted as either a stretched length \
or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2I /: l2I::usage = "l2I is part of the specification of the model and \
represents the wire length from the blades on the top/upper/platform mass to \
the input-chain intermediate mass. It is interpreted as either a stretched \
length or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2E /: l2E::usage = "l2E is the wire length from the blades on the \
top/upper/platform mass to the end-chain intermediate mass. It is interpreted \
as either a stretched length or an unstretched length depending on the value \
of the switch constant unstretched."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to upper mass."
 
kw2I /: kw2I::usage = "kw2I is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw2E /: kw2E::usage = "kw2E is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
Y1 /: Y1::usage = "Y1 is Young's modulus of upper wires."
 
Y2I /: Y2I::usage = 
     "Y2I is Young's modulus of input-chain intermediate wires."
 
Y2E /: Y2E::usage = "Y2E is Young's modulus of end-chain intermediate wires."
 
Y3I /: Y3I::usage = "Y3I is Young's modulus of input-chain lower wires."
 
Y3E /: Y3E::usage = "Y3E is Young's modulus of end-chain lower wires."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to upper mass in direction \"1\"."
 
M21I /: M21I::usage = "M21I is the moment of area of the input-chain \
intermediate wires in direction \"1\""
 
M31E /: M31E::usage = "M31E is the moment of area of the end-chain lower \
wires/ribbons/rods in direction \"1\""
 
sm = {{(g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
        4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3), 0, 0, 0, 
      (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, 4*c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (4*c1*kw1*l1*(n0 - n1)^2*su^2 + g*(m1 + m2E + m2I + m3E + m3I)*
         (-((n0 - n1)^2*su^2) + l1^2*(n0*n1 + su^2)))/(c1*l1^3), 0, 0}, 
     {-((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + su^2))/(c1*l1), 
      0}, {0, (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3), 0, 0, 0, 
      (32*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))^2 - 
        8*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))^2 + 
        8*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + n0*n1))/
       (8*c1*l1^3)}}
 
c1 /: c1::usage = 
     "c1 is the cosine of the angle to the vertical of the upper wires."
 
qm = {{kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0}, {0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, kbuz + c1^2*kw1 + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0, 0}, {0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E)}}
 
c2I /: c2I::usage = "c2I is the cosine of the angle to the vertical of the \
input-chain intermediate wires."
 
c2E /: c2E::usage = "c2E is the cosine of the angle to the vertical of the \
end-chain intermediate wires."
 
cqsm = {{0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
       (4*l1^2), (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, m1, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iz, I2Iyz, I2Izx, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iyz, I2Iy, 
      I2Ixy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Izx, I2Ixy, I2Ix, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ez, I2Eyz, I2Ezx, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, I2Eyz, I2Ey, I2Exy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ezx, I2Exy, I2Ex, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3I, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Iz, I3Iyz, I3Izx, 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      I3Iyz, I3Iy, I3Ixy, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Izx, I3Ixy, I3Ix, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m3E, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ez, I3Eyz, I3Ezx}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Eyz, I3Ey, I3Exy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ezx, I3Exy, I3Ex}}
 
xm = {{g*((m2E + m3E)/(c2E*l2E) + (m2I + m3I)/(c2I*l2I) + 
        (m1 + m2E + m2I + m3E + m3I)/(c1*l1)), 0, 0, 0, 
      g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - (d1I*(m2I + m3I))/(c2I*l2I) + 
        (d0*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 
      -((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, -((g*(m2E + m3E))/(c2E*l2E)), 0, 
      0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0}, {0, (g*(m2E + m3E))/(c2E*l2E) + (g*(m2I + m3I))/(c2I*l2I) + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + (4*kw1*(n0 - n1)^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2)/(c1*l1^3) + 
       (4*kw2E*(n2E - n3E)^2)/l2E^2 - (g*(m2E + m3E)*(n2E - n3E)^2)/
        (c2E*l2E^3) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3), 0, 
      (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2))/(c2E*l2E^3) + (chainIx*g*(m2I + m3I)*
         (l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 0, 0, 
      (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 0, 0, 
      (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 4*c1^2*kw1 + 4*c2E^2*kw2E + 4*c2I^2*kw2I + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, -4*c2E^2*chainEx*kw2E - 
       (chainEx*g*(m2E + m3E))/(c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, 0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 0, 0, 0, 0, -4*c2E^2*kw2E - 
       (g*(m2E + m3E))/(c2E*l2E) + (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3) + 
       (chainIx*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      ((g*(m1 + m2E + m2I + m3E + m3I)*(-((n0 - n1)^2*su^2) + 
           l1^2*(n0*n1 + su^2)))/c1 + 
        (l1*((g*l1^2*(m2I + m3I)*(chainIx^2*(l2I^2 - (n2I - n3I)^2) - 
              (n2I - n3I)^2*siI^2 + l2I^2*(n2I*n3I + siI^2)))/c2I + 
           (l2I*(chainEx^2*l1^2*l2I^2*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^
                   2) + 4*c2E*kw2E*l2E*(n2E - n3E)^2) + g*l1^2*l2I^2*(m2E + 
                m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)) + 
              4*c2E*l2E*(chainIx^2*kw2I*l1^2*l2E^2*(n2I - n3I)^2 + 
                kw2E*l1^2*l2I^2*(n2E - n3E)^2*siE^2 + l2E^2*
                 (kw2I*l1^2*(n2I - n3I)^2*siI^2 + kw1*l2I^2*(n0 - n1)^2*
                   su^2))))/(c2E*l2E^3)))/l2I^3)/l1^3, 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + g*(m2I + m3I)*
          (-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/(c2I*l2I^3)), 
      0, (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + g*(m2E + m3E)*
          (-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/(c2E*l2E^3)), 
      0, (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0}, {g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - 
        (d1I*(m2I + m3I))/(c2I*l2I) + (d0*(m1 + m2E + m2I + m3E + m3I))/
         (c1*l1)), 0, -4*c2E^2*chainEx*kw2E - (chainEx*g*(m2E + m3E))/
        (c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, g*(d1E*(m2E + m3E) + d1I*(m2I + m3I) + 
         d0*(m1 + m2E + m2I + m3E + m3I)) + 4*c2E^2*kw2E*
        (chainEx^2 + siE^2) - (c2E*g*(m2E + m3E)*(chainEx^2 + siE^2))/l2E + 
       (g*(m2E + m3E)*(chainEx^2 + d1E^2 + siE^2))/(c2E*l2E) + 
       4*c2I^2*kw2I*(chainIx^2 + siI^2) - 
       (c2I*g*(m2I + m3I)*(chainIx^2 + siI^2))/l2I + 
       (g*(m2I + m3I)*(chainIx^2 + d1I^2 + siI^2))/(c2I*l2I) + 
       4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + su^2))/(c1*l1), 0, 
      (d1I*g*(m2I + m3I))/(c2I*l2I), 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (d1I*d2I*g*(m2I + m3I) + 
        (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI^2)/
       (c2I*l2I), 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, (d1E*d2E*g*(m2E + m3E) + 
        (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE^2)/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + c1*d0*l1 + n0*n1))/
        (c1*l1) + (4*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1))^2)/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/(c2E*l2E^3) + 
       (g*(m2E + m3E)*(d1E^2 + c2E*d1E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/(c2I*l2I^3) + 
       (g*(m2I + m3I)*(d1I^2 + c2I*d1I*l2I + n2I*n3I))/(c2I*l2I), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, 0, 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*n2E*(n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, (d1I*g*(m2I + m3I))/(c2I*l2I), 
      0, (g*(m2I + m3I))/(c2I*l2I) + (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
         g*m3I)/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 0, 0, 0, 0, 0, 
      0}, {0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 
      -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, (g*(m2I + m3I))/(c2I*l2I) + 
       (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3) + (2*kw3I*(n4I - n5I)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (n4I - n5I)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
         g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
          (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + 
         g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3)), 0, 0, 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, ((16*kw2I*(n2I - n3I)^2*siI^2)/l2I^2 - 
        (4*g*(m2I + m3I)*(n2I - n3I)^2*siI^2)/(c2I*l2I^3) + 
        (4*g*(m2I + m3I)*(n2I*n3I + siI^2))/(c2I*l2I) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) - 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n5I*siI - n4I*slI)^2)/(c3I*(c3I^2*l3I^2)^(3/2)) - 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n5I*siI - n4I*slI)^2)/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) + 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[l3I^2 + (siI - slI)^2]))/4, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {-((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      (d1I*d2I*g*(m2I + m3I) + (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + 
          c2I^2*g*(m2I + m3I))*siI^2)/(c2I*l2I), 0, 
      (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (-2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I*siI^2 - 
       (c2I*g*(m2I + m3I)*siI^2)/l2I + 
       (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + siI^2))/(c2I*l2I) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/
        (l3I^2 + (siI - slI)^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I)*(d3I^2 + c3I*d3I*l3I + siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I^2 + c3I*d3I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((8*g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + n2I*n3I))/(c2I*l2I) + 
        (32*kw2I*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/l2I^2 - 
        (8*g*(m2I + m3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/(c2I*l2I^3) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I^2*l3I^2) - 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I*(c3I^2*l3I^2)^(3/2)) + 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (d3I^2 + c3I*d3I*l3I + n4I*n5I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
        (4*(c3I*l3I*n4I + d3I*(n4I - n5I))^2*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(l3I^2 + (siI - slI)^2) + 
        (4*(d3I^2 + c3I*d3I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*Sqrt[l3I^2 + (siI - slI)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 
      0, 0, 0, 0, 0, 0, 0, (g*(m2E + m3E))/(c2E*l2E) + 
       (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0}, 
     {0, -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*n2E*
         (n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E))/(c2E*l2E) + (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
         g*m3E)/(2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)^2)/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)^2)/(c2E*l2E^3) + (2*kw3E*(n4E - n5E)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (n4E - n5E)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, 
     {0, 0, -4*c2E^2*kw2E - (g*(m2E + m3E))/(c2E*l2E) + 
       (c2E*g*(m2E + m3E))/l2E, 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*
        ((c3E^2*l3E^2)^(3/2) - (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/
       (2*(c3E^2*l3E^2)^(3/2)*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      4*c2E^2*kw2E + (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
         g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
          (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, 
     {0, 0, 0, -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + 
         g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, ((16*kw2E*(n2E - n3E)^2*siE^2)/l2E^2 - 
        (4*g*(m2E + m3E)*(n2E - n3E)^2*siE^2)/(c2E*l2E^3) + 
        (4*g*(m2E + m3E)*(n2E*n3E + siE^2))/(c2E*l2E) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) - 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n5E*siE - n4E*slE)^2)/(c3E*(c3E^2*l3E^2)^(3/2)) - 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n5E*siE - n4E*slE)^2)/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) + 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[l3E^2 + (siE - slE)^2]))/4, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {-((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 
      (d1E*d2E*g*(m2E + m3E) + (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
          c2E^2*g*(m2E + m3E))*siE^2)/(c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 
      (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (-2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 4*c2E^2*kw2E*siE^2 - 
       (c2E*g*(m2E + m3E)*siE^2)/l2E + 
       (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + siE^2))/(c2E*l2E) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/
        (l3E^2 + (siE - slE)^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
          g*m3E)*(d3E^2 + c3E*d3E*l3E + siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E^2 + c3E*d3E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0}, 
     {0, (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 
      (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((8*g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + n2E*n3E))/(c2E*l2E) + 
        (32*kw2E*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/l2E^2 - 
        (8*g*(m2E + m3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/(c2E*l2E^3) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E^2*l3E^2) - 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E*(c3E^2*l3E^2)^(3/2)) + 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (d3E^2 + c3E*d3E*l3E + n4E*n5E))/(c3E*Sqrt[c3E^2*l3E^2]) - 
        (4*(c3E*l3E*n4E + d3E*(n4E - n5E))^2*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(l3E^2 + (siE - slE)^2) + 
        (4*(d3E^2 + c3E*d3E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*Sqrt[l3E^2 + (siE - slE)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
        g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) - 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) - 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         slI)/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (g*m3I*(-((Sqrt[c3I^2*l3I^2]*(n5I*siI - n4I*slI)^2)/l3I^4) + 
          (c3I^4*(n4I*n5I + siI*slI))/Sqrt[c3I^2*l3I^2] + 
          (c3I^4*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
             siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + 
             n4I*n5I*(siI^2 + slI^2)))/(l3I^2 + (siI - slI)^2)^(3/2)))/
        (2*c3I^5) + 2*kw3I*(siI*((Sqrt[c3I^2*l3I^2]*n5I^2*siI)/
            (c3I^4*l3I^3) + (l3I*n5I^2*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
           2*slI - (l3I*slI)/Sqrt[c3I^2*l3I^2] - (l3I*slI)/
            Sqrt[l3I^2 + (siI - slI)^2]) + 
         n4I^2*((Sqrt[c3I^2*l3I^2]*slI^2)/(c3I^4*l3I^3) + 
           (l3I*slI^2)/(l3I^2 + (siI - slI)^2)^(3/2)) + 
         n4I*n5I*(2 - l3I/Sqrt[c3I^2*l3I^2] - (2*Sqrt[c3I^2*l3I^2]*siI*slI)/
            (c3I^4*l3I^3) - (l3I*(l3I^2 + siI^2 + slI^2))/
            (l3I^2 + (siI - slI)^2)^(3/2))), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
           g*m3I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/
        (2*c3I^4*l3I^3) - (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^
         (3/2) - (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d4I^2 + c3I*d4I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I))/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          n4I*n5I))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((c3I*l3I*n5I + d4I*(-n4I + n5I))^2*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(l3I^2 + (siI - slI)^2) + 
       ((d4I^2 + c3I*d4I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
        g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) - 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) - 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (g*m3E*(-((Sqrt[c3E^2*l3E^2]*(n5E*siE - n4E*slE)^2)/l3E^4) + 
          (c3E^4*(n4E*n5E + siE*slE))/Sqrt[c3E^2*l3E^2] + 
          (c3E^4*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
             siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + 
             n4E*n5E*(siE^2 + slE^2)))/(l3E^2 + (siE - slE)^2)^(3/2)))/
        (2*c3E^5) + 2*kw3E*(siE*((Sqrt[c3E^2*l3E^2]*n5E^2*siE)/
            (c3E^4*l3E^3) + (l3E*n5E^2*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
           2*slE - (l3E*slE)/Sqrt[c3E^2*l3E^2] - (l3E*slE)/
            Sqrt[l3E^2 + (siE - slE)^2]) + 
         n4E^2*((Sqrt[c3E^2*l3E^2]*slE^2)/(c3E^4*l3E^3) + 
           (l3E*slE^2)/(l3E^2 + (siE - slE)^2)^(3/2)) + 
         n4E*n5E*(2 - l3E/Sqrt[c3E^2*l3E^2] - (2*Sqrt[c3E^2*l3E^2]*siE*slE)/
            (c3E^4*l3E^3) - (l3E*(l3E^2 + siE^2 + slE^2))/
            (l3E^2 + (siE - slE)^2)^(3/2))), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0, (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/
        (2*c3E^4*l3E^3) - (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^
         (3/2) - (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d4E^2 + c3E*d4E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          n4E*n5E))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((c3E*l3E*n5E + d4E*(-n4E + n5E))^2*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(l3E^2 + (siE - slE)^2) + 
       ((d4E^2 + c3E*d4E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}}
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
cqxm = {{0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
         (n0 - n1))/l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
        (n0 - n1))/(4*l1^2), (-4*c1^3*kw1*l1 - 
        g*(m1 + m2E + m2I + m3E + m3I) + c1^2*g*(m1 + m2E + m2I + m3E + m3I))/
       (4*c1*l1), ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*
        su)/(4*l1^2), ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx + siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/l2I^2, 
      ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx - siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/(4*l2I^2), 
      ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx + siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
       (4*l2I^2), ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx - siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
        l2I^2, ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx + siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx - siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/(4*l2E^2), 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx + siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E)*siE)/(4*l2E^2), ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
         c2E^2*g*(m2E + m3E))*siE)/(4*c2E*l2E), 
      (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 4*c2E^3*kw2E*l2E^2*n3E + 
        g*l2E*(m2E + m3E)*n3E - c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + 
          g*(m2E + m3E)*n3E))/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx - siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
        4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
        c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0}, 
     {0, -((g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
         4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3)), 0, 0, 0, 
      (dtop*(-(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2)) - 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, -4*c1^2*kw1 - (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (-8*c1*kw1*l1*(n0 - n1)^2*su^2 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2*su^2 - 
        2*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(n0*n1 + su^2))/(2*c1*l1^3), 0, 
      0}, {-((d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      -4*c1^2*kw1*su^2 + (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - su^2))/(c1*l1), 0}, 
     {0, (d0*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*n1)/(c1*l1^3), 0, 0, 0, 
      (g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - n0*n1) - 
        4*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)) + 
        g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3)}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
g /: g::usage = "g is local gravity."
 
m1 /: m1::usage = "m1 is mass of top/upper/platform mass."
 
m2I /: m2I::usage = "m2I is mass of input-chain intermediate mass."
 
m2E /: m2E::usage = "m2E is mass of end-chain intermediate mass."
 
m3I /: m3I::usage = "m3I is mass of input-chain optic."
 
m3E /: m3E::usage = "m3E is mass of end-chain optic."
 
I1x /: I1x::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1y /: I1y::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1z /: I1z::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1xy /: I1xy::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1yz /: I1yz::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1zx /: I1zx::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I2Ix /: I2Ix::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iy /: I2Iy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iz /: I2Iz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ixy /: I2Ixy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iyz /: I2Iyz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Izx /: I2Izx::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ex /: I2Ex::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ey /: I2Ey::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ez /: I2Ez::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Exy /: I2Exy::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Eyz /: I2Eyz::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ezx /: I2Ezx::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I3Ix /: I3Ix::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iy /: I3Iy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iz /: I3Iz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ixy /: I3Ixy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iyz /: I3Iyz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Izx /: I3Izx::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ex /: I3Ex::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ey /: I3Ey::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ez /: I3Ez::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Exy /: I3Exy::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Eyz /: I3Eyz::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ezx /: I3Ezx::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
dtop /: dtop::usage = "dtop is the distance down from the upper blades (on \
the structure) to the wire attachment points for the upper wires."
 
d0 /: d0::usage = "d0 is the distance up from the FRP of the upper mass to \
the wire attachment points for the upper wires."
 
d1I /: d1I::usage = "d1I is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the input-chain \
intermediate wires."
 
d1E /: d1E::usage = "d1E is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the end-chain \
intermediate wires."
 
d2I /: d2I::usage = "d2I is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the input-chain intermediate wires."
 
d2E /: d2E::usage = "d2E is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the end-chainintermediate wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
chainIx /: chainIx::usage = "chainIx is the x offset of the input chain, \
relative to the centre of the upper mass."
 
chainEx /: chainEx::usage = "chainEx is the x offset of the end chain, \
relative to the centre of the upper mass."
 
n0 /: n0::usage = "n0 is the two-sided y-direction separation of the wire \
attachment points at the top end of the upper wires."
 
n1 /: n1::usage = "n1 is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the upper wires."
 
n2I /: n2I::usage = "n2I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain intermediate wires."
 
n2E /: n2E::usage = "n2E is the two-sided y-direction separation of the wire \
attachment points at the top end of the end-chain intermediate wires."
 
n3I /: n3I::usage = "n3I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain intermediate wires."
 
n3E /: n3E::usage = "n3E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain intermediate wires."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
su /: su::usage = "su is the two-sided x-direction separation of upper wires."
 
siI /: siI::usage = "siI is the two-sided x-direction separation of \
input-chain intermediate wires."
 
siE /: siE::usage = "siE is the two-sided x-direction separation of end-chain \
intermediate wires."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kbizI /: kbizI::usage = "kbizI is the net vertical elasticity of the \
input-chain intermediate blades (on upper mass)."
 
kbizE /: kbizE::usage = "kbizE is the net vertical elasticity of the \
end-chain intermediate blades (on upper mass)."
 
l1 /: l1::usage = "l1 is the wire length from the blades on the structure to \
the top/upper/platform mass. It is interpreted as either a stretched length \
or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2I /: l2I::usage = "l2I is part of the specification of the model and \
represents the wire length from the blades on the top/upper/platform mass to \
the input-chain intermediate mass. It is interpreted as either a stretched \
length or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2E /: l2E::usage = "l2E is the wire length from the blades on the \
top/upper/platform mass to the end-chain intermediate mass. It is interpreted \
as either a stretched length or an unstretched length depending on the value \
of the switch constant unstretched."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to upper mass."
 
kw2I /: kw2I::usage = "kw2I is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw2E /: kw2E::usage = "kw2E is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
Y1 /: Y1::usage = "Y1 is Young's modulus of upper wires."
 
Y2I /: Y2I::usage = 
     "Y2I is Young's modulus of input-chain intermediate wires."
 
Y2E /: Y2E::usage = "Y2E is Young's modulus of end-chain intermediate wires."
 
Y3I /: Y3I::usage = "Y3I is Young's modulus of input-chain lower wires."
 
Y3E /: Y3E::usage = "Y3E is Young's modulus of end-chain lower wires."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to upper mass in direction \"1\"."
 
M21I /: M21I::usage = "M21I is the moment of area of the input-chain \
intermediate wires in direction \"1\""
 
M21E /: M21E::usage = "M21E is the moment of area of the end-chain \
intermediate wires in direction \"1\""
 
M31I /: M31I::usage = "M31I is the moment of area of the input-chain lower \
wires/ribbons/rods in direction \"1\""
 
M31E /: M31E::usage = "M31E is the moment of area of the end-chain lower \
wires/ribbons/rods in direction \"1\""
 
sm = {{(g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
        4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3), 0, 0, 0, 
      (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, 4*c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (4*c1*kw1*l1*(n0 - n1)^2*su^2 + g*(m1 + m2E + m2I + m3E + m3I)*
         (-((n0 - n1)^2*su^2) + l1^2*(n0*n1 + su^2)))/(c1*l1^3), 0, 0}, 
     {-((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + su^2))/(c1*l1), 
      0}, {0, (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3), 0, 0, 0, 
      (32*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))^2 - 
        8*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))^2 + 
        8*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + n0*n1))/
       (8*c1*l1^3)}}
 
c1 /: c1::usage = 
     "c1 is the cosine of the angle to the vertical of the upper wires."
 
qm = {{kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0}, {0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, kbuz + c1^2*kw1 + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0, 0}, {0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E)}}
 
c2I /: c2I::usage = "c2I is the cosine of the angle to the vertical of the \
input-chain intermediate wires."
 
c2E /: c2E::usage = "c2E is the cosine of the angle to the vertical of the \
end-chain intermediate wires."
 
cqsm = {{0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
       (4*l1^2), (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, m1, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iz, I2Iyz, I2Izx, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iyz, I2Iy, 
      I2Ixy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Izx, I2Ixy, I2Ix, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ez, I2Eyz, I2Ezx, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, I2Eyz, I2Ey, I2Exy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ezx, I2Exy, I2Ex, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3I, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Iz, I3Iyz, I3Izx, 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      I3Iyz, I3Iy, I3Ixy, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Izx, I3Ixy, I3Ix, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m3E, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ez, I3Eyz, I3Ezx}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Eyz, I3Ey, I3Exy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ezx, I3Exy, I3Ex}}
 
xm = {{g*((m2E + m3E)/(c2E*l2E) + (m2I + m3I)/(c2I*l2I) + 
        (m1 + m2E + m2I + m3E + m3I)/(c1*l1)), 0, 0, 0, 
      g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - (d1I*(m2I + m3I))/(c2I*l2I) + 
        (d0*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 
      -((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, -((g*(m2E + m3E))/(c2E*l2E)), 0, 
      0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0}, {0, (g*(m2E + m3E))/(c2E*l2E) + (g*(m2I + m3I))/(c2I*l2I) + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + (4*kw1*(n0 - n1)^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2)/(c1*l1^3) + 
       (4*kw2E*(n2E - n3E)^2)/l2E^2 - (g*(m2E + m3E)*(n2E - n3E)^2)/
        (c2E*l2E^3) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3), 0, 
      (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2))/(c2E*l2E^3) + (chainIx*g*(m2I + m3I)*
         (l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 0, 0, 
      (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 0, 0, 
      (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 4*c1^2*kw1 + 4*c2E^2*kw2E + 4*c2I^2*kw2I + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, -4*c2E^2*chainEx*kw2E - 
       (chainEx*g*(m2E + m3E))/(c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, 0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 0, 0, 0, 0, -4*c2E^2*kw2E - 
       (g*(m2E + m3E))/(c2E*l2E) + (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3) + 
       (chainIx*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      ((g*(m1 + m2E + m2I + m3E + m3I)*(-((n0 - n1)^2*su^2) + 
           l1^2*(n0*n1 + su^2)))/c1 + 
        (l1*((g*l1^2*(m2I + m3I)*(chainIx^2*(l2I^2 - (n2I - n3I)^2) - 
              (n2I - n3I)^2*siI^2 + l2I^2*(n2I*n3I + siI^2)))/c2I + 
           (l2I*(chainEx^2*l1^2*l2I^2*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^
                   2) + 4*c2E*kw2E*l2E*(n2E - n3E)^2) + g*l1^2*l2I^2*(m2E + 
                m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)) + 
              4*c2E*l2E*(chainIx^2*kw2I*l1^2*l2E^2*(n2I - n3I)^2 + 
                kw2E*l1^2*l2I^2*(n2E - n3E)^2*siE^2 + l2E^2*
                 (kw2I*l1^2*(n2I - n3I)^2*siI^2 + kw1*l2I^2*(n0 - n1)^2*
                   su^2))))/(c2E*l2E^3)))/l2I^3)/l1^3, 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + g*(m2I + m3I)*
          (-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/(c2I*l2I^3)), 
      0, (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + g*(m2E + m3E)*
          (-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/(c2E*l2E^3)), 
      0, (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0}, {g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - 
        (d1I*(m2I + m3I))/(c2I*l2I) + (d0*(m1 + m2E + m2I + m3E + m3I))/
         (c1*l1)), 0, -4*c2E^2*chainEx*kw2E - (chainEx*g*(m2E + m3E))/
        (c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, g*(d1E*(m2E + m3E) + d1I*(m2I + m3I) + 
         d0*(m1 + m2E + m2I + m3E + m3I)) + 4*c2E^2*kw2E*
        (chainEx^2 + siE^2) - (c2E*g*(m2E + m3E)*(chainEx^2 + siE^2))/l2E + 
       (g*(m2E + m3E)*(chainEx^2 + d1E^2 + siE^2))/(c2E*l2E) + 
       4*c2I^2*kw2I*(chainIx^2 + siI^2) - 
       (c2I*g*(m2I + m3I)*(chainIx^2 + siI^2))/l2I + 
       (g*(m2I + m3I)*(chainIx^2 + d1I^2 + siI^2))/(c2I*l2I) + 
       4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + su^2))/(c1*l1), 0, 
      (d1I*g*(m2I + m3I))/(c2I*l2I), 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (d1I*d2I*g*(m2I + m3I) + 
        (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI^2)/
       (c2I*l2I), 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, (d1E*d2E*g*(m2E + m3E) + 
        (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE^2)/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + c1*d0*l1 + n0*n1))/
        (c1*l1) + (4*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1))^2)/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/(c2E*l2E^3) + 
       (g*(m2E + m3E)*(d1E^2 + c2E*d1E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/(c2I*l2I^3) + 
       (g*(m2I + m3I)*(d1I^2 + c2I*d1I*l2I + n2I*n3I))/(c2I*l2I), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, 0, 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*n2E*(n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, (d1I*g*(m2I + m3I))/(c2I*l2I), 
      0, (g*(m2I + m3I))/(c2I*l2I) + (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
         g*m3I)/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 0, 0, 0, 0, 0, 
      0}, {0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 
      -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, (g*(m2I + m3I))/(c2I*l2I) + 
       (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3) + (2*kw3I*(n4I - n5I)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (n4I - n5I)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
         g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
          (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + 
         g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3)), 0, 0, 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, ((16*kw2I*(n2I - n3I)^2*siI^2)/l2I^2 - 
        (4*g*(m2I + m3I)*(n2I - n3I)^2*siI^2)/(c2I*l2I^3) + 
        (4*g*(m2I + m3I)*(n2I*n3I + siI^2))/(c2I*l2I) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) - 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n5I*siI - n4I*slI)^2)/(c3I*(c3I^2*l3I^2)^(3/2)) - 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n5I*siI - n4I*slI)^2)/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (8*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) + 
        (2*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
        (2*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
          (n4I*n5I + siI*slI))/(c3I*Sqrt[l3I^2 + (siI - slI)^2]))/4, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {-((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      (d1I*d2I*g*(m2I + m3I) + (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + 
          c2I^2*g*(m2I + m3I))*siI^2)/(c2I*l2I), 0, 
      (d2I*g*(m2I + m3I))/(c2I*l2I) - 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (-2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*d3I*kw3I*(siI - slI))/
        (c3I*Sqrt[c3I^2*l3I^2]) + (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/
        (2*c3I^4*l3I^3) + (c3I*l3I^2*(g*m3I*siI + 4*d3I*kw3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 4*c2I^2*kw2I*siI^2 - 
       (c2I*g*(m2I + m3I)*siI^2)/l2I + 
       (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + siI^2))/(c2I*l2I) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/
        (l3I^2 + (siI - slI)^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I)*(d3I^2 + c3I*d3I*l3I + siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I^2 + c3I*d3I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, (2*c3I^2*kw3I*l3I^3*siI)/
        (l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (4*kw2I*(n2I - n3I)*
         (c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(-(g*m3I) + 4*c3I*kw3I*(l3I - 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((8*g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + n2I*n3I))/(c2I*l2I) + 
        (32*kw2I*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/l2I^2 - 
        (8*g*(m2I + m3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/(c2I*l2I^3) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I^2*l3I^2) - 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(c3I*(c3I^2*l3I^2)^(3/2)) + 
        (4*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
          (d3I^2 + c3I*d3I*l3I + n4I*n5I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
        (4*(c3I*l3I*n4I + d3I*(n4I - n5I))^2*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
        (16*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(l3I^2 + (siI - slI)^2) + 
        (4*(d3I^2 + c3I*d3I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
            (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
         (c3I*Sqrt[l3I^2 + (siI - slI)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 
      0, 0, 0, 0, 0, 0, 0, (g*(m2E + m3E))/(c2E*l2E) + 
       (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0}, 
     {0, -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*n2E*
         (n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E))/(c2E*l2E) + (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
         g*m3E)/(2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)^2)/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)^2)/(c2E*l2E^3) + (2*kw3E*(n4E - n5E)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (n4E - n5E)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, 
     {0, 0, -4*c2E^2*kw2E - (g*(m2E + m3E))/(c2E*l2E) + 
       (c2E*g*(m2E + m3E))/l2E, 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*
        ((c3E^2*l3E^2)^(3/2) - (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/
       (2*(c3E^2*l3E^2)^(3/2)*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      4*c2E^2*kw2E + (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
         g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
          (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, 
     {0, 0, 0, -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + 
         g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, ((16*kw2E*(n2E - n3E)^2*siE^2)/l2E^2 - 
        (4*g*(m2E + m3E)*(n2E - n3E)^2*siE^2)/(c2E*l2E^3) + 
        (4*g*(m2E + m3E)*(n2E*n3E + siE^2))/(c2E*l2E) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) - 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n5E*siE - n4E*slE)^2)/(c3E*(c3E^2*l3E^2)^(3/2)) - 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n5E*siE - n4E*slE)^2)/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (8*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) + 
        (2*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
        (2*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
          (n4E*n5E + siE*slE))/(c3E*Sqrt[l3E^2 + (siE - slE)^2]))/4, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {-((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 
      (d1E*d2E*g*(m2E + m3E) + (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
          c2E^2*g*(m2E + m3E))*siE^2)/(c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 
      (d2E*g*(m2E + m3E))/(c2E*l2E) - 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (-2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*d3E*kw3E*(siE - slE))/
        (c3E*Sqrt[c3E^2*l3E^2]) + (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/
        (2*c3E^4*l3E^3) + (c3E*l3E^2*(g*m3E*siE + 4*d3E*kw3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 4*c2E^2*kw2E*siE^2 - 
       (c2E*g*(m2E + m3E)*siE^2)/l2E + 
       (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + siE^2))/(c2E*l2E) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/
        (l3E^2 + (siE - slE)^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + 
          g*m3E)*(d3E^2 + c3E*d3E*l3E + siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E^2 + c3E*d3E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, (2*c3E^2*kw3E*l3E^3*siE)/
        (l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0}, 
     {0, (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 
      (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (4*kw2E*(n2E - n3E)*
         (c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(-(g*m3E) + 4*c3E*kw3E*(l3E - 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((8*g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + n2E*n3E))/(c2E*l2E) + 
        (32*kw2E*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/l2E^2 - 
        (8*g*(m2E + m3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/(c2E*l2E^3) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E^2*l3E^2) - 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(c3E*(c3E^2*l3E^2)^(3/2)) + 
        (4*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
          (d3E^2 + c3E*d3E*l3E + n4E*n5E))/(c3E*Sqrt[c3E^2*l3E^2]) - 
        (4*(c3E*l3E*n4E + d3E*(n4E - n5E))^2*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
        (16*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(l3E^2 + (siE - slE)^2) + 
        (4*(d3E^2 + c3E*d3E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
            (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
         (c3E*Sqrt[l3E^2 + (siE - slE)^2]))/8, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 
      (-2*kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I)))/
        Sqrt[c3I^2*l3I^2] - (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2]))/Sqrt[l3I^2 + (siI - slI)^2] - 
       (2*kw3I*(siI - slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(siI - slI))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + (2*kw3I*(siI - slI)^2)/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (siI - slI)^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (siI - slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(siI - slI)^2)/(l3I^2 + (siI - slI)^2), 0, 
      (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (4*c3I*kw3I*(l3I - Sqrt[c3I^2*l3I^2]) - g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)^2)/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(n4I - n5I)^2)/(l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*(-(c3I^2*l3I^2)^(3/2) + 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (2*c3I^2*kw3I*l3I^3*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (c3I*l3I^2*(-(g*m3I*siI) + 4*d3I*kw3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*siI*(l3I^2 + (siI - slI)^2) + d3I*g*m3I*(siI - slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + (g*m3I*siI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d3I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) + 
       (2*d3I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3I*(4*c3I*kw3I*l3I - g*m3I)*((c3I^2*l3I^2)^(3/2) - 
         (l3I^2 + (siI - slI)^2)^(3/2))*(siI - slI))/(2*(c3I^2*l3I^2)^(3/2)*
        (l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
        g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
         (-l3I + 2*Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/(2*c3I^4*l3I^3) - 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) - 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         slI)/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (-2*kw3I*(n5I*siI - n4I*slI)^2)/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n5I*siI - n4I*slI)^
          2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI)^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n5I*siI - n4I*slI)^2)/(l3I^2 + (siI - slI)^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I*n5I + siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n4I*n5I + siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d3I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(n5I*siI - n4I*slI))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) - ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*slI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*slI)/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((n4I - n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (-(n5I*siI) + n4I*slI))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 
      0, (g*m3I*(-((Sqrt[c3I^2*l3I^2]*(n5I*siI - n4I*slI)^2)/l3I^4) + 
          (c3I^4*(n4I*n5I + siI*slI))/Sqrt[c3I^2*l3I^2] + 
          (c3I^4*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
             siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + 
             n4I*n5I*(siI^2 + slI^2)))/(l3I^2 + (siI - slI)^2)^(3/2)))/
        (2*c3I^5) + 2*kw3I*(siI*((Sqrt[c3I^2*l3I^2]*n5I^2*siI)/
            (c3I^4*l3I^3) + (l3I*n5I^2*siI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
           2*slI - (l3I*slI)/Sqrt[c3I^2*l3I^2] - (l3I*slI)/
            Sqrt[l3I^2 + (siI - slI)^2]) + 
         n4I^2*((Sqrt[c3I^2*l3I^2]*slI^2)/(c3I^4*l3I^3) + 
           (l3I*slI^2)/(l3I^2 + (siI - slI)^2)^(3/2)) + 
         n4I*n5I*(2 - l3I/Sqrt[c3I^2*l3I^2] - (2*Sqrt[c3I^2*l3I^2]*siI*slI)/
            (c3I^4*l3I^3) - (l3I*(l3I^2 + siI^2 + slI^2))/
            (l3I^2 + (siI - slI)^2)^(3/2))), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
           g*m3I))/(c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2) + (2*kw3I*(-l3I + (g*m3I)/(4*c3I*kw3I) + 
          Sqrt[l3I^2 + (siI - slI)^2])*(-siI + slI)*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2)^(3/2), 0, 
      (2*d4I*kw3I*(siI - slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^(3/2) + 
       (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(-siI + slI))/(2*c3I^4*l3I^3) - 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - siI*slI))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I*d4I - siI*slI))/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*siI + d3I*(siI - slI))*(c3I*l3I*slI + 
          d4I*(-siI + slI)))/(l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) - 
       (2*kw3I*(siI - slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*(siI - slI)*
         (c3I*l3I*slI + d4I*(-siI + slI)))/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(-siI + slI)*(c3I*l3I*slI + d4I*(-siI + slI)))/
        (l3I^2 + (siI - slI)^2), 0, (d4I*g*Sqrt[c3I^2*l3I^2]*m3I*(siI - slI))/
        (2*c3I^4*l3I^3) - (2*c3I^2*kw3I*l3I^3*slI)/(l3I^2 + (siI - slI)^2)^
         (3/2) - (g*m3I*slI)/(2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*d4I*kw3I*(-siI + slI))/(c3I*Sqrt[c3I^2*l3I^2]) + 
       (c3I*l3I^2*(4*d4I*kw3I*(siI - slI) + g*m3I*slI))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (l3I*(4*kw3I*(l3I^2 + (siI - slI)^2)*slI + d4I*g*m3I*(-siI + slI)))/
        (2*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          siI*slI))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d4I^2 + c3I*d4I*l3I + siI*slI))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*slI + d4I*(-siI + slI))^2)/(2*c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (2*kw3I*(c3I*l3I*slI + d4I*(-siI + slI))^2)/
        (l3I^2 + (siI - slI)^2), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + 
          g*m3I))/(2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(4*c3I*(c3I^2*l3I^2)^(3/2)) + 
       (kw3I*(-l3I + Sqrt[c3I^2*l3I^2] + (g*m3I)/(4*c3I*kw3I))*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2)^(3/2) + 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(d4I*(n4I - n5I) - c3I*l3I*n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
         (c3I*Sqrt[c3I^2*l3I^2]) + 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (c3I^2*l3I^2) + (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d3I*d4I - n4I*n5I))/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) + ((c3I*l3I*n4I + d3I*(n4I - n5I))*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) - 
       (2*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(c3I*l3I*n5I + 
          d4I*(-n4I + n5I)))/(l3I^2 + (siI - slI)^2) + 
       ((d3I*d4I - n4I*n5I)*(g*m3I + 4*c3I*kw3I*(-l3I + 
            Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I))/
         (c3I*Sqrt[c3I^2*l3I^2]) + (2*kw3I*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(n4I - n5I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I)))/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(n4I - n5I)*(c3I*l3I*n5I + d4I*(-n4I + n5I)))/
        (l3I^2 + (siI - slI)^2) - 
       (d4I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 
      (d4I*(4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*siI)/
        (2*c3I*Sqrt[c3I^2*l3I^2]) - 
       (d4I*siI*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))*(n5I*siI - n4I*slI))/
        (c3I^2*l3I^2) + ((c3I*l3I*n5I + d4I*(-n4I + n5I))*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (n5I*siI - n4I*slI))/(2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))*(-(n5I*siI) + n4I*slI))/
        (2*c3I*(c3I^2*l3I^2)^(3/2)) - (2*kw3I*(d4I*(n4I - n5I) - c3I*l3I*n5I)*
         (-(n5I*siI) + n4I*slI))/(l3I^2 + (siI - slI)^2), 0, 
      ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*(d4I^2 + c3I*d4I*l3I + 
          n4I*n5I))/(2*c3I*Sqrt[c3I^2*l3I^2]) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(c3I^2*l3I^2) - 
       ((4*c3I*kw3I*(-l3I + Sqrt[c3I^2*l3I^2]) + g*m3I)*
         (c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(2*c3I*(c3I^2*l3I^2)^(3/2)) - 
       ((c3I*l3I*n5I + d4I*(-n4I + n5I))^2*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (2*kw3I*(c3I*l3I*n5I + d4I*(-n4I + n5I))^2)/(l3I^2 + (siI - slI)^2) + 
       ((d4I^2 + c3I*d4I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (2*c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-2*kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E)))/
        Sqrt[c3E^2*l3E^2] - (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2]))/Sqrt[l3E^2 + (siE - slE)^2] - 
       (2*kw3E*(siE - slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(siE - slE))/
        (l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + (2*kw3E*(siE - slE)^2)/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (siE - slE)^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (siE - slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(siE - slE)^2)/(l3E^2 + (siE - slE)^2), 0, 
      (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(l3E - Sqrt[c3E^2*l3E^2]) - g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)^2)/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*(-(c3E^2*l3E^2)^(3/2) + 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (2*c3E^2*kw3E*l3E^3*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (c3E*l3E^2*(-(g*m3E*siE) + 4*d3E*kw3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*siE*(l3E^2 + (siE - slE)^2) + d3E*g*m3E*(siE - slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + (g*m3E*siE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d3E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) + 
       (2*d3E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]), 0, 0, 0, 0, 0, 0, 
      0, (l3E*(4*c3E*kw3E*l3E - g*m3E)*((c3E^2*l3E^2)^(3/2) - 
         (l3E^2 + (siE - slE)^2)^(3/2))*(siE - slE))/(2*(c3E^2*l3E^2)^(3/2)*
        (l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
        g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
         (-l3E + 2*Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/(2*c3E^4*l3E^3) - 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) - 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (-2*kw3E*(n5E*siE - n4E*slE)^2)/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n5E*siE - n4E*slE)^
          2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE)^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n5E*siE - n4E*slE)^2)/(l3E^2 + (siE - slE)^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E*n5E + siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n4E*n5E + siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d3E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(n5E*siE - n4E*slE))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) - ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 
      0, -1/2*((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*slE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*slE)/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((n4E - n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (-(n5E*siE) + n4E*slE))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 
      0, (g*m3E*(-((Sqrt[c3E^2*l3E^2]*(n5E*siE - n4E*slE)^2)/l3E^4) + 
          (c3E^4*(n4E*n5E + siE*slE))/Sqrt[c3E^2*l3E^2] + 
          (c3E^4*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
             siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + 
             n4E*n5E*(siE^2 + slE^2)))/(l3E^2 + (siE - slE)^2)^(3/2)))/
        (2*c3E^5) + 2*kw3E*(siE*((Sqrt[c3E^2*l3E^2]*n5E^2*siE)/
            (c3E^4*l3E^3) + (l3E*n5E^2*siE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
           2*slE - (l3E*slE)/Sqrt[c3E^2*l3E^2] - (l3E*slE)/
            Sqrt[l3E^2 + (siE - slE)^2]) + 
         n4E^2*((Sqrt[c3E^2*l3E^2]*slE^2)/(c3E^4*l3E^3) + 
           (l3E*slE^2)/(l3E^2 + (siE - slE)^2)^(3/2)) + 
         n4E*n5E*(2 - l3E/Sqrt[c3E^2*l3E^2] - (2*Sqrt[c3E^2*l3E^2]*siE*slE)/
            (c3E^4*l3E^3) - (l3E*(l3E^2 + siE^2 + slE^2))/
            (l3E^2 + (siE - slE)^2)^(3/2))), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2)}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2) + (2*kw3E*(-l3E + (g*m3E)/(4*c3E*kw3E) + 
          Sqrt[l3E^2 + (siE - slE)^2])*(-siE + slE)*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2)^(3/2), 0, 
      (2*d4E*kw3E*(siE - slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^(3/2) + 
       (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(-siE + slE))/(2*c3E^4*l3E^3) - 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - siE*slE))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E*d4E - siE*slE))/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*siE + d3E*(siE - slE))*(c3E*l3E*slE + 
          d4E*(-siE + slE)))/(l3E^2 + (siE - slE)^2), 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) - 
       (2*kw3E*(siE - slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*(siE - slE)*
         (c3E*l3E*slE + d4E*(-siE + slE)))/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(-siE + slE)*(c3E*l3E*slE + d4E*(-siE + slE)))/
        (l3E^2 + (siE - slE)^2), 0, (d4E*g*Sqrt[c3E^2*l3E^2]*m3E*(siE - slE))/
        (2*c3E^4*l3E^3) - (2*c3E^2*kw3E*l3E^3*slE)/(l3E^2 + (siE - slE)^2)^
         (3/2) - (g*m3E*slE)/(2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*d4E*kw3E*(-siE + slE))/(c3E*Sqrt[c3E^2*l3E^2]) + 
       (c3E*l3E^2*(4*d4E*kw3E*(siE - slE) + g*m3E*slE))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (l3E*(4*kw3E*(l3E^2 + (siE - slE)^2)*slE + d4E*g*m3E*(-siE + slE)))/
        (2*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          siE*slE))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d4E^2 + c3E*d4E*l3E + siE*slE))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*slE + d4E*(-siE + slE))^2)/(2*c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (2*kw3E*(c3E*l3E*slE + d4E*(-siE + slE))^2)/
        (l3E^2 + (siE - slE)^2), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(4*c3E*(c3E^2*l3E^2)^(3/2)) + 
       (kw3E*(-l3E + Sqrt[c3E^2*l3E^2] + (g*m3E)/(4*c3E*kw3E))*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2)^(3/2) + 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(d4E*(n4E - n5E) - c3E*l3E*n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
         (c3E*Sqrt[c3E^2*l3E^2]) + 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (c3E^2*l3E^2) + (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d3E*d4E - n4E*n5E))/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) + ((c3E*l3E*n4E + d3E*(n4E - n5E))*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) - 
       (2*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(c3E*l3E*n5E + 
          d4E*(-n4E + n5E)))/(l3E^2 + (siE - slE)^2) + 
       ((d3E*d4E - n4E*n5E)*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      -1/2*(d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E))/
         (c3E*Sqrt[c3E^2*l3E^2]) + (2*kw3E*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(n4E - n5E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E)))/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(n4E - n5E)*(c3E*l3E*n5E + d4E*(-n4E + n5E)))/
        (l3E^2 + (siE - slE)^2) - 
       (d4E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 
      (d4E*(4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*siE)/
        (2*c3E*Sqrt[c3E^2*l3E^2]) - 
       (d4E*siE*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))*(n5E*siE - n4E*slE))/
        (c3E^2*l3E^2) + ((c3E*l3E*n5E + d4E*(-n4E + n5E))*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (n5E*siE - n4E*slE))/(2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))*(-(n5E*siE) + n4E*slE))/
        (2*c3E*(c3E^2*l3E^2)^(3/2)) - (2*kw3E*(d4E*(n4E - n5E) - c3E*l3E*n5E)*
         (-(n5E*siE) + n4E*slE))/(l3E^2 + (siE - slE)^2), 0, 
      ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*(d4E^2 + c3E*d4E*l3E + 
          n4E*n5E))/(2*c3E*Sqrt[c3E^2*l3E^2]) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(c3E^2*l3E^2) - 
       ((4*c3E*kw3E*(-l3E + Sqrt[c3E^2*l3E^2]) + g*m3E)*
         (c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(2*c3E*(c3E^2*l3E^2)^(3/2)) - 
       ((c3E*l3E*n5E + d4E*(-n4E + n5E))^2*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (2*kw3E*(c3E*l3E*n5E + d4E*(-n4E + n5E))^2)/(l3E^2 + (siE - slE)^2) + 
       ((d4E^2 + c3E*d4E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (2*c3E*Sqrt[l3E^2 + (siE - slE)^2])}}
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
cqxm = {{0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
         (n0 - n1))/l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
        (n0 - n1))/(4*l1^2), (-4*c1^3*kw1*l1 - 
        g*(m1 + m2E + m2I + m3E + m3I) + c1^2*g*(m1 + m2E + m2I + m3E + m3I))/
       (4*c1*l1), ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*
        su)/(4*l1^2), ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx + siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/l2I^2, 
      ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx - siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/(4*l2I^2), 
      ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx + siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
       (4*l2I^2), ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx - siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
        l2I^2, ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx + siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx - siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/(4*l2E^2), 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx + siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E)*siE)/(4*l2E^2), ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
         c2E^2*g*(m2E + m3E))*siE)/(4*c2E*l2E), 
      (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 4*c2E^3*kw2E*l2E^2*n3E + 
        g*l2E*(m2E + m3E)*n3E - c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + 
          g*(m2E + m3E)*n3E))/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx - siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
        4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
        c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0}, 
     {0, -((g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
         4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3)), 0, 0, 0, 
      (dtop*(-(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2)) - 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, -4*c1^2*kw1 - (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (-8*c1*kw1*l1*(n0 - n1)^2*su^2 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2*su^2 - 
        2*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(n0*n1 + su^2))/(2*c1*l1^3), 0, 
      0}, {-((d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      -4*c1^2*kw1*su^2 + (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - su^2))/(c1*l1), 0}, 
     {0, (d0*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*n1)/(c1*l1^3), 0, 0, 0, 
      (g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - n0*n1) - 
        4*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)) + 
        g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3)}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
g /: g::usage = "g is local gravity."
 
m1 /: m1::usage = "m1 is mass of top/upper/platform mass."
 
m2I /: m2I::usage = "m2I is mass of input-chain intermediate mass."
 
m2E /: m2E::usage = "m2E is mass of end-chain intermediate mass."
 
m3I /: m3I::usage = "m3I is mass of input-chain optic."
 
m3E /: m3E::usage = "m3E is mass of end-chain optic."
 
I1x /: I1x::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1y /: I1y::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1z /: I1z::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1xy /: I1xy::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1yz /: I1yz::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1zx /: I1zx::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I2Ix /: I2Ix::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iy /: I2Iy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iz /: I2Iz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ixy /: I2Ixy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iyz /: I2Iyz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Izx /: I2Izx::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ex /: I2Ex::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ey /: I2Ey::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ez /: I2Ez::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Exy /: I2Exy::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Eyz /: I2Eyz::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ezx /: I2Ezx::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I3Ix /: I3Ix::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iy /: I3Iy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iz /: I3Iz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ixy /: I3Ixy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iyz /: I3Iyz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Izx /: I3Izx::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ex /: I3Ex::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ey /: I3Ey::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ez /: I3Ez::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Exy /: I3Exy::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Eyz /: I3Eyz::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ezx /: I3Ezx::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
dtop /: dtop::usage = "dtop is the distance down from the upper blades (on \
the structure) to the wire attachment points for the upper wires."
 
d0 /: d0::usage = "d0 is the distance up from the FRP of the upper mass to \
the wire attachment points for the upper wires."
 
d1I /: d1I::usage = "d1I is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the input-chain \
intermediate wires."
 
d1E /: d1E::usage = "d1E is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the end-chain \
intermediate wires."
 
d2I /: d2I::usage = "d2I is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the input-chain intermediate wires."
 
d2E /: d2E::usage = "d2E is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the end-chainintermediate wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
chainIx /: chainIx::usage = "chainIx is the x offset of the input chain, \
relative to the centre of the upper mass."
 
chainEx /: chainEx::usage = "chainEx is the x offset of the end chain, \
relative to the centre of the upper mass."
 
n0 /: n0::usage = "n0 is the two-sided y-direction separation of the wire \
attachment points at the top end of the upper wires."
 
n1 /: n1::usage = "n1 is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the upper wires."
 
n2I /: n2I::usage = "n2I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain intermediate wires."
 
n2E /: n2E::usage = "n2E is the two-sided y-direction separation of the wire \
attachment points at the top end of the end-chain intermediate wires."
 
n3I /: n3I::usage = "n3I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain intermediate wires."
 
n3E /: n3E::usage = "n3E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain intermediate wires."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
su /: su::usage = "su is the two-sided x-direction separation of upper wires."
 
siI /: siI::usage = "siI is the two-sided x-direction separation of \
input-chain intermediate wires."
 
siE /: siE::usage = "siE is the two-sided x-direction separation of end-chain \
intermediate wires."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kbizI /: kbizI::usage = "kbizI is the net vertical elasticity of the \
input-chain intermediate blades (on upper mass)."
 
kbizE /: kbizE::usage = "kbizE is the net vertical elasticity of the \
end-chain intermediate blades (on upper mass)."
 
l1 /: l1::usage = "l1 is the wire length from the blades on the structure to \
the top/upper/platform mass. It is interpreted as either a stretched length \
or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2I /: l2I::usage = "l2I is part of the specification of the model and \
represents the wire length from the blades on the top/upper/platform mass to \
the input-chain intermediate mass. It is interpreted as either a stretched \
length or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2E /: l2E::usage = "l2E is the wire length from the blades on the \
top/upper/platform mass to the end-chain intermediate mass. It is interpreted \
as either a stretched length or an unstretched length depending on the value \
of the switch constant unstretched."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to upper mass."
 
kw2I /: kw2I::usage = "kw2I is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw2E /: kw2E::usage = "kw2E is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
Y1 /: Y1::usage = "Y1 is Young's modulus of upper wires."
 
Y2I /: Y2I::usage = 
     "Y2I is Young's modulus of input-chain intermediate wires."
 
Y2E /: Y2E::usage = "Y2E is Young's modulus of end-chain intermediate wires."
 
Y3I /: Y3I::usage = "Y3I is Young's modulus of input-chain lower wires."
 
Y3E /: Y3E::usage = "Y3E is Young's modulus of end-chain lower wires."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to upper mass in direction \"1\"."
 
M21I /: M21I::usage = "M21I is the moment of area of the input-chain \
intermediate wires in direction \"1\""
 
M21E /: M21E::usage = "M21E is the moment of area of the end-chain \
intermediate wires in direction \"1\""
 
M31I /: M31I::usage = "M31I is the moment of area of the input-chain lower \
wires/ribbons/rods in direction \"1\""
 
M31E /: M31E::usage = "M31E is the moment of area of the end-chain lower \
wires/ribbons/rods in direction \"1\""
 
sm = {{(g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
        4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3), 0, 0, 0, 
      (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, 4*c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (4*c1*kw1*l1*(n0 - n1)^2*su^2 + g*(m1 + m2E + m2I + m3E + m3I)*
         (-((n0 - n1)^2*su^2) + l1^2*(n0*n1 + su^2)))/(c1*l1^3), 0, 0}, 
     {-((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + su^2))/(c1*l1), 
      0}, {0, (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3), 0, 0, 0, 
      (32*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))^2 - 
        8*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))^2 + 
        8*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + n0*n1))/
       (8*c1*l1^3)}}
 
c1 /: c1::usage = 
     "c1 is the cosine of the angle to the vertical of the upper wires."
 
qm = {{kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0}, {0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, kbuz + c1^2*kw1 + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0, 0}, {0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E)}}
 
c2I /: c2I::usage = "c2I is the cosine of the angle to the vertical of the \
input-chain intermediate wires."
 
c2E /: c2E::usage = "c2E is the cosine of the angle to the vertical of the \
end-chain intermediate wires."
 
cqsm = {{0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
       (4*l1^2), (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, m1, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iz, I2Iyz, I2Izx, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iyz, I2Iy, 
      I2Ixy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Izx, I2Ixy, I2Ix, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ez, I2Eyz, I2Ezx, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, I2Eyz, I2Ey, I2Exy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ezx, I2Exy, I2Ex, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3I, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Iz, I3Iyz, I3Izx, 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      I3Iyz, I3Iy, I3Ixy, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Izx, I3Ixy, I3Ix, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m3E, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ez, I3Eyz, I3Ezx}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Eyz, I3Ey, I3Exy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ezx, I3Exy, I3Ex}}
 
xm = {{g*((m2E + m3E)/(c2E*l2E) + (m2I + m3I)/(c2I*l2I) + 
        (m1 + m2E + m2I + m3E + m3I)/(c1*l1)), 0, 0, 0, 
      g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - (d1I*(m2I + m3I))/(c2I*l2I) + 
        (d0*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 
      -((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, -((g*(m2E + m3E))/(c2E*l2E)), 0, 
      0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0}, {0, (g*(m2E + m3E))/(c2E*l2E) + (g*(m2I + m3I))/(c2I*l2I) + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + (4*kw1*(n0 - n1)^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2)/(c1*l1^3) + 
       (4*kw2E*(n2E - n3E)^2)/l2E^2 - (g*(m2E + m3E)*(n2E - n3E)^2)/
        (c2E*l2E^3) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3), 0, 
      (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2))/(c2E*l2E^3) + (chainIx*g*(m2I + m3I)*
         (l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 0, 0, 
      (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 0, 0, 
      (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 4*c1^2*kw1 + 4*c2E^2*kw2E + 4*c2I^2*kw2I + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, -4*c2E^2*chainEx*kw2E - 
       (chainEx*g*(m2E + m3E))/(c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, 0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 0, 0, 0, 0, -4*c2E^2*kw2E - 
       (g*(m2E + m3E))/(c2E*l2E) + (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3) + 
       (chainIx*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      ((g*(m1 + m2E + m2I + m3E + m3I)*(-((n0 - n1)^2*su^2) + 
           l1^2*(n0*n1 + su^2)))/c1 + 
        (l1*((g*l1^2*(m2I + m3I)*(chainIx^2*(l2I^2 - (n2I - n3I)^2) - 
              (n2I - n3I)^2*siI^2 + l2I^2*(n2I*n3I + siI^2)))/c2I + 
           (l2I*(chainEx^2*l1^2*l2I^2*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^
                   2) + 4*c2E*kw2E*l2E*(n2E - n3E)^2) + g*l1^2*l2I^2*(m2E + 
                m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)) + 
              4*c2E*l2E*(chainIx^2*kw2I*l1^2*l2E^2*(n2I - n3I)^2 + 
                kw2E*l1^2*l2I^2*(n2E - n3E)^2*siE^2 + l2E^2*
                 (kw2I*l1^2*(n2I - n3I)^2*siI^2 + kw1*l2I^2*(n0 - n1)^2*
                   su^2))))/(c2E*l2E^3)))/l2I^3)/l1^3, 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + g*(m2I + m3I)*
          (-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/(c2I*l2I^3)), 
      0, (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + g*(m2E + m3E)*
          (-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/(c2E*l2E^3)), 
      0, (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0}, {g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - 
        (d1I*(m2I + m3I))/(c2I*l2I) + (d0*(m1 + m2E + m2I + m3E + m3I))/
         (c1*l1)), 0, -4*c2E^2*chainEx*kw2E - (chainEx*g*(m2E + m3E))/
        (c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, g*(d1E*(m2E + m3E) + d1I*(m2I + m3I) + 
         d0*(m1 + m2E + m2I + m3E + m3I)) + 4*c2E^2*kw2E*
        (chainEx^2 + siE^2) - (c2E*g*(m2E + m3E)*(chainEx^2 + siE^2))/l2E + 
       (g*(m2E + m3E)*(chainEx^2 + d1E^2 + siE^2))/(c2E*l2E) + 
       4*c2I^2*kw2I*(chainIx^2 + siI^2) - 
       (c2I*g*(m2I + m3I)*(chainIx^2 + siI^2))/l2I + 
       (g*(m2I + m3I)*(chainIx^2 + d1I^2 + siI^2))/(c2I*l2I) + 
       4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + su^2))/(c1*l1), 0, 
      (d1I*g*(m2I + m3I))/(c2I*l2I), 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (d1I*d2I*g*(m2I + m3I) + 
        (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI^2)/
       (c2I*l2I), 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, (d1E*d2E*g*(m2E + m3E) + 
        (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE^2)/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + c1*d0*l1 + n0*n1))/
        (c1*l1) + (4*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1))^2)/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/(c2E*l2E^3) + 
       (g*(m2E + m3E)*(d1E^2 + c2E*d1E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/(c2I*l2I^3) + 
       (g*(m2I + m3I)*(d1I^2 + c2I*d1I*l2I + n2I*n3I))/(c2I*l2I), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, 0, 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*n2E*(n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, (d1I*g*(m2I + m3I))/(c2I*l2I), 
      0, (g*(m2I + m3I))/(c2I*l2I) + 
       kw3I*(4 - (4*l3I^3)/(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (g*l3I^2*m3I)/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (d2I*g*(m2I + m3I))/(c2I*l2I) - (d3I*g*l3I^2*m3I + 
         4*c3I*d3I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
           Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*
          siI*(siI - slI) + c3I*g*l3I*m3I*siI*(-siI + slI))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (-(g*l3I^2*m3I) - 4*c3I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (-(d4I*g*l3I^2*m3I) - 4*c3I*d4I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*(siI - slI)*slI + 
        c3I*g*l3I*m3I*slI*(-siI + slI))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0}, {0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 
      -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, (g*(m2I + m3I))/(c2I*l2I) + 
       (4*kw2I*(n2I - n3I)^2)/l2I^2 - (g*(m2I + m3I)*(n2I - n3I)^2)/
        (c2I*l2I^3) - ((n4I - n5I)^2*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + (4*kw3I*(n4I - n5I)^2)/
        (l3I^2 + (siI - slI)^2) + 
       (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))/
        (c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (4*kw2I*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) - ((c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I)*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (4*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (c3I*g*l3I*m3I*(n4I - n5I)*n5I + 4*c3I^2*kw3I*l3I^2*n5I*(-n4I + n5I) + 
        4*c3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 
        d4I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, 0, 0, 4*c2I^2*kw2I + (g*(m2I + m3I))/(c2I*l2I) - 
       (c2I*g*(m2I + m3I))/l2I + (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
         g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
          (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + 
         g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3)), 0, 0, 0, 0, 0, 
      (g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3) + (4*c3I*kw3I*l2I^2*l3I*n5I^2*siI^2 - 
         g*l2I^2*m3I*n5I^2*siI^2 - 4*c3I*kw3I*l2I^2*l3I*n4I*n5I*
          (l3I^2 + (siI - slI)^2) + g*l2I^2*m3I*n4I*n5I*
          (l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*l2I^2*n4I*n5I*
          (l3I^2 + (siI - slI)^2)^(3/2) + 4*c3I*kw2I*n2I^2*siI^2*
          (l3I^2 + (siI - slI)^2)^(3/2) - 8*c3I*kw2I*n2I*n3I*siI^2*
          (l3I^2 + (siI - slI)^2)^(3/2) + 4*c3I*kw2I*n3I^2*siI^2*
          (l3I^2 + (siI - slI)^2)^(3/2) - 8*c3I*kw3I*l2I^2*l3I*n4I*n5I*siI*
          slI + 2*g*l2I^2*m3I*n4I*n5I*siI*slI - 4*c3I*kw3I*l2I^2*l3I*siI*
          (l3I^2 + (siI - slI)^2)*slI + g*l2I^2*m3I*siI*
          (l3I^2 + (siI - slI)^2)*slI + 4*c3I*kw3I*l2I^2*siI*
          (l3I^2 + (siI - slI)^2)^(3/2)*slI + 4*c3I*kw3I*l2I^2*l3I*n4I^2*
          slI^2 - g*l2I^2*m3I*n4I^2*slI^2)/(c3I*l2I^2*(l3I^2 + (siI - slI)^2)^
          (3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(g*m3I*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
           siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + 
           n4I*n5I*(siI^2 + slI^2))) - 4*c3I*kw3I*
         (-(l3I^3*(n4I*n5I + siI*slI)) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2]*
           (n4I*n5I + siI*slI) + Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2*
           (n4I*n5I + siI*slI) + l3I*(n4I^2*slI^2 - 
            siI*(-(n5I^2*siI) + (siI - slI)^2*slI) - 
            n4I*n5I*(siI^2 + slI^2))))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, 0}, {-((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      (d1I*d2I*g*(m2I + m3I) + (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + 
          c2I^2*g*(m2I + m3I))*siI^2)/(c2I*l2I), 0, 
      (d2I*g*(m2I + m3I))/(c2I*l2I) - (d3I*g*l3I^2*m3I + 
         4*c3I*d3I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
           Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*
          siI*(siI - slI) + c3I*g*l3I*m3I*siI*(-siI + slI))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      4*c2I^2*kw2I*siI^2 - (c2I*g*(m2I + m3I)*siI^2)/l2I + 
       (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + siI^2))/(c2I*l2I) + 
       ((-(g*m3I) + 4*c3I*kw3I*(l3I - Sqrt[l3I^2 + (siI - slI)^2]))*
         (c3I*l3I*siI + d3I*(siI - slI))^2)/(c3I*(l3I^2 + (siI - slI)^2)^
          (3/2)) + (4*kw3I*(c3I*l3I*siI + d3I*(siI - slI))^2)/
        (l3I^2 + (siI - slI)^2) + 
       ((g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2]))*
         (d3I^2 + c3I*d3I*l3I + siI*slI))/(c3I*Sqrt[l3I^2 + (siI - slI)^2]), 
      0, 0, 0, 0, 0, 0, 0, (d3I*g*l3I^2*m3I + 4*c3I*d3I*kw3I*
         (-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*siI*
         (siI - slI) + c3I*g*l3I*m3I*siI*(-siI + slI))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (-4*c3I^3*kw3I*l3I^3*siI*slI + g*m3I*(d3I*d4I*l3I^2 - 
          siI*(l3I^2 + (siI - slI)^2)*slI) + 
        c3I*(4*d3I*d4I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
          4*kw3I*siI*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])*
           (l3I^2 + (siI - slI)^2)*slI + d3I*g*l3I*m3I*(siI - slI)*slI + 
          d4I*g*l3I*m3I*siI*(-siI + slI)) + c3I^2*l3I^2*
         (4*d4I*kw3I*siI*(siI - slI) + g*m3I*siI*slI + 4*d3I*kw3I*slI*
           (-siI + slI)))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 
      0, 0}, {0, (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
          g*(m2I + m3I))*(n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, -((d2I*g*(m2I + m3I))/(c2I*l2I)) + 
       (4*kw2I*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I)))/
        (c2I*l2I^3) - ((c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I)*
         (g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (4*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))*(n4I - n5I))/
        (l3I^2 + (siI - slI)^2) + 
       (d3I*(g*m3I + 4*c3I*kw3I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 
      (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + n2I*n3I))/(c2I*l2I) + 
       (4*kw2I*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n3I + d2I*(-n2I + n3I))^2)/(c2I*l2I^3) - 
       ((c3I*l3I*n4I + d3I*(n4I - n5I))^2*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*(l3I^2 + (siI - slI)^2)^(3/2)) + 
       (4*kw3I*(c3I*l3I*n4I + d3I*(n4I - n5I))^2)/(l3I^2 + (siI - slI)^2) + 
       ((d3I^2 + c3I*d3I*l3I + n4I*n5I)*(g*m3I + 4*c3I*kw3I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])))/
        (c3I*Sqrt[l3I^2 + (siI - slI)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (c3I*g*l3I*m3I*n4I*(n4I - n5I) + 4*c3I^2*kw3I*l3I^2*n4I*(-n4I + n5I) - 
        4*c3I*d3I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        d3I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (-4*c3I^3*kw3I*l3I^3*n4I*n5I + c3I^2*l3I^2*
         (4*d4I*kw3I*n4I*(n4I - n5I) + g*m3I*n4I*n5I + 4*d3I*kw3I*n5I*
           (-n4I + n5I)) + c3I*(d3I*g*l3I*m3I*(n4I - n5I)*n5I + 
          d4I*g*l3I*m3I*n4I*(-n4I + n5I) - 4*kw3I*n4I*n5I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2) + 
          4*d3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
              (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2)) + 
        g*m3I*(-(n4I*n5I*(l3I^2 + (siI - slI)^2)) + 
          d3I*d4I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
            slI^2)))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 
      0, 0, 0, 0, 0, 0, 0, (g*(m2E + m3E))/(c2E*l2E) + 
       kw3E*(4 - (4*l3E^3)/(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (g*l3E^2*m3E)/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (d2E*g*(m2E + m3E))/(c2E*l2E) - (d3E*g*l3E^2*m3E + 
         4*c3E*d3E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
           Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*
          siE*(siE - slE) + c3E*g*l3E*m3E*siE*(-siE + slE))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (-(g*l3E^2*m3E) - 4*c3E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (-(d4E*g*l3E^2*m3E) - 4*c3E*d4E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*(siE - slE)*slE + 
        c3E*g*l3E*m3E*slE*(-siE + slE))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0}, {0, -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
         4*c2E*kw2E*l2E*(n2E - n3E)^2)/(c2E*l2E^3)), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*n2E*
         (n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E))/(c2E*l2E) + (4*kw2E*(n2E - n3E)^2)/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)^2)/(c2E*l2E^3) - 
       ((n4E - n5E)^2*(g*m3E + 4*c3E*kw3E*(-l3E + 
            Sqrt[l3E^2 + (siE - slE)^2])))/(c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (4*kw3E*(n4E - n5E)^2)/(l3E^2 + (siE - slE)^2) + 
       (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))/
        (c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 
      -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (4*kw2E*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) - ((c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E)*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (4*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (c3E*g*l3E*m3E*(n4E - n5E)*n5E + 4*c3E^2*kw3E*l3E^2*n5E*(-n4E + n5E) + 
        4*c3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 
        d4E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2))}, 
     {0, 0, -4*c2E^2*kw2E - (g*(m2E + m3E))/(c2E*l2E) + 
       (c2E*g*(m2E + m3E))/l2E, 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 4*c2E^2*kw2E + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
         g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
          (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0}, 
     {0, 0, 0, -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + 
         g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3) + (4*c3E*kw3E*l2E^2*l3E*n5E^2*siE^2 - 
         g*l2E^2*m3E*n5E^2*siE^2 - 4*c3E*kw3E*l2E^2*l3E*n4E*n5E*
          (l3E^2 + (siE - slE)^2) + g*l2E^2*m3E*n4E*n5E*
          (l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*l2E^2*n4E*n5E*
          (l3E^2 + (siE - slE)^2)^(3/2) + 4*c3E*kw2E*n2E^2*siE^2*
          (l3E^2 + (siE - slE)^2)^(3/2) - 8*c3E*kw2E*n2E*n3E*siE^2*
          (l3E^2 + (siE - slE)^2)^(3/2) + 4*c3E*kw2E*n3E^2*siE^2*
          (l3E^2 + (siE - slE)^2)^(3/2) - 8*c3E*kw3E*l2E^2*l3E*n4E*n5E*siE*
          slE + 2*g*l2E^2*m3E*n4E*n5E*siE*slE - 4*c3E*kw3E*l2E^2*l3E*siE*
          (l3E^2 + (siE - slE)^2)*slE + g*l2E^2*m3E*siE*
          (l3E^2 + (siE - slE)^2)*slE + 4*c3E*kw3E*l2E^2*siE*
          (l3E^2 + (siE - slE)^2)^(3/2)*slE + 4*c3E*kw3E*l2E^2*l3E*n4E^2*
          slE^2 - g*l2E^2*m3E*n4E^2*slE^2)/(c3E*l2E^2*(l3E^2 + (siE - slE)^2)^
          (3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(g*m3E*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
           siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + 
           n4E*n5E*(siE^2 + slE^2))) - 4*c3E*kw3E*
         (-(l3E^3*(n4E*n5E + siE*slE)) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2]*
           (n4E*n5E + siE*slE) + Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2*
           (n4E*n5E + siE*slE) + l3E*(n4E^2*slE^2 - 
            siE*(-(n5E^2*siE) + (siE - slE)^2*slE) - 
            n4E*n5E*(siE^2 + slE^2))))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0, 0}, {-((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 
      (d1E*d2E*g*(m2E + m3E) + (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
          c2E^2*g*(m2E + m3E))*siE^2)/(c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 
      (d2E*g*(m2E + m3E))/(c2E*l2E) - (d3E*g*l3E^2*m3E + 
         4*c3E*d3E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
           Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*
          siE*(siE - slE) + c3E*g*l3E*m3E*siE*(-siE + slE))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      4*c2E^2*kw2E*siE^2 - (c2E*g*(m2E + m3E)*siE^2)/l2E + 
       (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + siE^2))/(c2E*l2E) + 
       ((-(g*m3E) + 4*c3E*kw3E*(l3E - Sqrt[l3E^2 + (siE - slE)^2]))*
         (c3E*l3E*siE + d3E*(siE - slE))^2)/(c3E*(l3E^2 + (siE - slE)^2)^
          (3/2)) + (4*kw3E*(c3E*l3E*siE + d3E*(siE - slE))^2)/
        (l3E^2 + (siE - slE)^2) + 
       ((g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2]))*
         (d3E^2 + c3E*d3E*l3E + siE*slE))/(c3E*Sqrt[l3E^2 + (siE - slE)^2]), 
      0, 0, 0, 0, 0, 0, 0, (d3E*g*l3E^2*m3E + 4*c3E*d3E*kw3E*
         (-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*siE*
         (siE - slE) + c3E*g*l3E*m3E*siE*(-siE + slE))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E^3*siE*slE + g*m3E*(d3E*d4E*l3E^2 - 
          siE*(l3E^2 + (siE - slE)^2)*slE) + 
        c3E*(4*d3E*d4E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
          4*kw3E*siE*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])*
           (l3E^2 + (siE - slE)^2)*slE + d3E*g*l3E*m3E*(siE - slE)*slE + 
          d4E*g*l3E*m3E*siE*(-siE + slE)) + c3E^2*l3E^2*
         (4*d4E*kw3E*siE*(siE - slE) + g*m3E*siE*slE + 4*d3E*kw3E*slE*
           (-siE + slE)))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, 
     {0, (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 
      (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)) + 
       (4*kw2E*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/l2E^2 - 
       (g*(m2E + m3E)*(n2E - n3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E)))/
        (c2E*l2E^3) - ((c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E)*
         (g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (4*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))*(n4E - n5E))/
        (l3E^2 + (siE - slE)^2) + 
       (d3E*(g*m3E + 4*c3E*kw3E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 
      (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2E*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n3E + d2E*(-n2E + n3E))^2)/(c2E*l2E^3) - 
       ((c3E*l3E*n4E + d3E*(n4E - n5E))^2*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*(l3E^2 + (siE - slE)^2)^(3/2)) + 
       (4*kw3E*(c3E*l3E*n4E + d3E*(n4E - n5E))^2)/(l3E^2 + (siE - slE)^2) + 
       ((d3E^2 + c3E*d3E*l3E + n4E*n5E)*(g*m3E + 4*c3E*kw3E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])))/
        (c3E*Sqrt[l3E^2 + (siE - slE)^2]), 0, 0, 0, 0, 0, 0, 0, 
      (c3E*g*l3E*m3E*n4E*(n4E - n5E) + 4*c3E^2*kw3E*l3E^2*n4E*(-n4E + n5E) - 
        4*c3E*d3E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        d3E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E^3*n4E*n5E + c3E^2*l3E^2*
         (4*d4E*kw3E*n4E*(n4E - n5E) + g*m3E*n4E*n5E + 4*d3E*kw3E*n5E*
           (-n4E + n5E)) + c3E*(d3E*g*l3E*m3E*(n4E - n5E)*n5E + 
          d4E*g*l3E*m3E*n4E*(-n4E + n5E) - 4*kw3E*n4E*n5E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2) + 
          4*d3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
              (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2)) + 
        g*m3E*(-(n4E*n5E*(l3E^2 + (siE - slE)^2)) + 
          d3E*d4E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
            slE^2)))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2))}, 
     {0, 0, 0, 0, 0, 0, (-(g*l3I^2*m3I) - 4*c3I*kw3I*
         (-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (d3I*g*l3I^2*m3I + 4*c3I*d3I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*siI*(siI - slI) + 
        c3I*g*l3I*m3I*siI*(-siI + slI))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, (g*l3I^2*m3I + 4*c3I*kw3I*
         (-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (d4I*g*l3I^2*m3I + 4*c3I*d4I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + c3I*g*l3I*m3I*(siI - slI)*slI + 
        4*c3I^2*kw3I*l3I^2*slI*(-siI + slI))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (c3I*g*l3I*m3I*n4I*(n4I - n5I) + 4*c3I^2*kw3I*l3I^2*n4I*(-n4I + n5I) - 
        4*c3I*d3I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        d3I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - (siI - slI)^2) + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + 
          siI^2 - 2*siI*slI + slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      0, 0, (4*c3I^2*kw3I*l3I^2*(n4I - n5I)*n5I + c3I*g*l3I*m3I*n5I*
         (-n4I + n5I) - 4*c3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + 
            n5I^2 - (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        d4I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, (-4*c3I^3*kw3I*l3I^3 + c3I^2*g*l3I^2*m3I - 
        g*m3I*(l3I^2 + (siI - slI)^2) - 4*c3I*kw3I*
         (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (4*c3I^3*kw3I*l3I^3 - c3I^2*g*l3I^2*m3I + 
        g*m3I*(l3I^2 + (siI - slI)^2) + 4*c3I*kw3I*
         (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(g*m3I*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
           siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + 
           n4I*n5I*(siI^2 + slI^2))) - 4*c3I*kw3I*
         (-(l3I^3*(n4I*n5I + siI*slI)) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2]*
           (n4I*n5I + siI*slI) + Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2*
           (n4I*n5I + siI*slI) + l3I*(n4I^2*slI^2 - 
            siI*(-(n5I^2*siI) + (siI - slI)^2*slI) - 
            n4I*n5I*(siI^2 + slI^2))))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (g*m3I*(-(n4I^2*slI^2) + l3I^2*(n4I*n5I + siI*slI) + 
          siI*(-(n5I^2*siI) + (siI - slI)^2*slI) + n4I*n5I*(siI^2 + slI^2)) + 
        4*c3I*kw3I*(-(l3I^3*(n4I*n5I + siI*slI)) + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2]*(n4I*n5I + siI*slI) + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2*(n4I*n5I + siI*slI) + 
          l3I*(n4I^2*slI^2 - siI*(-(n5I^2*siI) + (siI - slI)^2*slI) - 
            n4I*n5I*(siI^2 + slI^2))))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 
      (-(d4I*g*l3I^2*m3I) - 4*c3I*d4I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + 4*c3I^2*kw3I*l3I^2*(siI - slI)*slI + 
        c3I*g*l3I*m3I*slI*(-siI + slI))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 
      0, 0, 0, (-4*c3I^3*kw3I*l3I^3*siI*slI + 
        g*m3I*(d3I*d4I*l3I^2 - siI*(l3I^2 + (siI - slI)^2)*slI) + 
        c3I*(4*d3I*d4I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
          4*kw3I*siI*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])*
           (l3I^2 + (siI - slI)^2)*slI + d3I*g*l3I*m3I*(siI - slI)*slI + 
          d4I*g*l3I*m3I*siI*(-siI + slI)) + c3I^2*l3I^2*
         (4*d4I*kw3I*siI*(siI - slI) + g*m3I*siI*slI + 4*d3I*kw3I*slI*
           (-siI + slI)))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 
      0, 0, (d4I*g*l3I^2*m3I + 4*c3I*d4I*kw3I*(-l3I^3 + 
          l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
           (siI - slI)^2) + c3I*g*l3I*m3I*(siI - slI)*slI + 
        4*c3I^2*kw3I*l3I^2*slI*(-siI + slI))/
       (c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (4*c3I^3*kw3I*l3I^3*slI^2 + g*m3I*(d4I^2*l3I^2 + 
          siI*(l3I^2 + (siI - slI)^2)*slI) + 
        c3I*(4*d4I^2*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 
          4*kw3I*siI*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])*
           (l3I^2 + (siI - slI)^2)*slI + d4I*g*l3I*m3I*(l3I^2 + siI^2 - 
            slI^2)) + c3I^2*l3I*(-(g*l3I*m3I*slI^2) + 
          4*d4I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2 + 
            l3I*(-siI^2 + slI^2))))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 
      (c3I*g*l3I*m3I*(n4I - n5I)*n5I + 4*c3I^2*kw3I*l3I^2*n5I*(-n4I + n5I) + 
        4*c3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
            (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) + 
        d4I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (-4*c3I^3*kw3I*l3I^3*n4I*n5I + c3I^2*l3I^2*
         (4*d4I*kw3I*n4I*(n4I - n5I) + g*m3I*n4I*n5I + 4*d3I*kw3I*n5I*
           (-n4I + n5I)) + c3I*(d3I*g*l3I*m3I*(n4I - n5I)*n5I + 
          d4I*g*l3I*m3I*n4I*(-n4I + n5I) - 4*kw3I*n4I*n5I*
           (-l3I + Sqrt[l3I^2 + (siI - slI)^2])*(l3I^2 + (siI - slI)^2) + 
          4*d3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - 
              (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2)) + 
        g*m3I*(-(n4I*n5I*(l3I^2 + (siI - slI)^2)) + 
          d3I*d4I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
            slI^2)))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 
      0, (4*c3I^2*kw3I*l3I^2*(n4I - n5I)*n5I + c3I*g*l3I*m3I*n5I*
         (-n4I + n5I) - 4*c3I*d4I*kw3I*(-l3I^3 + l3I*(n4I^2 - 2*n4I*n5I + 
            n5I^2 - (siI - slI)^2) + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + 
          Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2) - 
        d4I*g*m3I*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
          slI^2))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 
      (4*c3I^3*kw3I*l3I^3*n5I^2 - c3I^2*l3I*(g*l3I*m3I*n5I^2 - 
          4*d4I*kw3I*(-l3I^3 + l3I^2*Sqrt[l3I^2 + (siI - slI)^2] - 
            l3I*(2*n4I*n5I - 2*n5I^2 + (siI - slI)^2) + 
            Sqrt[l3I^2 + (siI - slI)^2]*(siI - slI)^2)) + 
        c3I*(4*kw3I*n4I*n5I*(-l3I + Sqrt[l3I^2 + (siI - slI)^2])*
           (l3I^2 + (siI - slI)^2) + 4*d4I^2*kw3I*(-l3I^3 + 
            l3I*(n4I^2 - 2*n4I*n5I + n5I^2 - (siI - slI)^2) + 
            l3I^2*Sqrt[l3I^2 + (siI - slI)^2] + Sqrt[l3I^2 + (siI - slI)^2]*
             (siI - slI)^2) + d4I*g*l3I*m3I*(l3I^2 + 2*n4I*n5I - 2*n5I^2 + 
            siI^2 - 2*siI*slI + slI^2)) + 
        g*m3I*(n4I*n5I*(l3I^2 + (siI - slI)^2) + 
          d4I^2*(l3I^2 - n4I^2 + 2*n4I*n5I - n5I^2 + siI^2 - 2*siI*slI + 
            slI^2)))/(c3I*(l3I^2 + (siI - slI)^2)^(3/2)), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(g*l3E^2*m3E) - 4*c3E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (d3E*g*l3E^2*m3E + 4*c3E*d3E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*siE*(siE - slE) + 
        c3E*g*l3E*m3E*siE*(-siE + slE))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, (g*l3E^2*m3E + 4*c3E*kw3E*
         (-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (d4E*g*l3E^2*m3E + 4*c3E*d4E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + c3E*g*l3E*m3E*(siE - slE)*slE + 
        4*c3E^2*kw3E*l3E^2*slE*(-siE + slE))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, (-4*c3E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (c3E*g*l3E*m3E*n4E*(n4E - n5E) + 4*c3E^2*kw3E*l3E^2*n4E*(-n4E + n5E) - 
        4*c3E*d3E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        d3E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - (siE - slE)^2) + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + 
          siE^2 - 2*siE*slE + slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 
      0, 0, (4*c3E^2*kw3E*l3E^2*(n4E - n5E)*n5E + c3E*g*l3E*m3E*n5E*
         (-n4E + n5E) - 4*c3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + 
            n5E^2 - (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        d4E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2))}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E^3 + c3E^2*g*l3E^2*m3E - 
        g*m3E*(l3E^2 + (siE - slE)^2) - 4*c3E*kw3E*
         (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (4*c3E^3*kw3E*l3E^3 - c3E^2*g*l3E^2*m3E + 
        g*m3E*(l3E^2 + (siE - slE)^2) + 4*c3E*kw3E*
         (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(g*m3E*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
           siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + 
           n4E*n5E*(siE^2 + slE^2))) - 4*c3E*kw3E*
         (-(l3E^3*(n4E*n5E + siE*slE)) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2]*
           (n4E*n5E + siE*slE) + Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2*
           (n4E*n5E + siE*slE) + l3E*(n4E^2*slE^2 - 
            siE*(-(n5E^2*siE) + (siE - slE)^2*slE) - 
            n4E*n5E*(siE^2 + slE^2))))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (g*m3E*(-(n4E^2*slE^2) + l3E^2*(n4E*n5E + siE*slE) + 
          siE*(-(n5E^2*siE) + (siE - slE)^2*slE) + n4E*n5E*(siE^2 + slE^2)) + 
        4*c3E*kw3E*(-(l3E^3*(n4E*n5E + siE*slE)) + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2]*(n4E*n5E + siE*slE) + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2*(n4E*n5E + siE*slE) + 
          l3E*(n4E^2*slE^2 - siE*(-(n5E^2*siE) + (siE - slE)^2*slE) - 
            n4E*n5E*(siE^2 + slE^2))))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-(d4E*g*l3E^2*m3E) - 4*c3E*d4E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + 4*c3E^2*kw3E*l3E^2*(siE - slE)*slE + 
        c3E*g*l3E*m3E*slE*(-siE + slE))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 
      0, 0, 0, (-4*c3E^3*kw3E*l3E^3*siE*slE + 
        g*m3E*(d3E*d4E*l3E^2 - siE*(l3E^2 + (siE - slE)^2)*slE) + 
        c3E*(4*d3E*d4E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
          4*kw3E*siE*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])*
           (l3E^2 + (siE - slE)^2)*slE + d3E*g*l3E*m3E*(siE - slE)*slE + 
          d4E*g*l3E*m3E*siE*(-siE + slE)) + c3E^2*l3E^2*
         (4*d4E*kw3E*siE*(siE - slE) + g*m3E*siE*slE + 4*d3E*kw3E*slE*
           (-siE + slE)))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 
      0, 0, (d4E*g*l3E^2*m3E + 4*c3E*d4E*kw3E*(-l3E^3 + 
          l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
           (siE - slE)^2) + c3E*g*l3E*m3E*(siE - slE)*slE + 
        4*c3E^2*kw3E*l3E^2*slE*(-siE + slE))/
       (c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (4*c3E^3*kw3E*l3E^3*slE^2 + g*m3E*(d4E^2*l3E^2 + 
          siE*(l3E^2 + (siE - slE)^2)*slE) + 
        c3E*(4*d4E^2*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 
          4*kw3E*siE*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])*
           (l3E^2 + (siE - slE)^2)*slE + d4E*g*l3E*m3E*(l3E^2 + siE^2 - 
            slE^2)) + c3E^2*l3E*(-(g*l3E*m3E*slE^2) + 
          4*d4E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2 + 
            l3E*(-siE^2 + slE^2))))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (c3E*g*l3E*m3E*(n4E - n5E)*n5E + 4*c3E^2*kw3E*l3E^2*n5E*(-n4E + n5E) + 
        4*c3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
            (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) + 
        d4E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E^3*n4E*n5E + c3E^2*l3E^2*
         (4*d4E*kw3E*n4E*(n4E - n5E) + g*m3E*n4E*n5E + 4*d3E*kw3E*n5E*
           (-n4E + n5E)) + c3E*(d3E*g*l3E*m3E*(n4E - n5E)*n5E + 
          d4E*g*l3E*m3E*n4E*(-n4E + n5E) - 4*kw3E*n4E*n5E*
           (-l3E + Sqrt[l3E^2 + (siE - slE)^2])*(l3E^2 + (siE - slE)^2) + 
          4*d3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - 
              (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2)) + 
        g*m3E*(-(n4E*n5E*(l3E^2 + (siE - slE)^2)) + 
          d3E*d4E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
            slE^2)))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 0, 0, 0, 
      0, (4*c3E^2*kw3E*l3E^2*(n4E - n5E)*n5E + c3E*g*l3E*m3E*n5E*
         (-n4E + n5E) - 4*c3E*d4E*kw3E*(-l3E^3 + l3E*(n4E^2 - 2*n4E*n5E + 
            n5E^2 - (siE - slE)^2) + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + 
          Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2) - 
        d4E*g*m3E*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
          slE^2))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2)), 0, 0, 0, 
      (4*c3E^3*kw3E*l3E^3*n5E^2 - c3E^2*l3E*(g*l3E*m3E*n5E^2 - 
          4*d4E*kw3E*(-l3E^3 + l3E^2*Sqrt[l3E^2 + (siE - slE)^2] - 
            l3E*(2*n4E*n5E - 2*n5E^2 + (siE - slE)^2) + 
            Sqrt[l3E^2 + (siE - slE)^2]*(siE - slE)^2)) + 
        c3E*(4*kw3E*n4E*n5E*(-l3E + Sqrt[l3E^2 + (siE - slE)^2])*
           (l3E^2 + (siE - slE)^2) + 4*d4E^2*kw3E*(-l3E^3 + 
            l3E*(n4E^2 - 2*n4E*n5E + n5E^2 - (siE - slE)^2) + 
            l3E^2*Sqrt[l3E^2 + (siE - slE)^2] + Sqrt[l3E^2 + (siE - slE)^2]*
             (siE - slE)^2) + d4E*g*l3E*m3E*(l3E^2 + 2*n4E*n5E - 2*n5E^2 + 
            siE^2 - 2*siE*slE + slE^2)) + 
        g*m3E*(n4E*n5E*(l3E^2 + (siE - slE)^2) + 
          d4E^2*(l3E^2 - n4E^2 + 2*n4E*n5E - n5E^2 + siE^2 - 2*siE*slE + 
            slE^2)))/(c3E*(l3E^2 + (siE - slE)^2)^(3/2))}}
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
cqxm = {{0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
         (n0 - n1))/l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
        (n0 - n1))/(4*l1^2), (-4*c1^3*kw1*l1 - 
        g*(m1 + m2E + m2I + m3E + m3I) + c1^2*g*(m1 + m2E + m2I + m3E + m3I))/
       (4*c1*l1), ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*
        su)/(4*l1^2), ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx + siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/l2I^2, 
      ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx - siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/(4*l2I^2), 
      ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx + siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
       (4*l2I^2), ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx - siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
        l2I^2, ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx + siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx - siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/(4*l2E^2), 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx + siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E)*siE)/(4*l2E^2), ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
         c2E^2*g*(m2E + m3E))*siE)/(4*c2E*l2E), 
      (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 4*c2E^3*kw2E*l2E^2*n3E + 
        g*l2E*(m2E + m3E)*n3E - c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + 
          g*(m2E + m3E)*n3E))/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx - siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
        4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
        c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0}, 
     {0, -((g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
         4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3)), 0, 0, 0, 
      (dtop*(-(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2)) - 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, -4*c1^2*kw1 - (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (-8*c1*kw1*l1*(n0 - n1)^2*su^2 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2*su^2 - 
        2*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(n0*n1 + su^2))/(2*c1*l1^3), 0, 
      0}, {-((d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      -4*c1^2*kw1*su^2 + (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - su^2))/(c1*l1), 0}, 
     {0, (d0*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*n1)/(c1*l1^3), 0, 0, 0, 
      (g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - n0*n1) - 
        4*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)) + 
        g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3)}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
g /: g::usage = "g is local gravity."
 
m1 /: m1::usage = "m1 is mass of top/upper/platform mass."
 
m2I /: m2I::usage = "m2I is mass of input-chain intermediate mass."
 
m2E /: m2E::usage = "m2E is mass of end-chain intermediate mass."
 
m3I /: m3I::usage = "m3I is mass of input-chain optic."
 
m3E /: m3E::usage = "m3E is mass of end-chain optic."
 
I1x /: I1x::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1y /: I1y::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1z /: I1z::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} is \
the MOI tensor for the upper/platform mass."
 
I1xy /: I1xy::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1yz /: I1yz::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I1zx /: I1zx::usage = "IM1={{I1x,I1xy,I1zx},{I1xy,I1y,I1yz},{I1zx,I1yz,I1z}} \
is the MOI tensor for the upper/platform mass."
 
I2Ix /: I2Ix::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iy /: I2Iy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iz /: I2Iz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I2I\
yz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ixy /: I2Ixy::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Iyz /: I2Iyz::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Izx /: I2Izx::usage = "IM2I={{I2Ix,I2Ixy,I2Izx},{I2Ixy,I2Iy,I2Iyz},{I2Izx,I\
2Iyz,I2Iz}} is the MOI tensor for the input-chain intermediate/middle mass."
 
I2Ex /: I2Ex::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ey /: I2Ey::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ez /: I2Ez::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I2E\
yz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Exy /: I2Exy::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Eyz /: I2Eyz::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I2Ezx /: I2Ezx::usage = "IM2E={{I2Ex,I2Exy,I2Ezx},{I2Exy,I2Ey,I2Eyz},{I2Ezx,I\
2Eyz,I2Ez}} is the MOI tensor for the end-chain intermediate/middle mass."
 
I3Ix /: I3Ix::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iy /: I3Iy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iz /: I3Iz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I3I\
yz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ixy /: I3Ixy::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Iyz /: I3Iyz::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Izx /: I3Izx::usage = "IM3I={{I3Ix,I3Ixy,I3Izx},{I3Ixy,I3Iy,I3Iyz},{I3Izx,I\
3Iyz,I3Iz}} is the MOI tensor for the input-chain optic."
 
I3Ex /: I3Ex::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ey /: I3Ey::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ez /: I3Ez::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I3E\
yz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Exy /: I3Exy::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Eyz /: I3Eyz::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
I3Ezx /: I3Ezx::usage = "IM3E={{I3Ex,I3Exy,I3Ezx},{I3Exy,I3Ey,I3Eyz},{I3Ezx,I\
3Eyz,I3Ez}} is the MOI tensor for the end-chain optic."
 
dtop /: dtop::usage = "dtop is the distance down from the upper blades (on \
the structure) to the wire attachment points for the upper wires."
 
d0 /: d0::usage = "d0 is the distance up from the FRP of the upper mass to \
the wire attachment points for the upper wires."
 
d1I /: d1I::usage = "d1I is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the input-chain \
intermediate wires."
 
d1E /: d1E::usage = "d1E is the distance down from the intermediate blades \
(on the upper mass) to the wire attachment points for the end-chain \
intermediate wires."
 
d2I /: d2I::usage = "d2I is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the input-chain intermediate wires."
 
d2E /: d2E::usage = "d2E is the distance up from the FRP of the intermediate \
mass to the wire attachment points for the end-chainintermediate wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
chainIx /: chainIx::usage = "chainIx is the x offset of the input chain, \
relative to the centre of the upper mass."
 
chainEx /: chainEx::usage = "chainEx is the x offset of the end chain, \
relative to the centre of the upper mass."
 
n0 /: n0::usage = "n0 is the two-sided y-direction separation of the wire \
attachment points at the top end of the upper wires."
 
n1 /: n1::usage = "n1 is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the upper wires."
 
n2I /: n2I::usage = "n2I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain intermediate wires."
 
n2E /: n2E::usage = "n2E is the two-sided y-direction separation of the wire \
attachment points at the top end of the end-chain intermediate wires."
 
n3I /: n3I::usage = "n3I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain intermediate wires."
 
n3E /: n3E::usage = "n3E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain intermediate wires."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
su /: su::usage = "su is the two-sided x-direction separation of upper wires."
 
siI /: siI::usage = "siI is the two-sided x-direction separation of \
input-chain intermediate wires."
 
siE /: siE::usage = "siE is the two-sided x-direction separation of end-chain \
intermediate wires."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
kbuz /: kbuz::usage = 
     "kbuz is the net vertical elasticity of the upper blades (on \
structure)."
 
kbizI /: kbizI::usage = "kbizI is the net vertical elasticity of the \
input-chain intermediate blades (on upper mass)."
 
kbizE /: kbizE::usage = "kbizE is the net vertical elasticity of the \
end-chain intermediate blades (on upper mass)."
 
l1 /: l1::usage = "l1 is the wire length from the blades on the structure to \
the top/upper/platform mass. It is interpreted as either a stretched length \
or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2I /: l2I::usage = "l2I is part of the specification of the model and \
represents the wire length from the blades on the top/upper/platform mass to \
the input-chain intermediate mass. It is interpreted as either a stretched \
length or an unstretched length depending on the value of the switch constant \
unstretched."
 
l2E /: l2E::usage = "l2E is the wire length from the blades on the \
top/upper/platform mass to the end-chain intermediate mass. It is interpreted \
as either a stretched length or an unstretched length depending on the value \
of the switch constant unstretched."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
kw1 /: kw1::usage = "kw1 is net longitudinal elasticity of wires from blades \
on structure to upper mass."
 
kw2I /: kw2I::usage = "kw2I is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw2E /: kw2E::usage = "kw2E is net longitudinal elasticity of wires from \
blades on upper mass to optic."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
Y1 /: Y1::usage = "Y1 is Young's modulus of upper wires."
 
Y2I /: Y2I::usage = 
     "Y2I is Young's modulus of input-chain intermediate wires."
 
Y2E /: Y2E::usage = "Y2E is Young's modulus of end-chain intermediate wires."
 
Y3I /: Y3I::usage = "Y3I is Young's modulus of input-chain lower wires."
 
Y3E /: Y3E::usage = "Y3E is Young's modulus of end-chain lower wires."
 
M11 /: M11::usage = "M11 is the moment of area of wires from blades on \
structure to upper mass in direction \"1\"."
 
M21I /: M21I::usage = "M21I is the moment of area of the input-chain \
intermediate wires in direction \"1\""
 
M21E /: M21E::usage = "M21E is the moment of area of the end-chain \
intermediate wires in direction \"1\""
 
M31I /: M31I::usage = "M31I is the moment of area of the input-chain lower \
wires/ribbons/rods in direction \"1\""
 
M31E /: M31E::usage = "M31E is the moment of area of the end-chain lower \
wires/ribbons/rods in direction \"1\""
 
sm = {{(g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0, 0, 0, 
      -((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0}, 
     {0, (g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
        4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3), 0, 0, 0, 
      (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, 4*c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (4*c1*kw1*l1*(n0 - n1)^2*su^2 + g*(m1 + m2E + m2I + m3E + m3I)*
         (-((n0 - n1)^2*su^2) + l1^2*(n0*n1 + su^2)))/(c1*l1^3), 0, 0}, 
     {-((dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + su^2))/(c1*l1), 
      0}, {0, (dtop*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) + c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3), 0, 0, 0, 
      (32*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))^2 - 
        8*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))^2 + 
        8*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(dtop^2 + c1*dtop*l1 + n0*n1))/
       (8*c1*l1^3)}}
 
c1 /: c1::usage = 
     "c1 is the cosine of the angle to the vertical of the upper wires."
 
qm = {{kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0}, {0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0}, {0, 0, kbuz + c1^2*kw1 + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, kbuz + c1^2*kw1 + (g*(m1 + m2E + m2I + m3E + m3I))/
        (4*c1*l1) - (c1*g*(m1 + m2E + m2I + m3E + m3I))/(4*l1), 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0, 0}, {0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, kbizI + c2I^2*kw2I + 
       (g*(m2I + m3I))/(4*c2I*l2I) - (c2I*g*(m2I + m3I))/(4*l2I), 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E), 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, kbizE + c2E^2*kw2E + 
       (g*(m2E + m3E))/(4*c2E*l2E) - (c2E*g*(m2E + m3E))/(4*l2E)}}
 
c2I /: c2I::usage = "c2I is the cosine of the angle to the vertical of the \
input-chain intermediate wires."
 
c2E /: c2E::usage = "c2E is the cosine of the angle to the vertical of the \
end-chain intermediate wires."
 
cqsm = {{0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
       (4*l1^2), (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) - 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) + 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      (-8*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1)) - 
        (2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1)/(8*l1^2)}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
 
km = {{m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, m1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, m1, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1z, I1yz, I1zx, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, I1yz, I1y, I1xy, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, I1zx, I1xy, I1x, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, m2I, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iz, I2Iyz, I2Izx, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Iyz, I2Iy, 
      I2Ixy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, I2Izx, I2Ixy, I2Ix, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m2E, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ez, I2Eyz, I2Ezx, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, I2Eyz, I2Ey, I2Exy, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I2Ezx, I2Exy, I2Ex, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3I, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, m3I, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Iz, I3Iyz, I3Izx, 0, 0, 0, 0, 
      0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      I3Iyz, I3Iy, I3Ixy, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Izx, I3Ixy, I3Ix, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      m3E, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, m3E, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ez, I3Eyz, I3Ezx}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, I3Eyz, I3Ey, I3Exy}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, I3Ezx, I3Exy, I3Ex}}
 
xm = {{g*((m2E + m3E)/(c2E*l2E) + (m2I + m3I)/(c2I*l2I) + 
        (m1 + m2E + m2I + m3E + m3I)/(c1*l1)), 0, 0, 0, 
      g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - (d1I*(m2I + m3I))/(c2I*l2I) + 
        (d0*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 
      -((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      -((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, -((g*(m2E + m3E))/(c2E*l2E)), 0, 
      0, 0, -((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0}, {0, (g*(m2E + m3E))/(c2E*l2E) + (g*(m2I + m3I))/(c2I*l2I) + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + (4*kw1*(n0 - n1)^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2)/(c1*l1^3) + 
       (4*kw2E*(n2E - n3E)^2)/l2E^2 - (g*(m2E + m3E)*(n2E - n3E)^2)/
        (c2E*l2E^3) + (4*kw2I*(n2I - n3I)^2)/l2I^2 - 
       (g*(m2I + m3I)*(n2I - n3I)^2)/(c2I*l2I^3), 0, 
      (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2))/(c2E*l2E^3) + (chainIx*g*(m2I + m3I)*
         (l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 0, 0, 
      (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
          (n2E - n3E)^2)/(c2E*l2E^3)), 0, 0, 0, 
      (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
         (n2E - n3E)*n3E)/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 4*c1^2*kw1 + 4*c2E^2*kw2E + 4*c2I^2*kw2I + 
       (g*(m2E + m3E))/(c2E*l2E) - (c2E*g*(m2E + m3E))/l2E + 
       (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I + 
       (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) - 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, -4*c2E^2*chainEx*kw2E - 
       (chainEx*g*(m2E + m3E))/(c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, 0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 0, 0, 0, 0, -4*c2E^2*kw2E - 
       (g*(m2E + m3E))/(c2E*l2E) + (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3) + 
       (chainIx*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*chainIx*kw2I*(n2I - n3I)^2)/l2I^2, 0, 
      ((g*(m1 + m2E + m2I + m3E + m3I)*(-((n0 - n1)^2*su^2) + 
           l1^2*(n0*n1 + su^2)))/c1 + 
        (l1*((g*l1^2*(m2I + m3I)*(chainIx^2*(l2I^2 - (n2I - n3I)^2) - 
              (n2I - n3I)^2*siI^2 + l2I^2*(n2I*n3I + siI^2)))/c2I + 
           (l2I*(chainEx^2*l1^2*l2I^2*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^
                   2) + 4*c2E*kw2E*l2E*(n2E - n3E)^2) + g*l1^2*l2I^2*(m2E + 
                m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)) + 
              4*c2E*l2E*(chainIx^2*kw2I*l1^2*l2E^2*(n2I - n3I)^2 + 
                kw2E*l1^2*l2I^2*(n2E - n3E)^2*siE^2 + l2E^2*
                 (kw2I*l1^2*(n2I - n3I)^2*siI^2 + kw1*l2I^2*(n0 - n1)^2*
                   su^2))))/(c2E*l2E^3)))/l2I^3)/l1^3, 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + g*(m2I + m3I)*
          (-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/(c2I*l2I^3)), 
      0, (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + g*(m2E + m3E)*
          (-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/(c2E*l2E^3)), 
      0, (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0}, {g*(-((d1E*(m2E + m3E))/(c2E*l2E)) - 
        (d1I*(m2I + m3I))/(c2I*l2I) + (d0*(m1 + m2E + m2I + m3E + m3I))/
         (c1*l1)), 0, -4*c2E^2*chainEx*kw2E - (chainEx*g*(m2E + m3E))/
        (c2E*l2E) + (c2E*chainEx*g*(m2E + m3E))/l2E + 
       (chainIx*(-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I)))/
        (c2I*l2I), 0, g*(d1E*(m2E + m3E) + d1I*(m2I + m3I) + 
         d0*(m1 + m2E + m2I + m3E + m3I)) + 4*c2E^2*kw2E*
        (chainEx^2 + siE^2) - (c2E*g*(m2E + m3E)*(chainEx^2 + siE^2))/l2E + 
       (g*(m2E + m3E)*(chainEx^2 + d1E^2 + siE^2))/(c2E*l2E) + 
       4*c2I^2*kw2I*(chainIx^2 + siI^2) - 
       (c2I*g*(m2I + m3I)*(chainIx^2 + siI^2))/l2I + 
       (g*(m2I + m3I)*(chainIx^2 + d1I^2 + siI^2))/(c2I*l2I) + 
       4*c1^2*kw1*su^2 - (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + su^2))/(c1*l1), 0, 
      (d1I*g*(m2I + m3I))/(c2I*l2I), 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, (d1I*d2I*g*(m2I + m3I) + 
        (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI^2)/
       (c2I*l2I), 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, (d1E*d2E*g*(m2E + m3E) + 
        (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE^2)/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d1E*g*(m2E + m3E))/(c2E*l2E) + (d1I*g*(m2I + m3I))/(c2I*l2I) - 
       (d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (4*kw1*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)*(c1*l1*n1 + d0*(-n0 + n1)))/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        l2E^2 - (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))*(n2E - n3E))/
        (c2E*l2E^3) + (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        l2I^2 - (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))*(n2I - n3I))/
        (c2I*l2I^3), 0, 
      (chainEx*(d1E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
            4*c2E*kw2E*l2E*(n2E - n3E)^2) + c2E*l2E*(4*c2E*kw2E*l2E - 
            g*(m2E + m3E))*n2E*(n2E - n3E)))/(c2E*l2E^3) + 
       (chainIx*d1I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/(c2I*l2I^3) + 
       (4*c2I*chainIx*kw2I*n2I*(n2I - n3I))/l2I + 
       (chainIx*(-(g*(m2I + m3I)*n2I) + 4*d1I*kw2I*(n2I - n3I))*(n2I - n3I))/
        l2I^2, 0, (g*(m1 + m2E + m2I + m3E + m3I)*(d0^2 + c1*d0*l1 + n0*n1))/
        (c1*l1) + (4*kw1*(c1*l1*n1 + d0*(-n0 + n1))^2)/l1^2 - 
       (g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1))^2)/
        (c1*l1^3) + (4*kw2E*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/l2E^2 - 
       (g*(m2E + m3E)*(c2E*l2E*n2E + d1E*(n2E - n3E))^2)/(c2E*l2E^3) + 
       (g*(m2E + m3E)*(d1E^2 + c2E*d1E*l2E + n2E*n3E))/(c2E*l2E) + 
       (4*kw2I*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/l2I^2 - 
       (g*(m2I + m3I)*(c2I*l2I*n2I + d1I*(n2I - n3I))^2)/(c2I*l2I^3) + 
       (g*(m2I + m3I)*(d1I^2 + c2I*d1I*l2I + n2I*n3I))/(c2I*l2I), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, 0, 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*n2E*(n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, (d1I*g*(m2I + m3I))/(c2I*l2I), 
      0, (g*m3I)/(c3I*l3I) + (g*(m2I + m3I))/(c2I*l2I), 0, 0, 0, 
      -((d3I*g*m3I)/(c3I*l3I)) + (d2I*g*(m2I + m3I))/(c2I*l2I), 0, 0, 0, 0, 
      0, 0, 0, -((g*m3I)/(c3I*l3I)), 0, 0, 0, -((d4I*g*m3I)/(c3I*l3I)), 0, 0, 
      0, 0, 0, 0, 0}, {0, -((g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
         4*c2I*kw2I*l2I*(n2I - n3I)^2)/(c2I*l2I^3)), 0, 
      -((chainIx*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
          4*c2I*kw2I*l2I*(n2I - n3I)^2))/(c2I*l2I^3)), 0, 
      (d1I*(-(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2)) - 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*n2I*
         (n2I - n3I))/(c2I*l2I^3), 0, (g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/
        (c2I*l2I^3) + (g*m3I*(l3I^2 - (n4I - n5I)^2))/(c3I*l3I^3) + 
       (4*(kw2I*l3I^2*(n2I - n3I)^2 + kw3I*l2I^2*(n4I - n5I)^2))/
        (l2I^2*l3I^2), 0, 0, 0, -((d2I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/
         (c2I*l2I^3)) - (4*d2I*kw2I*(n2I - n3I)^2)/l2I^2 + 
       (4*c2I*kw2I*(n2I - n3I)*n3I)/l2I - (g*(m2I + m3I)*(n2I - n3I)*n3I)/
        l2I^2 + (d3I*g*m3I*(l3I^2 - (n4I - n5I)^2))/(c3I*l3I^3) + 
       (4*c3I*kw3I*n4I*(n4I - n5I))/l3I + (4*d3I*kw3I*(n4I - n5I)^2)/l3I^2 + 
       (g*m3I*n4I*(-n4I + n5I))/l3I^2, 0, 0, 0, 0, 0, 0, 0, 
      (g*m3I*(-l3I^2 + (n4I - n5I)^2) - 4*c3I*kw3I*l3I*(n4I - n5I)^2)/
       (c3I*l3I^3), 0, 0, 0, (d4I*g*m3I*(l3I^2 - (n4I - n5I)^2) + 
        4*c3I*d4I*kw3I*l3I*(n4I - n5I)^2 - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*
         (n4I - n5I)*n5I)/(c3I*l3I^3), 0, 0, 0, 0, 0, 0}, 
     {0, 0, -4*c2I^2*kw2I - (g*(m2I + m3I))/(c2I*l2I) + 
       (c2I*g*(m2I + m3I))/l2I, 0, 
      (chainIx*(4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I)))/
       (c2I*l2I), 0, 0, 0, 4*c2I^2*kw2I + 4*c3I^2*kw3I + (g*m3I)/(c3I*l3I) - 
       (c3I*g*m3I)/l3I + (g*(m2I + m3I))/(c2I*l2I) - (c2I*g*(m2I + m3I))/l2I, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, (-4*c3I^3*kw3I*l3I - g*m3I + 
        c3I^2*g*m3I)/(c3I*l3I), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, -((4*c2I*kw2I*l2I*(n2I - n3I)^2*siI^2 + 
         g*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + l2I^2*(n2I*n3I + siI^2)))/
        (c2I*l2I^3)), 0, 0, 0, 0, 0, 
      ((g*m3I*(-((n4I - n5I)^2*slI^2) + l3I^2*(n4I*n5I + slI^2)))/c3I + 
        (g*l3I^3*(m2I + m3I)*(-((n2I - n3I)^2*siI^2) + 
            l2I^2*(n2I*n3I + siI^2)) + 4*c2I*l2I*l3I*
           (kw2I*l3I^2*(n2I - n3I)^2*siI^2 + kw3I*l2I^2*(n4I - n5I)^2*slI^2))/
         (c2I*l2I^3))/l3I^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I*kw3I*l3I*(n4I - n5I)^2*slI^2 + g*m3I*((n4I - n5I)^2*slI^2 - 
          l3I^2*(n4I*n5I + slI^2)))/(c3I*l3I^3), 0, 0, 0, 0, 0, 0, 0, 0}, 
     {-((d2I*g*(m2I + m3I))/(c2I*l2I)), 0, 0, 0, 
      (d1I*d2I*g*(m2I + m3I) + (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + 
          c2I^2*g*(m2I + m3I))*siI^2)/(c2I*l2I), 0, 
      -((d3I*g*m3I)/(c3I*l3I)) + (d2I*g*(m2I + m3I))/(c2I*l2I), 0, 0, 0, 
      4*c2I^2*kw2I*siI^2 - (c2I*g*(m2I + m3I)*siI^2)/l2I + 
       (g*(m2I + m3I)*(d2I^2 + c2I*d2I*l2I + siI^2))/(c2I*l2I) + 
       4*c3I^2*kw3I*slI^2 - (c3I*g*m3I*slI^2)/l3I + 
       (g*m3I*(d3I^2 + c3I*d3I*l3I + slI^2))/(c3I*l3I), 0, 0, 0, 0, 0, 0, 0, 
      (d3I*g*m3I)/(c3I*l3I), 0, 0, 0, 
      (d3I*d4I*g*m3I + (-4*c3I^3*kw3I*l3I - g*m3I + c3I^2*g*m3I)*slI^2)/
       (c3I*l3I), 0, 0, 0, 0, 0, 0, 0}, 
     {0, (d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
           (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
         (n2I - n3I)*n3I)/(c2I*l2I^3), 0, 
      (chainIx*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 
           4*c2I*kw2I*l2I*(n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - 
           g*(m2I + m3I))*(n2I - n3I)*n3I))/(c2I*l2I^3), 0, 
      (d1I*(d2I*(g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2) + 4*c2I*kw2I*l2I*
             (n2I - n3I)^2) - c2I*l2I*(4*c2I*kw2I*l2I - g*(m2I + m3I))*
           (n2I - n3I)*n3I) + l2I*n2I*(-(c2I*d2I*g*(m2I + m3I)*(n2I - n3I)) - 
          4*c2I^3*kw2I*l2I^2*n3I - g*l2I*(m2I + m3I)*n3I + 
          c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I)))/
       (c2I*l2I^3), 0, -((d2I*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/
         (c2I*l2I^3)) - (4*d2I*kw2I*(n2I - n3I)^2)/l2I^2 + 
       (4*c2I*kw2I*(n2I - n3I)*n3I)/l2I - (g*(m2I + m3I)*(n2I - n3I)*n3I)/
        l2I^2 + (d3I*g*m3I*(l3I^2 - (n4I - n5I)^2))/(c3I*l3I^3) + 
       (4*c3I*kw3I*n4I*(n4I - n5I))/l3I + (4*d3I*kw3I*(n4I - n5I)^2)/l3I^2 + 
       (g*m3I*n4I*(-n4I + n5I))/l3I^2, 0, 0, 0, 4*c3I^2*kw3I*n4I^2 + 
       (c3I*n4I*(-(g*m3I*n4I) + 8*d3I*kw3I*(n4I - n5I)))/l3I + 
       (g*m3I*(d3I^2*(l3I^2 - (n4I - n5I)^2) + l3I^2*n4I*n5I))/(c3I*l3I^3) + 
       ((d2I^2*g*(m2I + m3I)*(l2I^2 - (n2I - n3I)^2))/c2I + 
         4*d2I^2*kw2I*l2I*(n2I - n3I)^2 + (g*l2I^2*(m2I + m3I)*n2I*n3I)/c2I + 
         4*c2I^2*kw2I*l2I^3*n3I^2 - c2I*g*l2I^2*(m2I + m3I)*n3I^2 + 
         8*c2I*d2I*kw2I*l2I^2*n3I*(-n2I + n3I) + d2I*g*l2I*(m2I + m3I)*
          (l2I^2 + 2*(n2I - n3I)*n3I) + 
         (d3I*l2I^3*(4*d3I*kw3I*(n4I - n5I)^2 + g*m3I*(l3I^2 + 
              2*n4I*(-n4I + n5I))))/l3I^2)/l2I^3, 0, 0, 0, 0, 0, 0, 0, 
      (d3I*g*m3I*(-l3I^2 + (n4I - n5I)^2) - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*
         n4I*(n4I - n5I) - 4*c3I*d3I*kw3I*l3I*(n4I - n5I)^2)/(c3I*l3I^3), 0, 
      0, 0, (d3I*(d4I*g*m3I*(l3I^2 - (n4I - n5I)^2) + 4*c3I*d4I*kw3I*l3I*
           (n4I - n5I)^2 - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*(n4I - n5I)*
           n5I) + l3I*n4I*(-4*c3I^3*kw3I*l3I^2*n5I - g*l3I*m3I*n5I + 
          c3I*d4I*g*m3I*(-n4I + n5I) + c3I^2*l3I*(4*d4I*kw3I*(n4I - n5I) + 
            g*m3I*n5I)))/(c3I*l3I^3), 0, 0, 0, 0, 0, 0}, 
     {-((g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, (d1E*g*(m2E + m3E))/(c2E*l2E), 
      0, 0, 0, 0, 0, 0, 0, (g*m3E)/(c3E*l3E) + (g*(m2E + m3E))/(c2E*l2E), 0, 
      0, 0, -((d3E*g*m3E)/(c3E*l3E)) + (d2E*g*(m2E + m3E))/(c2E*l2E), 0, 0, 
      0, 0, 0, 0, 0, -((g*m3E)/(c3E*l3E)), 0, 0, 0, -((d4E*g*m3E)/(c3E*l3E)), 
      0}, {0, -((g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
         4*c2E*kw2E*l2E*(n2E - n3E)^2)/(c2E*l2E^3)), 0, 
      -((chainEx*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2))/(c2E*l2E^3)), 0, 
      (d1E*(-(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2)) - 4*c2E*kw2E*l2E*
           (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*n2E*
         (n2E - n3E))/(c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2))/(c2E*l2E^3) + 
       (g*m3E*(l3E^2 - (n4E - n5E)^2))/(c3E*l3E^3) + 
       (4*(kw2E*l3E^2*(n2E - n3E)^2 + kw3E*l2E^2*(n4E - n5E)^2))/
        (l2E^2*l3E^2), 0, 0, 0, -((d2E*g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2))/
         (c2E*l2E^3)) - (4*d2E*kw2E*(n2E - n3E)^2)/l2E^2 + 
       (4*c2E*kw2E*(n2E - n3E)*n3E)/l2E - (g*(m2E + m3E)*(n2E - n3E)*n3E)/
        l2E^2 + (d3E*g*m3E*(l3E^2 - (n4E - n5E)^2))/(c3E*l3E^3) + 
       (4*c3E*kw3E*n4E*(n4E - n5E))/l3E + (4*d3E*kw3E*(n4E - n5E)^2)/l3E^2 + 
       (g*m3E*n4E*(-n4E + n5E))/l3E^2, 0, 0, 0, 0, 0, 0, 0, 
      (g*m3E*(-l3E^2 + (n4E - n5E)^2) - 4*c3E*kw3E*l3E*(n4E - n5E)^2)/
       (c3E*l3E^3), 0, 0, 0, (d4E*g*m3E*(l3E^2 - (n4E - n5E)^2) + 
        4*c3E*d4E*kw3E*l3E*(n4E - n5E)^2 - c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*
         (n4E - n5E)*n5E)/(c3E*l3E^3)}, 
     {0, 0, -4*c2E^2*kw2E - (g*(m2E + m3E))/(c2E*l2E) + 
       (c2E*g*(m2E + m3E))/l2E, 0, 
      (chainEx*(4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E)))/
       (c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 0, 0, 4*c2E^2*kw2E + 4*c3E^2*kw3E + 
       (g*m3E)/(c3E*l3E) - (c3E*g*m3E)/l3E + (g*(m2E + m3E))/(c2E*l2E) - 
       (c2E*g*(m2E + m3E))/l2E, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E^3*kw3E*l3E - g*m3E + c3E^2*g*m3E)/(c3E*l3E), 0, 0, 0}, 
     {0, 0, 0, -((4*c2E*kw2E*l2E*(n2E - n3E)^2*siE^2 + 
         g*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + l2E^2*(n2E*n3E + siE^2)))/
        (c2E*l2E^3)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      ((g*m3E*(-((n4E - n5E)^2*slE^2) + l3E^2*(n4E*n5E + slE^2)))/c3E + 
        (g*l3E^3*(m2E + m3E)*(-((n2E - n3E)^2*siE^2) + 
            l2E^2*(n2E*n3E + siE^2)) + 4*c2E*l2E*l3E*
           (kw2E*l3E^2*(n2E - n3E)^2*siE^2 + kw3E*l2E^2*(n4E - n5E)^2*slE^2))/
         (c2E*l2E^3))/l3E^3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E*kw3E*l3E*(n4E - n5E)^2*slE^2 + g*m3E*((n4E - n5E)^2*slE^2 - 
          l3E^2*(n4E*n5E + slE^2)))/(c3E*l3E^3), 0, 0}, 
     {-((d2E*g*(m2E + m3E))/(c2E*l2E)), 0, 0, 0, 
      (d1E*d2E*g*(m2E + m3E) + (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
          c2E^2*g*(m2E + m3E))*siE^2)/(c2E*l2E), 0, 0, 0, 0, 0, 0, 0, 
      -((d3E*g*m3E)/(c3E*l3E)) + (d2E*g*(m2E + m3E))/(c2E*l2E), 0, 0, 0, 
      4*c2E^2*kw2E*siE^2 - (c2E*g*(m2E + m3E)*siE^2)/l2E + 
       (g*(m2E + m3E)*(d2E^2 + c2E*d2E*l2E + siE^2))/(c2E*l2E) + 
       4*c3E^2*kw3E*slE^2 - (c3E*g*m3E*slE^2)/l3E + 
       (g*m3E*(d3E^2 + c3E*d3E*l3E + slE^2))/(c3E*l3E), 0, 0, 0, 0, 0, 0, 0, 
      (d3E*g*m3E)/(c3E*l3E), 0, 0, 0, 
      (d3E*d4E*g*m3E + (-4*c3E^3*kw3E*l3E - g*m3E + c3E^2*g*m3E)*slE^2)/
       (c3E*l3E), 0}, {0, (d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
          4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
          g*(m2E + m3E))*(n2E - n3E)*n3E)/(c2E*l2E^3), 0, 
      (chainEx*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 
           4*c2E*kw2E*l2E*(n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - 
           g*(m2E + m3E))*(n2E - n3E)*n3E))/(c2E*l2E^3), 0, 
      (d1E*(d2E*(g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2) + 4*c2E*kw2E*l2E*
             (n2E - n3E)^2) - c2E*l2E*(4*c2E*kw2E*l2E - g*(m2E + m3E))*
           (n2E - n3E)*n3E) + l2E*n2E*(-(c2E*d2E*g*(m2E + m3E)*(n2E - n3E)) - 
          4*c2E^3*kw2E*l2E^2*n3E - g*l2E*(m2E + m3E)*n3E + 
          c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E)))/
       (c2E*l2E^3), 0, 0, 0, 0, 0, 0, 0, 
      -((d2E*g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2))/(c2E*l2E^3)) - 
       (4*d2E*kw2E*(n2E - n3E)^2)/l2E^2 + (4*c2E*kw2E*(n2E - n3E)*n3E)/l2E - 
       (g*(m2E + m3E)*(n2E - n3E)*n3E)/l2E^2 + 
       (d3E*g*m3E*(l3E^2 - (n4E - n5E)^2))/(c3E*l3E^3) + 
       (4*c3E*kw3E*n4E*(n4E - n5E))/l3E + (4*d3E*kw3E*(n4E - n5E)^2)/l3E^2 + 
       (g*m3E*n4E*(-n4E + n5E))/l3E^2, 0, 0, 0, 4*c3E^2*kw3E*n4E^2 + 
       (c3E*n4E*(-(g*m3E*n4E) + 8*d3E*kw3E*(n4E - n5E)))/l3E + 
       (g*m3E*(d3E^2*(l3E^2 - (n4E - n5E)^2) + l3E^2*n4E*n5E))/(c3E*l3E^3) + 
       ((d2E^2*g*(m2E + m3E)*(l2E^2 - (n2E - n3E)^2))/c2E + 
         4*d2E^2*kw2E*l2E*(n2E - n3E)^2 + (g*l2E^2*(m2E + m3E)*n2E*n3E)/c2E + 
         4*c2E^2*kw2E*l2E^3*n3E^2 - c2E*g*l2E^2*(m2E + m3E)*n3E^2 + 
         8*c2E*d2E*kw2E*l2E^2*n3E*(-n2E + n3E) + d2E*g*l2E*(m2E + m3E)*
          (l2E^2 + 2*(n2E - n3E)*n3E) + 
         (d3E*l2E^3*(4*d3E*kw3E*(n4E - n5E)^2 + g*m3E*(l3E^2 + 
              2*n4E*(-n4E + n5E))))/l3E^2)/l2E^3, 0, 0, 0, 0, 0, 0, 0, 
      (d3E*g*m3E*(-l3E^2 + (n4E - n5E)^2) - c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*
         n4E*(n4E - n5E) - 4*c3E*d3E*kw3E*l3E*(n4E - n5E)^2)/(c3E*l3E^3), 0, 
      0, 0, (d3E*(d4E*g*m3E*(l3E^2 - (n4E - n5E)^2) + 4*c3E*d4E*kw3E*l3E*
           (n4E - n5E)^2 - c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*(n4E - n5E)*
           n5E) + l3E*n4E*(-4*c3E^3*kw3E*l3E^2*n5E - g*l3E*m3E*n5E + 
          c3E*d4E*g*m3E*(-n4E + n5E) + c3E^2*l3E*(4*d4E*kw3E*(n4E - n5E) + 
            g*m3E*n5E)))/(c3E*l3E^3)}, {0, 0, 0, 0, 0, 0, 
      -((g*m3I)/(c3I*l3I)), 0, 0, 0, (d3I*g*m3I)/(c3I*l3I), 0, 0, 0, 0, 0, 0, 
      0, (g*m3I)/(c3I*l3I), 0, 0, 0, (d4I*g*m3I)/(c3I*l3I), 0, 0, 0, 0, 0, 0, 
      0}, {0, 0, 0, 0, 0, 0, 0, (g*m3I*(-l3I^2 + (n4I - n5I)^2) - 
        4*c3I*kw3I*l3I*(n4I - n5I)^2)/(c3I*l3I^3), 0, 0, 0, 
      (d3I*g*m3I*(-l3I^2 + (n4I - n5I)^2) - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*
         n4I*(n4I - n5I) - 4*c3I*d3I*kw3I*l3I*(n4I - n5I)^2)/(c3I*l3I^3), 0, 
      0, 0, 0, 0, 0, 0, (g*m3I*(l3I^2 - (n4I - n5I)^2) + 
        4*c3I*kw3I*l3I*(n4I - n5I)^2)/(c3I*l3I^3), 0, 0, 0, 
      (d4I*g*m3I*(-l3I^2 + (n4I - n5I)^2) - 4*c3I*d4I*kw3I*l3I*
         (n4I - n5I)^2 + c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*(n4I - n5I)*n5I)/
       (c3I*l3I^3), 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I^3*kw3I*l3I - g*m3I + c3I^2*g*m3I)/(c3I*l3I), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, (4*c3I^3*kw3I*l3I + g*m3I - c3I^2*g*m3I)/(c3I*l3I), 0, 
      0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3I*kw3I*l3I*(n4I - n5I)^2*slI^2 + g*m3I*((n4I - n5I)^2*slI^2 - 
          l3I^2*(n4I*n5I + slI^2)))/(c3I*l3I^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (4*c3I*kw3I*l3I*(n4I - n5I)^2*slI^2 + 
        g*m3I*(-((n4I - n5I)^2*slI^2) + l3I^2*(n4I*n5I + slI^2)))/
       (c3I*l3I^3), 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 
      -((d4I*g*m3I)/(c3I*l3I)), 0, 0, 0, 
      (d3I*d4I*g*m3I + (-4*c3I^3*kw3I*l3I - g*m3I + c3I^2*g*m3I)*slI^2)/
       (c3I*l3I), 0, 0, 0, 0, 0, 0, 0, (d4I*g*m3I)/(c3I*l3I), 0, 0, 0, 
      (d4I^2*g*m3I + c3I*d4I*g*l3I*m3I + (4*c3I^3*kw3I*l3I + g*m3I - 
          c3I^2*g*m3I)*slI^2)/(c3I*l3I), 0, 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, (d4I*g*m3I*(l3I^2 - (n4I - n5I)^2) + 
        4*c3I*d4I*kw3I*l3I*(n4I - n5I)^2 - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*
         (n4I - n5I)*n5I)/(c3I*l3I^3), 0, 0, 0, 
      (d3I*(d4I*g*m3I*(l3I^2 - (n4I - n5I)^2) + 4*c3I*d4I*kw3I*l3I*
           (n4I - n5I)^2 - c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*(n4I - n5I)*
           n5I) + l3I*n4I*(-4*c3I^3*kw3I*l3I^2*n5I - g*l3I*m3I*n5I + 
          c3I*d4I*g*m3I*(-n4I + n5I) + c3I^2*l3I*(4*d4I*kw3I*(n4I - n5I) + 
            g*m3I*n5I)))/(c3I*l3I^3), 0, 0, 0, 0, 0, 0, 0, 
      (d4I*g*m3I*(-l3I^2 + (n4I - n5I)^2) - 4*c3I*d4I*kw3I*l3I*
         (n4I - n5I)^2 + c3I*l3I*(4*c3I*kw3I*l3I - g*m3I)*(n4I - n5I)*n5I)/
       (c3I*l3I^3), 0, 0, 0, (d4I^2*(g*m3I*(l3I^2 - (n4I - n5I)^2) + 
          4*c3I*kw3I*l3I*(n4I - n5I)^2) + l3I^2*n5I*(4*c3I^3*kw3I*l3I*n5I + 
          g*m3I*(n4I - c3I^2*n5I)) + c3I*d4I*l3I*
         (8*c3I*kw3I*l3I*n5I*(-n4I + n5I) + 
          g*m3I*(l3I^2 + 2*(n4I - n5I)*n5I)))/(c3I*l3I^3), 0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -((g*m3E)/(c3E*l3E)), 0, 0, 0, 
      (d3E*g*m3E)/(c3E*l3E), 0, 0, 0, 0, 0, 0, 0, (g*m3E)/(c3E*l3E), 0, 0, 0, 
      (d4E*g*m3E)/(c3E*l3E), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (g*m3E*(-l3E^2 + (n4E - n5E)^2) - 4*c3E*kw3E*l3E*(n4E - n5E)^2)/
       (c3E*l3E^3), 0, 0, 0, (d3E*g*m3E*(-l3E^2 + (n4E - n5E)^2) - 
        c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*n4E*(n4E - n5E) - 
        4*c3E*d3E*kw3E*l3E*(n4E - n5E)^2)/(c3E*l3E^3), 0, 0, 0, 0, 0, 0, 0, 
      (g*m3E*(l3E^2 - (n4E - n5E)^2) + 4*c3E*kw3E*l3E*(n4E - n5E)^2)/
       (c3E*l3E^3), 0, 0, 0, (d4E*g*m3E*(-l3E^2 + (n4E - n5E)^2) - 
        4*c3E*d4E*kw3E*l3E*(n4E - n5E)^2 + c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*
         (n4E - n5E)*n5E)/(c3E*l3E^3)}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (-4*c3E^3*kw3E*l3E - g*m3E + c3E^2*g*m3E)/(c3E*l3E), 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, (4*c3E^3*kw3E*l3E + g*m3E - c3E^2*g*m3E)/
       (c3E*l3E), 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      (-4*c3E*kw3E*l3E*(n4E - n5E)^2*slE^2 + g*m3E*((n4E - n5E)^2*slE^2 - 
          l3E^2*(n4E*n5E + slE^2)))/(c3E*l3E^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, (4*c3E*kw3E*l3E*(n4E - n5E)^2*slE^2 + 
        g*m3E*(-((n4E - n5E)^2*slE^2) + l3E^2*(n4E*n5E + slE^2)))/
       (c3E*l3E^3), 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      -((d4E*g*m3E)/(c3E*l3E)), 0, 0, 0, 
      (d3E*d4E*g*m3E + (-4*c3E^3*kw3E*l3E - g*m3E + c3E^2*g*m3E)*slE^2)/
       (c3E*l3E), 0, 0, 0, 0, 0, 0, 0, (d4E*g*m3E)/(c3E*l3E), 0, 0, 0, 
      (d4E^2*g*m3E + c3E*d4E*g*l3E*m3E + (4*c3E^3*kw3E*l3E + g*m3E - 
          c3E^2*g*m3E)*slE^2)/(c3E*l3E), 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, (d4E*g*m3E*(l3E^2 - (n4E - n5E)^2) + 4*c3E*d4E*kw3E*l3E*
         (n4E - n5E)^2 - c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*(n4E - n5E)*n5E)/
       (c3E*l3E^3), 0, 0, 0, (d3E*(d4E*g*m3E*(l3E^2 - (n4E - n5E)^2) + 
          4*c3E*d4E*kw3E*l3E*(n4E - n5E)^2 - c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*
           (n4E - n5E)*n5E) + l3E*n4E*(-4*c3E^3*kw3E*l3E^2*n5E - 
          g*l3E*m3E*n5E + c3E*d4E*g*m3E*(-n4E + n5E) + 
          c3E^2*l3E*(4*d4E*kw3E*(n4E - n5E) + g*m3E*n5E)))/(c3E*l3E^3), 0, 0, 
      0, 0, 0, 0, 0, (d4E*g*m3E*(-l3E^2 + (n4E - n5E)^2) - 
        4*c3E*d4E*kw3E*l3E*(n4E - n5E)^2 + c3E*l3E*(4*c3E*kw3E*l3E - g*m3E)*
         (n4E - n5E)*n5E)/(c3E*l3E^3), 0, 0, 0, 
      (d4E^2*(g*m3E*(l3E^2 - (n4E - n5E)^2) + 4*c3E*kw3E*l3E*(n4E - n5E)^2) + 
        l3E^2*n5E*(4*c3E^3*kw3E*l3E*n5E + g*m3E*(n4E - c3E^2*n5E)) + 
        c3E*d4E*l3E*(8*c3E*kw3E*l3E*n5E*(-n4E + n5E) + 
          g*m3E*(l3E^2 + 2*(n4E - n5E)*n5E)))/(c3E*l3E^3)}}
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
cqxm = {{0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/
        l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
         (n0 - n1))/l1^2, (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/(4*l1^2), 
      ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((-2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 - 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)) + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n1 + d0*(-n0 + n1)))/
       (8*l1^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0}, {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*
        (n0 - n1))/(4*l1^2), (-4*c1^3*kw1*l1 - 
        g*(m1 + m2E + m2I + m3E + m3I) + c1^2*g*(m1 + m2E + m2I + m3E + m3I))/
       (4*c1*l1), ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*
        su)/(4*l1^2), ((4*c1^3*kw1*l1 + g*(m1 + m2E + m2I + m3E + m3I) - 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1))/(4*l1^2), 
      (-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
        c1^2*g*(m1 + m2E + m2I + m3E + m3I))/(4*c1*l1), 
      -1/4*((4*c1*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*su)/
        l1^2, ((-4*c1^3*kw1*l1 - g*(m1 + m2E + m2I + m3E + m3I) + 
         c1^2*g*(m1 + m2E + m2I + m3E + m3I))*su)/(4*c1*l1), 
      ((2*g*l1*(m1 + m2E + m2I + m3E + m3I)*n1)/c1 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(d0*(n0 - n1) - c1*l1*n1) + 
        8*c1*kw1*l1*(c1*l1*n1 + d0*(-n0 + n1)))/(8*l1^2), 0, 0, 0, 0, 0, 0, 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx + siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/l2I^2, 
      ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/(4*l2I^2), 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
       (4*l2I^2), -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - 
          c2I^2*g*(m2I + m3I))*(chainIx - siI))/(c2I*l2I), 
      (4*c2I^3*kw2I*l2I^2*n2I + c2I^2*l2I*(-(g*(m2I + m3I)*n2I) + 
          4*d1I*kw2I*(n2I - n3I)) - c2I*d1I*g*(m2I + m3I)*(n2I - n3I) + 
        g*l2I*(m2I + m3I)*n3I)/(4*c2I*l2I^2), 0, 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/(4*l2I^2), 
      ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*siI)/
       (4*c2I*l2I), -1/4*(c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
         4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
         c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/(c2I*l2I^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx + siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx + siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
       (4*l2I^2), ((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/l2I^2, 
      (4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))/(4*c2I*l2I), 
      -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*(chainIx - siI))/
        l2I^2, -1/4*((4*c2I^3*kw2I*l2I + g*(m2I + m3I) - c2I^2*g*(m2I + m3I))*
         (chainIx - siI))/(c2I*l2I), (-4*c2I^3*kw2I*l2I^2*n2I + 
        c2I*d1I*g*(m2I + m3I)*(n2I - n3I) - g*l2I*(m2I + m3I)*n3I + 
        c2I^2*l2I*(g*(m2I + m3I)*n2I + 4*d1I*kw2I*(-n2I + n3I)))/
       (4*c2I*l2I^2), 0, ((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I))/
       (4*l2I^2), (-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))/
       (4*c2I*l2I), -1/4*((4*c2I*kw2I*l2I - g*(m2I + m3I))*(n2I - n3I)*siI)/
        l2I^2, ((-4*c2I^3*kw2I*l2I - g*(m2I + m3I) + c2I^2*g*(m2I + m3I))*
        siI)/(4*c2I*l2I), (c2I*d2I*g*(m2I + m3I)*(n2I - n3I) + 
        4*c2I^3*kw2I*l2I^2*n3I + g*l2I*(m2I + m3I)*n3I - 
        c2I^2*l2I*(4*d2I*kw2I*(n2I - n3I) + g*(m2I + m3I)*n3I))/
       (4*c2I*l2I^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx + siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/(4*l2E^2), 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
       (4*l2E^2), -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
          c2E^2*g*(m2E + m3E))*(chainEx - siE))/(c2E*l2E), 
      (4*c2E^3*kw2E*l2E^2*n2E + c2E^2*l2E*(-(g*(m2E + m3E)*n2E) + 
          4*d1E*kw2E*(n2E - n3E)) - c2E*d1E*g*(m2E + m3E)*(n2E - n3E) + 
        g*l2E*(m2E + m3E)*n3E)/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      ((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/(4*l2E^2), 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), -1/4*(c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
         4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
         c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/(c2E*l2E^2), 
      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
     {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx + siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx + siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E)*siE)/(4*l2E^2), ((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - 
         c2E^2*g*(m2E + m3E))*siE)/(4*c2E*l2E), 
      (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 4*c2E^3*kw2E*l2E^2*n3E + 
        g*l2E*(m2E + m3E)*n3E - c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + 
          g*(m2E + m3E)*n3E))/(4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
      0}, {0, -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E))/l2E^2, 
      (4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*(chainEx - siE))/
        l2E^2, -1/4*((4*c2E^3*kw2E*l2E + g*(m2E + m3E) - c2E^2*g*(m2E + m3E))*
         (chainEx - siE))/(c2E*l2E), (-4*c2E^3*kw2E*l2E^2*n2E + 
        c2E*d1E*g*(m2E + m3E)*(n2E - n3E) - g*l2E*(m2E + m3E)*n3E + 
        c2E^2*l2E*(g*(m2E + m3E)*n2E + 4*d1E*kw2E*(-n2E + n3E)))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, ((4*c2E*kw2E*l2E - g*(m2E + m3E))*
        (n2E - n3E))/(4*l2E^2), (-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + 
        c2E^2*g*(m2E + m3E))/(4*c2E*l2E), 
      -1/4*((4*c2E*kw2E*l2E - g*(m2E + m3E))*(n2E - n3E)*siE)/l2E^2, 
      ((-4*c2E^3*kw2E*l2E - g*(m2E + m3E) + c2E^2*g*(m2E + m3E))*siE)/
       (4*c2E*l2E), (c2E*d2E*g*(m2E + m3E)*(n2E - n3E) + 
        4*c2E^3*kw2E*l2E^2*n3E + g*l2E*(m2E + m3E)*n3E - 
        c2E^2*l2E*(4*d2E*kw2E*(n2E - n3E) + g*(m2E + m3E)*n3E))/
       (4*c2E*l2E^2), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}}
 
cxsm = {{-((g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      (dtop*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1), 0}, 
     {0, -((g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
         4*c1*kw1*l1*(n0 - n1)^2)/(c1*l1^3)), 0, 0, 0, 
      (dtop*(-(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2)) - 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*n0*(n0 - n1))/(c1*l1^3)}, 
     {0, 0, -4*c1^2*kw1 - (g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1) + 
       (c1*g*(m1 + m2E + m2I + m3E + m3I))/l1, 0, 0, 0}, 
     {0, 0, 0, (-8*c1*kw1*l1*(n0 - n1)^2*su^2 + 
        2*g*(m1 + m2E + m2I + m3E + m3I)*(n0 - n1)^2*su^2 - 
        2*g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(n0*n1 + su^2))/(2*c1*l1^3), 0, 
      0}, {-((d0*g*(m1 + m2E + m2I + m3E + m3I))/(c1*l1)), 0, 0, 0, 
      -4*c1^2*kw1*su^2 + (c1*g*(m1 + m2E + m2I + m3E + m3I)*su^2)/l1 + 
       (g*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - su^2))/(c1*l1), 0}, 
     {0, (d0*(g*(m1 + m2E + m2I + m3E + m3I)*(l1^2 - (n0 - n1)^2) + 
          4*c1*kw1*l1*(n0 - n1)^2) - c1*l1*(4*c1*kw1*l1 - 
          g*(m1 + m2E + m2I + m3E + m3I))*(n0 - n1)*n1)/(c1*l1^3), 0, 0, 0, 
      (g*l1^2*(m1 + m2E + m2I + m3E + m3I)*(d0*dtop - n0*n1) - 
        4*c1*kw1*l1*(c1*l1*n0 + dtop*(n0 - n1))*(c1*l1*n1 + d0*(-n0 + n1)) + 
        g*(m1 + m2E + m2I + m3E + m3I)*(c1*l1*n0 + dtop*(n0 - n1))*
         (c1*l1*n1 + d0*(-n0 + n1)))/(c1*l1^3)}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}, 
     {0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0}}
