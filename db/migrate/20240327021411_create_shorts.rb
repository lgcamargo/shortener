class CreateShorts < ActiveRecord::Migration[7.1]
  def change
    create_table :shorts do |t|
      t.string :shortened_link
      t.string :original_link

      t.timestamps
    end
  end
end
