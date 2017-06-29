class AddUsernameToUsers < ActiveRecord::Migration
  def change# everything inside of this method is translated to SQL code and modifies the database(SQLite)
    add_column :users, :username, :string #add a new column to table 'users' , called 'username', of type 'string'
    add_index :users, :username, unique: true #first, index usernames for quick(rapid) lookup. Second, ensure usernames are always unique
  end
end
