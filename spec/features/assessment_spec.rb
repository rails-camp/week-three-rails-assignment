require 'rails_helper'

describe 'Week Three' do
  it 'has a model of post with title, content, and tag attributes' do
    post = Post.create!(title: 'My Title', content: 'Some content', tags: 'my, amazing, tags')
    expect(post).to be_valid
  end

  it 'has a homepage' do
    visit root_path
    expect(page.status_code).to eq(200)
  end
  
  it 'has a homepage with an h1 heading and specific text' do
    visit root_path
    expect(page).to have_selector('h1', text: 'Week Three Assignment')
  end

  it 'has bootstrap installed properly' do
    expect{ Bootstrap }.to_not raise_error
  end

  it 'has an h1 with a class of custom-heading' do
    visit root_path
    expect(page).to have_css('.custom-heading')
  end

  it 'has a div with an unordered list inside of it with three list items' do
    visit root_path
    expect(page).to have_css('li', count: 3)
  end

  it 'has a div with the class of list' do
    visit root_path
    expect(page).to have_css('.list')
  end
end
