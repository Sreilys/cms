class CreateUsersPagesJoin < ActiveRecord::Migration
  def change
    # this table has just 2 columns and does not hav an ID
    create_table :users_pages, id: false do |t|
      # those are the two foreing key that we need to join for our has_many to has_many relationship between users and pages
      t.integer "user_id"
      t.integer "page_id"
    end
    add_index :users_pages, ['user_id', 'page_id']
  end
end
