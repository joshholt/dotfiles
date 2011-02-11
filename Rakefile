require 'rake'
require 'erb'

desc "Install the dot files into user's home dir"
task :install do
  apply_to_all = false

  Dir['*'].each do |f|
    next if %w[README.md Rakefile LICENSE].include? f

    if File.exit?(File.join(ENV['HOME'], ".#{f.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], "#{f.sub('.erb','')}")
        puts "Identical ~/.#{f.sub('.erb','')}"
      elsif apply_to_all
        replace_file(f)
      else
        print "Overwrite ~/.#{f.sub('.erb','')}? [ynaq]"
        case $stdin.gets.chomp
        when 'a'
          apply_to_all = true
          replace_file(f)
        when 'y'
          replace_file(f)
        when 'q'
          exit
        else
          puts "Skipping ~/.#{f.sub('.erb','')}"
        end
      end
    else
      link_file(f)
    end
  end
end

def replace_file(f)
  system %Q{rm -rf "$HOME/.#{f.sub('.erb','')}"}
  link_file(f)
end

def link_file(f)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
