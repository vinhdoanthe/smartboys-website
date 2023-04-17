class SponsorResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :logo, as: :file, is_required: true
  field :name, as: :text, is_required: true
  field :website, as: :text, is_required: true

  # add fields here
end
