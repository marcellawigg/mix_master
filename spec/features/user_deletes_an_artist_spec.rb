require 'rails_helper'

  feature "User visits an artist's show page" do
    scenario "they click on 'Delete'" do
      artist_name = "Beyonce"
      artist_image_path = "https://upload.wikimedia.org/wikipedia/commons/f/fb/Beyonce_Knowles_with_necklaces.jpg"

    visit artists_path
    click_on "New Artist"
    fill_in "artist_name", with: artist_name
    fill_in "artist_image_path", with: artist_image_path
    click_on "Create Artist"
    expect(page).to have_content artist_name
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
    click_on "Delete"

  end
end
