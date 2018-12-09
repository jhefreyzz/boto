defmodule BotoServer.Repo.Migrations.AddColumnsToStudentsTable do
  use Ecto.Migration

  def change do
    alter table(:students) do
      add :avatar, :string, null: false, default: "no-picture.png"
      add :about, :string
      add :motto, :string
    end
  end
end
