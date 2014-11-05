class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.string :wsc_number

      t.timestamps
    end
  end
end
