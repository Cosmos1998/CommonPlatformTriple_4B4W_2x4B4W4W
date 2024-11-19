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
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2I, y2I, z2I, yaw2I, pitch2I, 
     roll2I, x2E, y2E, z2E, yaw2E, pitch2E, roll2E, x3I, y3I, z3I, yaw3I, 
     pitch3I, roll3I, x3E, y3E, z3E, yaw3E, pitch3E, roll3E}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
x1 /: x1::usage = "x1 is a var specifying the x position of the upper mass."
 
y1 /: y1::usage = "y1 is a var specifying the y position of the upper mass."
 
z1 /: z1::usage = "z1 is a var specifying the z position of the upper mass."
 
yaw1 /: yaw1::usage = 
     "yaw1 is a var specifying the yaw orientation of the upper mass."
 
pitch1 /: pitch1::usage = 
     "pitch1 is a var specifying the pitch orientation of the upper mass."
 
roll1 /: roll1::usage = 
     "roll1 is a var specifying the roll orientation of the upper mass."
 
x2I /: x2I::usage = "x2I is a var specifying the x position of the \
input-chain intermediate mass."
 
y2I /: y2I::usage = "y2I is a var specifying the y position of the \
input-chain intermediate mass."
 
z2I /: z2I::usage = "z2I is a var specifying the z position of the \
input-chain intermediate mass."
 
yaw2I /: yaw2I::usage = "yaw2I is a var specifying the yaw orientation of the \
input-chain intermediate mass."
 
pitch2I /: pitch2I::usage = "pitch2I is a var specifying the pitch \
orientation of the input-chain intermediate mass."
 
roll2I /: roll2I::usage = "roll2I is a var specifying the roll orientation of \
the input-chain intermediate mass."
 
x2E /: x2E::usage = 
     "x2E is a var specifying the x position of the end-chain intermediate \
mass."
 
y2E /: y2E::usage = 
     "y2E is a var specifying the y position of the end-chain intermediate \
mass."
 
z2E /: z2E::usage = 
     "z2E is a var specifying the z position of the end-chain intermediate \
mass."
 
yaw2E /: yaw2E::usage = "yaw2E is a var specifying the yaw orientation of the \
end-chain intermediate mass."
 
pitch2E /: pitch2E::usage = "pitch2E is a var specifying the pitch \
orientation of the end-chain intermediate mass."
 
roll2E /: roll2E::usage = "roll2E is a var specifying the roll orientation of \
the end-chain intermediate mass."
 
x3I /: x3I::usage = 
     "x3I is a var specifying the x position of the input-chain optic."
 
y3I /: y3I::usage = 
     "y3I is a var specifying the y position of the input-chain optic."
 
z3I /: z3I::usage = 
     "z1 is a var specifying the z position of the input-chain optic."
 
yaw3I /: yaw3I::usage = 
     "yaw3I is a var specifying the yaw orientation of the input-chain \
optic."
 
pitch3I /: pitch3I::usage = 
     "pitch3I is a var specifying the pitch orientation of the input-chain \
optic."
 
roll3I /: roll3I::usage = 
     "roll3I is a var specifying the roll orientation of the input-chain \
optic."
 
x3E /: x3E::usage = 
     "x3E is a var specifying the x position of the end-chain optic."
 
y3E /: y3E::usage = 
     "y3E is a var specifying the y position of the end-chain optic."
 
z3E /: z3E::usage = 
     "z3E is a var specifying the z position of the end-chain optic."
 
yaw3E /: yaw3E::usage = 
     "yaw3E is a var specifying the yaw orientation of the end-chain optic."
 
pitch3E /: pitch3E::usage = 
     "pitch3E is a var specifying the pitch orientation of the end-chain \
optic."
 
roll3E /: roll3E::usage = 
     "roll3E is a var specifying the roll orientation of the end-chain \
optic."
 
allfloats = {qulf, qulb, qurf, qurb, qiIlf, qiIlb, qiIrf, qiIrb, qiElf, 
     qiElb, qiErf, qiErb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
qulf /: qulf::usage = 
     "qulf is a float specifying the displacement of the upper left front \
blade."
 
qulb /: qulb::usage = 
     "qulb is a float specifying the displacement of the upper left back \
blade."
 
qurf /: qurf::usage = 
     "qurf is a float specifying the displacement of the upper right front \
blade."
 
qurb /: qurb::usage = 
     "qurb is a float specifying the displacement of the upper right back \
blade."
 
qiIlf /: qiIlf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left front blade."
 
qiIlb /: qiIlb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left back blade."
 
qiIrf /: qiIrf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right front blade."
 
qiIrb /: qiIrb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right back blade."
 
qiElf /: qiElf::usage = "qiElf is a float specifying the displacement of the \
end-chain intermediate left front blade."
 
qiElb /: qiElb::usage = "qiElb is a float specifying the displacement of the \
end-chain intermediate left back blade."
 
qiErf /: qiErf::usage = "qiErf is a float specifying the displacement of the \
end-chain intermediate right front blade."
 
qiErb /: qiErb::usage = "qiErb is a float specifying the displacement of the \
end-chain intermediate right back blade."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
x00 /: x00::usage = 
     "x00 is a param specifying the x coordinate of the structure."
 
y00 /: y00::usage = 
     "y00 is a param specifying the y coordinate of the structure."
 
z00 /: z00::usage = 
     "x00 is a param specifying the z coordinate of the structure."
 
yaw00 /: yaw00::usage = 
     "yaw00 is a param specifying the yaw coordinate of the structure."
 
pitch00 /: pitch00::usage = 
     "pitch00 is a param specifying the pitch coordinate of the structure."
 
roll00 /: roll00::usage = 
     "roll00 is a param specifying the roll coordinate of the structure."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2I, vy2I, vz2I, 
     vyaw2I, vpitch2I, vroll2I, vx2E, vy2E, vz2E, vyaw2E, vpitch2E, vroll2E, 
     vx3I, vy3I, vz3I, vyaw3I, vpitch3I, vroll3I, vx3E, vy3E, vz3E, vyaw3E, 
     vpitch3E, vroll3E}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
vx1 /: vx1::usage = "vx1 is the velocity variable corresponding to x1"
 
vy1 /: vy1::usage = "vy1 is the velocity variable corresponding to y1"
 
vz1 /: vz1::usage = "vz1 is the velocity variable corresponding to z1"
 
vyaw1 /: vyaw1::usage = "vyaw1 is the velocity variable corresponding to yaw1"
 
vpitch1 /: vpitch1::usage = 
     "vpitch1 is the velocity variable corresponding to pitch1"
 
vroll1 /: vroll1::usage = 
     "vroll1 is the velocity variable corresponding to roll1"
 
vx2I /: vx2I::usage = "vx2I is the velocity variable corresponding to x2I"
 
vy2I /: vy2I::usage = "vy2I is the velocity variable corresponding to y2I"
 
vz2I /: vz2I::usage = "vz2I is the velocity variable corresponding to z2I"
 
vyaw2I /: vyaw2I::usage = 
     "vyaw2I is the velocity variable corresponding to yaw2I"
 
vpitch2I /: vpitch2I::usage = 
     "vpitch2I is the velocity variable corresponding to pitch2I"
 
vroll2I /: vroll2I::usage = 
     "vroll2I is the velocity variable corresponding to roll2I"
 
vx2E /: vx2E::usage = "vx2E is the velocity variable corresponding to x2E"
 
vy2E /: vy2E::usage = "vy2E is the velocity variable corresponding to y2E"
 
vz2E /: vz2E::usage = "vz2E is the velocity variable corresponding to z2E"
 
vyaw2E /: vyaw2E::usage = 
     "vyaw2E is the velocity variable corresponding to yaw2E"
 
vpitch2E /: vpitch2E::usage = 
     "vpitch2E is the velocity variable corresponding to pitch2E"
 
vroll2E /: vroll2E::usage = 
     "vroll2E is the velocity variable corresponding to roll2E"
 
vx3I /: vx3I::usage = "vx3I is the velocity variable corresponding to x3I"
 
vy3I /: vy3I::usage = "vy3I is the velocity variable corresponding to y3I"
 
vz3I /: vz3I::usage = "vz3I is the velocity variable corresponding to z3I"
 
vyaw3I /: vyaw3I::usage = 
     "vyaw3I is the velocity variable corresponding to yaw3I"
 
vpitch3I /: vpitch3I::usage = 
     "vpitch3I is the velocity variable corresponding to pitch3I"
 
vroll3I /: vroll3I::usage = 
     "vroll3I is the velocity variable corresponding to roll3I"
 
vx3E /: vx3E::usage = "vx3E is the velocity variable corresponding to x3E"
 
vy3E /: vy3E::usage = "vy3E is the velocity variable corresponding to y3E"
 
vz3E /: vz3E::usage = "vz3E is the velocity variable corresponding to z3E"
 
vyaw3E /: vyaw3E::usage = 
     "vyaw3E is the velocity variable corresponding to yaw3E"
 
vpitch3E /: vpitch3E::usage = 
     "vpitch3E is the velocity variable corresponding to pitch3E"
 
vroll3E /: vroll3E::usage = 
     "vroll3E is the velocity variable corresponding to roll3E"
 
stdcoeff = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, 
     I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, 
     I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, 
     I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21I, M31E, M31E}
 
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
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/
         (g*(m1 + m2E + m2I + m3E + m3I))], 
     flex2I -> c2I^(3/2)*Sqrt[(M21I*nw2*Y2I)/(g*(m2I + m3I))], 
     flex2E -> c2E^(3/2)*Sqrt[(M21E*nw2*Y2E)/(g*(m2E + m3E))], 
     flex3I -> c3I^(3/2)*Sqrt[(M31I*nw3*Y3I)/(g*m3I)], 
     flex3E -> c3E^(3/2)*Sqrt[(M31E*nw3*Y3E)/(g*m3E)], 
     tl1 -> d0 + dtop + Sqrt[-(n0 - n1)^2 + sl1^2], 
     tl2I -> d1I + d2I + Sqrt[-(n2I - n3I)^2 + sl2I^2], 
     tl2E -> d1E + d2E + Sqrt[-(n2E - n3E)^2 + sl2E^2], 
     tl3I -> d3I + d4I + Sqrt[-(n4I - n5I)^2 + sl3I^2], 
     tl3E -> d3E + d4E + Sqrt[-(n4E - n5E)^2 + sl3E^2], 
     c1 -> Sqrt[-(-n0 + n1)^2 + sl1^2]/sl1, 
     c2I -> Sqrt[-(-n2I + n3I)^2 + sl2I^2]/sl2I, 
     c2E -> Sqrt[-(-n2E + n3E)^2 + sl2E^2]/sl2E, 
     c3I -> Sqrt[-(-n4I + n5I)^2 + sl3I^2]/sl3I, 
     c3E -> Sqrt[-(-n4E + n5E)^2 + sl3E^2]/sl3E, si1 -> (-n0 + n1)/sl1, 
     si2I -> (-n2I + n3I)/sl2I, si2E -> (-n2E + n3E)/sl2E, 
     si3I -> (-n4I + n5I)/sl3I, si3E -> (-n4E + n5E)/sl3E, nw1 -> 4, 
     nw2 -> 4, nw3 -> 4}
 
flex1 /: flex1::usage = 
     "flex1 is the vertical component of the upper wire flexure length."
 
nw1 /: nw1::usage = "nw1 is number of upper wires."
 
flex2I /: flex2I::usage = "flex2I is the vertical component of the \
input-chain intermediate wire flexure length."
 
nw2 /: nw2::usage = "nw2 is number of intermediate wires in each chain."
 
flex2E /: flex2E::usage = "flex2E is the vertical component of the end-chain \
intermediate wire flexure length."
 
M21E /: M21E::usage = "M21E is the moment of area of the end-chain \
intermediate wires in direction \"1\""
 
flex3I /: flex3I::usage = "flex3I is the vertical component of the \
input-chain lower wire flexure length."
 
M31I /: M31I::usage = "M31I is the moment of area of the input-chain lower \
wires/ribbons/rods in direction \"1\""
 
nw3 /: nw3::usage = "nw3 is number of lower wires in each chain."
 
flex3E /: flex3E::usage = "flex3E is the vertical component of the end-chain \
lower wire flexure length."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
sl1 /: sl1::usage = "sl1 is stretched upper wire length."
 
tl2I /: tl2I::usage = "tl2I is the vertical distance spanned by the \
input-chain intermediate wires."
 
sl2I /: sl2I::usage = 
     "sl2I is stretched input-chain intermediate wire length."
 
tl2E /: tl2E::usage = 
     "tl2E is the vertical distance spanned by the end-chain intermediate \
wires."
 
sl2E /: sl2E::usage = "sl2E is stretched end-chain intermediate wire length."
 
tl3I /: tl3I::usage = 
     "tl3I is the vertical distance spanned by the input-chain lower wires."
 
sl3I /: sl3I::usage = "sl3I is stretched input-chain lower wire length."
 
tl3E /: tl3E::usage = 
     "tl3E is the vertical distance spanned by the end-chain lower wires."
 
sl3E /: sl3E::usage = "sl3E is stretched end-chain lower wire length."
 
si1 /: si1::usage = 
     "si1 is the sine of the angle to the vertical of the upper wires."
 
si2I /: si2I::usage = "si2I is the sine of the angle to the vertical of the \
input-chain intermediate wires."
 
si2E /: si2E::usage = "si2E is the sine of the angle to the vertical of the \
end-chain intermediate wires."
 
si3I /: si3I::usage = "si3I is the sine of the angle to the vertical of the \
input-chain lower wires."
 
si3E /: si3E::usage = 
     "si3E is the sine of the angle to the vertical of the end-chain lower \
wires."
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
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2I, y2I, z2I, yaw2I, pitch2I, 
     roll2I, x2E, y2E, z2E, yaw2E, pitch2E, roll2E, x3I, y3I, z3I, yaw3I, 
     pitch3I, roll3I, x3E, y3E, z3E, yaw3E, pitch3E, roll3E}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
x1 /: x1::usage = "x1 is a var specifying the x position of the upper mass."
 
y1 /: y1::usage = "y1 is a var specifying the y position of the upper mass."
 
z1 /: z1::usage = "z1 is a var specifying the z position of the upper mass."
 
yaw1 /: yaw1::usage = 
     "yaw1 is a var specifying the yaw orientation of the upper mass."
 
pitch1 /: pitch1::usage = 
     "pitch1 is a var specifying the pitch orientation of the upper mass."
 
roll1 /: roll1::usage = 
     "roll1 is a var specifying the roll orientation of the upper mass."
 
x2I /: x2I::usage = "x2I is a var specifying the x position of the \
input-chain intermediate mass."
 
y2I /: y2I::usage = "y2I is a var specifying the y position of the \
input-chain intermediate mass."
 
z2I /: z2I::usage = "z2I is a var specifying the z position of the \
input-chain intermediate mass."
 
yaw2I /: yaw2I::usage = "yaw2I is a var specifying the yaw orientation of the \
input-chain intermediate mass."
 
pitch2I /: pitch2I::usage = "pitch2I is a var specifying the pitch \
orientation of the input-chain intermediate mass."
 
roll2I /: roll2I::usage = "roll2I is a var specifying the roll orientation of \
the input-chain intermediate mass."
 
x2E /: x2E::usage = 
     "x2E is a var specifying the x position of the end-chain intermediate \
mass."
 
y2E /: y2E::usage = 
     "y2E is a var specifying the y position of the end-chain intermediate \
mass."
 
z2E /: z2E::usage = 
     "z2E is a var specifying the z position of the end-chain intermediate \
mass."
 
yaw2E /: yaw2E::usage = "yaw2E is a var specifying the yaw orientation of the \
end-chain intermediate mass."
 
pitch2E /: pitch2E::usage = "pitch2E is a var specifying the pitch \
orientation of the end-chain intermediate mass."
 
roll2E /: roll2E::usage = "roll2E is a var specifying the roll orientation of \
the end-chain intermediate mass."
 
x3I /: x3I::usage = 
     "x3I is a var specifying the x position of the input-chain optic."
 
y3I /: y3I::usage = 
     "y3I is a var specifying the y position of the input-chain optic."
 
z3I /: z3I::usage = 
     "z1 is a var specifying the z position of the input-chain optic."
 
yaw3I /: yaw3I::usage = 
     "yaw3I is a var specifying the yaw orientation of the input-chain \
optic."
 
pitch3I /: pitch3I::usage = 
     "pitch3I is a var specifying the pitch orientation of the input-chain \
optic."
 
roll3I /: roll3I::usage = 
     "roll3I is a var specifying the roll orientation of the input-chain \
optic."
 
x3E /: x3E::usage = 
     "x3E is a var specifying the x position of the end-chain optic."
 
y3E /: y3E::usage = 
     "y3E is a var specifying the y position of the end-chain optic."
 
z3E /: z3E::usage = 
     "z3E is a var specifying the z position of the end-chain optic."
 
yaw3E /: yaw3E::usage = 
     "yaw3E is a var specifying the yaw orientation of the end-chain optic."
 
pitch3E /: pitch3E::usage = 
     "pitch3E is a var specifying the pitch orientation of the end-chain \
optic."
 
roll3E /: roll3E::usage = 
     "roll3E is a var specifying the roll orientation of the end-chain \
optic."
 
allfloats = {qulf, qulb, qurf, qurb, qiIlf, qiIlb, qiIrf, qiIrb, qiElf, 
     qiElb, qiErf, qiErb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
qulf /: qulf::usage = 
     "qulf is a float specifying the displacement of the upper left front \
blade."
 
qulb /: qulb::usage = 
     "qulb is a float specifying the displacement of the upper left back \
blade."
 
qurf /: qurf::usage = 
     "qurf is a float specifying the displacement of the upper right front \
blade."
 
qurb /: qurb::usage = 
     "qurb is a float specifying the displacement of the upper right back \
blade."
 
qiIlf /: qiIlf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left front blade."
 
qiIlb /: qiIlb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left back blade."
 
qiIrf /: qiIrf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right front blade."
 
qiIrb /: qiIrb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right back blade."
 
qiElf /: qiElf::usage = "qiElf is a float specifying the displacement of the \
end-chain intermediate left front blade."
 
qiElb /: qiElb::usage = "qiElb is a float specifying the displacement of the \
end-chain intermediate left back blade."
 
qiErf /: qiErf::usage = "qiErf is a float specifying the displacement of the \
end-chain intermediate right front blade."
 
qiErb /: qiErb::usage = "qiErb is a float specifying the displacement of the \
end-chain intermediate right back blade."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
x00 /: x00::usage = 
     "x00 is a param specifying the x coordinate of the structure."
 
y00 /: y00::usage = 
     "y00 is a param specifying the y coordinate of the structure."
 
z00 /: z00::usage = 
     "x00 is a param specifying the z coordinate of the structure."
 
yaw00 /: yaw00::usage = 
     "yaw00 is a param specifying the yaw coordinate of the structure."
 
pitch00 /: pitch00::usage = 
     "pitch00 is a param specifying the pitch coordinate of the structure."
 
roll00 /: roll00::usage = 
     "roll00 is a param specifying the roll coordinate of the structure."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2I, vy2I, vz2I, 
     vyaw2I, vpitch2I, vroll2I, vx2E, vy2E, vz2E, vyaw2E, vpitch2E, vroll2E, 
     vx3I, vy3I, vz3I, vyaw3I, vpitch3I, vroll3I, vx3E, vy3E, vz3E, vyaw3E, 
     vpitch3E, vroll3E}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
vx1 /: vx1::usage = "vx1 is the velocity variable corresponding to x1"
 
vy1 /: vy1::usage = "vy1 is the velocity variable corresponding to y1"
 
vz1 /: vz1::usage = "vz1 is the velocity variable corresponding to z1"
 
vyaw1 /: vyaw1::usage = "vyaw1 is the velocity variable corresponding to yaw1"
 
vpitch1 /: vpitch1::usage = 
     "vpitch1 is the velocity variable corresponding to pitch1"
 
vroll1 /: vroll1::usage = 
     "vroll1 is the velocity variable corresponding to roll1"
 
vx2I /: vx2I::usage = "vx2I is the velocity variable corresponding to x2I"
 
vy2I /: vy2I::usage = "vy2I is the velocity variable corresponding to y2I"
 
vz2I /: vz2I::usage = "vz2I is the velocity variable corresponding to z2I"
 
vyaw2I /: vyaw2I::usage = 
     "vyaw2I is the velocity variable corresponding to yaw2I"
 
vpitch2I /: vpitch2I::usage = 
     "vpitch2I is the velocity variable corresponding to pitch2I"
 
vroll2I /: vroll2I::usage = 
     "vroll2I is the velocity variable corresponding to roll2I"
 
vx2E /: vx2E::usage = "vx2E is the velocity variable corresponding to x2E"
 
vy2E /: vy2E::usage = "vy2E is the velocity variable corresponding to y2E"
 
vz2E /: vz2E::usage = "vz2E is the velocity variable corresponding to z2E"
 
vyaw2E /: vyaw2E::usage = 
     "vyaw2E is the velocity variable corresponding to yaw2E"
 
vpitch2E /: vpitch2E::usage = 
     "vpitch2E is the velocity variable corresponding to pitch2E"
 
vroll2E /: vroll2E::usage = 
     "vroll2E is the velocity variable corresponding to roll2E"
 
vx3I /: vx3I::usage = "vx3I is the velocity variable corresponding to x3I"
 
vy3I /: vy3I::usage = "vy3I is the velocity variable corresponding to y3I"
 
vz3I /: vz3I::usage = "vz3I is the velocity variable corresponding to z3I"
 
vyaw3I /: vyaw3I::usage = 
     "vyaw3I is the velocity variable corresponding to yaw3I"
 
vpitch3I /: vpitch3I::usage = 
     "vpitch3I is the velocity variable corresponding to pitch3I"
 
vroll3I /: vroll3I::usage = 
     "vroll3I is the velocity variable corresponding to roll3I"
 
vx3E /: vx3E::usage = "vx3E is the velocity variable corresponding to x3E"
 
vy3E /: vy3E::usage = "vy3E is the velocity variable corresponding to y3E"
 
vz3E /: vz3E::usage = "vz3E is the velocity variable corresponding to z3E"
 
vyaw3E /: vyaw3E::usage = 
     "vyaw3E is the velocity variable corresponding to yaw3E"
 
vpitch3E /: vpitch3E::usage = 
     "vpitch3E is the velocity variable corresponding to pitch3E"
 
vroll3E /: vroll3E::usage = 
     "vroll3E is the velocity variable corresponding to roll3E"
 
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21I, M31E, M31E}
 
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
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/
         (g*(m1 + m2E + m2I + m3E + m3I))], 
     flex2I -> c2I^(3/2)*Sqrt[(M21I*nw2*Y2I)/(g*(m2I + m3I))], 
     flex2E -> c2E^(3/2)*Sqrt[(M21E*nw2*Y2E)/(g*(m2E + m3E))], 
     flex3I -> c3I^(3/2)*Sqrt[(M31I*nw3*Y3I)/(g*m3I)], 
     flex3E -> c3E^(3/2)*Sqrt[(M31E*nw3*Y3E)/(g*m3E)], 
     tl1 -> d0 + dtop + Sqrt[-(n0 - n1)^2 + sl1^2], 
     tl2I -> d1I + d2I + Sqrt[-(n2I - n3I)^2 + sl2I^2], 
     tl2E -> d1E + d2E + Sqrt[-(n2E - n3E)^2 + sl2E^2], 
     tl3I -> d3I + d4I + Sqrt[-(n4I - n5I)^2 + sl3I^2], 
     tl3E -> d3E + d4E + Sqrt[-(n4E - n5E)^2 + sl3E^2], 
     c1 -> Sqrt[-(-n0 + n1)^2 + sl1^2]/sl1, 
     c2I -> Sqrt[-(-n2I + n3I)^2 + sl2I^2]/sl2I, 
     c2E -> Sqrt[-(-n2E + n3E)^2 + sl2E^2]/sl2E, 
     c3I -> Sqrt[-(-n4I + n5I)^2 + sl3I^2]/sl3I, 
     c3E -> Sqrt[-(-n4E + n5E)^2 + sl3E^2]/sl3E, si1 -> (-n0 + n1)/sl1, 
     si2I -> (-n2I + n3I)/sl2I, si2E -> (-n2E + n3E)/sl2E, 
     si3I -> (-n4I + n5I)/sl3I, si3E -> (-n4E + n5E)/sl3E, nw1 -> 4, 
     nw2 -> 4, nw3 -> 4}
 
flex1 /: flex1::usage = 
     "flex1 is the vertical component of the upper wire flexure length."
 
nw1 /: nw1::usage = "nw1 is number of upper wires."
 
flex2I /: flex2I::usage = "flex2I is the vertical component of the \
input-chain intermediate wire flexure length."
 
nw2 /: nw2::usage = "nw2 is number of intermediate wires in each chain."
 
flex2E /: flex2E::usage = "flex2E is the vertical component of the end-chain \
intermediate wire flexure length."
 
M21E /: M21E::usage = "M21E is the moment of area of the end-chain \
intermediate wires in direction \"1\""
 
flex3I /: flex3I::usage = "flex3I is the vertical component of the \
input-chain lower wire flexure length."
 
M31I /: M31I::usage = "M31I is the moment of area of the input-chain lower \
wires/ribbons/rods in direction \"1\""
 
nw3 /: nw3::usage = "nw3 is number of lower wires in each chain."
 
flex3E /: flex3E::usage = "flex3E is the vertical component of the end-chain \
lower wire flexure length."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
sl1 /: sl1::usage = "sl1 is stretched upper wire length."
 
tl2I /: tl2I::usage = "tl2I is the vertical distance spanned by the \
input-chain intermediate wires."
 
sl2I /: sl2I::usage = 
     "sl2I is stretched input-chain intermediate wire length."
 
tl2E /: tl2E::usage = 
     "tl2E is the vertical distance spanned by the end-chain intermediate \
wires."
 
sl2E /: sl2E::usage = "sl2E is stretched end-chain intermediate wire length."
 
tl3I /: tl3I::usage = 
     "tl3I is the vertical distance spanned by the input-chain lower wires."
 
sl3I /: sl3I::usage = "sl3I is stretched input-chain lower wire length."
 
tl3E /: tl3E::usage = 
     "tl3E is the vertical distance spanned by the end-chain lower wires."
 
sl3E /: sl3E::usage = "sl3E is stretched end-chain lower wire length."
 
si1 /: si1::usage = 
     "si1 is the sine of the angle to the vertical of the upper wires."
 
si2I /: si2I::usage = "si2I is the sine of the angle to the vertical of the \
input-chain intermediate wires."
 
si2E /: si2E::usage = "si2E is the sine of the angle to the vertical of the \
end-chain intermediate wires."
 
si3I /: si3I::usage = "si3I is the sine of the angle to the vertical of the \
input-chain lower wires."
 
si3E /: si3E::usage = 
     "si3E is the sine of the angle to the vertical of the end-chain lower \
wires."
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
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2I, y2I, z2I, yaw2I, pitch2I, 
     roll2I, x2E, y2E, z2E, yaw2E, pitch2E, roll2E, x3I, y3I, z3I, yaw3I, 
     pitch3I, roll3I, x3E, y3E, z3E, yaw3E, pitch3E, roll3E}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
x1 /: x1::usage = "x1 is a var specifying the x position of the upper mass."
 
y1 /: y1::usage = "y1 is a var specifying the y position of the upper mass."
 
z1 /: z1::usage = "z1 is a var specifying the z position of the upper mass."
 
yaw1 /: yaw1::usage = 
     "yaw1 is a var specifying the yaw orientation of the upper mass."
 
pitch1 /: pitch1::usage = 
     "pitch1 is a var specifying the pitch orientation of the upper mass."
 
roll1 /: roll1::usage = 
     "roll1 is a var specifying the roll orientation of the upper mass."
 
x2I /: x2I::usage = "x2I is a var specifying the x position of the \
input-chain intermediate mass."
 
y2I /: y2I::usage = "y2I is a var specifying the y position of the \
input-chain intermediate mass."
 
z2I /: z2I::usage = "z2I is a var specifying the z position of the \
input-chain intermediate mass."
 
yaw2I /: yaw2I::usage = "yaw2I is a var specifying the yaw orientation of the \
input-chain intermediate mass."
 
pitch2I /: pitch2I::usage = "pitch2I is a var specifying the pitch \
orientation of the input-chain intermediate mass."
 
roll2I /: roll2I::usage = "roll2I is a var specifying the roll orientation of \
the input-chain intermediate mass."
 
x2E /: x2E::usage = 
     "x2E is a var specifying the x position of the end-chain intermediate \
mass."
 
y2E /: y2E::usage = 
     "y2E is a var specifying the y position of the end-chain intermediate \
mass."
 
z2E /: z2E::usage = 
     "z2E is a var specifying the z position of the end-chain intermediate \
mass."
 
yaw2E /: yaw2E::usage = "yaw2E is a var specifying the yaw orientation of the \
end-chain intermediate mass."
 
pitch2E /: pitch2E::usage = "pitch2E is a var specifying the pitch \
orientation of the end-chain intermediate mass."
 
roll2E /: roll2E::usage = "roll2E is a var specifying the roll orientation of \
the end-chain intermediate mass."
 
x3I /: x3I::usage = 
     "x3I is a var specifying the x position of the input-chain optic."
 
y3I /: y3I::usage = 
     "y3I is a var specifying the y position of the input-chain optic."
 
z3I /: z3I::usage = 
     "z1 is a var specifying the z position of the input-chain optic."
 
yaw3I /: yaw3I::usage = 
     "yaw3I is a var specifying the yaw orientation of the input-chain \
optic."
 
pitch3I /: pitch3I::usage = 
     "pitch3I is a var specifying the pitch orientation of the input-chain \
optic."
 
roll3I /: roll3I::usage = 
     "roll3I is a var specifying the roll orientation of the input-chain \
optic."
 
x3E /: x3E::usage = 
     "x3E is a var specifying the x position of the end-chain optic."
 
y3E /: y3E::usage = 
     "y3E is a var specifying the y position of the end-chain optic."
 
z3E /: z3E::usage = 
     "z3E is a var specifying the z position of the end-chain optic."
 
yaw3E /: yaw3E::usage = 
     "yaw3E is a var specifying the yaw orientation of the end-chain optic."
 
pitch3E /: pitch3E::usage = 
     "pitch3E is a var specifying the pitch orientation of the end-chain \
optic."
 
roll3E /: roll3E::usage = 
     "roll3E is a var specifying the roll orientation of the end-chain \
optic."
 
allfloats = {qulf, qulb, qurf, qurb, qiIlf, qiIlb, qiIrf, qiIrb, qiElf, 
     qiElb, qiErf, qiErb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
qulf /: qulf::usage = 
     "qulf is a float specifying the displacement of the upper left front \
blade."
 
qulb /: qulb::usage = 
     "qulb is a float specifying the displacement of the upper left back \
blade."
 
qurf /: qurf::usage = 
     "qurf is a float specifying the displacement of the upper right front \
blade."
 
qurb /: qurb::usage = 
     "qurb is a float specifying the displacement of the upper right back \
blade."
 
qiIlf /: qiIlf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left front blade."
 
qiIlb /: qiIlb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left back blade."
 
qiIrf /: qiIrf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right front blade."
 
qiIrb /: qiIrb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right back blade."
 
qiElf /: qiElf::usage = "qiElf is a float specifying the displacement of the \
end-chain intermediate left front blade."
 
qiElb /: qiElb::usage = "qiElb is a float specifying the displacement of the \
end-chain intermediate left back blade."
 
qiErf /: qiErf::usage = "qiErf is a float specifying the displacement of the \
end-chain intermediate right front blade."
 
qiErb /: qiErb::usage = "qiErb is a float specifying the displacement of the \
end-chain intermediate right back blade."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
x00 /: x00::usage = 
     "x00 is a param specifying the x coordinate of the structure."
 
y00 /: y00::usage = 
     "y00 is a param specifying the y coordinate of the structure."
 
z00 /: z00::usage = 
     "x00 is a param specifying the z coordinate of the structure."
 
yaw00 /: yaw00::usage = 
     "yaw00 is a param specifying the yaw coordinate of the structure."
 
pitch00 /: pitch00::usage = 
     "pitch00 is a param specifying the pitch coordinate of the structure."
 
roll00 /: roll00::usage = 
     "roll00 is a param specifying the roll coordinate of the structure."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2I, vy2I, vz2I, 
     vyaw2I, vpitch2I, vroll2I, vx2E, vy2E, vz2E, vyaw2E, vpitch2E, vroll2E, 
     vx3I, vy3I, vz3I, vyaw3I, vpitch3I, vroll3I, vx3E, vy3E, vz3E, vyaw3E, 
     vpitch3E, vroll3E}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
vx1 /: vx1::usage = "vx1 is the velocity variable corresponding to x1"
 
vy1 /: vy1::usage = "vy1 is the velocity variable corresponding to y1"
 
vz1 /: vz1::usage = "vz1 is the velocity variable corresponding to z1"
 
vyaw1 /: vyaw1::usage = "vyaw1 is the velocity variable corresponding to yaw1"
 
vpitch1 /: vpitch1::usage = 
     "vpitch1 is the velocity variable corresponding to pitch1"
 
vroll1 /: vroll1::usage = 
     "vroll1 is the velocity variable corresponding to roll1"
 
vx2I /: vx2I::usage = "vx2I is the velocity variable corresponding to x2I"
 
vy2I /: vy2I::usage = "vy2I is the velocity variable corresponding to y2I"
 
vz2I /: vz2I::usage = "vz2I is the velocity variable corresponding to z2I"
 
vyaw2I /: vyaw2I::usage = 
     "vyaw2I is the velocity variable corresponding to yaw2I"
 
vpitch2I /: vpitch2I::usage = 
     "vpitch2I is the velocity variable corresponding to pitch2I"
 
vroll2I /: vroll2I::usage = 
     "vroll2I is the velocity variable corresponding to roll2I"
 
vx2E /: vx2E::usage = "vx2E is the velocity variable corresponding to x2E"
 
vy2E /: vy2E::usage = "vy2E is the velocity variable corresponding to y2E"
 
vz2E /: vz2E::usage = "vz2E is the velocity variable corresponding to z2E"
 
vyaw2E /: vyaw2E::usage = 
     "vyaw2E is the velocity variable corresponding to yaw2E"
 
vpitch2E /: vpitch2E::usage = 
     "vpitch2E is the velocity variable corresponding to pitch2E"
 
vroll2E /: vroll2E::usage = 
     "vroll2E is the velocity variable corresponding to roll2E"
 
vx3I /: vx3I::usage = "vx3I is the velocity variable corresponding to x3I"
 
vy3I /: vy3I::usage = "vy3I is the velocity variable corresponding to y3I"
 
vz3I /: vz3I::usage = "vz3I is the velocity variable corresponding to z3I"
 
vyaw3I /: vyaw3I::usage = 
     "vyaw3I is the velocity variable corresponding to yaw3I"
 
vpitch3I /: vpitch3I::usage = 
     "vpitch3I is the velocity variable corresponding to pitch3I"
 
vroll3I /: vroll3I::usage = 
     "vroll3I is the velocity variable corresponding to roll3I"
 
vx3E /: vx3E::usage = "vx3E is the velocity variable corresponding to x3E"
 
vy3E /: vy3E::usage = "vy3E is the velocity variable corresponding to y3E"
 
vz3E /: vz3E::usage = "vz3E is the velocity variable corresponding to z3E"
 
vyaw3E /: vyaw3E::usage = 
     "vyaw3E is the velocity variable corresponding to yaw3E"
 
vpitch3E /: vpitch3E::usage = 
     "vpitch3E is the velocity variable corresponding to pitch3E"
 
vroll3E /: vroll3E::usage = 
     "vroll3E is the velocity variable corresponding to roll3E"
 
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
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
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/
         (g*(m1 + m2E + m2I + m3E + m3I))], 
     flex2I -> c2I^(3/2)*Sqrt[(M21I*nw2*Y2I)/(g*(m2I + m3I))], 
     flex2E -> c2E^(3/2)*Sqrt[(M21E*nw2*Y2E)/(g*(m2E + m3E))], 
     flex3I -> c3I^(3/2)*Sqrt[(M31I*nw3*Y3I)/(g*m3I)], 
     flex3E -> c3E^(3/2)*Sqrt[(M31E*nw3*Y3E)/(g*m3E)], 
     tl1 -> d0 + dtop + Sqrt[l1^2 - (n0 - n1)^2], 
     tl2I -> d1I + d2I + Sqrt[l2I^2 - (n2I - n3I)^2], 
     tl2E -> d1E + d2E + Sqrt[l2E^2 - (n2E - n3E)^2], 
     tl3I -> d3I + d4I + Sqrt[l3I^2 - (n4I - n5I)^2], 
     tl3E -> d3E + d4E + Sqrt[l3E^2 - (n4E - n5E)^2], 
     c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, c2I -> Sqrt[l2I^2 - (-n2I + n3I)^2]/
       l2I, c2E -> Sqrt[l2E^2 - (-n2E + n3E)^2]/l2E, 
     c3I -> Sqrt[l3I^2 - (-n4I + n5I)^2]/l3I, 
     c3E -> Sqrt[l3E^2 - (-n4E + n5E)^2]/l3E, si1 -> (-n0 + n1)/l1, 
     si2I -> (-n2I + n3I)/l2I, si2E -> (-n2E + n3E)/l2E, 
     si3I -> (-n4I + n5I)/l3I, si3E -> (-n4E + n5E)/l3E, nw1 -> 4, nw2 -> 4, 
     nw3 -> 4}
 
flex1 /: flex1::usage = 
     "flex1 is the vertical component of the upper wire flexure length."
 
nw1 /: nw1::usage = "nw1 is number of upper wires."
 
flex2I /: flex2I::usage = "flex2I is the vertical component of the \
input-chain intermediate wire flexure length."
 
nw2 /: nw2::usage = "nw2 is number of intermediate wires in each chain."
 
flex2E /: flex2E::usage = "flex2E is the vertical component of the end-chain \
intermediate wire flexure length."
 
flex3I /: flex3I::usage = "flex3I is the vertical component of the \
input-chain lower wire flexure length."
 
nw3 /: nw3::usage = "nw3 is number of lower wires in each chain."
 
flex3E /: flex3E::usage = "flex3E is the vertical component of the end-chain \
lower wire flexure length."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2I /: tl2I::usage = "tl2I is the vertical distance spanned by the \
input-chain intermediate wires."
 
tl2E /: tl2E::usage = 
     "tl2E is the vertical distance spanned by the end-chain intermediate \
wires."
 
tl3I /: tl3I::usage = 
     "tl3I is the vertical distance spanned by the input-chain lower wires."
 
tl3E /: tl3E::usage = 
     "tl3E is the vertical distance spanned by the end-chain lower wires."
 
si1 /: si1::usage = 
     "si1 is the sine of the angle to the vertical of the upper wires."
 
si2I /: si2I::usage = "si2I is the sine of the angle to the vertical of the \
input-chain intermediate wires."
 
si2E /: si2E::usage = "si2E is the sine of the angle to the vertical of the \
end-chain intermediate wires."
 
si3I /: si3I::usage = "si3I is the sine of the angle to the vertical of the \
input-chain lower wires."
 
si3E /: si3E::usage = 
     "si3E is the sine of the angle to the vertical of the end-chain lower \
wires."
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
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
l3I /: l3I::usage = "l3I is the wire (ribbon) length from input-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
c3I /: c3I::usage = "c3I is the cosine of the angle to the vertical of the \
input-chain lower wires."
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
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
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2I, y2I, z2I, yaw2I, pitch2I, 
     roll2I, x2E, y2E, z2E, yaw2E, pitch2E, roll2E, x3I, y3I, z3I, yaw3I, 
     pitch3I, roll3I, x3E, y3E, z3E, yaw3E, pitch3E, roll3E}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
x1 /: x1::usage = "x1 is a var specifying the x position of the upper mass."
 
y1 /: y1::usage = "y1 is a var specifying the y position of the upper mass."
 
z1 /: z1::usage = "z1 is a var specifying the z position of the upper mass."
 
yaw1 /: yaw1::usage = 
     "yaw1 is a var specifying the yaw orientation of the upper mass."
 
pitch1 /: pitch1::usage = 
     "pitch1 is a var specifying the pitch orientation of the upper mass."
 
roll1 /: roll1::usage = 
     "roll1 is a var specifying the roll orientation of the upper mass."
 
x2I /: x2I::usage = "x2I is a var specifying the x position of the \
input-chain intermediate mass."
 
y2I /: y2I::usage = "y2I is a var specifying the y position of the \
input-chain intermediate mass."
 
z2I /: z2I::usage = "z2I is a var specifying the z position of the \
input-chain intermediate mass."
 
yaw2I /: yaw2I::usage = "yaw2I is a var specifying the yaw orientation of the \
input-chain intermediate mass."
 
pitch2I /: pitch2I::usage = "pitch2I is a var specifying the pitch \
orientation of the input-chain intermediate mass."
 
roll2I /: roll2I::usage = "roll2I is a var specifying the roll orientation of \
the input-chain intermediate mass."
 
x2E /: x2E::usage = 
     "x2E is a var specifying the x position of the end-chain intermediate \
mass."
 
y2E /: y2E::usage = 
     "y2E is a var specifying the y position of the end-chain intermediate \
mass."
 
z2E /: z2E::usage = 
     "z2E is a var specifying the z position of the end-chain intermediate \
mass."
 
yaw2E /: yaw2E::usage = "yaw2E is a var specifying the yaw orientation of the \
end-chain intermediate mass."
 
pitch2E /: pitch2E::usage = "pitch2E is a var specifying the pitch \
orientation of the end-chain intermediate mass."
 
roll2E /: roll2E::usage = "roll2E is a var specifying the roll orientation of \
the end-chain intermediate mass."
 
x3I /: x3I::usage = 
     "x3I is a var specifying the x position of the input-chain optic."
 
y3I /: y3I::usage = 
     "y3I is a var specifying the y position of the input-chain optic."
 
z3I /: z3I::usage = 
     "z1 is a var specifying the z position of the input-chain optic."
 
yaw3I /: yaw3I::usage = 
     "yaw3I is a var specifying the yaw orientation of the input-chain \
optic."
 
pitch3I /: pitch3I::usage = 
     "pitch3I is a var specifying the pitch orientation of the input-chain \
optic."
 
roll3I /: roll3I::usage = 
     "roll3I is a var specifying the roll orientation of the input-chain \
optic."
 
x3E /: x3E::usage = 
     "x3E is a var specifying the x position of the end-chain optic."
 
y3E /: y3E::usage = 
     "y3E is a var specifying the y position of the end-chain optic."
 
z3E /: z3E::usage = 
     "z3E is a var specifying the z position of the end-chain optic."
 
yaw3E /: yaw3E::usage = 
     "yaw3E is a var specifying the yaw orientation of the end-chain optic."
 
pitch3E /: pitch3E::usage = 
     "pitch3E is a var specifying the pitch orientation of the end-chain \
optic."
 
roll3E /: roll3E::usage = 
     "roll3E is a var specifying the roll orientation of the end-chain \
optic."
 
allfloats = {qulf, qulb, qurf, qurb, qiIlf, qiIlb, qiIrf, qiIrb, qiElf, 
     qiElb, qiErf, qiErb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
qulf /: qulf::usage = 
     "qulf is a float specifying the displacement of the upper left front \
blade."
 
qulb /: qulb::usage = 
     "qulb is a float specifying the displacement of the upper left back \
blade."
 
qurf /: qurf::usage = 
     "qurf is a float specifying the displacement of the upper right front \
blade."
 
qurb /: qurb::usage = 
     "qurb is a float specifying the displacement of the upper right back \
blade."
 
qiIlf /: qiIlf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left front blade."
 
qiIlb /: qiIlb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left back blade."
 
qiIrf /: qiIrf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right front blade."
 
qiIrb /: qiIrb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right back blade."
 
qiElf /: qiElf::usage = "qiElf is a float specifying the displacement of the \
end-chain intermediate left front blade."
 
qiElb /: qiElb::usage = "qiElb is a float specifying the displacement of the \
end-chain intermediate left back blade."
 
qiErf /: qiErf::usage = "qiErf is a float specifying the displacement of the \
end-chain intermediate right front blade."
 
qiErb /: qiErb::usage = "qiErb is a float specifying the displacement of the \
end-chain intermediate right back blade."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
x00 /: x00::usage = 
     "x00 is a param specifying the x coordinate of the structure."
 
y00 /: y00::usage = 
     "y00 is a param specifying the y coordinate of the structure."
 
z00 /: z00::usage = 
     "x00 is a param specifying the z coordinate of the structure."
 
yaw00 /: yaw00::usage = 
     "yaw00 is a param specifying the yaw coordinate of the structure."
 
pitch00 /: pitch00::usage = 
     "pitch00 is a param specifying the pitch coordinate of the structure."
 
roll00 /: roll00::usage = 
     "roll00 is a param specifying the roll coordinate of the structure."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2I, vy2I, vz2I, 
     vyaw2I, vpitch2I, vroll2I, vx2E, vy2E, vz2E, vyaw2E, vpitch2E, vroll2E, 
     vx3I, vy3I, vz3I, vyaw3I, vpitch3I, vroll3I, vx3E, vy3E, vz3E, vyaw3E, 
     vpitch3E, vroll3E}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
vx1 /: vx1::usage = "vx1 is the velocity variable corresponding to x1"
 
vy1 /: vy1::usage = "vy1 is the velocity variable corresponding to y1"
 
vz1 /: vz1::usage = "vz1 is the velocity variable corresponding to z1"
 
vyaw1 /: vyaw1::usage = "vyaw1 is the velocity variable corresponding to yaw1"
 
vpitch1 /: vpitch1::usage = 
     "vpitch1 is the velocity variable corresponding to pitch1"
 
vroll1 /: vroll1::usage = 
     "vroll1 is the velocity variable corresponding to roll1"
 
vx2I /: vx2I::usage = "vx2I is the velocity variable corresponding to x2I"
 
vy2I /: vy2I::usage = "vy2I is the velocity variable corresponding to y2I"
 
vz2I /: vz2I::usage = "vz2I is the velocity variable corresponding to z2I"
 
vyaw2I /: vyaw2I::usage = 
     "vyaw2I is the velocity variable corresponding to yaw2I"
 
vpitch2I /: vpitch2I::usage = 
     "vpitch2I is the velocity variable corresponding to pitch2I"
 
vroll2I /: vroll2I::usage = 
     "vroll2I is the velocity variable corresponding to roll2I"
 
vx2E /: vx2E::usage = "vx2E is the velocity variable corresponding to x2E"
 
vy2E /: vy2E::usage = "vy2E is the velocity variable corresponding to y2E"
 
vz2E /: vz2E::usage = "vz2E is the velocity variable corresponding to z2E"
 
vyaw2E /: vyaw2E::usage = 
     "vyaw2E is the velocity variable corresponding to yaw2E"
 
vpitch2E /: vpitch2E::usage = 
     "vpitch2E is the velocity variable corresponding to pitch2E"
 
vroll2E /: vroll2E::usage = 
     "vroll2E is the velocity variable corresponding to roll2E"
 
vx3I /: vx3I::usage = "vx3I is the velocity variable corresponding to x3I"
 
vy3I /: vy3I::usage = "vy3I is the velocity variable corresponding to y3I"
 
vz3I /: vz3I::usage = "vz3I is the velocity variable corresponding to z3I"
 
vyaw3I /: vyaw3I::usage = 
     "vyaw3I is the velocity variable corresponding to yaw3I"
 
vpitch3I /: vpitch3I::usage = 
     "vpitch3I is the velocity variable corresponding to pitch3I"
 
vroll3I /: vroll3I::usage = 
     "vroll3I is the velocity variable corresponding to roll3I"
 
vx3E /: vx3E::usage = "vx3E is the velocity variable corresponding to x3E"
 
vy3E /: vy3E::usage = "vy3E is the velocity variable corresponding to y3E"
 
vz3E /: vz3E::usage = "vz3E is the velocity variable corresponding to z3E"
 
vyaw3E /: vyaw3E::usage = 
     "vyaw3E is the velocity variable corresponding to yaw3E"
 
vpitch3E /: vpitch3E::usage = 
     "vpitch3E is the velocity variable corresponding to pitch3E"
 
vroll3E /: vroll3E::usage = 
     "vroll3E is the velocity variable corresponding to roll3E"
 
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
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
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/
         (g*(m1 + m2E + m2I + m3E + m3I))], 
     flex2I -> c2I^(3/2)*Sqrt[(M21I*nw2*Y2I)/(g*(m2I + m3I))], 
     flex2E -> c2E^(3/2)*Sqrt[(M21E*nw2*Y2E)/(g*(m2E + m3E))], 
     flex3I -> c3I^(3/2)*Sqrt[(M31I*nw3*Y3I)/(g*m3I)], 
     flex3E -> c3E^(3/2)*Sqrt[(M31E*nw3*Y3E)/(g*m3E)], 
     tl1 -> d0 + dtop + Sqrt[l1^2 - (n0 - n1)^2], 
     tl2I -> d1I + d2I + Sqrt[l2I^2 - (n2I - n3I)^2], 
     tl2E -> d1E + d2E + Sqrt[l2E^2 - (n2E - n3E)^2], 
     tl3I -> d3I + d4I + Sqrt[l3I^2 - (n4I - n5I)^2], 
     tl3E -> d3E + d4E + Sqrt[l3E^2 - (n4E - n5E)^2], 
     c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, c2I -> Sqrt[l2I^2 - (-n2I + n3I)^2]/
       l2I, c2E -> Sqrt[l2E^2 - (-n2E + n3E)^2]/l2E, 
     c3I -> Sqrt[l3I^2 - (-n4I + n5I)^2]/l3I, 
     c3E -> Sqrt[l3E^2 - (-n4E + n5E)^2]/l3E, si1 -> (-n0 + n1)/l1, 
     si2I -> (-n2I + n3I)/l2I, si2E -> (-n2E + n3E)/l2E, 
     si3I -> (-n4I + n5I)/l3I, si3E -> (-n4E + n5E)/l3E, nw1 -> 4, nw2 -> 4, 
     nw3 -> 4}
 
flex1 /: flex1::usage = 
     "flex1 is the vertical component of the upper wire flexure length."
 
nw1 /: nw1::usage = "nw1 is number of upper wires."
 
flex2I /: flex2I::usage = "flex2I is the vertical component of the \
input-chain intermediate wire flexure length."
 
nw2 /: nw2::usage = "nw2 is number of intermediate wires in each chain."
 
flex2E /: flex2E::usage = "flex2E is the vertical component of the end-chain \
intermediate wire flexure length."
 
flex3I /: flex3I::usage = "flex3I is the vertical component of the \
input-chain lower wire flexure length."
 
nw3 /: nw3::usage = "nw3 is number of lower wires in each chain."
 
flex3E /: flex3E::usage = "flex3E is the vertical component of the end-chain \
lower wire flexure length."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2I /: tl2I::usage = "tl2I is the vertical distance spanned by the \
input-chain intermediate wires."
 
tl2E /: tl2E::usage = 
     "tl2E is the vertical distance spanned by the end-chain intermediate \
wires."
 
tl3I /: tl3I::usage = 
     "tl3I is the vertical distance spanned by the input-chain lower wires."
 
tl3E /: tl3E::usage = 
     "tl3E is the vertical distance spanned by the end-chain lower wires."
 
si1 /: si1::usage = 
     "si1 is the sine of the angle to the vertical of the upper wires."
 
si2I /: si2I::usage = "si2I is the sine of the angle to the vertical of the \
input-chain intermediate wires."
 
si2E /: si2E::usage = "si2E is the sine of the angle to the vertical of the \
end-chain intermediate wires."
 
si3I /: si3I::usage = "si3I is the sine of the angle to the vertical of the \
input-chain lower wires."
 
si3E /: si3E::usage = 
     "si3E is the sine of the angle to the vertical of the end-chain lower \
wires."
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
 
d3I /: d3I::usage = "d3I is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the input-chain \
lower wires."
 
d4I /: d4I::usage = "d4I is the distane up from the FRP on the lower mass to \
the wire attachment points for the input-chain lower wires/ribbons/rods."
 
n4I /: n4I::usage = "n4I is the two-sided y-direction separation of the wire \
attachment points at the top end of the input-chain lower wires."
 
n5I /: n5I::usage = "n5I is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the input-chain lower wires."
 
kw3I /: kw3I::usage = "kw3I is net longitudinal elasticity of wires from \
blades on input-chain intermediate mass to optic."
 
slI /: slI::usage = 
     "slI is the two-sided x-direction separation of input-chain lower \
wires."
 
c3E /: c3E::usage = "c3E is the cosine of the angle to the vertical of the \
end-chain lower wires."
 
l3E /: l3E::usage = "l3E is the wire (ribbon) length from end-chain \
intermediate mass to optic. It is interpreted as either a stretched length or \
an unstretched length depending on the value of the switch constant \
unstretched."
 
d3E /: d3E::usage = "d3E is the distance down from the intermediate blades \
(on the intermediate mass) to the wire attachment points for the end-chain \
lower wires."
 
d4E /: d4E::usage = "d4E is the distane up from the FRP on the lower mass to \
the wire attachment points for the end-chain lower wires/ribbons/rods."
 
n4E /: n4E::usage = "n4E is the two-sided y-direction separation of the wire \
attachment points at the top end of the lower wires."
 
n5E /: n5E::usage = "n5E is the two-sided y-direction separation of the wire \
attachment points at the bottom end of the end-chain lower wires."
 
kw3E /: kw3E::usage = "kw3E is net longitudinal elasticity of wires from \
blades on end-chain intermediate mass to optic."
 
slE /: slE::usage = 
     "slE is the two-sided x-direction separation of end-chain lower wires."
 
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
 
allvars = {x1, y1, z1, yaw1, pitch1, roll1, x2I, y2I, z2I, yaw2I, pitch2I, 
     roll2I, x2E, y2E, z2E, yaw2E, pitch2E, roll2E, x3I, y3I, z3I, yaw3I, 
     pitch3I, roll3I, x3E, y3E, z3E, yaw3E, pitch3E, roll3E}
 
allvars /: allvars::usage = "allvars is part of the specification of the \
model. It should be a list of the position and angle variables for the \
system. It shouldn't include velocities, or the coordinates of the support \
structure."
 
x1 /: x1::usage = "x1 is a var specifying the x position of the upper mass."
 
y1 /: y1::usage = "y1 is a var specifying the y position of the upper mass."
 
z1 /: z1::usage = "z1 is a var specifying the z position of the upper mass."
 
yaw1 /: yaw1::usage = 
     "yaw1 is a var specifying the yaw orientation of the upper mass."
 
pitch1 /: pitch1::usage = 
     "pitch1 is a var specifying the pitch orientation of the upper mass."
 
roll1 /: roll1::usage = 
     "roll1 is a var specifying the roll orientation of the upper mass."
 
x2I /: x2I::usage = "x2I is a var specifying the x position of the \
input-chain intermediate mass."
 
y2I /: y2I::usage = "y2I is a var specifying the y position of the \
input-chain intermediate mass."
 
z2I /: z2I::usage = "z2I is a var specifying the z position of the \
input-chain intermediate mass."
 
yaw2I /: yaw2I::usage = "yaw2I is a var specifying the yaw orientation of the \
input-chain intermediate mass."
 
pitch2I /: pitch2I::usage = "pitch2I is a var specifying the pitch \
orientation of the input-chain intermediate mass."
 
roll2I /: roll2I::usage = "roll2I is a var specifying the roll orientation of \
the input-chain intermediate mass."
 
x2E /: x2E::usage = 
     "x2E is a var specifying the x position of the end-chain intermediate \
mass."
 
y2E /: y2E::usage = 
     "y2E is a var specifying the y position of the end-chain intermediate \
mass."
 
z2E /: z2E::usage = 
     "z2E is a var specifying the z position of the end-chain intermediate \
mass."
 
yaw2E /: yaw2E::usage = "yaw2E is a var specifying the yaw orientation of the \
end-chain intermediate mass."
 
pitch2E /: pitch2E::usage = "pitch2E is a var specifying the pitch \
orientation of the end-chain intermediate mass."
 
roll2E /: roll2E::usage = "roll2E is a var specifying the roll orientation of \
the end-chain intermediate mass."
 
x3I /: x3I::usage = 
     "x3I is a var specifying the x position of the input-chain optic."
 
y3I /: y3I::usage = 
     "y3I is a var specifying the y position of the input-chain optic."
 
z3I /: z3I::usage = 
     "z1 is a var specifying the z position of the input-chain optic."
 
yaw3I /: yaw3I::usage = 
     "yaw3I is a var specifying the yaw orientation of the input-chain \
optic."
 
pitch3I /: pitch3I::usage = 
     "pitch3I is a var specifying the pitch orientation of the input-chain \
optic."
 
roll3I /: roll3I::usage = 
     "roll3I is a var specifying the roll orientation of the input-chain \
optic."
 
x3E /: x3E::usage = 
     "x3E is a var specifying the x position of the end-chain optic."
 
y3E /: y3E::usage = 
     "y3E is a var specifying the y position of the end-chain optic."
 
z3E /: z3E::usage = 
     "z3E is a var specifying the z position of the end-chain optic."
 
yaw3E /: yaw3E::usage = 
     "yaw3E is a var specifying the yaw orientation of the end-chain optic."
 
pitch3E /: pitch3E::usage = 
     "pitch3E is a var specifying the pitch orientation of the end-chain \
optic."
 
roll3E /: roll3E::usage = 
     "roll3E is a var specifying the roll orientation of the end-chain \
optic."
 
allfloats = {qulf, qulb, qurf, qurb, qiIlf, qiIlb, qiIrf, qiIrb, qiElf, 
     qiElb, qiErf, qiErb}
 
allfloats /: allfloats::usage = "allfloats is part of the specification of \
the model. It should be a list of the positions and angles of connections \
where one elastic element is connected directly to another with no mass \
element between."
 
qulf /: qulf::usage = 
     "qulf is a float specifying the displacement of the upper left front \
blade."
 
qulb /: qulb::usage = 
     "qulb is a float specifying the displacement of the upper left back \
blade."
 
qurf /: qurf::usage = 
     "qurf is a float specifying the displacement of the upper right front \
blade."
 
qurb /: qurb::usage = 
     "qurb is a float specifying the displacement of the upper right back \
blade."
 
qiIlf /: qiIlf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left front blade."
 
qiIlb /: qiIlb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate left back blade."
 
qiIrf /: qiIrf::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right front blade."
 
qiIrb /: qiIrb::usage = "qiIlf is a float specifying the displacement of the \
input-chain intermediate right back blade."
 
qiElf /: qiElf::usage = "qiElf is a float specifying the displacement of the \
end-chain intermediate left front blade."
 
qiElb /: qiElb::usage = "qiElb is a float specifying the displacement of the \
end-chain intermediate left back blade."
 
qiErf /: qiErf::usage = "qiErf is a float specifying the displacement of the \
end-chain intermediate right front blade."
 
qiErb /: qiErb::usage = "qiErb is a float specifying the displacement of the \
end-chain intermediate right back blade."
 
allparams = {x00, y00, z00, yaw00, pitch00, roll00}
 
allparams /: allparams::usage = "allparams is part of the specification of \
the model. It should be a list of the positions and angles describing the \
state of the support structure, plus any other coordinates that are constant \
for the purposes of the normal mode calculation but through which one might \
want to inject a displacement input."
 
x00 /: x00::usage = 
     "x00 is a param specifying the x coordinate of the structure."
 
y00 /: y00::usage = 
     "y00 is a param specifying the y coordinate of the structure."
 
z00 /: z00::usage = 
     "x00 is a param specifying the z coordinate of the structure."
 
yaw00 /: yaw00::usage = 
     "yaw00 is a param specifying the yaw coordinate of the structure."
 
pitch00 /: pitch00::usage = 
     "pitch00 is a param specifying the pitch coordinate of the structure."
 
roll00 /: roll00::usage = 
     "roll00 is a param specifying the roll coordinate of the structure."
 
velocities = {vx1, vy1, vz1, vyaw1, vpitch1, vroll1, vx2I, vy2I, vz2I, 
     vyaw2I, vpitch2I, vroll2I, vx2E, vy2E, vz2E, vyaw2E, vpitch2E, vroll2E, 
     vx3I, vy3I, vz3I, vyaw3I, vpitch3I, vroll3I, vx3E, vy3E, vz3E, vyaw3E, 
     vpitch3E, vroll3E}
 
velocities /: velocities::usage = "velocities is a list of symbols (e.g., \
vx1) for velocities, corresponding to the variables in allvars (cf., x1), \
initialized by makevelocities[]. It was formerly used by tovelocities but is \
now deprecated."
 
vx1 /: vx1::usage = "vx1 is the velocity variable corresponding to x1"
 
vy1 /: vy1::usage = "vy1 is the velocity variable corresponding to y1"
 
vz1 /: vz1::usage = "vz1 is the velocity variable corresponding to z1"
 
vyaw1 /: vyaw1::usage = "vyaw1 is the velocity variable corresponding to yaw1"
 
vpitch1 /: vpitch1::usage = 
     "vpitch1 is the velocity variable corresponding to pitch1"
 
vroll1 /: vroll1::usage = 
     "vroll1 is the velocity variable corresponding to roll1"
 
vx2I /: vx2I::usage = "vx2I is the velocity variable corresponding to x2I"
 
vy2I /: vy2I::usage = "vy2I is the velocity variable corresponding to y2I"
 
vz2I /: vz2I::usage = "vz2I is the velocity variable corresponding to z2I"
 
vyaw2I /: vyaw2I::usage = 
     "vyaw2I is the velocity variable corresponding to yaw2I"
 
vpitch2I /: vpitch2I::usage = 
     "vpitch2I is the velocity variable corresponding to pitch2I"
 
vroll2I /: vroll2I::usage = 
     "vroll2I is the velocity variable corresponding to roll2I"
 
vx2E /: vx2E::usage = "vx2E is the velocity variable corresponding to x2E"
 
vy2E /: vy2E::usage = "vy2E is the velocity variable corresponding to y2E"
 
vz2E /: vz2E::usage = "vz2E is the velocity variable corresponding to z2E"
 
vyaw2E /: vyaw2E::usage = 
     "vyaw2E is the velocity variable corresponding to yaw2E"
 
vpitch2E /: vpitch2E::usage = 
     "vpitch2E is the velocity variable corresponding to pitch2E"
 
vroll2E /: vroll2E::usage = 
     "vroll2E is the velocity variable corresponding to roll2E"
 
vx3I /: vx3I::usage = "vx3I is the velocity variable corresponding to x3I"
 
vy3I /: vy3I::usage = "vy3I is the velocity variable corresponding to y3I"
 
vz3I /: vz3I::usage = "vz3I is the velocity variable corresponding to z3I"
 
vyaw3I /: vyaw3I::usage = 
     "vyaw3I is the velocity variable corresponding to yaw3I"
 
vpitch3I /: vpitch3I::usage = 
     "vpitch3I is the velocity variable corresponding to pitch3I"
 
vroll3I /: vroll3I::usage = 
     "vroll3I is the velocity variable corresponding to roll3I"
 
vx3E /: vx3E::usage = "vx3E is the velocity variable corresponding to x3E"
 
vy3E /: vy3E::usage = "vy3E is the velocity variable corresponding to y3E"
 
vz3E /: vz3E::usage = "vz3E is the velocity variable corresponding to z3E"
 
vyaw3E /: vyaw3E::usage = 
     "vyaw3E is the velocity variable corresponding to yaw3E"
 
vpitch3E /: vpitch3E::usage = 
     "vpitch3E is the velocity variable corresponding to pitch3E"
 
vroll3E /: vroll3E::usage = 
     "vroll3E is the velocity variable corresponding to roll3E"
 
stdcoeffs = {g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, 
     I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, 
     I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, 
     I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, 
     chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, 
     slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, 
     kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E}
 
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
 
flexsubs = {flex1 -> c1^(3/2)*Sqrt[(M11*nw1*Y1)/
         (g*(m1 + m2E + m2I + m3E + m3I))], 
     flex2I -> c2I^(3/2)*Sqrt[(M21I*nw2*Y2I)/(g*(m2I + m3I))], 
     flex2E -> c2E^(3/2)*Sqrt[(M21E*nw2*Y2E)/(g*(m2E + m3E))], 
     flex3I -> c3I^(3/2)*Sqrt[(M31I*nw3*Y3I)/(g*m3I)], 
     flex3E -> c3E^(3/2)*Sqrt[(M31E*nw3*Y3E)/(g*m3E)], 
     tl1 -> d0 + dtop + Sqrt[l1^2 - (n0 - n1)^2], 
     tl2I -> d1I + d2I + Sqrt[l2I^2 - (n2I - n3I)^2], 
     tl2E -> d1E + d2E + Sqrt[l2E^2 - (n2E - n3E)^2], 
     tl3I -> d3I + d4I + Sqrt[l3I^2 - (n4I - n5I)^2], 
     tl3E -> d3E + d4E + Sqrt[l3E^2 - (n4E - n5E)^2], 
     c1 -> Sqrt[l1^2 - (-n0 + n1)^2]/l1, c2I -> Sqrt[l2I^2 - (-n2I + n3I)^2]/
       l2I, c2E -> Sqrt[l2E^2 - (-n2E + n3E)^2]/l2E, 
     c3I -> Sqrt[l3I^2 - (-n4I + n5I)^2]/l3I, 
     c3E -> Sqrt[l3E^2 - (-n4E + n5E)^2]/l3E, si1 -> (-n0 + n1)/l1, 
     si2I -> (-n2I + n3I)/l2I, si2E -> (-n2E + n3E)/l2E, 
     si3I -> (-n4I + n5I)/l3I, si3E -> (-n4E + n5E)/l3E, nw1 -> 4, nw2 -> 4, 
     nw3 -> 4}
 
flex1 /: flex1::usage = 
     "flex1 is the vertical component of the upper wire flexure length."
 
nw1 /: nw1::usage = "nw1 is number of upper wires."
 
flex2I /: flex2I::usage = "flex2I is the vertical component of the \
input-chain intermediate wire flexure length."
 
nw2 /: nw2::usage = "nw2 is number of intermediate wires in each chain."
 
flex2E /: flex2E::usage = "flex2E is the vertical component of the end-chain \
intermediate wire flexure length."
 
flex3I /: flex3I::usage = "flex3I is the vertical component of the \
input-chain lower wire flexure length."
 
nw3 /: nw3::usage = "nw3 is number of lower wires in each chain."
 
flex3E /: flex3E::usage = "flex3E is the vertical component of the end-chain \
lower wire flexure length."
 
tl1 /: tl1::usage = "tl1 is the vertical distance spanned by the upper wires."
 
tl2I /: tl2I::usage = "tl2I is the vertical distance spanned by the \
input-chain intermediate wires."
 
tl2E /: tl2E::usage = 
     "tl2E is the vertical distance spanned by the end-chain intermediate \
wires."
 
tl3I /: tl3I::usage = 
     "tl3I is the vertical distance spanned by the input-chain lower wires."
 
tl3E /: tl3E::usage = 
     "tl3E is the vertical distance spanned by the end-chain lower wires."
 
si1 /: si1::usage = 
     "si1 is the sine of the angle to the vertical of the upper wires."
 
si2I /: si2I::usage = "si2I is the sine of the angle to the vertical of the \
input-chain intermediate wires."
 
si2E /: si2E::usage = "si2E is the sine of the angle to the vertical of the \
end-chain intermediate wires."
 
si3I /: si3I::usage = "si3I is the sine of the angle to the vertical of the \
input-chain lower wires."
 
si3E /: si3E::usage = 
     "si3E is the sine of the angle to the vertical of the end-chain lower \
wires."
