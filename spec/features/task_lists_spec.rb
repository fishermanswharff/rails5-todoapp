require 'rails_helper'

feature 'task lists' do

  let!(:list) { FactoryGirl.create(:list_with_todos, todos_count: 20) }

  scenario 'visits task lists index' do
    visit tasklists_path
    expect(page).to have_content list.name
  end
end
