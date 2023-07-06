require "rails_helper"

RSpec.describe "Artists Songs index" do
  it "shows all the titles songs for the artist" do
    prince = Artist.create!(name: "Prince")
    purple = prince.songs.create!(title: "Purple Rain", length: 628, play_count: 3648)
    beret = prince.songs.create!(title: "Raspberry Beret", length: 438, play_count: 3667)

    visit "/artists/#{prince.id}/songs"

    expect(page).to have_content(purple.title)
    expect(page).to have_content(beret.title)
  end
  it "links to each songs show page"

end