class FileProcessorController < ApplicationController
	#before_action :initialize_processor, only: [:import, :index]

	#require 'FileProcessorService'	
	def index
	end

	def import
		initialize_processor(params[:file])

		if (@file_sample != nil || @index_name != nil) then
			render 'index'
		end
	end

	def upload

	end

	def initialize_processor(file_in)

		File.open(Rails.root.join('public', 'uploads', file_in.original_filename), 'wb') do |file|
			file.write(file_in.read)
		end


		@file_processor = FileProcessorService.new(file_in)
		@file_sample = @file_processor.present_data_sample()
		@index_name = @file_processor.load_index()
	end


end

