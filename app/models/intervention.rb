class Intervention < ApplicationRecord
  belongs_to :user
  has_one :offer

  enum work_type: { electrical: 'Électriques', plumbing: 'Plomberie', carpentry: 'Menuiserie', exterior: 'Extérieurs' }

  validates :work_type, presence: true
  validates :description, presence: true

  # Paperclip attachment
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
