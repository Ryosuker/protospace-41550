class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content,          null: false
      t.references :prototype,  null: false, forign_key: true
      t.references :user,       null: false, forign_key: true
      t.timestamps
    end
  end
end
