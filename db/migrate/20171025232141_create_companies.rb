class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :domain

      t.timestamps
      
      #enforce no two companies can have the same domain
      t.index :domain, unique: true
    end
  end
end
