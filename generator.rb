#!/usr/bin/env ruby

require 'csv'
require 'fileutils'

filaments = CSV.read("./filaments.csv", headers: true)
header_file = File.read("./includes/header.txt")
footer_file = File.read("./includes/footer.txt")

filaments.each do |var|
  filapath = './'+"#{var['brand']}"+'/'+"#{var['material']}"+'/'
  filafile = './'+"#{filapath}"+'/'+"#{var['brand']}"+'_'+"#{var['color'].gsub(" ","_")}"+'.scad'
  FileUtils.mkdir_p filapath
 
  if(File.exist?(filafile))
    puts "file already exists"
  else
    open(filafile, 'a') { |f|
    f.puts header_file
    f.puts "line_1_text=\"#{var['brand']} #{var['material']}\";"
    f.puts "line_2_text=\"#{var['color']}\";"
    f.puts "line_3_text=\"#{var['noz_size']} / #{var['noz_temp']} / #{var['bed_temp']}\";"
    f.puts footer_file
  }
  end
  
end
