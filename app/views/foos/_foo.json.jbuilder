json.extract! foo, :id, :name, :created_at, :updated_at
json.foo_dependants do
  json.partial! 'foo_dependants/foo_dependant',
                collection: foo.foo_dependants,
                as: :foo_dependant
end
