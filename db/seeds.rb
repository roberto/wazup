# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.where(title: "Example Project").delete

project = Project.new(title: "Example Project")

project.hosts << Host.new(address: "http://google.com/", name: "Google 1")
project.hosts << Host.new(address: "https://www.google.com/", name: "Google 2", auto: true)
project.hosts << Host.new(address: "https://google.com", auto: true)
project.hosts << Host.new(address: "http://bing.com", name: "Bing")

project.save!

project.scripts << Script.new(title: "Google test", steps: "  When I fill in \"q\" with \"shashi\"\n  Then I should see \"Google\"")
project.scripts << Script.new(title: "Input test", steps: "  When I fill in \"q\" with \"shashi\"")

project.hosts.first.checks << Check.new(result: [{"keyword"=>"Feature", "name"=>"Input test", "line"=>1, "description"=>"", "id"=>"input-test", "uri"=>"/var/folders/1_/kfvjpf5s5133b7yb83z2w8f80000gp/T/138542765420131125-74032-eq72mr", "elements"=>[{"keyword"=>"Scenario", "name"=>"Input test", "line"=>2, "description"=>"", "id"=>"input-test;input-test", "type"=>"scenario", "steps"=>[{"keyword"=>"Given ", "name"=>"I am on \"http://bing.com\"", "line"=>3, "match"=>{"arguments"=>[{"offset"=>9, "val"=>"http://bing.com"}], "location"=>"features/step_definitions/web_steps.rb:1"}, "result"=>{"status"=>"passed", "duration"=>3099464000}}, {"keyword"=>"When ", "name"=>"I fill in \"q\" with \"shashi\"", "line"=>4, "match"=>{"arguments"=>[{"offset"=>11, "val"=>"q"}, {"offset"=>20, "val"=>"shashi"}], "location"=>"features/step_definitions/web_steps.rb:5"}, "result"=>{"status"=>"passed", "duration"=>14144000}}]}]}].to_json)

project.hosts.last.checks << Check.new(result: [{"keyword"=>"Feature", "name"=>"1385468359", "line"=>1, "description"=>"", "id"=>"1385468359", "uri"=>"/var/folders/1_/kfvjpf5s5133b7yb83z2w8f80000gp/T/138546835920131126-81309-fq7eih", "elements"=>[{"keyword"=>"Scenario", "name"=>"Google test", "line"=>2, "description"=>"", "id"=>"1385468359;google-test", "type"=>"scenario", "steps"=>[{"keyword"=>"Given ", "name"=>"I am on \"http://bing.com\"", "line"=>3, "match"=>{"arguments"=>[{"offset"=>9, "val"=>"http://bing.com"}], "location"=>"features/step_definitions/web_steps.rb:1"}, "result"=>{"status"=>"passed", "duration"=>2798806000}}, {"keyword"=>"When ", "name"=>"I fill in \"q\" with \"shashi\"", "line"=>4, "match"=>{"arguments"=>[{"offset"=>11, "val"=>"q"}, {"offset"=>20, "val"=>"shashi"}], "location"=>"features/step_definitions/web_steps.rb:5"}, "result"=>{"status"=>"passed", "duration"=>14120000}}, {"keyword"=>"Then ", "name"=>"I should see \"Google\"", "line"=>5, "match"=>{"arguments"=>[{"offset"=>14, "val"=>"Google"}], "location"=>"features/step_definitions/web_steps.rb:9"}, "result"=>{"status"=>"failed", "error_message"=>"expected to find text \"Google\" in \"Bing sashimi shashinki shashikant sharma shashikant sharma facebook shashi ma prem shashi sharma facebook Preferences Show allOnly EnglishOnly from Brazil WEBIMAGESVIDEOSNEWSMAPSSEARCH HISTORYMOREMSNOUTLOOK.COM Sign in Já viu um lago alpino? Eles ficam em regiões altas! Estes ficam nos EUA Washington e sua natureza... Popular Now GP do Brasil·Gabarito Fuvest 2014·Ney Franco no Santos © 2013 Microsoft | Privacy and Cookies | Legal | Advertise | About our ads | Help | Feedback\" (RSpec::Expectations::ExpectationNotMetError)\n./features/step_definitions/web_steps.rb:10:in `/^I should see \"(.*?)\"$/'\n/var/folders/1_/kfvjpf5s5133b7yb83z2w8f80000gp/T/138546835920131126-81309-fq7eih:5:in `Then I should see \"Google\"'", "duration"=>2033637000}}]}, {"keyword"=>"Scenario", "name"=>"Input test", "line"=>6, "description"=>"", "id"=>"1385468359;input-test", "type"=>"scenario", "steps"=>[{"keyword"=>"Given ", "name"=>"I am on \"http://bing.com\"", "line"=>7, "match"=>{"arguments"=>[{"offset"=>9, "val"=>"http://bing.com"}], "location"=>"features/step_definitions/web_steps.rb:1"}, "result"=>{"status"=>"passed", "duration"=>610778000}}, {"keyword"=>"When ", "name"=>"I fill in \"q\" with \"shashi\"", "line"=>8, "match"=>{"arguments"=>[{"offset"=>11, "val"=>"q"}, {"offset"=>20, "val"=>"shashi"}], "location"=>"features/step_definitions/web_steps.rb:5"}, "result"=>{"status"=>"passed", "duration"=>19833000}}]}]}].to_json)
