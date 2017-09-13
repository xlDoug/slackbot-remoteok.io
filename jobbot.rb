require 'json'
require 'open-uri'

jobs = JSON.load(open("https://remoteok.io/remote-ruby-jobs.json"))

jobs.each do |job|
  if job["position"].downcase.include?('senior'||'sr.')
    next
  end
  puts "ID: "       + job["id"]
  puts "Data: "     + job["date"]
  puts "Empresa: "  + job["company"]
  puts "Vaga: "     + job["position"]
  puts "Link: "     + job["url"]
  puts " =================================== "
end

