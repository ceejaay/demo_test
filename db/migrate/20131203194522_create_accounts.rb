class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|

      t.timestamps
      t.belongs_to :user
      t.belongs_to :org

    end
  end
end
