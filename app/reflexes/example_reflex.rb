class ExampleReflex < StimulusReflex::Reflex
  def increment
    @count = element.dataset[:count].to_i + element.dataset[:step].to_i
  end

  def smurf(count, step = 1)
    @count = count.to_i + step
  end
end
