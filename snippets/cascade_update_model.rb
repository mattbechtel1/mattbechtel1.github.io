# models/field.rb
class Field < ApplicationRecord
    has_many :beds
    has_many :stages, through: :beds
end

# models/bed.rb
class Bed < ApplicationRecord
    belongs_to :field, touch: true
    has_many :stages
end

# models/stage.rb
class Stage < ApplicationRecord
    belongs_to :bed, touch: true
end