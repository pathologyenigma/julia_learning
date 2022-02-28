module CreateTableCards

import SearchLight.Migrations: create_table, column, columns, primary_key, add_index, drop_table, add_indices

function up()
  create_table(:cards) do
    [
      primary_key()
      column(:name, :string, limit = 100)
      column(:description, :text)
      column(:image, :text)
    ]
  end

  add_index(:cards, :name)
  add_index(:cards, :description)
  add_index(:cards, :image)
end

function down()
  drop_table(:cards)
end

end
