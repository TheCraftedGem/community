defmodule CommunityWeb.Schema do
  use Absinthe.Schema

  alias CommunityWeb.NewsResolver

  object :link do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end

  query do
    field :all_links, non_null(list_of(non_null(:link))) do
        resolve &NewsResolver.all_links/3
    end
  end


  # query do
  # # @desc "Get an item by ID"
  #   field :item, :item do

  #     @desc "The ID of the item"
  #     arg :id, type: non_null(:id)

  #     resolve fn %{id: id}, _ ->
  #       {:ok, Map.get(@fake_db, id)}
  #   end
  # end
end
