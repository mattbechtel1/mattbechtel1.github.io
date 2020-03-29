# controller/fields_controller.rb
class FieldsController < ApplicationController
    def create
        new_field = Field.create(strong_params)
        
        if new_field.valid?
            bed_count = new_field.bed_count
            bed_count.times { |i|
                bed = Bed.create(name: "Bed ##{(i+1).to_s}", field: new_field)
                Stage.create(start_date: Date.new(2015, 1, 1), bed: bed)
                Stage.create(start_date: Date.today, bed: bed)
            }
            render json: FieldSerializer.new(new_field).to_serialized_json
        else 
            render json: { error: 'Name invalid. Please try another name for your field.' }, status: :not_acceptable
        end
    end

    private

    def strong_params
        params.require(:field).permit(:bed_count, :name, :user_id)
    end
end

# models/field.rb
class Field < ApplicationRecord
    has_many :beds
    has_many :stages, through: :beds
end

# models/bed.rb
class Bed < ApplicationRecord
    belongs_to :field
    has_many :stages
end

# models/stage.rb
class Stage < ApplicationRecord
    belongs_to :bed
end