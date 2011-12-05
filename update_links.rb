#!/usr/bin/env ruby

puts "Looking in #{Dir.pwd} for things to symlink."

Dir.entries('.').each do |file|
	unless(file[/.*.rb/] || file[/(\.).*/])
		full_path = File.expand_path(file)
		unless(system("ln -nsf #{full_path} ~/.#{file}"))
			puts "Failed to link #{file}"
		end
	end
end
