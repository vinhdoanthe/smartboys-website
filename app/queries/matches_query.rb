class MatchesQuery
  def initialize(relation = Match.all)
    @relation = relation
  end

  def upcoming
    @relation.where("start_at >= ?", Time.now)
  end

  def past
    @relation.where("start_at < ?", Time.now)
  end
end
