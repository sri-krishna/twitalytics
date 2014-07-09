namespace :deploy do
	task :knob do
		ENV["exclude"] = "puppet,.box,.war,.sqlite3"
		Rake::Task["torquebox:remote:stage"].invoke
		
		Rake::Task["torquebox:remote:exec"].
			invoke("rake db:migrate")
		puts "Migrations Complete ..."

		Rake::Task["torquebox:remote:stage:deploy"].invoke
	end

end