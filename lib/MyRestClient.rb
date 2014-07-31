class MyRestClient

	def self.get_all_notes
		RestClient.get "http://localhost:3000/notes.json"
	end

	def self.get_note(pv_idNote)
		RestClient.get "http://localhost:3000/notes/#{pv_idNote}.json"
	end

	def self.create_note
		values   = "{\n    \"note\": {\n        \"title\": \"Buy cheese and bread for breakfast.\"\n    }\n}"
		headers  = {:content_type => "application/json" }
		RestClient.post "http://localhost:3000/notes.json", values, headers
	end

	def self.delete_note(pv_idNote)
		RestClient.delete "http://localhost:3000/notes/#{pv_idNote}.json"
	end

end