feature 'user views faq page' do
  scenario 'they see the railsgirlsla on the page' do
    visit root_path

    expect(page).to have_css '.foobar-name', 'My foobar'
  end
end
