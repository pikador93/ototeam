class Group < ActiveRecord::Base
  belongs_to :creator, class_name: User
  has_many :group_memberships
  has_many :friends, through: :group_memberships

  validates :name, presence: true

  def friends_count
    0
  end
end
