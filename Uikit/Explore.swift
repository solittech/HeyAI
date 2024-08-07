import UIKit

class PortfolioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        // Equity and Bond Funds Comparison
        let equityLabel = UILabel()
        equityLabel.text = "Equity fund"
        equityLabel.textColor = .green
        
        let equityPercentage = UILabel()
        equityPercentage.text = "60%"
        
        let bondLabel = UILabel()
        bondLabel.text = "Bond fund"
        bondLabel.textColor = .brown
        
        let bondPercentage = UILabel()
        bondPercentage.text = "40%"
        
        let referenceLabel = UILabel()
        referenceLabel.text = "Reference"
        referenceLabel.font = .boldSystemFont(ofSize: 16)
        
        let equityReferencePercentage = UILabel()
        equityReferencePercentage.text = "40%"
        
        let bondReferencePercentage = UILabel()
        bondReferencePercentage.text = "60%"
        
        let comparisonStackView = UIStackView(arrangedSubviews: [equityLabel, equityPercentage, bondLabel, bondPercentage, referenceLabel, equityReferencePercentage, bondReferencePercentage])
        comparisonStackView.axis = .horizontal
        comparisonStackView.distribution = .equalSpacing
        comparisonStackView.spacing = 10
        comparisonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(comparisonStackView)
        
        // Bond Fund Underweight Section
        let bondFundStatusLabel = UILabel()
        bondFundStatusLabel.text = "Your Bond fund is underweighting"
        bondFundStatusLabel.font = .systemFont(ofSize: 16)
        bondFundStatusLabel.textColor = .systemRed
        bondFundStatusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Market Insight
        let marketInsightLabel = UILabel()
        marketInsightLabel.text = "Market Insight: Bonds"
        marketInsightLabel.font = .boldSystemFont(ofSize: 16)
        marketInsightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let marketInsightTextView = UITextView()
        marketInsightTextView.text = "Federal Reserve Chairman Powell indicated that US inflation is receding and the job market is slowing..."
        marketInsightTextView.isEditable = false
        marketInsightTextView.backgroundColor = .clear
        marketInsightTextView.translatesAutoresizingMaskIntoConstraints = false
        
        let viewMoreButton = UIButton(type: .system)
        viewMoreButton.setTitle("View more", for: .normal)
        viewMoreButton.translatesAutoresizingMaskIntoConstraints = false
        
        let exploreBondFundsButton = UIButton(type: .system)
        exploreBondFundsButton.setTitle("Explore Bond Funds", for: .normal)
        exploreBondFundsButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bondFundStatusLabel)
        view.addSubview(marketInsightLabel)
        view.addSubview(marketInsightTextView)
        view.addSubview(viewMoreButton)
        view.addSubview(exploreBondFundsButton)
        
        // Portfolio Information
        let portfolioInfoLabel = UILabel()
        portfolioInfoLabel.text = """
        Your portfolio consists all assets under investment fund, SimplyFund and Investment financing account.
        Both yours and reference portfolio does not include ...
        """
        portfolioInfoLabel.numberOfLines = 0
        portfolioInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(portfolioInfoLabel)
        
        // Constraints
        NSLayoutConstraint.activate([
            comparisonStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            comparisonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            comparisonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            bondFundStatusLabel.topAnchor.constraint(equalTo: comparisonStackView.bottomAnchor, constant: 20),
            bondFundStatusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            marketInsightLabel.topAnchor.constraint(equalTo: bondFundStatusLabel.bottomAnchor, constant: 20),
            marketInsightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            marketInsightTextView.topAnchor.constraint(equalTo: marketInsightLabel.bottomAnchor, constant: 10),
            marketInsightTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            marketInsightTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            marketInsightTextView.heightAnchor.constraint(equalToConstant: 80),
            
            viewMoreButton.topAnchor.constraint(equalTo: marketInsightTextView.bottomAnchor, constant: 5),
            viewMoreButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            exploreBondFundsButton.topAnchor.constraint(equalTo: viewMoreButton.bottomAnchor, constant: 10),
            exploreBondFundsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            portfolioInfoLabel.topAnchor.constraint(equalTo: exploreBondFundsButton.bottomAnchor, constant: 20),
            portfolioInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            portfolioInfoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}