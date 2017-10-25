class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps

      #ensure that document names are unique, but not too strict, so unique within each company
      t.index [:company_id, :name], unique: true
    end
  end
end
