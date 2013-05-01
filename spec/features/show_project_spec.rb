require "spec_helper"

describe "Viewing an individual project" do
  it "shows the project's details" do
    project = Project.create(project_attributes)

    visit "http://example.com/projects/#{project.id}"

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description[0..10])
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)
    expect(page).to have_text('$100.00')

  end
end
