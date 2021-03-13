class Question < ApplicationRecord
  mount_uploader :video_question, VideoQuestionUploader
  belongs_to :user
end
