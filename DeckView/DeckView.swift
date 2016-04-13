//
//  DeckView.swift
//  DeckView
//
//  Created by Alexander Besson on 2016-04-12.
//  Copyright © 2016 Alexander Besson. All rights reserved.
//

import UIKit

class DeckView: UIView {
    
    private var visibleCards = [UIView]()
    var currentCard = UIView()
    
    var numberOfVisibleCards = 0
    var cardIndex = 0
    
    private var _cardsSwipedLeft = [UIView]()
    private var _cardsSwipedRight = [UIView]()
    
    var delegate: DeckViewDelegate?
    
    private func setUpInitialCards() {
        
        if let del = delegate {
            
            numberOfVisibleCards = del.numberOfVisibleCardsInDeck(self)
            
            for _ in 0..<numberOfVisibleCards {
                
                addNewCardToBottomOfDeck()
            }

        }
        
    }
    
    private func addNewCardToBottomOfDeck() {
        
        if let del = delegate {
            let card = del.deckView(self, viewForCardAtIndex: cardIndex)
            visibleCards.insert(card, atIndex: 0)
            cardIndex += 1
        }
        
    }
}
