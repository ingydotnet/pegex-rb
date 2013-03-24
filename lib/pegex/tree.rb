require 'pegex/receiver'

class Pegex::Tree < Pegex::Receiver
  def gotrule got=nil
    return Pegex::Constant::Null if got.nil?

    if self.parser.parent['-wrap']
      return {self.parser.rule => (got || [])}
    else
      return got
    end
  end

  def final got=nil
    return got || []
  end
end
