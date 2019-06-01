require 'rails_helper'

describe "static_pages", type: :request do

  describe 'about page' do
    it "should render the about page" do
      get '/static/about'
      expect(response).to have_http_status(200)
      expect(response).to render_template('about')
    end
  end

  describe 'faq page' do
    it "should render faq page" do
      get '/'
      expect(response).to have_http_status(200)
      expect(response).to render_template('faq')
    end
  end
end

