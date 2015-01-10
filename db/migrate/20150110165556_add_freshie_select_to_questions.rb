class AddFreshieSelectToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :freshie_select, :boolean
  end
end
