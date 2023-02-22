class AddActivationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :activation_digest, :string, after: :admin
    add_column :users, :activated, :boolean, default: false, null: false, after: :activation_digest
    add_column :users, :activated_at, :datetime, after: :activated
  end
end
