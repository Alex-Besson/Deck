//
//  DeckViewDelegate.swift
//  DeckView
//
//  Created by Alexander Besson on 2016-04-12.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

@objc protocol DeckViewDelegate {
    
    func numberOfVisibleCardsInDeck(deckView: DeckView) -> Int
    
    func deckView(deckView: DeckView, viewForCardAtIndex index: Int) -> UIView
    
    func deckView(deckView: DeckView, swipedCardRightForIndex index: Int)
    
    func deckView(deckView: DeckView, swipedCardLeftForIndex index: Int)
    
    optional func deckView(deckView: DeckView, pickedUpCardAtIndex index: Int)
    
    optional func deckView(deckView: DeckView, putDownCardAtIndex index: Int)
    
    optional func deckView(deckView: DeckView, releasedPickedUpCardAtIndex index: Int)
}