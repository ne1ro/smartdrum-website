atom_feed do |feed|
  feed.title "Новости SmartDrum"
  feed.updated @newsrss.maximum(:updated_at)
  @newsrss.each do |newz|
    feed.entry newz, published: newz.created_at do |entry|
      entry.title newz.header
      entry.content(newz.text, :type => 'html')
    end
  end
end

