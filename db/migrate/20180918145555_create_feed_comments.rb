class CreateFeedComments < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_comments do |t|
      t.integer :feed_id, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
