class Types::PostInputObject < Types::BaseInputObject
  description "Attributes for creating or updating a post"

  argument :title, String, required: false
  argument :description, String, required: false
end
