class Teams
  
  attr_reader :teams, :projects
  
  def initialize
    @teams = []
    @projects = []
  end

  def add_team (team)
    @teams.push(team)
  end
  
  def remove_team (team)
    @teams.delete_if{|t| t.object_id == team.object_id}
  end
  
  def search_team (team)
    teams = @teams.select{|t| t.object_id == team.object_id}
    teams.first
  end
  
  def add_project (project)
    @projects.push(project)
  end
  
  def remove_project (project)
    @projects.delete_if{|p| p.object_id == project.object_id}
  end
  
  def search_project (project)
    projects = @projects.select{|p| p.object_id == project.object_id}
    projects.first
  end
  
end