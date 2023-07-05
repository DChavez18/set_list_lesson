require "rails_helper"

RSpec.describe "the songs show page" do
  it "displays the song title" do
    artist = Artist.create(name: "Carly Rae Jepsen")
    song = artist.songs.create!(title: "I really like you", length: 231, play_count: 56)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 251, play_count: 356)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it "displays the name of artist for song" do
    
  end
end