FactoryBot.define do
  factory :subject do
    title do
      [
        "Data Structures",
        "Algorithms",
        "Computer Networks",
        "Operating Systems",
        "Databases",
        "Distributed Systems",
        "Machine Learning",
        "Compiler Design",
        "Cryptography",
        "Software Architecture",
        "Web Development",
        "DevOps Fundamentals",
        "Cybersecurity Basics",
        "Linux System Programming",
        "Discrete Mathematics"
      ].sample
    end
  end
end
