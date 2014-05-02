immediate_family = {  sisters: ["jane", "jill", "beth"],
                                 brothers: ["frank","rob","david"]
                              }

indirect_family = {  uncles: ["bob", "joe", "steve"],
                             aunts: ["mary","sally","susan"]
                          }

# immediate_family.merge(indirect_family)
immediate_family.merge!(indirect_family)
p immediate_family.values.flatten