import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewGame.dataSource = self
        collectionViewGame.delegate = self
    }

    
    
    @IBOutlet weak var collectionViewGame: UICollectionView!
    
    
    
    

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCellGame = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCell", for: indexPath) as? GameViewCell {
            
            
            let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
            layout?.minimumLineSpacing = 0
            layout?.minimumInteritemSpacing = 0
            
            layout!.itemSize.width = 75
            layout!.itemSize.height = 75

            
            if variables.ArrayColor[indexPath.row] == 0 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 1 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 2 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 3 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 4 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 5 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 6 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
            } else if variables.ArrayColor[indexPath.row] == 7 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            } else if  variables.ArrayColor[indexPath.row] == 8 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            } else if  variables.ArrayColor[indexPath.row] == 9 {
                itemCellGame.layer.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            }
            
           
            
            return itemCellGame
        }
        return GameViewCell()
    }
    
    
    
}
