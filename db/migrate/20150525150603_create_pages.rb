class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      # add id for let the table know what the corespondent subject is - t.references :subject
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.string "position"
      t.boolean "visible", default: false

      t.timestamps null: false
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end
end
