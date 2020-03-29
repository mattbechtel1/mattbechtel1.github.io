# db/migrate/CreateBeds.rb
class CreateBeds < ActiveRecord::MIgration[6.0]
    def change
        create_table :beds do |t|
            t.string :name
            t.references :field, null: :false, foreign_key: {on_delete: :cascade}

            t.timestamps
        end
    end
end