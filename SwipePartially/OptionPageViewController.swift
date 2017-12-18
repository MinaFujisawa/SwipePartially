//
//  ContentPageViewController.swift
//  SwipePartially
//
//  Created by MINA FUJISAWA on 2017/12/16.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

import UIKit

class OptionPageViewController: UIPageViewController {
    var options: [Option] = OptionSet.options()
    var optionViews = [UIViewController]()

    // MARK: - View Lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
//        self.delegate = self
        setupViewControllers()
    }
    
    // MARK: Setup
    private func setupViewControllers() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Create pageCollection
        for i in 0..<options.count {
            let optionVC = storyboard.instantiateViewController(withIdentifier: "OptionViewController") as! OptionViewController
            optionVC.option = options[i]
            optionViews.append(optionVC)
        }
        self.setViewControllers([optionViews.first!], direction: .forward, animated: true, completion: nil)
    }

}

// MARK: - UIPageViewControllerDataSource
extension OptionPageViewController: UIPageViewControllerDataSource {

    public func pageViewController(_ pageViewController: UIPageViewController,
                                   viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = optionViews.index(of: viewController), currentIndex > 0 else {
            return nil
        }
        return optionViews[currentIndex - 1]
    }

    public func pageViewController(_ pageViewController: UIPageViewController,
                                   viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let currentIndex = optionViews.index(of: viewController),
            currentIndex < (optionViews.count - 1) else { return nil }
        return optionViews[currentIndex + 1]
    }

    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return optionViews.count
    }

    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
