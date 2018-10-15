#!/usr/bin/env ruby

# Based on DuoTone Carrots from https://github.com/protesilaos/duotone-carrots-syntax/blob/master/styles/colors.less

require_relative "duotones"

uno = 27
duo = 117

uno1 = HSLColor.new(uno, 35, 28);
uno2 = HSLColor.new(uno, 82, 52);
uno3 = HSLColor.new(uno, 90, 38);
uno4 = HSLColor.new(uno, 30, 58);
uno5 = HSLColor.new(uno, 20, 40);

duo1 = HSLColor.new(duo, 45, 48);
duo2 = HSLColor.new(duo, 30, 38);
duo3 = HSLColor.new(duo, 22, 22);

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

