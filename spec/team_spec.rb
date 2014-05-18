require 'team'
require 'project'

describe "A team" do
  
  subject(:team) {Team.new}
  
  it "starts with empty teams" do
    team.teams.should == []
  end
  
  it "starts with empty projects" do
    team.projects.should == []
  end
  
  it "could manage many teams as it wish" do
    team.add_team(Team.new)
    team.add_team(Team.new)
    team.add_team(Team.new)
    team.teams.count.should == 3
  end
  
  it "could remove a specific team" do
    team_demo = Team.new
    team.add_team(Team.new)
    team.add_team(team_demo)
    team.add_team(Team.new)
    team.remove_team(team_demo)
    team.teams.count.should == 2
  end
  
  it "could search a specific team" do
    team_demo = Team.new
    team.add_team(Team.new)
    team.add_team(team_demo)
    team.add_team(Team.new)
    team.search_team(team_demo).should == team_demo
  end
  
  context "with projects" do
    
    it "could manage many projects as it wish" do
      team.add_project(Project.new)
      team.add_project(Project.new)
      team.add_project(Project.new)
      team.projects.count.should == 3
    end
    
    it "could remove a specific project" do
      project_demo = Project.new
      team.add_project(Project.new)
      team.add_project(project_demo)
      team.add_project(Project.new)
      team.remove_project(project_demo)
    end
    
    it "could search a specific project" do
      project_demo = Project.new
      team.add_project(Project.new)
      team.add_project(project_demo)
      team.add_project(Project.new)
      team.search_project(project_demo).should == project_demo
    end
    
  end
  
end