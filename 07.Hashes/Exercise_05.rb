immediate_family = {  sisters: ["jane", "jill", "beth"],
                                 brothers: ["frank","rob","david"]
                              }

puts "Exist!" if immediate_family.has_value?(["jane", "jill", "beth"])
