require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should have_many(:playlist_songs) }
  it { should have_many(:playlists).through(:playlist_songs) } 
end
