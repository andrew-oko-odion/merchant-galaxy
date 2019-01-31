class InputProcessing
  attr_reader :galaxy, :metal

  ERROR_MSG = 'I have no idea what you are talking about'.freeze
  INVALID_UNIT_MSG = "That's not even a real unit!".freeze

  def initialize(galaxy:, metal:)
    @galaxy = galaxy
    @metal = metal
  end


  private

  def galactic_conversion(galactic_units:)
    value = galaxy.value_of(galactic_units.split)

    if value == 0
      puts INVALID_UNIT_MSG
    else
      puts "#{galactic_units}is #{value}"
    end
  end

  def metal_conversion(galactic_units:, element:)
    credits = metal.convert(galactic_units: galactic_units.split,
                            element: element)

    if credits == 0
      puts INVALID_UNIT_MSG
    else
      puts "#{galactic_units} #{element} is #{credits} Credits"
    end
  end
end
