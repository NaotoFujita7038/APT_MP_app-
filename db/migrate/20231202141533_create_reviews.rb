class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :rating
      t.text :review_comment

      t.timestamps
    end
  end
end
