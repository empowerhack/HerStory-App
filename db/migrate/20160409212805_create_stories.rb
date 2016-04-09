class CreateStories < ActiveRecord::Migration
	def up
		create_table :stories do |t|
			t.integer 		:user_id
			t.string 		:title
			t.text			:story
			t.timestamp		:date_created
		end
	end

	def down
		drop_table :models
	end
end
