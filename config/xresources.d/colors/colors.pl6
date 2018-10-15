
class RGB {
	has UInt $.red is rw where * < 256;
	has UInt $.gren is rw where * < 256;
	has UInt $.blue is rw where * < 256;
}

class HSL {
	has UInt $.hue is rw;
	has UInt $.saturation is rw where * <= 100;
	has UInt $.lightness is rw where * <= 100;
}
