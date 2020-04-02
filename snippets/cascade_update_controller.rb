# controller/stages_controller.rb
class StagesController < ApplicationController
    def create
        new_stage = Stage.create(strong_params)
        new_stage.bed.touch
        

        bed = new_stage.bed
        bed.field.touch

        render json: BedSerializer.new(bed).to_serialized_json
    end

    private

    def strong_params
        params.require(:stage).permit(:start_date, :bed_id)
    end
end

# controller/beds_controller.rb
class BedsController < ApplicationController
    def update
        bed = Bed.find(params[:id])
        bed.update(strong_params)
        bed.field.touch(:updated_at)

        render json: BedSerializer.new(bed).to_serialized_json
    end

    private

    def strong_params
        params.require(:bed).permit(:name)
    end
end
