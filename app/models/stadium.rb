class StadiumApi::Stadium
  include Mongoid::Document

  store_in collection: "stadiums"

  field :name, type: String
end
