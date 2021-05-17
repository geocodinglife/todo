User.delete_all
Project.delete_all
Project.delete_all

def create_users
  5.times do
    user = User.create!(
      name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
      cellphone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email,
      password: 'password'
    )
    puts "(User) #{user.email} created correctly"
  end
end

def create_projects
  5.times do
    project = Project.create!(
      name: Faker::Movie.title,
      description: Faker::Lorem.paragraph,
      due_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    )

    puts "(Project) #{project.name} created correctly"
  end
end

def create_tasks
  10.times do
    task = Task.create!(
      name: Faker::Movie.title,
      description: Faker::Lorem.paragraph,
      position: rand(999),
      priority: 'high',
      project_id: Project.pluck(:id).sample
    )
    puts "(Task) #{task.name} created correctly"
  end
end

def create_subtasks
  25.times do
    subtask = Subtask.create!(
      project_id: Project.pluck(:id).sample,
      name: Faker::Movie.title,
      priority: 'high',
      task_id: [1,2,3,4,5,6,7,8,9,10].sample
    )

    puts "(Subtask) #{subtask.name} created correctly"
  end
end

def load_data
  create_users
  create_projects
  create_tasks
  create_subtasks
end

load_data