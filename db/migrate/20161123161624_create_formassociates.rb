class CreateFormassociates < ActiveRecord::Migration
  def change
    create_table :formassociates do |t|
      t.belongs_to :form, index: true, foreign_key: true
      t.belongs_to :yearofstudy, index: true, foreign_key: true
      t.belongs_to :levelofstudy, index: true, foreign_key: true
      t.belongs_to :faculty, index: true, foreign_key: true
      t.belongs_to :programme, index: true, foreign_key: true
      t.integer :agefrom
      t.integer :ageto
      t.string :agecondition

      t.timestamps null: false
    end
  end
end
