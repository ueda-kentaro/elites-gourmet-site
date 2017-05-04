class AddIntroductionToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :introduction, :string
  end
end
