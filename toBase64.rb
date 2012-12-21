require "base64"

def usage
	puts "Dude, use the script like this:\n toBase64 <path to file>"
	exit
end

unless ARGV.length == 1
	usage
end

file = ARGV[0]

#http://en.wikipedia.org/wiki/Data_URI_scheme#Ruby_1.9.3
data_uri = Base64.encode64(File.open(file, "rb").read).gsub(/\n/, "")
image_tag = '<img alt="sample" src="data:image/png;base64,%s">' % data_uri
puts image_tag