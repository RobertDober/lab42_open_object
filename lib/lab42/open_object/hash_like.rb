module Lab42::OpenObject::HashLike
 
  def merge with
    self.class.new to_hash.merge(with)
  end 
end
