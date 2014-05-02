immediate_family = {  sisters: ["jane", "jill", "beth"],
                                 brothers: ["frank","rob","david"]
                              }

immediate_family.each_key { |key| puts key}
immediate_family.each_value { |value| puts value}
immediate_family.each { |key, value| puts "#{key}.#{value}"}