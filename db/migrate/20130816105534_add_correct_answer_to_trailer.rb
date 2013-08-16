class AddCorrectAnswerToTrailer < ActiveRecord::Migration
  def change
    add_column :trailers, :correct_answer, :integer
  end
end
