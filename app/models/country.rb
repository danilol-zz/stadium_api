class StadiumApi::Country
  include Mongoid::Document

  store_in collection: "countries"

  field :name, type: String
end
