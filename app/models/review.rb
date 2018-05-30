class Review < ApplicationRecord
  belongs_to :user
  # ratyrate_rateable 'visual_effects'
  ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'
end
