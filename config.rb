require 'erb'
require 'dotenv'

Dotenv.load

erb = File.open('kubernetes/create-secret.sh.erb') { |f| ERB.new(f.read) }
File.write('kubernetes/create-secret.sh', erb.result(binding))