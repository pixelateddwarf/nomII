require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating" do
   # assert true
   comment=Comment.new(:rating => '3_stars')
   humanized_rating = comment.humanized_rating
   assert_equal "three stars", humanized_rating
  end

test "pretty_string" do
  comment=Comment.new(:rating => '3_stars', :message => "hello")
  pretty_string = comment.pretty_string
  assert_equal "three stars - hello", pretty_string 
end


end
