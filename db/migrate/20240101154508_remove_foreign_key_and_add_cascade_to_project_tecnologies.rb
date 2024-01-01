class RemoveForeignKeyAndAddCascadeToProjectTecnologies < ActiveRecord::Migration[7.1]
  def change
     remove_foreign_key :project_tecnologies, :tecnologies

     add_foreign_key :project_tecnologies, :tecnologies, on_delete: :cascade
  end
end
