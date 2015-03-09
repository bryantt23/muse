class Post < ActiveRecord::Base
  acts_as_votable
                                                                             
  belongs_to :user
  has_many :comments
  
  has_attached_file :image, :styles => { :medium => "700x550>", :small =>"400x350" }
  # has_attached_file :image, styles: { medium: "700x550", small: "400x350" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

    
end
