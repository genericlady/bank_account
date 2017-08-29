module Observable
  def add_observer(observer)
    raise NotImplementedError, "Hey define an add_observer instance method."
  end

  def remove_observer(observer)
    raise NotImplementedError, "Hey define an remove_observer instance method."
  end

  def notify_observers
    raise NotImplementedError, "Hey define an notify_observer instance method."
  end
end
