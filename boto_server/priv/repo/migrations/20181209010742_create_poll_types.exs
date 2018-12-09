defmodule BotoServer.Repo.Migrations.CreatePollTypes do
  use Ecto.Migration

  def change do
    create table(:poll_types) do
      add :name, :string, null: false, size: 100

      timestamps()
    end

  end
end
