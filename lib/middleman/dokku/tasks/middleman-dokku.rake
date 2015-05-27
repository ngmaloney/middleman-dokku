namespace :mm do
  namespace :dokku do
    desc "Generate required dokku files"
    task :generate do |t, args|
      puts "## Generating Dokku files"
      Middleman::Dokku.generate!
    end
  end
end
