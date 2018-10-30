require "rails_helper"

describe "user sees one entry" do
	describe "they link from the entries index" do
		it "displays information for one entry" do

      entry = Entry.create!(title: "Title 1", body: "Body 1")

      visit entries_path

      click_link entry.title

      expect(page).to have_content(entry.title)
      expect(page).to have_content(entry.body)
		end
	end
end
