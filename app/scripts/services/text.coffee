'use strict'

angular.module('oakApp')
  .service 'Text', () ->
    get: ->
      lines = [
        {
          id: 1,
          text: 'With as many neurons in our brains',
          scene: 1,
          line: 1,
          sequence: 1
        },{
          id: 2,
          text: 'as stars in the sky',
          scene: 1,
          line: 1,
          sequence: 2
        },{
          id: 3,
          text: 'And synapses exploding each second',
          scene: 1,
          line: 2,
          sequence: 1
        },{
          id: 4,
          text: 'like so much lightning in every single early summer.',
          scene: 1,
          line: 2,
          sequence: 2
        },{
          id: 5,
          text: 'I begin to wrap my own exploding brain',
          scene: 1,
          line: 3,
          sequence: 1
        },{
          id: 6,
          text: 'around an infinitesimally simple understanding of',
          scene: 1,
          line: 3,
          sequence: 2
        },{
          id: 7,
          text: 'What all of this is',
          scene: 1,
          line: 4,
          sequence: 1
        },{
          id: 8,
          text: 'And my place among it.',
          scene: 1,
          line: 5,
          sequence: 1
        },{
          id: 9,
          text: 'But only just.',
          scene: 1,
          line: 6,
          sequence: 1
        },{
          id: 10,
          text: 'And what of it?',
          scene: 1,
          line: 7,
          sequence: 1
        },{
          id: 11,
          text: 'If i am nothing more than vapor and dust',
          scene: 2,
          line: 1,
          sequence: 1
        },{
          id: 12,
          text: 'that was once',
          scene: 2,
          line: 2,
          sequence: 1
        },{
          id: 13,
          text: 'a rock,',
          scene: 2,
          line: 3,
          sequence: 1
        },{
          id: 14,
          text: 'A tree,',
          scene: 2,
          line: 4,
          sequence: 1,
        },{
          id: 15,
          text: 'an ocean',
          scene: 2,
          line: 5,
          sequence: 1
        },{
          id: 16,
          text: 'A star.',
          scene: 2,
          line: 6,
          sequence: 1
        },{
          id: 17,
          text: 'that just so happens',
          scene: 3 ,
          line: 1,
          sequence: 1
        },{
          id: 18,
          text: 'to be arranged',
          scene: 3 ,
          line: 1,
          sequence: 2
        },{
          id: 19,
          text: 'just so',
          scene: 3,
          line: 1,
          sequence: 3
        },{
          id: 20,
          text: 'right here,',
          scene: 3,
          line: 1,
          sequence: 4
        },{
          id: 21,
          text: 'right now.',
          scene: 3,
          line: 1,
          sequence: 5
        },{
          id: 22,
          text: 'Do any of my actions even matter?',
          scene: 4,
          line: 1,
          sequence: 1
        },{
          id: 23,
          text: 'Does any of my matter even matter?',
          scene: 4,
          line: 2,
          sequence: 1
        },{
          id: 24,
          text: 'Slowly backing from the edge of infinity',
          scene: 5,
          line: 1,
          sequence: 1
        },{
          id: 25,
          text: 'I can now see that',
          scene: 5,
          line: 2,
          sequence: 1
        },{
          id: 26,
          text: 'everything that has been',
          scene: 5,
          line: 3,
          sequence: 1
        },{
          id: 27,
          text: 'important to me and every other',
          scene: 5,
          line: 4,
          sequence: 1
        },{
          id: 28,
          text: 'person that has ever been',
          scene: 5,
          line: 5,
          sequence: 1
        },{
          id: 28,
          text: 'has happened within within an atomic dream',
          scene: 6,
          line: 1,
          sequence: 1
        },{
          id: 29,
          text: 'upon a speck of dust',
          scene: 6,
          line: 2,
          sequence: 1
        },{
          id: 30,
          text: 'on the edge of history',
          scene: 6,
          line: 3,
          sequence: 1
        },{
          id: 31,
          text: 'spinning slowly through eternity',
          scene: 6,
          line: 4,
          sequence: 1
        },{
          id: 32,
          text: 'And while dancing,',
          scene: 7,
          line: 1,
          sequence: 1
        },{
          id: 33,
          text: 'held so tightly by our partner, Gravity',
          scene: 7,
          line: 1,
          sequence: 2
        },{
          id: 34,
          text: 'Clearer than ever before,',
          scene: 7,
          line: 2,
          sequence: 1
        },{
          id: 35,
          text: '(my) Matter is something',
          scene: 7,
          line: 3,
          sequence: 1
        },{
          id: 36,
          text: 'and it does (matter)',
          scene: 7,
          line: 3,
          sequence: 2
        },{
          id: 37,
          text: 'I am a happenstance arrangement',
          scene: 7,
          line: 4,
          sequence: 1
        },{
          id: 38,
          text: 'same as everything before me was',
          scene: 7,
          line: 4,
          sequence: 2
        },{
          id: 39,
          text: 'So if I am nothing more',
          scene: 8,
          line: 1,
          sequence: 1
        },{
          id: 40,
          text: 'than vapor and dust',
          scene: 8,
          line: 1,
          sequence: 2
        },{
          id: 41,
          text: 'before this lightning stops',
          scene: 8,
          line: 2,
          sequence: 1
        },{
          id: 42,
          text: 'I will be sure that I was',
          scene: 8,
          line: 2,
          sequence: 2
        },{
          id: 43,
          text: 'the best dust I could have ever been',
          scene: 8,
          line: 3,
          sequence: 1
        },{
          id: 44,
          text: 'until I am a mighty tree once again',
          scene: 8,
          line: 4,
          sequence: 1
        }
      ]
      lines      
