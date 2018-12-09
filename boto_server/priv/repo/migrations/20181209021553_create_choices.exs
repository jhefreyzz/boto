defmodule BotoServer.Repo.Migrations.CreateChoices do
  use Ecto.Migration

  def change do
    create table(:choices) do
      add :name, :string, null: false

      timestamps()
    end

  end
end
