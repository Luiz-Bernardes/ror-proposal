class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :description
      t.decimal :value
      t.date :date_begin
      t.date :date_end
      t.string :city

      t.timestamps
    end
  end
end
