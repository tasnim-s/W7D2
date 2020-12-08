class Album < ApplicationRecord
    validates :band_id, :title, :year, :live, presence: true
    validates :band_id, :title, uniqueness: true

    belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: :Band
end
