def pmu_format!(race_array)
  # TODO: modify the given array so that it is PMU-consistent. This method should return nil.
  race_array.map! {|a| (race_array.index(a) + 1).to_s + "-" + a + "!" }.reverse!

end

puts pmu_format!(["Abricot du Laudot", "Black Caviar", "Brigadier Gerard","Coup de Folie"])


