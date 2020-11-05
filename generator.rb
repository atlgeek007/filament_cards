#!/usr/bin/env ruby

require 'csv'

filaments = CSV.read("./filaments.csv", headers: true)
header_file = File.read("/home/vanamar/filaments/header.scad")
footer_file = File.read("/home/vanamar/filaments/footer.scad")

filaments.each do |var|
  filafile = "./"+"#{var['brand'].gsub(" ","_")}"+"_"+"#{var['color'].gsub(" ","_")}"+".scad"
  
  open(filafile, 'a') { |f|
    f.puts header_file
    f.puts "line_1_text=\"#{var['brand']}\";"
    f.puts "line_2_text=\"#{var['color']}\";"
    f.puts "line_3_text=\"#{var['noz_size']} / #{var['noz_temp']} / #{var['bed_temp']}\";"
    f.puts footer_file
  }
  
end
