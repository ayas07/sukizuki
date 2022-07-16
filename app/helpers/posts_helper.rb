module PostsHelper

  def border_color(post)
    if post.color.id == 1
      return "border-red"
    elsif post.color.id == 2
      return "border-pink"
    elsif post.color.id == 3
      return "border-orange"
    elsif post.color.id == 4
      return "border-yellow"
    elsif post.color.id == 5
      return "border-green"
    elsif post.color.id == 6
      return "border-blue"
    elsif post.color.id == 7
      return "border-purple"
    elsif post.color.id == 8
      return "border-brown"
    elsif post.color.id == 9
      return "border-gray"
    end
  end
  
end
