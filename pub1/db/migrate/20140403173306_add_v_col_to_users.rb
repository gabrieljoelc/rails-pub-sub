class AddVColToUsers < ActiveRecord::Migration
  def change
      change_table :users do |t|
      t.integer :_v, :limit => 8
    end
  end
end
