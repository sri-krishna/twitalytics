class TwitterStreamService
	include TwitterUtil

	def initialize(opts={})
		@stop = false
	end

	def start
		@thread = Thread.new do
			begin
				#puts "TwitterStreamService processing..."
				Status.find_or_create_from(
					fetch_tweets_since(since_id ||= nil) do |status|
						since_id = status["id"]
					end
				)
				
			end until @done
		end
	end

	def stop
		@done = true
		@thread.join
	end
end