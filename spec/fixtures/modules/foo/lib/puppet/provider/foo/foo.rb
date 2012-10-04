Puppet::Type.type(:foo).provide(:foo) do
  @doc = ""

  def create
  end

  def destroy
  end

  def exists?
    false
  end
end
