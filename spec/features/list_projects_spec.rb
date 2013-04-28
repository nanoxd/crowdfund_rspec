require 'spec_helper'

describe "Viewing the list of projects" do
  it "shows three project names" do
    project1 = Project.create(name: "Start-Up Project",
                              description: "A description of a start-up project",
                              target_pledge_amount: 100.00,
                              pledging_ends_on: 1.day.from_now,
                              website: "http://project-a.com")
    project2 = Project.create(name: "WaterBottlr",
                              description: "A unique bottler of water. It is made for mass producing water bottles.",
                              target_pledge_amount: 301.99,
                              pledging_ends_on: 15.days.from_now,
                              website: "http://thewaterbottlr.io")
    project3 = Project.create(name: "TeamAker",
                              description: "A tea maker designed with teams in mind. Suitable for up to 6 8oz cups",
                              target_pledge_amount: 199.99,
                              pledging_ends_on: 1.month.from_now,
                              website: 'http://teamaker.com')

    visit 'http://example.com/projects'

    expect(page).to have_text("3 Projects")
    expect(page).to have_text("Project A")
    expect(page).to have_text("Project B")
    expect(page).to have_text("Project C")
  end

end
