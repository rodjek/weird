Puppet::Type.newtype(:foo) do
  desc ""

  ensurable

  newparam(:name) do
  end
end
