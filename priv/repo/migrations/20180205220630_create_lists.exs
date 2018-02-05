defmodule TrelloRewriteMe.Repo.Migrations.CreateLists do
  use Ecto.Migration

  def change do
    create table(:lists) do
      add :name, :string
      add :position, :integer, default: 0
      add :board_id, references(:boards, on_delete: :delete_all)

      timestamps
    end

  end
end
