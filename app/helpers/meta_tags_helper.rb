module MetaTagsHelper
  def default_meta_tags
    {
      site: "お問い合わせ.cc | キャッチコピー",
      reverse: true,
      charset: "utf-8",
      description: "",
      viewport: "width=device-width, initial-scale=1.0",
      og: {
        title: :title,
        type: "website",
        site_name: "otoiawase",
        description: :description,
        image: "https://otoiawase.cc/ogp/ogp.png",
        url: "https://otoiawase.cc",
      },
      twitter: {
        card: "summary",
        site: "@otoiawasecc",
        description: :description,
        image: "https://otoiawase.cc/ogp/ogp.png",
        domain: "https://otoiawase.cc",
      }
    }
  end
end
