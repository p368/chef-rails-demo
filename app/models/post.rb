class Post
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :body, type: String
end
