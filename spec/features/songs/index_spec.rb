require "rails_helper"

RSpec.describe "songs index page", type: :feature do
#   As a user,
# when I visit '/songs'
# I see each song's title and play count

  describe "as a user" do
    describe "when i visit /songs" do
      it "I see each song's title and play count" do
        carly
        # artist_1 = Artist.create(name: "Carly Rae Jepsen")
        song_1 = Song.create!(title: "I really like you", length: 208, play_count: 123)
        song_1 = Song.create!(title: "Call me Maybe", length: 203, play_count: 12365)
        
        visit "/songs"

        expect(page).to have_content(song_1.title)
        expect(page).to have_content(song_2.title)
        expect(page).to have_content(song_1.play_count)
        expect(page).to have_content(song_2.play_count)

      end
    end
  end
end
