xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "SmartDrum"
    xml.description "Новости компании ООО СмартДрам"
    xml.link news_url

    for post in @news_rss
      xml.item do
        xml.header post.header
        xml.text post.text
        xml.pubDate post.created_at.to_s(:ru_datetime)
        xml.link news_url(post)
        xml.guid news_url(post)
      end
    end
  end
end
