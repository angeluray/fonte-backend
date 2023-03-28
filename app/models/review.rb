class Review < ApplicationRecord
  belongs_to :user
  belongs_to :fonte
  has_one_attached :image
  has_one_attached :video

  validate :img_or_vid_attached
  validate :img_or_vid_format

  private

  def img_or_vid_attached
    unless image.attached? || video.attached?
        errors.add(:base, "Please attach an image or a video")
    end
  end

  def img_or_vid_format
    if image.attached? && !image.content_type.in?(%w[image/png image/jpg image/jpeg])
        errors.add(:image, "must be a PNG, JPG, or JPEG")
    end

    if video.attached? && !video.content_type.in?(%w[video/mp4 video/webm])
        errors.add(:video, "must be an MP4 or WebM")
    end
  end

end
