import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Call the function to generate and display a random number
        let randomNumber = getRandomNumber()
        print("Random number: \(randomNumber)")
        displayRandomNumber(randomNumber)
    }

    // Function to generate a random number between 1 and 5
    func getRandomNumber() -> Int {
        return Int.random(in: 1...5)
    }

    // Function to display the random number on the screen
    func displayRandomNumber(_ number: Int) {
        let label = UILabel()
        label.text = "Random Number: \(number)"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        // Center the label in the view
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
