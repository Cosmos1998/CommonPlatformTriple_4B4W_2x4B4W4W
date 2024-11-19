# Exported functions from Mathematical suspension model CommonPlatformTriple_4B4W_2x4B4W4W

import numpy as np
from math import pi,sqrt
import scipy.linalg
import control as ct

# The standard list of positional arguments (not counting Stage2=True), for reference
stdcoeffs = ["g","m1","m2I","m2E","m3I","m3E","I1x","I1y","I1z","I1xy","I1yz","I1zx","I2Ix","I2Iy","I2Iz","I2Ixy","I2Iyz","I2Izx","I2Ex","I2Ey","I2Ez","I2Exy","I2Eyz","I2Ezx","I3Ix","I3Iy","I3Iz","I3Ixy","I3Iyz","I3Izx","I3Ex","I3Ey","I3Ez","I3Exy","I3Eyz","I3Ezx","dtop","d0","d1I","d1E","d2I","d2E","d3I","d3E","d4I","d4E","chainIx","chainEx","n0","n1","n2I","n2E","n3I","n3E","n4I","n4E","n5I","n5E","su","siI","siE","slI","slE","kbuz","kbizI","kbizE","l1","l2I","l2E","l3I","l3E","kw1","kw2I","kw2E","kw3I","kw3E","Y1","Y2I","Y2E","Y3I","Y3E","M11","M21I","M21E","M31I","M31E"]

# The list of var-type coordinate names, for the masses.
allvars = ["x1","y1","z1","yaw1","pitch1","roll1","x2I","y2I","z2I","yaw2I","pitch2I","roll2I","x2E","y2E","z2E","yaw2E","pitch2E","roll2E","x3I","y3I","z3I","yaw3I","pitch3I","roll3I","x3E","y3E","z3E","yaw3E","pitch3E","roll3E"]
# The list of float-type coordinate names, for the blade tips.
allfloats = ["qulf","qulb","qurf","qurb","qiIlf","qiIlb","qiIrf","qiIrb","qiElf","qiElb","qiErf","qiErb"]
# The list of param-type coordinates, for the structure.
allparams = ["x00","y00","z00","yaw00","pitch00","roll00"]

# The standard input names (structure displacements and mass forces/torques).
inputs = ["x00","y00","z00","yaw00","pitch00","roll00","f_x1","f_y1","f_z1","f_yaw1","f_pitch1","f_roll1","f_x2I","f_y2I","f_z2I","f_yaw2I","f_pitch2I","f_roll2I","f_x2E","f_y2E","f_z2E","f_yaw2E","f_pitch2E","f_roll2E","f_x3I","f_y3I","f_z3I","f_yaw3I","f_pitch3I","f_roll3I","f_x3E","f_y3E","f_z3E","f_yaw3E","f_pitch3E","f_roll3E"]
# The standard output names (mass displacements and structure back-reaction forces).
outputs = ["x1","y1","z1","yaw1","pitch1","roll1","x2I","y2I","z2I","yaw2I","pitch2I","roll2I","x2E","y2E","z2E","yaw2E","pitch2E","roll2E","x3I","y3I","z3I","yaw3I","pitch3I","roll3I","x3E","y3E","z3E","yaw3E","pitch3E","roll3E","f_x00","f_y00","f_z00","f_yaw00","f_pitch00","f_roll00"]
# The state coordinate names (mass coordinates and velocities).
states = ["x1","y1","z1","yaw1","pitch1","roll1","x2I","y2I","z2I","yaw2I","pitch2I","roll2I","x2E","y2E","z2E","yaw2E","pitch2E","roll2E","x3I","y3I","z3I","yaw3I","pitch3I","roll3I","x3E","y3E","z3E","yaw3E","pitch3E","roll3E","v_x1","v_y1","v_z1","v_yaw1","v_pitch1","v_roll1","v_x2I","v_y2I","v_z2I","v_yaw2I","v_pitch2I","v_roll2I","v_x2E","v_y2E","v_z2E","v_yaw2E","v_pitch2E","v_roll2E","v_x3I","v_y3I","v_z3I","v_yaw3I","v_pitch3I","v_roll3I","v_x3E","v_y3E","v_z3E","v_yaw3E","v_pitch3E","v_roll3E"]

def sm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw stiffness matrix for coupling between params.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1),0,0,0,-((dtop*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0],
		[0,(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)/(c1*l1**3),0,0,0,(dtop*(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)+c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*n0*(n0-n1))/(c1*l1**3)],
		[0,0,4*c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/l1,0,0,0],
		[0,0,0,(4*c1*kw1*l1*(n0-n1)**2*su**2+g*(m1+m2E+m2I+m3E+m3I)*(-((n0-n1)**2*su**2)+l1**2*(n0*n1+su**2)))/(c1*l1**3),0,0],
		[-((dtop*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,0,0,4*c1**2*kw1*su**2-(c1*g*(m1+m2E+m2I+m3E+m3I)*su**2)/l1+(g*(m1+m2E+m2I+m3E+m3I)*(dtop**2+c1*dtop*l1+su**2))/(c1*l1),0],
		[0,(dtop*(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)+c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*n0*(n0-n1))/(c1*l1**3),0,0,0,(32*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))**2-8*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))**2+8*g*l1**2*(m1+m2E+m2I+m3E+m3I)*(dtop**2+c1*dtop*l1+n0*n1))/(8*c1*l1**3)]
	])

def km(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The mass matrix.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,m1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1z,I1yz,I1zx,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1yz,I1y,I1xy,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,I1zx,I1xy,I1x,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,m2I,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,m2I,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,m2I,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2Iz,I2Iyz,I2Izx,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2Iyz,I2Iy,I2Ixy,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,I2Izx,I2Ixy,I2Ix,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,m2E,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,m2E,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,m2E,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I2Ez,I2Eyz,I2Ezx,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I2Eyz,I2Ey,I2Exy,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I2Ezx,I2Exy,I2Ex,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3I,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3I,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3I,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Iz,I3Iyz,I3Izx,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Iyz,I3Iy,I3Ixy,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Izx,I3Ixy,I3Ix,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3E,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3E,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,m3E,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Ez,I3Eyz,I3Ezx],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Eyz,I3Ey,I3Exy],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,I3Ezx,I3Exy,I3Ex]
	])

def xm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw stiffness matrix for coupling between vars.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[g*((m2E+m3E)/(c2E*l2E)+(m2I+m3I)/(c2I*l2I)+(m1+m2E+m2I+m3E+m3I)/(c1*l1)),0,0,0,g*(-((d1E*(m2E+m3E))/(c2E*l2E))-(d1I*(m2I+m3I))/(c2I*l2I)+(d0*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,-((g*(m2I+m3I))/(c2I*l2I)),0,0,0,-((d2I*g*(m2I+m3I))/(c2I*l2I)),0,-((g*(m2E+m3E))/(c2E*l2E)),0,0,0,-((d2E*g*(m2E+m3E))/(c2E*l2E)),0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,(g*(m2E+m3E))/(c2E*l2E)+(g*(m2I+m3I))/(c2I*l2I)+(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)+(4*kw1*(n0-n1)**2)/l1**2-(g*(m1+m2E+m2I+m3E+m3I)*(n0-n1)**2)/(c1*l1**3)+(4*kw2E*(n2E-n3E)**2)/l2E**2-(g*(m2E+m3E)*(n2E-n3E)**2)/(c2E*l2E**3)+(4*kw2I*(n2I-n3I)**2)/l2I**2-(g*(m2I+m3I)*(n2I-n3I)**2)/(c2I*l2I**3),0,(chainEx*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2))/(c2E*l2E**3)+(chainIx*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3)+(4*chainIx*kw2I*(n2I-n3I)**2)/l2I**2,0,(d1E*g*(m2E+m3E))/(c2E*l2E)+(d1I*g*(m2I+m3I))/(c2I*l2I)-(d0*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)+(4*kw1*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/l1**2-(g*(m1+m2E+m2I+m3E+m3I)*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)+(4*kw2E*(c2E*l2E*n2E+d1E*(n2E-n3E))*(n2E-n3E))/l2E**2-(g*(m2E+m3E)*(c2E*l2E*n2E+d1E*(n2E-n3E))*(n2E-n3E))/(c2E*l2E**3)+(4*kw2I*(c2I*l2I*n2I+d1I*(n2I-n3I))*(n2I-n3I))/l2I**2-(g*(m2I+m3I)*(c2I*l2I*n2I+d1I*(n2I-n3I))*(n2I-n3I))/(c2I*l2I**3),0,-((g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)/(c2I*l2I**3)),0,0,0,(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I)/(c2I*l2I**3),0,-((g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)/(c2E*l2E**3)),0,0,0,(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E)/(c2E*l2E**3),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,4*c1**2*kw1+4*c2E**2*kw2E+4*c2I**2*kw2I+(g*(m2E+m3E))/(c2E*l2E)-(c2E*g*(m2E+m3E))/l2E+(g*(m2I+m3I))/(c2I*l2I)-(c2I*g*(m2I+m3I))/l2I+(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/l1,0,-4*c2E**2*chainEx*kw2E-(chainEx*g*(m2E+m3E))/(c2E*l2E)+(c2E*chainEx*g*(m2E+m3E))/l2E+(chainIx*(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I)))/(c2I*l2I),0,0,0,-4*c2I**2*kw2I-(g*(m2I+m3I))/(c2I*l2I)+(c2I*g*(m2I+m3I))/l2I,0,0,0,0,0,-4*c2E**2*kw2E-(g*(m2E+m3E))/(c2E*l2E)+(c2E*g*(m2E+m3E))/l2E,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,(chainEx*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2))/(c2E*l2E**3)+(chainIx*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3)+(4*chainIx*kw2I*(n2I-n3I)**2)/l2I**2,0,((g*(m1+m2E+m2I+m3E+m3I)*(-((n0-n1)**2*su**2)+l1**2*(n0*n1+su**2)))/c1+(l1*((g*l1**2*(m2I+m3I)*(chainIx**2*(l2I**2-(n2I-n3I)**2)-(n2I-n3I)**2*siI**2+l2I**2*(n2I*n3I+siI**2)))/c2I+(l2I*(chainEx**2*l1**2*l2I**2*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)+g*l1**2*l2I**2*(m2E+m3E)*(-((n2E-n3E)**2*siE**2)+l2E**2*(n2E*n3E+siE**2))+4*c2E*l2E*(chainIx**2*kw2I*l1**2*l2E**2*(n2I-n3I)**2+kw2E*l1**2*l2I**2*(n2E-n3E)**2*siE**2+l2E**2*(kw2I*l1**2*(n2I-n3I)**2*siI**2+kw1*l2I**2*(n0-n1)**2*su**2))))/(c2E*l2E**3)))/l2I**3)/l1**3,0,(chainEx*(d1E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)+c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*n2E*(n2E-n3E)))/(c2E*l2E**3)+(chainIx*d1I*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3)+(4*c2I*chainIx*kw2I*n2I*(n2I-n3I))/l2I+(chainIx*(-(g*(m2I+m3I)*n2I)+4*d1I*kw2I*(n2I-n3I))*(n2I-n3I))/l2I**2,0,-((chainIx*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2))/(c2I*l2I**3)),0,-((4*c2I*kw2I*l2I*(n2I-n3I)**2*siI**2+g*(m2I+m3I)*(-((n2I-n3I)**2*siI**2)+l2I**2*(n2I*n3I+siI**2)))/(c2I*l2I**3)),0,(chainIx*(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I))/(c2I*l2I**3),0,-((chainEx*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2))/(c2E*l2E**3)),0,-((4*c2E*kw2E*l2E*(n2E-n3E)**2*siE**2+g*(m2E+m3E)*(-((n2E-n3E)**2*siE**2)+l2E**2*(n2E*n3E+siE**2)))/(c2E*l2E**3)),0,(chainEx*(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E))/(c2E*l2E**3),0,0,0,0,0,0,0,0,0,0,0,0],
		[g*(-((d1E*(m2E+m3E))/(c2E*l2E))-(d1I*(m2I+m3I))/(c2I*l2I)+(d0*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,-4*c2E**2*chainEx*kw2E-(chainEx*g*(m2E+m3E))/(c2E*l2E)+(c2E*chainEx*g*(m2E+m3E))/l2E+(chainIx*(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I)))/(c2I*l2I),0,g*(d1E*(m2E+m3E)+d1I*(m2I+m3I)+d0*(m1+m2E+m2I+m3E+m3I))+4*c2E**2*kw2E*(chainEx**2+siE**2)-(c2E*g*(m2E+m3E)*(chainEx**2+siE**2))/l2E+(g*(m2E+m3E)*(chainEx**2+d1E**2+siE**2))/(c2E*l2E)+4*c2I**2*kw2I*(chainIx**2+siI**2)-(c2I*g*(m2I+m3I)*(chainIx**2+siI**2))/l2I+(g*(m2I+m3I)*(chainIx**2+d1I**2+siI**2))/(c2I*l2I)+4*c1**2*kw1*su**2-(c1*g*(m1+m2E+m2I+m3E+m3I)*su**2)/l1+(g*(m1+m2E+m2I+m3E+m3I)*(d0**2+su**2))/(c1*l1),0,(d1I*g*(m2I+m3I))/(c2I*l2I),0,(chainIx*(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I)))/(c2I*l2I),0,(d1I*d2I*g*(m2I+m3I)+(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))*siI**2)/(c2I*l2I),0,(d1E*g*(m2E+m3E))/(c2E*l2E),0,(chainEx*(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E)))/(c2E*l2E),0,(d1E*d2E*g*(m2E+m3E)+(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))*siE**2)/(c2E*l2E),0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,(d1E*g*(m2E+m3E))/(c2E*l2E)+(d1I*g*(m2I+m3I))/(c2I*l2I)-(d0*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)+(4*kw1*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/l1**2-(g*(m1+m2E+m2I+m3E+m3I)*(n0-n1)*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)+(4*kw2E*(c2E*l2E*n2E+d1E*(n2E-n3E))*(n2E-n3E))/l2E**2-(g*(m2E+m3E)*(c2E*l2E*n2E+d1E*(n2E-n3E))*(n2E-n3E))/(c2E*l2E**3)+(4*kw2I*(c2I*l2I*n2I+d1I*(n2I-n3I))*(n2I-n3I))/l2I**2-(g*(m2I+m3I)*(c2I*l2I*n2I+d1I*(n2I-n3I))*(n2I-n3I))/(c2I*l2I**3),0,(chainEx*(d1E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)+c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*n2E*(n2E-n3E)))/(c2E*l2E**3)+(chainIx*d1I*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3)+(4*c2I*chainIx*kw2I*n2I*(n2I-n3I))/l2I+(chainIx*(-(g*(m2I+m3I)*n2I)+4*d1I*kw2I*(n2I-n3I))*(n2I-n3I))/l2I**2,0,(g*(m1+m2E+m2I+m3E+m3I)*(d0**2+c1*d0*l1+n0*n1))/(c1*l1)+(4*kw1*(c1*l1*n1+d0*(-n0+n1))**2)/l1**2-(g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n1+d0*(-n0+n1))**2)/(c1*l1**3)+(4*kw2E*(c2E*l2E*n2E+d1E*(n2E-n3E))**2)/l2E**2-(g*(m2E+m3E)*(c2E*l2E*n2E+d1E*(n2E-n3E))**2)/(c2E*l2E**3)+(g*(m2E+m3E)*(d1E**2+c2E*d1E*l2E+n2E*n3E))/(c2E*l2E)+(4*kw2I*(c2I*l2I*n2I+d1I*(n2I-n3I))**2)/l2I**2-(g*(m2I+m3I)*(c2I*l2I*n2I+d1I*(n2I-n3I))**2)/(c2I*l2I**3)+(g*(m2I+m3I)*(d1I**2+c2I*d1I*l2I+n2I*n3I))/(c2I*l2I),0,(d1I*(-(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))-4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*n2I*(n2I-n3I))/(c2I*l2I**3),0,0,0,(d1I*(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I)+l2I*n2I*(-(c2I*d2I*g*(m2I+m3I)*(n2I-n3I))-4*c2I**3*kw2I*l2I**2*n3I-g*l2I*(m2I+m3I)*n3I+c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I)))/(c2I*l2I**3),0,(d1E*(-(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))-4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*n2E*(n2E-n3E))/(c2E*l2E**3),0,0,0,(d1E*(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E)+l2E*n2E*(-(c2E*d2E*g*(m2E+m3E)*(n2E-n3E))-4*c2E**3*kw2E*l2E**2*n3E-g*l2E*(m2E+m3E)*n3E+c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E)))/(c2E*l2E**3),0,0,0,0,0,0,0,0,0,0,0,0],
		[-((g*(m2I+m3I))/(c2I*l2I)),0,0,0,(d1I*g*(m2I+m3I))/(c2I*l2I),0,(g*m3I)/(c3I*l3I)+(g*(m2I+m3I))/(c2I*l2I),0,0,0,-((d3I*g*m3I)/(c3I*l3I))+(d2I*g*(m2I+m3I))/(c2I*l2I),0,0,0,0,0,0,0,-((g*m3I)/(c3I*l3I)),0,0,0,-((d4I*g*m3I)/(c3I*l3I)),0,0,0,0,0,0,0],
		[0,-((g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)/(c2I*l2I**3)),0,-((chainIx*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2))/(c2I*l2I**3)),0,(d1I*(-(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))-4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*n2I*(n2I-n3I))/(c2I*l2I**3),0,(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3)+(g*m3I*(l3I**2-(n4I-n5I)**2))/(c3I*l3I**3)+(4*(kw2I*l3I**2*(n2I-n3I)**2+kw3I*l2I**2*(n4I-n5I)**2))/(l2I**2*l3I**2),0,0,0,-((d2I*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3))-(4*d2I*kw2I*(n2I-n3I)**2)/l2I**2+(4*c2I*kw2I*(n2I-n3I)*n3I)/l2I-(g*(m2I+m3I)*(n2I-n3I)*n3I)/l2I**2+(d3I*g*m3I*(l3I**2-(n4I-n5I)**2))/(c3I*l3I**3)+(4*c3I*kw3I*n4I*(n4I-n5I))/l3I+(4*d3I*kw3I*(n4I-n5I)**2)/l3I**2+(g*m3I*n4I*(-n4I+n5I))/l3I**2,0,0,0,0,0,0,0,(g*m3I*(-l3I**2+(n4I-n5I)**2)-4*c3I*kw3I*l3I*(n4I-n5I)**2)/(c3I*l3I**3),0,0,0,(d4I*g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)/(c3I*l3I**3),0,0,0,0,0,0],
		[0,0,-4*c2I**2*kw2I-(g*(m2I+m3I))/(c2I*l2I)+(c2I*g*(m2I+m3I))/l2I,0,(chainIx*(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I)))/(c2I*l2I),0,0,0,4*c2I**2*kw2I+4*c3I**2*kw3I+(g*m3I)/(c3I*l3I)-(c3I*g*m3I)/l3I+(g*(m2I+m3I))/(c2I*l2I)-(c2I*g*(m2I+m3I))/l2I,0,0,0,0,0,0,0,0,0,0,0,(-4*c3I**3*kw3I*l3I-g*m3I+c3I**2*g*m3I)/(c3I*l3I),0,0,0,0,0,0,0,0,0],
		[0,0,0,-((4*c2I*kw2I*l2I*(n2I-n3I)**2*siI**2+g*(m2I+m3I)*(-((n2I-n3I)**2*siI**2)+l2I**2*(n2I*n3I+siI**2)))/(c2I*l2I**3)),0,0,0,0,0,((g*m3I*(-((n4I-n5I)**2*slI**2)+l3I**2*(n4I*n5I+slI**2)))/c3I+(g*l3I**3*(m2I+m3I)*(-((n2I-n3I)**2*siI**2)+l2I**2*(n2I*n3I+siI**2))+4*c2I*l2I*l3I*(kw2I*l3I**2*(n2I-n3I)**2*siI**2+kw3I*l2I**2*(n4I-n5I)**2*slI**2))/(c2I*l2I**3))/l3I**3,0,0,0,0,0,0,0,0,0,0,0,(-4*c3I*kw3I*l3I*(n4I-n5I)**2*slI**2+g*m3I*((n4I-n5I)**2*slI**2-l3I**2*(n4I*n5I+slI**2)))/(c3I*l3I**3),0,0,0,0,0,0,0,0],
		[-((d2I*g*(m2I+m3I))/(c2I*l2I)),0,0,0,(d1I*d2I*g*(m2I+m3I)+(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))*siI**2)/(c2I*l2I),0,-((d3I*g*m3I)/(c3I*l3I))+(d2I*g*(m2I+m3I))/(c2I*l2I),0,0,0,4*c2I**2*kw2I*siI**2-(c2I*g*(m2I+m3I)*siI**2)/l2I+(g*(m2I+m3I)*(d2I**2+c2I*d2I*l2I+siI**2))/(c2I*l2I)+4*c3I**2*kw3I*slI**2-(c3I*g*m3I*slI**2)/l3I+(g*m3I*(d3I**2+c3I*d3I*l3I+slI**2))/(c3I*l3I),0,0,0,0,0,0,0,(d3I*g*m3I)/(c3I*l3I),0,0,0,(d3I*d4I*g*m3I+(-4*c3I**3*kw3I*l3I-g*m3I+c3I**2*g*m3I)*slI**2)/(c3I*l3I),0,0,0,0,0,0,0],
		[0,(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I)/(c2I*l2I**3),0,(chainIx*(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I))/(c2I*l2I**3),0,(d1I*(d2I*(g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2)+4*c2I*kw2I*l2I*(n2I-n3I)**2)-c2I*l2I*(4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*n3I)+l2I*n2I*(-(c2I*d2I*g*(m2I+m3I)*(n2I-n3I))-4*c2I**3*kw2I*l2I**2*n3I-g*l2I*(m2I+m3I)*n3I+c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I)))/(c2I*l2I**3),0,-((d2I*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/(c2I*l2I**3))-(4*d2I*kw2I*(n2I-n3I)**2)/l2I**2+(4*c2I*kw2I*(n2I-n3I)*n3I)/l2I-(g*(m2I+m3I)*(n2I-n3I)*n3I)/l2I**2+(d3I*g*m3I*(l3I**2-(n4I-n5I)**2))/(c3I*l3I**3)+(4*c3I*kw3I*n4I*(n4I-n5I))/l3I+(4*d3I*kw3I*(n4I-n5I)**2)/l3I**2+(g*m3I*n4I*(-n4I+n5I))/l3I**2,0,0,0,4*c3I**2*kw3I*n4I**2+(c3I*n4I*(-(g*m3I*n4I)+8*d3I*kw3I*(n4I-n5I)))/l3I+(g*m3I*(d3I**2*(l3I**2-(n4I-n5I)**2)+l3I**2*n4I*n5I))/(c3I*l3I**3)+((d2I**2*g*(m2I+m3I)*(l2I**2-(n2I-n3I)**2))/c2I+4*d2I**2*kw2I*l2I*(n2I-n3I)**2+(g*l2I**2*(m2I+m3I)*n2I*n3I)/c2I+4*c2I**2*kw2I*l2I**3*n3I**2-c2I*g*l2I**2*(m2I+m3I)*n3I**2+8*c2I*d2I*kw2I*l2I**2*n3I*(-n2I+n3I)+d2I*g*l2I*(m2I+m3I)*(l2I**2+2*(n2I-n3I)*n3I)+(d3I*l2I**3*(4*d3I*kw3I*(n4I-n5I)**2+g*m3I*(l3I**2+2*n4I*(-n4I+n5I))))/l3I**2)/l2I**3,0,0,0,0,0,0,0,(d3I*g*m3I*(-l3I**2+(n4I-n5I)**2)-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*n4I*(n4I-n5I)-4*c3I*d3I*kw3I*l3I*(n4I-n5I)**2)/(c3I*l3I**3),0,0,0,(d3I*(d4I*g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)+l3I*n4I*(-4*c3I**3*kw3I*l3I**2*n5I-g*l3I*m3I*n5I+c3I*d4I*g*m3I*(-n4I+n5I)+c3I**2*l3I*(4*d4I*kw3I*(n4I-n5I)+g*m3I*n5I)))/(c3I*l3I**3),0,0,0,0,0,0],
		[-((g*(m2E+m3E))/(c2E*l2E)),0,0,0,(d1E*g*(m2E+m3E))/(c2E*l2E),0,0,0,0,0,0,0,(g*m3E)/(c3E*l3E)+(g*(m2E+m3E))/(c2E*l2E),0,0,0,-((d3E*g*m3E)/(c3E*l3E))+(d2E*g*(m2E+m3E))/(c2E*l2E),0,0,0,0,0,0,0,-((g*m3E)/(c3E*l3E)),0,0,0,-((d4E*g*m3E)/(c3E*l3E)),0],
		[0,-((g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)/(c2E*l2E**3)),0,-((chainEx*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2))/(c2E*l2E**3)),0,(d1E*(-(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))-4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*n2E*(n2E-n3E))/(c2E*l2E**3),0,0,0,0,0,0,0,(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))/(c2E*l2E**3)+(g*m3E*(l3E**2-(n4E-n5E)**2))/(c3E*l3E**3)+(4*(kw2E*l3E**2*(n2E-n3E)**2+kw3E*l2E**2*(n4E-n5E)**2))/(l2E**2*l3E**2),0,0,0,-((d2E*g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))/(c2E*l2E**3))-(4*d2E*kw2E*(n2E-n3E)**2)/l2E**2+(4*c2E*kw2E*(n2E-n3E)*n3E)/l2E-(g*(m2E+m3E)*(n2E-n3E)*n3E)/l2E**2+(d3E*g*m3E*(l3E**2-(n4E-n5E)**2))/(c3E*l3E**3)+(4*c3E*kw3E*n4E*(n4E-n5E))/l3E+(4*d3E*kw3E*(n4E-n5E)**2)/l3E**2+(g*m3E*n4E*(-n4E+n5E))/l3E**2,0,0,0,0,0,0,0,(g*m3E*(-l3E**2+(n4E-n5E)**2)-4*c3E*kw3E*l3E*(n4E-n5E)**2)/(c3E*l3E**3),0,0,0,(d4E*g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)/(c3E*l3E**3)],
		[0,0,-4*c2E**2*kw2E-(g*(m2E+m3E))/(c2E*l2E)+(c2E*g*(m2E+m3E))/l2E,0,(chainEx*(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E)))/(c2E*l2E),0,0,0,0,0,0,0,0,0,4*c2E**2*kw2E+4*c3E**2*kw3E+(g*m3E)/(c3E*l3E)-(c3E*g*m3E)/l3E+(g*(m2E+m3E))/(c2E*l2E)-(c2E*g*(m2E+m3E))/l2E,0,0,0,0,0,0,0,0,0,0,0,(-4*c3E**3*kw3E*l3E-g*m3E+c3E**2*g*m3E)/(c3E*l3E),0,0,0],
		[0,0,0,-((4*c2E*kw2E*l2E*(n2E-n3E)**2*siE**2+g*(m2E+m3E)*(-((n2E-n3E)**2*siE**2)+l2E**2*(n2E*n3E+siE**2)))/(c2E*l2E**3)),0,0,0,0,0,0,0,0,0,0,0,((g*m3E*(-((n4E-n5E)**2*slE**2)+l3E**2*(n4E*n5E+slE**2)))/c3E+(g*l3E**3*(m2E+m3E)*(-((n2E-n3E)**2*siE**2)+l2E**2*(n2E*n3E+siE**2))+4*c2E*l2E*l3E*(kw2E*l3E**2*(n2E-n3E)**2*siE**2+kw3E*l2E**2*(n4E-n5E)**2*slE**2))/(c2E*l2E**3))/l3E**3,0,0,0,0,0,0,0,0,0,0,0,(-4*c3E*kw3E*l3E*(n4E-n5E)**2*slE**2+g*m3E*((n4E-n5E)**2*slE**2-l3E**2*(n4E*n5E+slE**2)))/(c3E*l3E**3),0,0],
		[-((d2E*g*(m2E+m3E))/(c2E*l2E)),0,0,0,(d1E*d2E*g*(m2E+m3E)+(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))*siE**2)/(c2E*l2E),0,0,0,0,0,0,0,-((d3E*g*m3E)/(c3E*l3E))+(d2E*g*(m2E+m3E))/(c2E*l2E),0,0,0,4*c2E**2*kw2E*siE**2-(c2E*g*(m2E+m3E)*siE**2)/l2E+(g*(m2E+m3E)*(d2E**2+c2E*d2E*l2E+siE**2))/(c2E*l2E)+4*c3E**2*kw3E*slE**2-(c3E*g*m3E*slE**2)/l3E+(g*m3E*(d3E**2+c3E*d3E*l3E+slE**2))/(c3E*l3E),0,0,0,0,0,0,0,(d3E*g*m3E)/(c3E*l3E),0,0,0,(d3E*d4E*g*m3E+(-4*c3E**3*kw3E*l3E-g*m3E+c3E**2*g*m3E)*slE**2)/(c3E*l3E),0],
		[0,(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E)/(c2E*l2E**3),0,(chainEx*(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E))/(c2E*l2E**3),0,(d1E*(d2E*(g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2)+4*c2E*kw2E*l2E*(n2E-n3E)**2)-c2E*l2E*(4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*n3E)+l2E*n2E*(-(c2E*d2E*g*(m2E+m3E)*(n2E-n3E))-4*c2E**3*kw2E*l2E**2*n3E-g*l2E*(m2E+m3E)*n3E+c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E)))/(c2E*l2E**3),0,0,0,0,0,0,0,-((d2E*g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))/(c2E*l2E**3))-(4*d2E*kw2E*(n2E-n3E)**2)/l2E**2+(4*c2E*kw2E*(n2E-n3E)*n3E)/l2E-(g*(m2E+m3E)*(n2E-n3E)*n3E)/l2E**2+(d3E*g*m3E*(l3E**2-(n4E-n5E)**2))/(c3E*l3E**3)+(4*c3E*kw3E*n4E*(n4E-n5E))/l3E+(4*d3E*kw3E*(n4E-n5E)**2)/l3E**2+(g*m3E*n4E*(-n4E+n5E))/l3E**2,0,0,0,4*c3E**2*kw3E*n4E**2+(c3E*n4E*(-(g*m3E*n4E)+8*d3E*kw3E*(n4E-n5E)))/l3E+(g*m3E*(d3E**2*(l3E**2-(n4E-n5E)**2)+l3E**2*n4E*n5E))/(c3E*l3E**3)+((d2E**2*g*(m2E+m3E)*(l2E**2-(n2E-n3E)**2))/c2E+4*d2E**2*kw2E*l2E*(n2E-n3E)**2+(g*l2E**2*(m2E+m3E)*n2E*n3E)/c2E+4*c2E**2*kw2E*l2E**3*n3E**2-c2E*g*l2E**2*(m2E+m3E)*n3E**2+8*c2E*d2E*kw2E*l2E**2*n3E*(-n2E+n3E)+d2E*g*l2E*(m2E+m3E)*(l2E**2+2*(n2E-n3E)*n3E)+(d3E*l2E**3*(4*d3E*kw3E*(n4E-n5E)**2+g*m3E*(l3E**2+2*n4E*(-n4E+n5E))))/l3E**2)/l2E**3,0,0,0,0,0,0,0,(d3E*g*m3E*(-l3E**2+(n4E-n5E)**2)-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*n4E*(n4E-n5E)-4*c3E*d3E*kw3E*l3E*(n4E-n5E)**2)/(c3E*l3E**3),0,0,0,(d3E*(d4E*g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)+l3E*n4E*(-4*c3E**3*kw3E*l3E**2*n5E-g*l3E*m3E*n5E+c3E*d4E*g*m3E*(-n4E+n5E)+c3E**2*l3E*(4*d4E*kw3E*(n4E-n5E)+g*m3E*n5E)))/(c3E*l3E**3)],
		[0,0,0,0,0,0,-((g*m3I)/(c3I*l3I)),0,0,0,(d3I*g*m3I)/(c3I*l3I),0,0,0,0,0,0,0,(g*m3I)/(c3I*l3I),0,0,0,(d4I*g*m3I)/(c3I*l3I),0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,(g*m3I*(-l3I**2+(n4I-n5I)**2)-4*c3I*kw3I*l3I*(n4I-n5I)**2)/(c3I*l3I**3),0,0,0,(d3I*g*m3I*(-l3I**2+(n4I-n5I)**2)-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*n4I*(n4I-n5I)-4*c3I*d3I*kw3I*l3I*(n4I-n5I)**2)/(c3I*l3I**3),0,0,0,0,0,0,0,(g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*kw3I*l3I*(n4I-n5I)**2)/(c3I*l3I**3),0,0,0,(d4I*g*m3I*(-l3I**2+(n4I-n5I)**2)-4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2+c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)/(c3I*l3I**3),0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,(-4*c3I**3*kw3I*l3I-g*m3I+c3I**2*g*m3I)/(c3I*l3I),0,0,0,0,0,0,0,0,0,0,0,(4*c3I**3*kw3I*l3I+g*m3I-c3I**2*g*m3I)/(c3I*l3I),0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,(-4*c3I*kw3I*l3I*(n4I-n5I)**2*slI**2+g*m3I*((n4I-n5I)**2*slI**2-l3I**2*(n4I*n5I+slI**2)))/(c3I*l3I**3),0,0,0,0,0,0,0,0,0,0,0,(4*c3I*kw3I*l3I*(n4I-n5I)**2*slI**2+g*m3I*(-((n4I-n5I)**2*slI**2)+l3I**2*(n4I*n5I+slI**2)))/(c3I*l3I**3),0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,-((d4I*g*m3I)/(c3I*l3I)),0,0,0,(d3I*d4I*g*m3I+(-4*c3I**3*kw3I*l3I-g*m3I+c3I**2*g*m3I)*slI**2)/(c3I*l3I),0,0,0,0,0,0,0,(d4I*g*m3I)/(c3I*l3I),0,0,0,(d4I**2*g*m3I+c3I*d4I*g*l3I*m3I+(4*c3I**3*kw3I*l3I+g*m3I-c3I**2*g*m3I)*slI**2)/(c3I*l3I),0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,(d4I*g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)/(c3I*l3I**3),0,0,0,(d3I*(d4I*g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2-c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)+l3I*n4I*(-4*c3I**3*kw3I*l3I**2*n5I-g*l3I*m3I*n5I+c3I*d4I*g*m3I*(-n4I+n5I)+c3I**2*l3I*(4*d4I*kw3I*(n4I-n5I)+g*m3I*n5I)))/(c3I*l3I**3),0,0,0,0,0,0,0,(d4I*g*m3I*(-l3I**2+(n4I-n5I)**2)-4*c3I*d4I*kw3I*l3I*(n4I-n5I)**2+c3I*l3I*(4*c3I*kw3I*l3I-g*m3I)*(n4I-n5I)*n5I)/(c3I*l3I**3),0,0,0,(d4I**2*(g*m3I*(l3I**2-(n4I-n5I)**2)+4*c3I*kw3I*l3I*(n4I-n5I)**2)+l3I**2*n5I*(4*c3I**3*kw3I*l3I*n5I+g*m3I*(n4I-c3I**2*n5I))+c3I*d4I*l3I*(8*c3I*kw3I*l3I*n5I*(-n4I+n5I)+g*m3I*(l3I**2+2*(n4I-n5I)*n5I)))/(c3I*l3I**3),0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,-((g*m3E)/(c3E*l3E)),0,0,0,(d3E*g*m3E)/(c3E*l3E),0,0,0,0,0,0,0,(g*m3E)/(c3E*l3E),0,0,0,(d4E*g*m3E)/(c3E*l3E),0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,(g*m3E*(-l3E**2+(n4E-n5E)**2)-4*c3E*kw3E*l3E*(n4E-n5E)**2)/(c3E*l3E**3),0,0,0,(d3E*g*m3E*(-l3E**2+(n4E-n5E)**2)-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*n4E*(n4E-n5E)-4*c3E*d3E*kw3E*l3E*(n4E-n5E)**2)/(c3E*l3E**3),0,0,0,0,0,0,0,(g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*kw3E*l3E*(n4E-n5E)**2)/(c3E*l3E**3),0,0,0,(d4E*g*m3E*(-l3E**2+(n4E-n5E)**2)-4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2+c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)/(c3E*l3E**3)],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,(-4*c3E**3*kw3E*l3E-g*m3E+c3E**2*g*m3E)/(c3E*l3E),0,0,0,0,0,0,0,0,0,0,0,(4*c3E**3*kw3E*l3E+g*m3E-c3E**2*g*m3E)/(c3E*l3E),0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(-4*c3E*kw3E*l3E*(n4E-n5E)**2*slE**2+g*m3E*((n4E-n5E)**2*slE**2-l3E**2*(n4E*n5E+slE**2)))/(c3E*l3E**3),0,0,0,0,0,0,0,0,0,0,0,(4*c3E*kw3E*l3E*(n4E-n5E)**2*slE**2+g*m3E*(-((n4E-n5E)**2*slE**2)+l3E**2*(n4E*n5E+slE**2)))/(c3E*l3E**3),0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,-((d4E*g*m3E)/(c3E*l3E)),0,0,0,(d3E*d4E*g*m3E+(-4*c3E**3*kw3E*l3E-g*m3E+c3E**2*g*m3E)*slE**2)/(c3E*l3E),0,0,0,0,0,0,0,(d4E*g*m3E)/(c3E*l3E),0,0,0,(d4E**2*g*m3E+c3E*d4E*g*l3E*m3E+(4*c3E**3*kw3E*l3E+g*m3E-c3E**2*g*m3E)*slE**2)/(c3E*l3E),0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,(d4E*g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)/(c3E*l3E**3),0,0,0,(d3E*(d4E*g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2-c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)+l3E*n4E*(-4*c3E**3*kw3E*l3E**2*n5E-g*l3E*m3E*n5E+c3E*d4E*g*m3E*(-n4E+n5E)+c3E**2*l3E*(4*d4E*kw3E*(n4E-n5E)+g*m3E*n5E)))/(c3E*l3E**3),0,0,0,0,0,0,0,(d4E*g*m3E*(-l3E**2+(n4E-n5E)**2)-4*c3E*d4E*kw3E*l3E*(n4E-n5E)**2+c3E*l3E*(4*c3E*kw3E*l3E-g*m3E)*(n4E-n5E)*n5E)/(c3E*l3E**3),0,0,0,(d4E**2*(g*m3E*(l3E**2-(n4E-n5E)**2)+4*c3E*kw3E*l3E*(n4E-n5E)**2)+l3E**2*n5E*(4*c3E**3*kw3E*l3E*n5E+g*m3E*(n4E-c3E**2*n5E))+c3E*d4E*l3E*(8*c3E*kw3E*l3E*n5E*(-n4E+n5E)+g*m3E*(l3E**2+2*(n4E-n5E)*n5E)))/(c3E*l3E**3)]
	])

def qm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw (usually also effective) stiffness matrix for coupling between floats.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[kbuz+c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/(4*l1),0,0,0,0,0,0,0,0,0,0,0],
		[0,kbuz+c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/(4*l1),0,0,0,0,0,0,0,0,0,0],
		[0,0,kbuz+c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/(4*l1),0,0,0,0,0,0,0,0,0],
		[0,0,0,kbuz+c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/(4*l1),0,0,0,0,0,0,0,0],
		[0,0,0,0,kbizI+c2I**2*kw2I+(g*(m2I+m3I))/(4*c2I*l2I)-(c2I*g*(m2I+m3I))/(4*l2I),0,0,0,0,0,0,0],
		[0,0,0,0,0,kbizI+c2I**2*kw2I+(g*(m2I+m3I))/(4*c2I*l2I)-(c2I*g*(m2I+m3I))/(4*l2I),0,0,0,0,0,0],
		[0,0,0,0,0,0,kbizI+c2I**2*kw2I+(g*(m2I+m3I))/(4*c2I*l2I)-(c2I*g*(m2I+m3I))/(4*l2I),0,0,0,0,0],
		[0,0,0,0,0,0,0,kbizI+c2I**2*kw2I+(g*(m2I+m3I))/(4*c2I*l2I)-(c2I*g*(m2I+m3I))/(4*l2I),0,0,0,0],
		[0,0,0,0,0,0,0,0,kbizE+c2E**2*kw2E+(g*(m2E+m3E))/(4*c2E*l2E)-(c2E*g*(m2E+m3E))/(4*l2E),0,0,0],
		[0,0,0,0,0,0,0,0,0,kbizE+c2E**2*kw2E+(g*(m2E+m3E))/(4*c2E*l2E)-(c2E*g*(m2E+m3E))/(4*l2E),0,0],
		[0,0,0,0,0,0,0,0,0,0,kbizE+c2E**2*kw2E+(g*(m2E+m3E))/(4*c2E*l2E)-(c2E*g*(m2E+m3E))/(4*l2E),0],
		[0,0,0,0,0,0,0,0,0,0,0,kbizE+c2E**2*kw2E+(g*(m2E+m3E))/(4*c2E*l2E)-(c2E*g*(m2E+m3E))/(4*l2E)]
	])

def sm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw stiffness matrix (usually zero) for coupling between params.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1),0,0,0,-((dtop*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0],
		[0,(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)/(c1*l1**3),0,0,0,(dtop*(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)+c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*n0*(n0-n1))/(c1*l1**3)],
		[0,0,4*c1**2*kw1+(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)-(c1*g*(m1+m2E+m2I+m3E+m3I))/l1,0,0,0],
		[0,0,0,(4*c1*kw1*l1*(n0-n1)**2*su**2+g*(m1+m2E+m2I+m3E+m3I)*(-((n0-n1)**2*su**2)+l1**2*(n0*n1+su**2)))/(c1*l1**3),0,0],
		[-((dtop*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,0,0,4*c1**2*kw1*su**2-(c1*g*(m1+m2E+m2I+m3E+m3I)*su**2)/l1+(g*(m1+m2E+m2I+m3E+m3I)*(dtop**2+c1*dtop*l1+su**2))/(c1*l1),0],
		[0,(dtop*(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)+c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*n0*(n0-n1))/(c1*l1**3),0,0,0,(32*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))**2-8*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))**2+8*g*l1**2*(m1+m2E+m2I+m3E+m3I)*(dtop**2+c1*dtop*l1+n0*n1))/(8*c1*l1**3)]
	])

def cqsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw coupling matrix between floats and params.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[0,((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/(4*l1**2),(4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/(4*l1**2),((-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),(8*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))-2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))+(2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1)/(8*l1**2)],
		[0,((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/(4*l1**2),(4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/l1**2,((4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),(8*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))-2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))+(2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1)/(8*l1**2)],
		[0,-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/l1**2,(4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/l1**2,((-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),(-8*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))+2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))-(2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1)/(8*l1**2)],
		[0,-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/l1**2,(4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/(4*l1**2),((4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),(-8*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))+2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))-(2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1)/(8*l1**2)],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0]
	])

def cqxm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw coupling matrix between floats and vars.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[0,-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/l1**2,(-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/l1**2,((4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),((-2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1-8*c1*kw1*l1*(c1*l1*n1+d0*(-n0+n1))+2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n1+d0*(-n0+n1)))/(8*l1**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/l1**2,(-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/(4*l1**2),((-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),((-2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1-8*c1*kw1*l1*(c1*l1*n1+d0*(-n0+n1))+2*g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n1+d0*(-n0+n1)))/(8*l1**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/(4*l1**2),(-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/(4*l1**2),((4*c1**3*kw1*l1+g*(m1+m2E+m2I+m3E+m3I)-c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),((2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1+2*g*(m1+m2E+m2I+m3E+m3I)*(d0*(n0-n1)-c1*l1*n1)+8*c1*kw1*l1*(c1*l1*n1+d0*(-n0+n1)))/(8*l1**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1))/(4*l1**2),(-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))/(4*c1*l1),-1/4*((4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*su)/l1**2,((-4*c1**3*kw1*l1-g*(m1+m2E+m2I+m3E+m3I)+c1**2*g*(m1+m2E+m2I+m3E+m3I))*su)/(4*c1*l1),((2*g*l1*(m1+m2E+m2I+m3E+m3I)*n1)/c1+2*g*(m1+m2E+m2I+m3E+m3I)*(d0*(n0-n1)-c1*l1*n1)+8*c1*kw1*l1*(c1*l1*n1+d0*(-n0+n1)))/(8*l1**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/(4*l2I**2),(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))/(4*c2I*l2I),((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*(chainIx+siI))/(4*l2I**2),-1/4*((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*(chainIx+siI))/(c2I*l2I),(4*c2I**3*kw2I*l2I**2*n2I+c2I**2*l2I*(-(g*(m2I+m3I)*n2I)+4*d1I*kw2I*(n2I-n3I))-c2I*d1I*g*(m2I+m3I)*(n2I-n3I)+g*l2I*(m2I+m3I)*n3I)/(4*c2I*l2I**2),0,-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/l2I**2,(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))/(4*c2I*l2I),-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*siI)/l2I**2,((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*siI)/(4*c2I*l2I),-1/4*(c2I*d2I*g*(m2I+m3I)*(n2I-n3I)+4*c2I**3*kw2I*l2I**2*n3I+g*l2I*(m2I+m3I)*n3I-c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I))/(c2I*l2I**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/(4*l2I**2),(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))/(4*c2I*l2I),((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*(chainIx-siI))/(4*l2I**2),-1/4*((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*(chainIx-siI))/(c2I*l2I),(4*c2I**3*kw2I*l2I**2*n2I+c2I**2*l2I*(-(g*(m2I+m3I)*n2I)+4*d1I*kw2I*(n2I-n3I))-c2I*d1I*g*(m2I+m3I)*(n2I-n3I)+g*l2I*(m2I+m3I)*n3I)/(4*c2I*l2I**2),0,-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/l2I**2,(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))/(4*c2I*l2I),((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*siI)/(4*l2I**2),((-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))*siI)/(4*c2I*l2I),-1/4*(c2I*d2I*g*(m2I+m3I)*(n2I-n3I)+4*c2I**3*kw2I*l2I**2*n3I+g*l2I*(m2I+m3I)*n3I-c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I))/(c2I*l2I**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/l2I**2,(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))/(4*c2I*l2I),-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*(chainIx+siI))/l2I**2,-1/4*((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*(chainIx+siI))/(c2I*l2I),(-4*c2I**3*kw2I*l2I**2*n2I+c2I*d1I*g*(m2I+m3I)*(n2I-n3I)-g*l2I*(m2I+m3I)*n3I+c2I**2*l2I*(g*(m2I+m3I)*n2I+4*d1I*kw2I*(-n2I+n3I)))/(4*c2I*l2I**2),0,((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/(4*l2I**2),(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))/(4*c2I*l2I),((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*siI)/(4*l2I**2),((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*siI)/(4*c2I*l2I),(c2I*d2I*g*(m2I+m3I)*(n2I-n3I)+4*c2I**3*kw2I*l2I**2*n3I+g*l2I*(m2I+m3I)*n3I-c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I))/(4*c2I*l2I**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/l2I**2,(4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))/(4*c2I*l2I),-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*(chainIx-siI))/l2I**2,-1/4*((4*c2I**3*kw2I*l2I+g*(m2I+m3I)-c2I**2*g*(m2I+m3I))*(chainIx-siI))/(c2I*l2I),(-4*c2I**3*kw2I*l2I**2*n2I+c2I*d1I*g*(m2I+m3I)*(n2I-n3I)-g*l2I*(m2I+m3I)*n3I+c2I**2*l2I*(g*(m2I+m3I)*n2I+4*d1I*kw2I*(-n2I+n3I)))/(4*c2I*l2I**2),0,((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I))/(4*l2I**2),(-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))/(4*c2I*l2I),-1/4*((4*c2I*kw2I*l2I-g*(m2I+m3I))*(n2I-n3I)*siI)/l2I**2,((-4*c2I**3*kw2I*l2I-g*(m2I+m3I)+c2I**2*g*(m2I+m3I))*siI)/(4*c2I*l2I),(c2I*d2I*g*(m2I+m3I)*(n2I-n3I)+4*c2I**3*kw2I*l2I**2*n3I+g*l2I*(m2I+m3I)*n3I-c2I**2*l2I*(4*d2I*kw2I*(n2I-n3I)+g*(m2I+m3I)*n3I))/(4*c2I*l2I**2),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/(4*l2E**2),(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))/(4*c2E*l2E),((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*(chainEx+siE))/(4*l2E**2),-1/4*((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*(chainEx+siE))/(c2E*l2E),(4*c2E**3*kw2E*l2E**2*n2E+c2E**2*l2E*(-(g*(m2E+m3E)*n2E)+4*d1E*kw2E*(n2E-n3E))-c2E*d1E*g*(m2E+m3E)*(n2E-n3E)+g*l2E*(m2E+m3E)*n3E)/(4*c2E*l2E**2),0,0,0,0,0,0,0,-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/l2E**2,(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))/(4*c2E*l2E),-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*siE)/l2E**2,((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*siE)/(4*c2E*l2E),-1/4*(c2E*d2E*g*(m2E+m3E)*(n2E-n3E)+4*c2E**3*kw2E*l2E**2*n3E+g*l2E*(m2E+m3E)*n3E-c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E))/(c2E*l2E**2),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/(4*l2E**2),(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))/(4*c2E*l2E),((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*(chainEx-siE))/(4*l2E**2),-1/4*((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*(chainEx-siE))/(c2E*l2E),(4*c2E**3*kw2E*l2E**2*n2E+c2E**2*l2E*(-(g*(m2E+m3E)*n2E)+4*d1E*kw2E*(n2E-n3E))-c2E*d1E*g*(m2E+m3E)*(n2E-n3E)+g*l2E*(m2E+m3E)*n3E)/(4*c2E*l2E**2),0,0,0,0,0,0,0,-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/l2E**2,(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))/(4*c2E*l2E),((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*siE)/(4*l2E**2),((-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))*siE)/(4*c2E*l2E),-1/4*(c2E*d2E*g*(m2E+m3E)*(n2E-n3E)+4*c2E**3*kw2E*l2E**2*n3E+g*l2E*(m2E+m3E)*n3E-c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E))/(c2E*l2E**2),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/l2E**2,(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))/(4*c2E*l2E),-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*(chainEx+siE))/l2E**2,-1/4*((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*(chainEx+siE))/(c2E*l2E),(-4*c2E**3*kw2E*l2E**2*n2E+c2E*d1E*g*(m2E+m3E)*(n2E-n3E)-g*l2E*(m2E+m3E)*n3E+c2E**2*l2E*(g*(m2E+m3E)*n2E+4*d1E*kw2E*(-n2E+n3E)))/(4*c2E*l2E**2),0,0,0,0,0,0,0,((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/(4*l2E**2),(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))/(4*c2E*l2E),((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*siE)/(4*l2E**2),((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*siE)/(4*c2E*l2E),(c2E*d2E*g*(m2E+m3E)*(n2E-n3E)+4*c2E**3*kw2E*l2E**2*n3E+g*l2E*(m2E+m3E)*n3E-c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E))/(4*c2E*l2E**2),0,0,0,0,0,0,0,0,0,0,0,0],
		[0,-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/l2E**2,(4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))/(4*c2E*l2E),-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*(chainEx-siE))/l2E**2,-1/4*((4*c2E**3*kw2E*l2E+g*(m2E+m3E)-c2E**2*g*(m2E+m3E))*(chainEx-siE))/(c2E*l2E),(-4*c2E**3*kw2E*l2E**2*n2E+c2E*d1E*g*(m2E+m3E)*(n2E-n3E)-g*l2E*(m2E+m3E)*n3E+c2E**2*l2E*(g*(m2E+m3E)*n2E+4*d1E*kw2E*(-n2E+n3E)))/(4*c2E*l2E**2),0,0,0,0,0,0,0,((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E))/(4*l2E**2),(-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))/(4*c2E*l2E),-1/4*((4*c2E*kw2E*l2E-g*(m2E+m3E))*(n2E-n3E)*siE)/l2E**2,((-4*c2E**3*kw2E*l2E-g*(m2E+m3E)+c2E**2*g*(m2E+m3E))*siE)/(4*c2E*l2E),(c2E*d2E*g*(m2E+m3E)*(n2E-n3E)+4*c2E**3*kw2E*l2E**2*n3E+g*l2E*(m2E+m3E)*n3E-c2E**2*l2E*(4*d2E*kw2E*(n2E-n3E)+g*(m2E+m3E)*n3E))/(4*c2E*l2E**2),0,0,0,0,0,0,0,0,0,0,0,0]
	])

def cxsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E, stage2=True):
	'''The raw coupling matrix between vars and params.'''
	nw1 = 4
	nw2 = 4
	nw3 = 4
	c1 = sqrt(l1**2-(n1-n0)**2)/l1
	c2I = sqrt(l2I**2-(n3I-n2I)**2)/l2I
	c2E = sqrt(l2E**2-(n3E-n2E)**2)/l2E
	c3I = sqrt(l3I**2-(n5I-n4I)**2)/l3I
	c3E = sqrt(l3E**2-(n5E-n4E)**2)/l3E
	flex1 = sqrt(nw1*M11*Y1/(m1+m2I+m2E+m3I+m3E)/g)*c1**(3/2)
	flex2I = sqrt(nw2*M21I*Y2I/(m2I+m3I)/g)*c2I**(3/2)
	flex2E = sqrt(nw2*M21E*Y2E/(m2E+m3E)/g)*c2E**(3/2)
	flex3I = sqrt(nw3*M31I*Y3I/(m3I)/g)*c3I**(3/2)
	flex3E = sqrt(nw3*M31E*Y3E/(m3E)/g)*c3E**(3/2)
	tl1 = dtop+c1*l1+d0
	tl2I = d1I+c2I*l2I+d2I
	tl2E = d1E+c2E*l2E+d2E
	tl3I = d3I+c3I*l3I+d4I
	tl3E = d3E+c3E*l3E+d4E
	si1 = (n1-n0)/l1
	si2I = (n3I-n2I)/l2I
	si2E = (n3E-n2E)/l2E
	si3I = (n5I-n4I)/l3I
	si3E = (n5E-n4E)/l3E
	if stage2:
		dtop = dtop + flex1
		d0 = d0 + flex1
		d1I = d1I + flex2I
		d1E = d1E + flex2E
		d2I = d2I + flex2I
		d2E = d2E + flex2E
		d3I = d3I + flex3I
		d3E = d3E + flex3E
		d4I = d4I + flex3I
		d4E = d4E + flex3E
		l1 = l1 - 2*flex1/c1
		l2I = l2I - 2*flex2I/c2I
		l2E = l2E - 2*flex2E/c2E
		l3I = l3I - 2*flex3I/c3I
		l3E = l3E - 2*flex3E/c3E
		n0 = n0 + si1*flex1/c1
		n1 = n1 - si1*flex1/c1
		n2I = n2I + si2I*flex2I/c2I
		n2E = n2E + si2E*flex2E/c2E
		n3I = n3I - si2I*flex2I/c2I
		n3E = n3E - si2E*flex2E/c2E
		n4I = n4I + si3I*flex3I/c3I
		n4E = n4E + si3E*flex3E/c3E
		n5I = n5I - si3I*flex3I/c3I
		n5E = n5E - si3E*flex3E/c3E
	
	return np.array([
		[-((g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,0,0,(dtop*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1),0],
		[0,-((g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)/(c1*l1**3)),0,0,0,(dtop*(-(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2))-4*c1*kw1*l1*(n0-n1)**2)-c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*n0*(n0-n1))/(c1*l1**3)],
		[0,0,-4*c1**2*kw1-(g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)+(c1*g*(m1+m2E+m2I+m3E+m3I))/l1,0,0,0],
		[0,0,0,(-8*c1*kw1*l1*(n0-n1)**2*su**2+2*g*(m1+m2E+m2I+m3E+m3I)*(n0-n1)**2*su**2-2*g*l1**2*(m1+m2E+m2I+m3E+m3I)*(n0*n1+su**2))/(2*c1*l1**3),0,0],
		[-((d0*g*(m1+m2E+m2I+m3E+m3I))/(c1*l1)),0,0,0,-4*c1**2*kw1*su**2+(c1*g*(m1+m2E+m2I+m3E+m3I)*su**2)/l1+(g*(m1+m2E+m2I+m3E+m3I)*(d0*dtop-su**2))/(c1*l1),0],
		[0,(d0*(g*(m1+m2E+m2I+m3E+m3I)*(l1**2-(n0-n1)**2)+4*c1*kw1*l1*(n0-n1)**2)-c1*l1*(4*c1*kw1*l1-g*(m1+m2E+m2I+m3E+m3I))*(n0-n1)*n1)/(c1*l1**3),0,0,0,(g*l1**2*(m1+m2E+m2I+m3E+m3I)*(d0*dtop-n0*n1)-4*c1*kw1*l1*(c1*l1*n0+dtop*(n0-n1))*(c1*l1*n1+d0*(-n0+n1))+g*(m1+m2E+m2I+m3E+m3I)*(c1*l1*n0+dtop*(n0-n1))*(c1*l1*n1+d0*(-n0+n1)))/(c1*l1**3)],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0],
		[0,0,0,0,0,0]
	])
noofvars = len(allvars) # The number of var-type coordinates (masses)
nooffloats = len(allfloats) # The number of float-type coordinates (blade tips)
noofparams = len(allparams) # The number of param-type coordinates (structure)

def smeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the effective stiffness matrix for the params.'''
	return sm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)-np.linalg.multi_dot([np.transpose(cqsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.linalg.inv(qm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),cqsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)])

def cxsmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the effective coupling matrix for vars to params.'''
	return cxsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)-np.linalg.multi_dot([np.transpose(cqxm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.linalg.inv(qm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),cqsm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)])

def xmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the effective stiffness matrix for the vars.'''
	return xm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)-np.linalg.multi_dot([np.transpose(cqxm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.linalg.inv(qm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),cqxm(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)])

def A(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the state space A matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofvars)),np.identity(noofvars))),
                 np.hstack((np.dot(-np.linalg.inv(km(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),xmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.zeros((noofvars,noofvars)))) ))

def B(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the state space B matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofparams)),np.zeros((noofvars,noofvars)))),
                 np.hstack((np.dot(-np.linalg.inv(km(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),cxsmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.linalg.inv(km(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)))) ))

def C(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the state space C matrix.'''
	return np.vstack( ( np.hstack((np.identity(noofvars),np.zeros((noofvars,noofvars)))),
                 np.hstack((-np.transpose(cxsmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E)),np.zeros((noofparams,noofvars)))) ))

def D(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the state space D matrix.'''
	return np.vstack( ( np.hstack((np.zeros((noofvars,noofparams)),np.zeros((noofvars,noofvars)))),
                 np.hstack((-smeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),np.zeros((noofparams,noofvars)))) ))

def pendSS(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the state space.'''
	return ct.ss(A(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),B(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),C(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),D(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),inputs=inputs,outputs=outputs,states=states)

def eigenmodes(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E):
	'''Function for the frequencies (in Hz and sorted Mathematica-style in descending order of frequency) 
	and eigenvectors (presented Mathematica-style in rows).'''
	unsortedevals,unsortedtransposedevecs=scipy.linalg.eig(xmeff(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E),km(g, m1, m2I, m2E, m3I, m3E, I1x, I1y, I1z, I1xy, I1yz, I1zx, I2Ix, I2Iy, I2Iz, I2Ixy, I2Iyz, I2Izx, I2Ex, I2Ey, I2Ez, I2Exy, I2Eyz, I2Ezx, I3Ix, I3Iy, I3Iz, I3Ixy, I3Iyz, I3Izx, I3Ex, I3Ey, I3Ez, I3Exy, I3Eyz, I3Ezx, dtop, d0, d1I, d1E, d2I, d2E, d3I, d3E, d4I, d4E, chainIx, chainEx, n0, n1, n2I, n2E, n3I, n3E, n4I, n4E, n5I, n5E, su, siI, siE, slI, slE, kbuz, kbizI, kbizE, l1, l2I, l2E, l3I, l3E, kw1, kw2I, kw2E, kw3I, kw3E, Y1, Y2I, Y2E, Y3I, Y3E, M11, M21I, M21E, M31I, M31E))
	unsortedHz = np.array([sqrt(e.real)/2/pi for e in unsortedevals])
	sortindices = np.flip(unsortedHz.argsort())
	return (unsortedHz[sortindices],np.transpose(unsortedtransposedevecs)[sortindices])

def trimio(pend,newinputs,newoutputs):
	'''A function to trim a state space object to have only the specified subsets of inputs and output.'''
	A=pend.A
	B=pend.B
	C=pend.C
	D=pend.D
	oldinputs=pend.input_index
	oldoutputs=pend.output_index
	oldstates=pend.state_index
	newinputlist = []
	for i in range(len(newinputs)):
			newinputlist.append(oldinputs.get(newinputs[i],0))
	newoutputlist = []
	for i in range(len(newoutputs)):
			newoutputlist.append(oldoutputs.get(newoutputs[i],0))
	BB=B[range(len(oldstates))][...,newinputlist]
	CC=C[newoutputlist]
	DD=D[newoutputlist][...,newinputlist]
	return ct.ss(A,BB,CC,DD,inputs=newinputs,outputs=newoutputs,states=list(oldstates.keys()))
