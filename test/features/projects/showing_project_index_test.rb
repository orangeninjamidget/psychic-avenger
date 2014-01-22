require "test_helper"

feature "As a site visitor, I want to see a developer's portfolio" do
  scenario "viewing all projects" do
    visit projects_path

    page.text.must_include(projects(:freelance).name)
    page.text.must_include(projects(:portfolio).name)
  end
end