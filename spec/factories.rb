Factory.define :user do |f|
  f.password "foobar"
  f.password_confirmation { |u| u.password }
end

Factory.define :mobile_number do |f|
  f.sequence(:number) {|n| "+618148229#{n}" }
  f.association :user
end

