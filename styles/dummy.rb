# for when I come across one of those silly precompile issues
# that is not yet supported by teacup

class DummyUIImageView < UIImageView
private
  def dummy
    setUserInteractionEnabled(nil)
  end
end