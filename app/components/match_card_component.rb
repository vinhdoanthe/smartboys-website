# frozen_string_literal: true

class MatchCardComponent < ViewComponent::Base
  include MatchesHelper
  with_collection_parameter :match

  def initialize(match:)
    @match = match
  end

end
