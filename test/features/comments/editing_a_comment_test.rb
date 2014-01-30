require "test_helper"

feature "Comments / Editing A Comment" do
  scenario "unauthorized site user cannot edit or approve comment" do

  end

  scenario "author can edit and approve comment" do
    sign_in(:author)
    visit post_path(posts(:http))

    check "Approve"
    click_on "Edit Comment"
    page.text.must_have_content comments(:http1).content
  end

  scenario "editor can edit approve comment" do
    sign_in(:editor)
    visit post_path(posts(:http))
    check "Approve"
    click_on "Edit Comment"
    page.text.must_have_content comments(:http1).content
  end
end
