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
