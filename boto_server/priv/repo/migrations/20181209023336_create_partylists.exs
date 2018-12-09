defmodule BotoServer.Repo.Migrations.CreatePartylists do
  use Ecto.Migration

  def change do
    create table(:partylists) do
      add :name, :string, null: false

      timestamps()
    end

    create unique_index(:partylists, [:name])
  end
end
