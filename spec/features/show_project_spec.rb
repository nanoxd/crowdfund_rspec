require "spec_helper"

describe "Viewing an individual project" do
  it "shows the project's details" do
    project = Project.create(name: "Start-Up Projectz",
                              description: "A description of a start-up project",
                              target_pledge_amount: 100.00,
                              pledging_ends_on: 1.day.from_now,
                              website: "http://project-ab.com")

    visit "http://example.com/projects/#{project.id}"

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description[0..10])
    expect(page).to have_text(project.pledging_ends_on)
    expect(page).to have_text(project.website)
    expect(page).to have_text('$100.00')

  end
end
