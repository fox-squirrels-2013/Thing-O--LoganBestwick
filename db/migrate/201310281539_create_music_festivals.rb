class CreateMusicFestivals < ActiveRecord::Migration
	def change
		create_table :musicfestivals do |t|
			t.string :name
			t.string :city
			t.string :state

			t.timestamps
		end
	end
end