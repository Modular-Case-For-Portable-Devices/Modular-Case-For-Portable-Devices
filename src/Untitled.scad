// FIXME(Krey): Add fillet at lines connecting points [4,5,6,7] that are 0.5mm (radius) or 1mm (diameter)
// FIXME(Krey): Add fillet at lines connecting points [0,1,2,3] that are 1mm (radius) or 2mm (diameter)
// FIXME(Krey): Add fillet at lines connecting points [[0,5],[1,6],[2,7],[3,4]] that are 4mm (radius) or 8mm (diameter)
///! Reference Model of Xiaomi-Ursa Phone
module xiaomi_ursa(x=75, y=155, z=7.85) {
	polyhedron(
		points = [
			[  x/2,  y/2, 0], // TR_0
			[  x/2, -y/2, 0], // BR_0
			[ -x/2, -y/2, 0], // BL_0
			[ -x/2,  y/2, 0], // TL_0
			[ -x/2,  y/2, z], // TL_Z
			[  x/2,  y/2, z], // TR_Z
			[  x/2, -y/2, z], // BR_Z
			[ -x/2, -y/2, z], // BL_Z
		],
		faces = [
			[0,1,2,3],
			[3,4,5,0],
			[0,1,6,5],
			[1,2,7,6],
			[2,3,4,7],
			[4,5,6,7],
		]
	);
};

xiaomi_ursa();