class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :description, :public


# The magic happens here!


end
