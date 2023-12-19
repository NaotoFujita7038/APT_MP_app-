class RemoveFormToConsultationForms < ActiveRecord::Migration[6.1]
  def change
     remove_column :consultation_forms, :form
  end
end
