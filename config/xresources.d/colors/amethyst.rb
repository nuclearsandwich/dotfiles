#!/usr/bin/env ruby

# Based on DuoTone Amethyst https://github.com/bynines/duotone-dark-amethyst-syntax/blob/master/styles/colors.less

require_relative "duotones"

uno = 278
duo = 270

uno1 = HSLColor.new(uno, 90, 90);
uno2 = HSLColor.new(uno, 72, 72);
uno3 = HSLColor.new(uno, 54, 63);
uno4 = HSLColor.new(uno, 36, 54);
uno5 = HSLColor.new(uno, 18, 36);

duo1 = HSLColor.new(duo, 66.6, 66.6);
duo2 = HSLColor.new(duo, 50, 50);
duo3 = HSLColor.new(duo, 33.3, 33.3);

puts <<EOF
#ifdef CHANGEME
#define UNO1 #{uno1.to_rgb}
#define UNO2 #{uno2.to_rgb}
#define UNO3 #{uno3.to_rgb}
#define UNO4 #{uno4.to_rgb}
#define UNO5 #{uno5.to_rgb}
#define DUO1 #{duo1.to_rgb}
#define DUO2 #{duo2.to_rgb}
#define DUO3 #{duo3.to_rgb}
#define WHITEBASE #eff0eb
#define useduotone
#endif
EOF

