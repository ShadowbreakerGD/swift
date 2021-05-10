let colors = [
    [#colorLiteral(red: 0.3999403119087219, green: 0.016436254605650902, blue: 1.0081592798233032, alpha: 1.0), #colorLiteral(red: 0.8549019607843137, green: 0.25098039215686274, blue: 0.47843137254901963, alpha: 1.0), #colorLiteral(red: 0.9764705882352941, green: 0.8509803921568627, blue: 0.5490196078431373, alpha: 1.0)],
    [#colorLiteral(red: 0.9098039215686274, green: 0.47843137254901963, blue: 0.6431372549019608, alpha: 1.0), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), #colorLiteral(red: 0.23921568627450981, green: 0.6745098039215687, blue: 0.9686274509803922, alpha: 1.0)],
    [#colorLiteral(red: 0.5568627450980392, green: 0.35294117647058826, blue: 0.9686274509803922, alpha: 1.0), #colorLiteral(red: 0.7215686274509804, green: 0.8862745098039215, blue: 0.592156862745098, alpha: 1.0), #colorLiteral(red: 0.27450980392156865, green: 0.48627450980392156, blue: 0.1411764705882353, alpha: 1.0)]
]

let arrayLayout = Layout(colors: colors)
let level = Level(using: arrayLayout)
level.run()

