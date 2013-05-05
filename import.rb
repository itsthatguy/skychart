rows = File.open("app/views/characters/index.html.haml").read().scan(/td(.*)/)

rows.each_slice(3) do |((text), (series_1), (series_2))|
  element = text.scan(/\.icon-([a-z]*) /).first.first
  name    = text.scan(/\.icon-[a-z]* (.*)/).first.first

  series_1 = series_1.length == 2
  series_2 = series_2.length == 2

  c = Character.new(:name => name, :series_1 => series_1, :series_2 => series_2)
  e = Element.find_or_create_by_name(element)
  c.element = e
  c.save!
  p "created Character :name => #{name}, :series_1 => #{series_1}, :series_2 => #{series_2}, elemeent :name => #{element}"
end

