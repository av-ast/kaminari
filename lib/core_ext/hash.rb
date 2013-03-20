class Hash

  def deep_symbolize_keys
    if respond_to?(:deep_symbolize_keys)
      deep_symbolize_keys
    else
      inject({}) { |acc, (key, value)| acc[key.to_sym] = value.is_a?(Hash) ? value.deep_symbolize_keys : value; acc }
    end
  end

end
