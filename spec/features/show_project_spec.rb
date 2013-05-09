require "spec_helper"

describe "Viewing an individual project" do
  it "shows the project's details" do
    project = Project.create(project_attributes)

    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description[0..10])
    expect(page).to have_text(project.website)
    expect(page).to have_text('$100.00')

  end

  it "shows the number of days remaining if the pledging end date is in the future" do
    project = Project.create(project_attributes(pledging_ends_on: 1.day.from_now))

    visit project_url(project)

    expect(page).to have_text("2 days remaining")
  end

  it "shows 'All done!' if the pledging end date is in the past" do
    project = Project.create(project_attributes(pledging_ends_on: 2.days.ago))

    visit project_url(project)
    expect(page).to have_text("All Done!")

  end

end
