class CreateCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :codes do |t|
      t.string :state
      t.string :abbrev
      t.string :code

      t.timestamps
    end
  end
end
