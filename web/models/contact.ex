defmodule HelloPhoenix.Contact do
  use Ecto.Model

  @derive {Poison.Encoder, only: [:id, :name, :phone]}
  schema "contacts" do
    field :name
    field :phone

    timestamps
  end

end
