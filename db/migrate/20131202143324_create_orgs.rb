class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.text :name
      t.boolean :demo
      t.timestamps
    end
  end
end
