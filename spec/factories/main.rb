FactoryGirl.define do

  factory :user do
  end

  factory :contract do
    title "Contract Title"
    link "12345"
    owner_link "abcde"
    user

    factory :contract_with_decisions do
      transient do
        decisions_count 5
      end
      after(:create) do |contract, evaluator|
        create_list(:decision, evaluator.decisions_count, contract: contract)
      end
    end
# This is a contract with decisions(5) and answers on these decisions(3).
    factory :filled_contract do
      transient do
        decisions_count 5
      end
      after(:create) do |contract, evaluator|
        create_list(:decision_with_answers, evaluator.decisions_count, contract: contract)
      end
    end

  end

  factory :decision do
    description "decision description"
    contract

    factory :decision_with_answers do
      transient do
        answers_count 3
      end
      after(:create) do |decision, evaluator|
        create_list(:answer, evaluator.answers_count, decision: decision)
      end
    end
  end

  factory :answer do
    name "Joe Shmo"
    answer "Explain"
    decision
  end

end
