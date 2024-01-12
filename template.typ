// 
// MIT License
// Copyright (c) 2024 AmourAmer
// 
// Template from zjuthesis.tex
// 
// Original file: https://github.com/TheNetAdmin/zjuthesis/zjuthesis.tex
// 

// 
// MIT License
// Copyright (c) 2018 - 2023 Zixuan Wang and Contributors (of https://github.com/TheNetAdmin/zjuthesis/)
// 

#let uthesis(
  Degree: "undergraduate",
  ..args
) = {
  let inputundergraduate(..args) = {
    if Period == "final" {
      // TODO
      //    // Final thesis
      //    // Final part
      //    \newcommand{\undergradcurrstage}{final}
      //    \newrefsection
      //    
      //    \coverstyle
      //    \inputpage{final}{cover}

      //    \prevstyle
      //    \inputpage{final}{previous}
      //    \inputpage{final}{toc}

      //    \bodystyle
      //    \inputpage{final}{cover-part}

      //    \resetpagecounter{}
      //    \inputbody{final/content}
      //    \inputbody{final/post}

      //    \poststyle
      //    \inputpage{final}{post}

      //    // Proposal part
      //    \renewcommand{\undergradcurrstage}{proposal}
      //    \newrefsection

      //    \coverstyle
      //    \inputpage{proposal}{cover-part}
      //    \inputpage{proposal}{cover}
      //    \inputpage{proposal}{previous}
      //    
      //    \bodystyle
      //    \inputbody{proposal/content}

      //    \poststyle
      //    \inputpage{proposal}{post}
    }

      if Period == "proposal" {
      // TODO
      //    // Thesis proposal
      //    \newcommand{\undergradcurrstage}{proposal}

      //    \coverstyle
      //    \inputpage{proposal}{cover}
      //
      //    // 'proposal' previous part uses 'empty' page style,
      //    // as shown in cs undergrad template.
      //    \inputpage{proposal}{previous}
      //    
      //    \prevstyle
      //    \inputpage{proposal}{toc}
      //
      //    \bodystyle
      //    \inputbody{proposal/content}
      //    
      //    \poststyle
      //    \inputpage{proposal}{post}
      }

// TODO
//    \ifthenelse{\equal{\Period}{paper}}
//    {
//        // paper only part
//        \newcommand{\undergradcurrstage}{paper}
//        \newrefsection
//        
//        \coverstyle
//        \inputpage{final}{cover}
//
//        \prevstyle
//        \inputpage{final}{previous}
//        \inputpage{final}{toc}
//
//        \bodystyle
//        \inputpage{final}{cover-part}
//        \cleardoublepage
//        
//        \inputbody{final/content}
//        \inputbody{final/post}
//
//        \poststyle
//        \inputpage{final}{post}
//    }
  }
    
  let inputgraduate(..args) = {}

  () => if Degree == "undergraduate" {
    [DEBUG X]
    // inputundergraduate(..args)
  } else {
    [DEBUG Y]
    inputgraduate(..args)
    // TODO
    // \inputgraduate{}
  }
}
