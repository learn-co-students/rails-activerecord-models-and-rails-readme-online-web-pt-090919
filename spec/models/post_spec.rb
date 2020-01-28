require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'rails_helper'
 
describe Post do
  it 'can be created' do
    post = Post.create!(title: "My title", description: "The post description")
    expect(post).to be_valid
  end
    
  it 'has a summary' do
    post = Post.create!(title: "My title", description: "The post description")
    expect(post.post_summary).to eq("My title - The post description")
  end
end