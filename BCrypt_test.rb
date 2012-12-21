#BCrypt Example:
require 'bcrypt'
require 'benchmark'

def bcrypt_speed(cost)
	time = Benchmark.realtime do
		password = BCrypt::Password.create 'password', :cost => cost
		end
	puts "Time elapsed: #{time} seconds"
end

def usage
	puts "Dude, use the script like this:\n BCrypt_test <number 1-20>"
	exit
end

unless ARGV.length == 1
	usage
end

work = ARGV[0]

begin
	work = work.to_i
	if work > 16 
		puts "WARNING: Costs greater than 16 start to get time consuming..."
		bcrypt_speed(work)
	else
		bcrypt_speed(work)
	end
rescue
	usage()
end

