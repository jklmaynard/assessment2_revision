class AddPhoneBookTables < ActiveRecord::Migration
  def change
    create_table(:contacts) do |t|
      t.column(:name, :string)
    end
    
    create_table(:phones) do |t|
      t.column(:number, :integer)
      t.column(:contact_id, :integer)
    end   
  end
end
