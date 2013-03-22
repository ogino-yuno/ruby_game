require 'dxruby'

module Window
  @@created = false

  def self.gameloop
    if @@created == false
      Window.create
      @@created = true
    end

    while(true) do
      exit if Input.update
      yield
      Window.sync
      Window.update
    end
  end
end
