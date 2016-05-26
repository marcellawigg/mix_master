require 'rails_helper'

feature "User visits existing artist's show page" do
  scenario "they click on 'Edit'" do
    artist_name = "Beyonce"
    artist_image_path = "https://upload.wikimedia.org/wikipedia/commons/f/fb/Beyonce_Knowles_with_necklaces.jpg"
    artist = Artist.create(name: artist_name, image_path: artist_image_path)

    visit artist_path(artist.id)
    click_on "Edit"

    changed_name = "Jay-Z"
    fill_in "artist_name", with: changed_name
    click_on "Update Artist"
    expect(page).to have_content changed_name
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
