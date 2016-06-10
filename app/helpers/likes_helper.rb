module LikesHelper

  def like_link_for(phrase)
    link_to "like it!!", like_path(:resource_name => phrase  .class, :resource_id => target.id), :method => :post
  end

  def unlike_link_for(phrase)
    link_to "unlike it!!", like_path(:resource_name => phrase.class, :resource_id => target.id), :method => :delete
  end

end
