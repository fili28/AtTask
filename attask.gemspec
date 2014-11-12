# -*- encoding: utf-8 -*-
# stub: attask 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "attask"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Adrian Toman"]
  s.date = "2014-10-08"
  s.description = ""
  s.email = ["adrian.toman@gmail.com"]
  s.executables = ["attask"]
  s.files = ["LICENSE.TXT", "README", "attask.gemspec", "bin/attask", "lib/attask.rb", "lib/attask/api/assigment.rb", "lib/attask/api/base.rb", "lib/attask/api/baseline.rb", "lib/attask/api/baselinetask.rb", "lib/attask/api/category.rb", "lib/attask/api/company.rb", "lib/attask/api/expense.rb", "lib/attask/api/expensetype.rb", "lib/attask/api/group.rb", "lib/attask/api/hour.rb", "lib/attask/api/hourtype.rb", "lib/attask/api/issue.rb", "lib/attask/api/metadata.rb", "lib/attask/api/milestone.rb", "lib/attask/api/project.rb", "lib/attask/api/rate.rb", "lib/attask/api/resourcepool.rb", "lib/attask/api/risk.rb", "lib/attask/api/risktype.rb", "lib/attask/api/role.rb", "lib/attask/api/schedule.rb", "lib/attask/api/task.rb", "lib/attask/api/team.rb", "lib/attask/api/timesheet.rb", "lib/attask/api/user.rb", "lib/attask/assigment.rb", "lib/attask/base.rb", "lib/attask/baseline.rb", "lib/attask/baselinetask.rb", "lib/attask/behavior/default.rb", "lib/attask/category.rb", "lib/attask/company.rb", "lib/attask/credentials.rb", "lib/attask/error.rb", "lib/attask/expense.rb", "lib/attask/expensetype.rb", "lib/attask/group.rb", "lib/attask/hour.rb", "lib/attask/hourtype.rb", "lib/attask/issue.rb", "lib/attask/metadata.rb", "lib/attask/milestone.rb", "lib/attask/model.rb", "lib/attask/project.rb", "lib/attask/rate.rb", "lib/attask/resourcepool.rb", "lib/attask/risk.rb", "lib/attask/risktype.rb", "lib/attask/role.rb", "lib/attask/schedule.rb", "lib/attask/task.rb", "lib/attask/team.rb", "lib/attask/timesheet.rb", "lib/attask/user.rb", "lib/attask/version.rb", "lib/ext/array.rb", "lib/ext/hash.rb", "setting/settings.json"]
  s.homepage = ""
  s.rubyforge_project = "attask"
  s.rubygems_version = "2.2.2"
  s.summary = "API connector for AtTask API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<ext>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<ext>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<ext>, [">= 0"])
  end
end
