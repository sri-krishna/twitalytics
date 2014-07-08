class AnalyticsProcessor < TorqueBox::Messaging::MessageProcessor
	def on_message(body)
		#receive messages from broker
		statuses = JSON.parse(body).map do |s|
			status = Status.find(s['id'])
			status.preprocess!
			status
		end
		Analytics.refresh(statuses)
	end
end