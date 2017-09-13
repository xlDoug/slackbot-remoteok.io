require 'json'
require 'open-uri'

def getjobs()
  @data = JSON.load(open("https://remoteok.io/remote-ruby-jobs.json"))
end

jobs = getjobs()
#puts jobs[1]['company']

jobs.each do |job|
  puts "ID: " + job["id"]
  puts "Data: "+ job["date"]
  puts "Empresa: " + job["company"]
  puts "Vaga: " + job["position"]
  puts "Link: " + job["url"]
  puts " =================================== "
end

