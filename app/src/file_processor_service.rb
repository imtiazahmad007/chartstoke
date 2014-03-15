class FileProcessorService
	
	require 'elasticsearch'
	#require 'rest_client'

	def initialize(file_path)
		@file_path = file_path
	end

	# This method will just parse the first 10 - 15 rows for user to see data sample.
	def present_data_sample()
		@filesample = []
		ctr=0
		uploaded_file_path = @file_path.path
		CSV.foreach(uploaded_file_path, :headers => true) do |row|
			ctr += 1
			break if ctr > 11
			@filesample << row.to_hash   
		end
		return @filesample
	end

	def load_bulk_index
		uploaded_file_path = @file_path.path
		index_name = @file_path.original_filename.split(".").first

		ctr=1
		data = Array.new
		site = RestClient::Resource.new('http://localhost:9200/_bulk/')
		
		site.post(
			'{ "index": {"_index": "books", "_type": "book", "_id": "1"}}
			{ "field1" : "value1" }
			{ "index": {"_index": "books", "_type": "book", "_id": "2"}}
			{ "field2" : "value1" }
			{ "index": {"_index": "books", "_type": "book", "_id": "3"}}
			{ "field3" : "value1" }
			{ "index": {"_index": "books", "_type": "book", "_id": "4"}}
			{ "field4" : "value1" }')
	end


	def load_index()
		
		uploaded_file_path = @file_path.path
		index_name = @file_path.original_filename.split(".").first
		
		ctr=1
		data = Array.new

		es = establish_client_node('localhost')
		CSV.foreach(uploaded_file_path, :headers => true) do |row|
			data << row.to_hash
				#responses = 
				es.index(:index => index_name,
					:type =>  "#{index_name}_type",
					:id => "#{index_name}.type.#{ctr}",
					:body => row.to_hash
					)
				
				ctr +=1
			end
		return index_name
	end


	private 

	def establish_client_node(server)
		return es_client = Elasticsearch::Client.new(
			:hosts => ["http://#{server}:9200"], :reload_connections => true)
	end


end
