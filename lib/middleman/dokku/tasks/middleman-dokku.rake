namespace :mm do
  namespace :dokku do
    desc "Generate required dokku files"
    task :generate do |t, args|
      puts "## Generating Dokku files"
      Middleman::Dokku.generate!
      puts "## The following code also needs to be appended to your Rakefile"
      puts "\n"
      puts "require 'middleman/dokku'"
      puts "namespace :assets do"
      puts "  task :precompile do"
      puts "    sh 'middleman build'"
      puts "  end"
      puts "end"
    end
  end
end
