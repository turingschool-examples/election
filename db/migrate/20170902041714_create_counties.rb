class CreateCounties < ActiveRecord::Migration[7.0]
  def change
    create_table :counties do |t|
      t.string :name
      t.string :fips_code
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
