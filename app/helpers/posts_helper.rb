module PostsHelper

  def border_color(post)
    if post.color_id == 1
      "border-red"
    elsif post.color_id == 2
      "border-pink"
    elsif post.color_id == 3
      "border-orange"
    elsif post.color_id == 4
      "border-yellow"
    elsif post.color_id == 5
      "border-green"
    elsif post.color_id == 6
      "border-blue"
    elsif post.color_id == 7
      "border-purple"
    elsif post.color_id == 8
      "border-brown"
    elsif post.color_id == 9
      "border-gray"
    end
  end

end
