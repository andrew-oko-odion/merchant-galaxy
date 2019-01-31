class Metal
  attr_reader :elements, :galaxy

  def initialize(galaxy)
    @elements = {}
    @galaxy = galaxy
  end


  def convert(galactic_units:, element:)
    (galaxy.value_of(galactic_units) * value_of(element)).to_i
  end

  private

  def value_of(element)
    elements[element]
  end
end
