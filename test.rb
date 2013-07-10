require 'colored'

cmd = `bash nodejs_installer.sh`

puts "Tests for nodejs_installer.sh".bold.underline
puts
print "* Detect architecture"

if !cmd.include? "armv6l architecture not found"
  puts "..ERROR".bold.red
  raise "Error detecting architecture"
else
  puts "..OK!".bold.green
end
