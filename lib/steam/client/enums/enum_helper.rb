module EnumHelper
  # Get the constant name associated with the given value.
  # @return [Symbol, nil] constant name or nil if not found.
  def key(const)
    constants.find { |k| const_get(k) == const }
  end
end