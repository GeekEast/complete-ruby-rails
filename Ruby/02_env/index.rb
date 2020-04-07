# env
puts ENV.size
puts ENV.keys
puts ENV.keys["rvm_path"]
puts ENV.select { |k, v| k.size < 4 } # array fitering in rubyE
# export API_KEY=1  set env variables
puts '12345'