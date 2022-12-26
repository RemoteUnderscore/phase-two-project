require 'music_list'

RSpec.describe MusicList do

  context "adds tracks to a list of music listened to" do
    it "returns an empty list if nothing has been added" do
      music_list = MusicList.new
      expect(music_list.list). to eq []
    end

    it "returns the list if a track is added" do
      music_list = MusicList.new
      music_list.add("Blue Monday")
      expect(music_list.list).to eq ["Blue Monday"]
    end

    it "returns the list if more than one track added" do
      music_list = MusicList.new
      music_list.add("Blue Monday")
      music_list.add("Ebb and Flow")
      expect(music_list.list).to eq ["Blue Monday", "Ebb and Flow"]
    end

    it "will only add unique tracks, not duplicates" do
      music_list = MusicList.new
      music_list.add("Blue Monday")
      music_list.add("Blue Monday")
      expect(music_list.list).to eq ["Blue Monday"]
    end

    it "deletes a track when necessary" do
      music_list = MusicList.new
      music_list.add("Blue Monday")
      music_list.add("Ebb and Flow")
      music_list.add("Kierto")
      music_list.delete("Ebb and Flow")
      expect(music_list.list).to eq ["Blue Monday", "Kierto"]
    end

    it "returns an error if you try to delete something not in the list" do
      music_list = MusicList.new
      music_list.add("Kierto")
      expect { music_list.delete("Ebb and flow") }.to raise_error "Not in the list."
    end

  end  
end  