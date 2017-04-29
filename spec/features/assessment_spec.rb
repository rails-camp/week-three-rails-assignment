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
end
# Install the `Bootstrap gem` and follow the steps to get it functioning properly.
# Add a link to your `application.html` file to render your css styles on the page.
# Create a `h1` tag. In the css file, style the `h1` tag to have a font-color of red.
# Create a `div` tag with an `ul` of three items.
# For the same `div`,create a class called `list`. Integrate two styles, of your choice, for that class. 
