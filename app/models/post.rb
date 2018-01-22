class Post < ApplicationRecord
  belongs_to :bulletin
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
  acts_as_taggable # Alias for acts_as_taggable_on :tags

  def tag_list_fixed
    tag_list.to_s
  end

  def tag_list_fixed=(tag_list_string)
    self.tag_list = tag_list_string
  end
end
