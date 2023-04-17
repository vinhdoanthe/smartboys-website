class HomePageSettingResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :hero_title, as: :text
  field :hero_description, as: :text
  field :hero_banner, as: :file
  # add fields here
end
