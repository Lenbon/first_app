class CreateAmvs < ActiveRecord::Migration
  def change
    create_table :amvs do |t|
      t.string :title
      t.string :link

      t.timestamps null: false
    end
  end
end
