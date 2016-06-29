class Rackspace::Image::Member 
  include Peace::Model
	attr_accessor :created_at, :image_id, :member_id, :schema, :status, :updated_at

	belongs_to :image
	belongs_to :member
	has_many :members

	def details; end
end
