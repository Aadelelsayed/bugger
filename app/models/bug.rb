class Bug < ApplicationRecord
  has_attached_file :screenshot, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :screenshot, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'Only png/jpeg/gif allowed'
  
  belongs_to :project, foreign_key: "Project_id"
  belongs_to :user, foreign_key: "User_id"  
  belongs_to :assigned, class_name: 'User', foreign_key: 'assigned_to'

  def self.types
  	[Status.new(1, "bug"), Status.new(2, "feature")]
  end

  def self.bug_status
  	[BugType.new(1, "new"), BugType.new(2, "started"), BugType.new(3, self.status == 1 ? "resolved" : "completed")]
  end
end
