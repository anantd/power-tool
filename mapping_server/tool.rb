require 'fox16'
include Fox

load 'DatabaseHandler.rb'

class MapTool < FXMainWindow
  def initialize(app)
    super(app, "Plant Lookup Tool", :width => 400, :height => 200)

    hFrame1 = FXHorizontalFrame.new(self)
    chrLabel = FXLabel.new(hFrame1, "Enter Plant ID")
    chrTextField = FXTextField.new(hFrame1, 4)


    vFrame1 = FXVerticalFrame.new(self, :opts => LAYOUT_FILL)
    textArea = FXText.new(vFrame1, :opts => LAYOUT_FILL | TEXT_READONLY | TEXT_WORDWRAP)

    hFrame3 = FXHorizontalFrame.new(vFrame1)
    generateButton = FXButton.new(hFrame3, "Run query")

    # Initializing Database
    db = DatabaseHandler.new("egrid_2012.sqlite")

    generateButton.connect(SEL_COMMAND) do
      plant_id = chrTextField
      textArea.removeText(0, textArea.length)
      textArea.appendText(db.get_info(plant_id))
    end
  end


  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

if __FILE__ == $0
  FXApp.new do |app|
    MapTool.new(app)
    app.create
    app.run
  end
end
