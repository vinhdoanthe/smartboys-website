# frozen_string_literal: true

class SponsorComponent < ViewComponent::Base
  with_collection_parameter :sponsor

  def initialize(sponsor:)
    @sponsor = sponsor
  end

end
