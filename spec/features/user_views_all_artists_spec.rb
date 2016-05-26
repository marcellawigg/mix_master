require 'rails_helper'

  feature "User visits the artists index do" do
    scenario "they see a page with each artist's name"
    name1 = "Vanilla Ice"
    image1 = "http://inproofs.com/data_images/out/46/1128905-vanilla-ice.jpg"
    name2 = "Elvis Presley"
    image2 = "https://upload.wikimedia.org/wikipedia/commons/9/99/Elvis_Presley_promoting_Jailhouse_Rock.jpg"

    Artist.create(name: name1, image_path: image1)
    Artist.create(name: name2, image_path: image2)

    visit artists_path
    expect(page).to have_content name1
    expect(page).to have_content name2
    click_on "Vanilla Ice"

    expect(page).to have_content name1
    expect(page).to have_css("img[src=\#{image1}\"]")
  end
end
