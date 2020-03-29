# db/migrate/AddForeignKeyToBeds.rb
class ChangeForeignKeyToBeds < ActiveRecord::Migration[6.0]
    def change
        remove_foreign_key :beds, :field
        add_foreign_key :field, :beds, on_delete: :cascade
    end
end