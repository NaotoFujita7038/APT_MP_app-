class CreateConsultationForms < ActiveRecord::Migration[6.1]
  def change
    create_table :consultation_forms do |t|
      t.integer :customer_id
      t.string :form
      t.text :content

      t.timestamps
    end
  end
end
