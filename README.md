# Add-Pull-to-Refresh-in-TableView-or-CollectionView
This Code will add Pull To Refresh Feature in Tableview and CollectionView 

Source :- https://stackoverflow.com/a/43525551/10422074

Pull to refresh is built in iOS. You could do this in swift like

```
@IBOutlet weak var collectionView: UICollectionView!

override func viewDidLoad() {
    super.viewDidLoad()

    let refreshControl = UIRefreshControl()
    refreshControl.addTarget(self, action: #selector(doSomething), for: .valueChanged)

    // this is the replacement of implementing: "collectionView.addSubview(refreshControl)"
    collectionView.refreshControl = refreshControl
}

@objc func doSomething(refreshControl: UIRefreshControl) {
    print("Hello World!")

    // somewhere in your code you might need to call:
    refreshControl.endRefreshing()     //At some point you could end refreshing.
}
