//
//  LEALioalHeader.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/9.
//

import UIKit
protocol LEALioalHeaderDelegate {
    func pureFilserpick(userLEAL:Int)
}
class LEALioalHeader: UICollectionReusableView, UICollectionViewDelegate,UICollectionViewDataSource {
   private lazy var LEALtopartist = UILabel.init()
    
    var pureFilserpick:LEALioalHeaderDelegate?
    
    var pureFilser:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pureFilser.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let velll = collectionView.dequeueReusableCell(withReuseIdentifier: "LEALArtistCarouselCelllori", for: indexPath) as! LEALArtistCarouselCelllori
        let leaddata = pureFilser[indexPath.row]
        if let path =  leaddata["vocalPercussionLor"] as? String{
            velll.LEALAvatarVisualior.LEALVocalVisualSyncColorix(LEALSonicPathlorix: path)
        }
        velll.LEALArtistNamelori.text = leaddata["rhythmicPrecisionRix"] as? String
        
        velll.LEALFollowlori.text = "\(leaddata["articulationPointLor"] as? Int ?? 0) Followers"
        
        velll.LEALFhotolori.text = "0 Photos"
        return velll
    }
    
    lazy var LEALGostrem: UIButton = {
        let LEALGos = UIButton.init()
        LEALGos.setBackgroundImage(UIImage.init(named: "LEALGostrem"), for: .normal)
        LEALGos.translatesAutoresizingMaskIntoConstraints = false
        return LEALGos
    }()
    
    lazy var LEALDashboardViewlori: UICollectionView = {
        let our = UICollectionViewFlowLayout.init()
        our.itemSize = CGSize(width: 256 + 34, height: 160)
        our.minimumInteritemSpacing = 10
        our.scrollDirection = .horizontal
        our.minimumInteritemSpacing = 10
        var selkk = UICollectionView.init(frame: .zero, collectionViewLayout: our)
        selkk = UICollectionView(frame: .zero, collectionViewLayout: our)
        selkk.backgroundColor = UIColor(red: 0.25, green: 0.14, blue: 0.6, alpha: 1)
        selkk.delegate = self
        selkk.dataSource = self
        
        selkk.register(LEALArtistCarouselCelllori.self, forCellWithReuseIdentifier: "LEALArtistCarouselCelllori")

        selkk.translatesAutoresizingMaskIntoConstraints = false
        return selkk
    }()
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(LEALDashboardViewlori)
        self.addSubview(LEALtopartist)
        self.addSubview(LEALGostrem)
        LEALtopartist.text = "🔥Top Artist"
        LEALtopartist.textColor = UIColor.white
        LEALtopartist.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        LEALtopartist.translatesAutoresizingMaskIntoConstraints = false
        
      
        NSLayoutConstraint.activate([
            LEALtopartist.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            LEALtopartist.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            LEALDashboardViewlori.topAnchor.constraint(equalTo: LEALtopartist.bottomAnchor,constant: 7),
            LEALDashboardViewlori.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            LEALDashboardViewlori.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            LEALDashboardViewlori.heightAnchor.constraint(equalToConstant: 160),
            
            LEALGostrem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            LEALGostrem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            LEALGostrem.topAnchor.constraint(equalTo: LEALDashboardViewlori.bottomAnchor, constant: 25),
            LEALGostrem.heightAnchor.constraint(equalToConstant: 90)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let ai = pureFilser[indexPath.row]["airflowControlLor"] as? Int else { return  }
        if pureFilserpick != nil {
            self.pureFilserpick?.pureFilserpick(userLEAL: ai)
        }
    }
}
