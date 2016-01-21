module Peace::Association

  @@has_many   = []
  @@belongs_to = []

  def belongs_to(sym)
  end

  def has_many(sym, mapping)
    @@has_many << sym
  end

  def api_requires(*args)
    args.each{ |sym| self.class_attribute sym }
  end

end
