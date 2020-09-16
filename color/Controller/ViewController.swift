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
    return variables.w.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCellGame = collectionView.dequeueReusableCell(withReuseIdentifier: "GameCell", for: indexPath) as? GameViewCell {
            
            
            let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
            layout?.minimumLineSpacing = 0
            layout?.minimumInteritemSpacing = 0
            
            layout!.itemSize.width = CGFloat(variables.w[indexPath.row])
            layout!.itemSize.height = CGFloat(variables.h[indexPath.row])
            
            let redColor = 0
            let greenColor = variables.colorArray[indexPath.row]
            let blueColor = 1
            let color = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)

            itemCellGame.layer.backgroundColor = color.cgColor
            

    
            return itemCellGame
        }
        return GameViewCell()
    }
    
    //------------------------------------------------------//
    //Действие при тапе по ячейке
    //------------------------------------------------------//

    func collectionView (_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {

        var tap = indexPath.row
        
        if variables.colorTapEnd == [] {
            variables.colorTapEnd.append(variables.colorArray[indexPath.row])
            variables.colorTapEnd.append(Float(indexPath.row))
        } else if variables.colorTapStart == [] {
            variables.colorTapStart.append(variables.colorTapEnd[0])
            variables.colorTapStart.append(variables.colorTapEnd[1])
            variables.colorTapEnd[0] = variables.colorArray[indexPath.row]
            variables.colorTapEnd[1] = Float(indexPath.row)
            if variables.colorTapEnd[0] == variables.colorTapStart[0] &&  variables.colorTapEnd[1] != variables.colorTapStart[1] {
                changeColorArray()
            }
        } else if variables.colorTapStart != [] {
            variables.colorTapStart[0] = variables.colorTapEnd[0]
            variables.colorTapStart[1] = variables.colorTapEnd[1]
            variables.colorTapEnd[0] = variables.colorArray[indexPath.row]
            variables.colorTapEnd[1] = Float(indexPath.row)
            if variables.colorTapEnd[0] == variables.colorTapStart[0] &&  variables.colorTapEnd[1] != variables.colorTapStart[1] {
                changeColorArray()
            }
        }
        
        collectionView.reloadData()
        
        
        print("Текущая: ", variables.colorTapEnd, " Предыдущая: ", variables.colorTapStart)

        

    }
    
}
