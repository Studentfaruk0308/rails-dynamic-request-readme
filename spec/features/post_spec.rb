# spec/features/post_spec.rb

require 'rails_helper'

describe 'navigate' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
  end

  it 'loads the show page' do
    visit "/posts/#{@post.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the description on the show page in a p tag' do
    visit "/posts/#{@post.id}"
    expect(page).to have_css("p", text: "My post desc")
  end
end