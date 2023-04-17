class SponsorsQuery
  def initialize(relation = Sponsor.all)
    @relation = relation
  end

  def active
    @relation.where(is_active: true)
  end
end
