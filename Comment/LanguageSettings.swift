//
//  CommentChooser.swift
//  Comment
//
//  Created by Pouya Kary on 6/5/15.
//  Copyright (c) 2015 Pouya Kary. All rights reserved.
//

import Foundation

/* ───────────────────────────────────────────────────────────────────────────────────────── *
 * ::::::::::::::::::::::::::: L A N G U A G E   S E T T I N G S ::::::::::::::::::::::::::: *
 * ───────────────────────────────────────────────────────────────────────────────────────── */

struct LanguageSettings {
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
        let MultiLineCommentStart: String
        let MultiLineCommentEnd: String
        let MultiLineCommentMidLineStart: String
        let MultiLineCommentMidLineEnd: String
        let InlineComment: String
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
    
        init (MultiLineCommentStart: String,
                MultiLineCommentEnd: String,
       MultiLineCommentMidLineStart: String,
         MultiLineCommentMidLineEnd: String,
                      InlineComment: String) {
        
            self.MultiLineCommentStart = MultiLineCommentStart
            self.MultiLineCommentEnd = MultiLineCommentEnd
            self.MultiLineCommentMidLineStart = MultiLineCommentMidLineStart
            self.MultiLineCommentMidLineEnd = MultiLineCommentMidLineEnd
            self.InlineComment = InlineComment
            
        }
    
    // ─────────────────────────────────────────────────────────────────────────────────────────────
}