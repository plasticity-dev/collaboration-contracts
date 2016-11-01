class CreateDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :decisions do |t|
      t.string :description
      t.integer :contract_id
      
      t.timestamps
    end
  end
end
