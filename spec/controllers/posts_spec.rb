require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Friend Face'" do
      visit '../posts/index'
      expect(page).to have_content('Friend Face')
    end

  end

end