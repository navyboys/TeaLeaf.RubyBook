family = {  uncles: ["bob", "joe", "steve"],
                sisters: ["jane", "jill", "beth"],
                brothers: ["frank","rob","david"],
                aunts: ["mary","sally","susan"]
             }

immediate_family = family.select { |key, value| (key == :sisters) || (key == :brothers) }

# immediate_family.values.each { |value| puts value}
p immediate_family.values.flatten