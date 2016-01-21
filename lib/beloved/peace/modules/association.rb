module Peace::Association

  def belongs_to(sym)
  end

  def has_many(sym)
  end

  def api_requires(*args)
    args.each do |sym|
      self.class_attribute sym, sym
    end
  end

end
