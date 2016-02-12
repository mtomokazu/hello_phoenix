defmodule HelloPhoenix.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :name, :string
      add :phone, :string

      timestamps
    end
  end

end
