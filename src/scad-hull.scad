$fa = 1; $fs = 0.1;

r1 = 0.5; // Top
r2 = 1; // Bottom
r3 = 8; // Corners

x=75;
y=155;
z=7.85;

module shape() {
	// filleted profile
	difference() {
		hull() {
			translate([r2 - r1, r1]) circle(r1);
			translate([0, z - r2]) circle(r2);
			square(r1);
		}
		l = 2 * (z + r1 + r2);
		translate([-l, 0]) square(l);
	}
}

module ring() {
	rotate_extrude() translate([r3 - r2, 0]) shape();
}

hull() {
	translate([r3, r3, 0]) ring();
	translate([x - r3, r3, 0]) ring();
	translate([r3, y - r3, 0]) ring();
	translate([x - r3, y - r3, 0]) ring();
}