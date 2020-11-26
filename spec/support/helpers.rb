module Helpers
  def page_does thing
    expect(page).to thing
  end

  def page_has_link link
    page_does have_link *link
  end

  def page_has_links links
    links.each do |link|
      page_has_link link
    end
  end

  def page_has_text text
    page_does have_text text
  end
end