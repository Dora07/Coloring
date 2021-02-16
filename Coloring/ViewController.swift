
import UIKit

class ViewController: UIViewController
{
    //叮噹後面填色背景
    @IBOutlet weak var Brother: UIImageView!
    //叮鈴後面填色背景
    @IBOutlet weak var Sister: UIImageView!
    //Slider
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var AlphaSlider: UISlider!
    //Label
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var AlphaLabel: UILabel!
    //SegmentedControl
    @IBOutlet weak var Choose: UISegmentedControl!
    //Button
    @IBOutlet weak var ClearButton: UIButton!
    @IBOutlet weak var RandomButton: UIButton!
    
    //假設有一個topView來著色
    var topView = UIImageView(frame: CGRect(x:0, y:0, width:50, height:50))
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //著色小叮噹
        Brother.backgroundColor = UIColor(red: CGFloat(RedSlider.value), green: CGFloat(GreenSlider.value), blue: CGFloat(BlueSlider.value), alpha: CGFloat(AlphaSlider.value))
        //著色小叮鈴
        Sister.backgroundColor = UIColor(red: CGFloat(RedSlider.value), green: CGFloat(GreenSlider.value), blue: CGFloat(BlueSlider.value), alpha: CGFloat(AlphaSlider.value))
  
        //初始為著色小叮噹
        topView = Brother
    }


    @IBAction func ChangeAction(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
          topView = Brother
            
        }
        if sender.selectedSegmentIndex == 1 {
            topView = Sister
        }
        
    }
    
    @IBAction func SliderAction(_ sender: UISlider)
    {
        topView.backgroundColor = UIColor(red: CGFloat(RedSlider.value), green: CGFloat(GreenSlider.value), blue: CGFloat(BlueSlider.value), alpha: CGFloat(AlphaSlider.value))
        
        RedLabel.text =  String(format: "%.0f", RedSlider.value * 255)
        BlueLabel.text = String(format: "%.0f", BlueSlider.value * 255)
        GreenLabel.text = String(format: "%.0f", GreenSlider.value * 255)
        AlphaLabel.text = String(format: "%.0f", AlphaSlider.value * 1)
        
    }
    //全部清除
    @IBAction func ClearAction(_ sender: UIButton)
    {
        RedSlider.value = 0
        GreenSlider.value = 0
        BlueSlider.value = 0
        AlphaSlider.value = 0
        topView.backgroundColor = UIColor(red: CGFloat(RedSlider.value), green: CGFloat(GreenSlider.value), blue: CGFloat(BlueSlider.value), alpha: CGFloat(AlphaSlider.value))
        
        
        RedLabel.text = "000"
        BlueLabel.text = "000"
        GreenLabel.text = "000"
        AlphaLabel.text = "000"
    }
    //隨機按鈕
    @IBAction func RandomAction(_ sender: UIButton)
    { RedSlider.value = Float.random(in: 0...1)
        GreenSlider.value = Float.random(in: 0...1)
        BlueSlider.value = Float.random(in: 0...1)
        AlphaSlider.value = Float.random(in: 0...1)
        topView.backgroundColor = UIColor(red: CGFloat(RedSlider.value), green: CGFloat(GreenSlider.value), blue: CGFloat(BlueSlider.value), alpha: CGFloat(AlphaSlider.value))
        RedLabel.text =  String(format: "%.0f", RedSlider.value * 255)
        BlueLabel.text = String(format: "%.0f", BlueSlider.value * 255)
        GreenLabel.text = String(format: "%.0f", GreenSlider.value * 255)
        AlphaLabel.text = String(format: "%.0f", AlphaSlider.value * 1)
        
    }
    
    
    
    
    
    
    
    
}

