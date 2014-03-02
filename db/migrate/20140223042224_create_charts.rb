class CreateCharts < ActiveRecord::Migration
	def change
		create_table :charts do |t|
			t.string :name, :null => false
			t.text :content
			t.string :author_name, :null => false
			t.datetime :published_at

			t.timestamps
		end
		
		execute 'alter table charts alter column published_at set default now()'
	
	end
end
