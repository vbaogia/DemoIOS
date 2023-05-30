//
//  OnBoardingViewController.swift
//  BaoFood
//
//  Created by GiaBao on 04/04/2023.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet{
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1{
                nextBtn.setTitle("Get Started", for: .normal)
            } else {
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      fakeData()
      
    }
    func fakeData(){
        slides = [
         OnboardingSlide(title: "Những món ngon", description: "Bạn sẽ có được những trải nghiệm về món ăn ngon tại Việt Nam", image: UIImage(named: "slide1.png")! ),
         OnboardingSlide(title: "Những đầu bếp giỏi", description: "Các nhà hàng sẽ có những đầu bếp giỏi để phục vụ những thực khách khó tính nhất", image: UIImage(named: "slide2.png")! ),
         OnboardingSlide(title: "Giao hàng nhanh chóng", description: "Với hệ thống giao hàng lớn chúng tôi sẽ mang đến món ăn cho bạn một cách nhanh chóng nhất", image: UIImage(named: "slide3.png")! )
        ]
        pageControl.numberOfPages = slides.count
    }
    

    @IBAction func nextBtnClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1{
//            print("Go to the next page")
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            UserDefaults.standard.hasOnboarded = true
            present(controller, animated: true, completion: nil)
        } else {
            currentPage += 1
            let  indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }

    }
    

}

extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
       
    }
}
