class StadiumApp::User
  include Mongoid::Document

  field :email, type: String

  def links
    []
  end
end
