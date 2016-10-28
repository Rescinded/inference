class CreateCreateSurveys < ActiveRecord::Migration
  def change
    create_table :create_surveys do |t|
      t.string :title
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
