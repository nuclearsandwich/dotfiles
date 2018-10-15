#!/usr/bin/env ruby
# vim:et:ts=2:sw=2:

class RGB < Struct.new(:red,:green,:blue)
  def to_s
    "#%x%x%x" % [red, green, blue]
  end
end


class HSLColor < Struct.new(:hue, :saturation, :lightness)
  def self.from_rgb(rgb)
    rgb.gsub!("#","")
  end

  def to_rgb
    h = (hue % 360) / 360.0
    s = saturation / 100.0
    l = lightness / 100.0
    if s == 0.0 # desaturated image
      v = (l * 255).floor
      return RGB.new(v,v,v)
    end

    v2 = if l < 0.5
           l * (1 + s)
         else
           (l + s) - (s * l)
         end
    v1 = (2 * l) - v2
    r = 255 * hue_to_rgb(v1, v2, h + (1.0/3))
    g = 255 * hue_to_rgb(v1, v2, h)
    b = 255 * hue_to_rgb(v1, v2, h - (1.0/3))
    RGB.new(r,g,b)
  end

  def hue_to_rgb v1, v2, h
    h = h + 1 if h < 0
    h = h - 1 if h > 1
    if  6 * h < 1
      v1 + ((v2 - v1 ) * 6 * h)
    elsif 2 * h < 1
      v2
    elsif 3 * h < 2
      v1 + (v2 - v1) * (( 2 / 3.0) - h) * 6
    else
      v1
    end
  end
end

if $0 == __FILE__
  ARGV.each do |hsl|
    m = hsl.match /hsl\((?<hue>\d+),(?<sat>\d+)%,(?<lum>\d+)%\)/
    puts m.inspect
    c = HSLColor.new(m[:hue].to_i, m[:sat].to_i, m[:lum].to_i)
    puts c.to_rgb.to_s
  end
end
