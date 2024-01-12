//
// MIT License
// Copyright (c) 2023 OrangeX4
//

// 双下划线
#let double-underline(body) = style(styles => {
  let size = measure(body, styles)
  stack(
    body,
    v(4pt),
    line(length: size.width),
    v(2pt),
    line(length: size.width),
  )
})