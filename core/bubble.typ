#import "core.typ": merge-settings

#let bubble-box(box-style, body) = {
  box(
    ..box-style,
    body,
  )
}

#let bubble(
  name: none,
  avatar: none,
  alignment: left,
  name-style: (:),
  box-style: (:),
  body,
) = {
  let default-box-style = (
    stroke: (thickness: 2pt, paint: luma(15%)),
    inset: 5pt,
    radius: 5pt,
  )
  let computed-box-style = merge-settings(box-style, default-box-style)

  let default-name-style = (
    size: .8em,
  )
  let computed-name-style = merge-settings(name-style, default-name-style)

  let maybe-do(test, op) = body => if test { op(body) } else { body }
  set stack(spacing: 4pt)

  // Add avatar (if any) next to the rest
  show: maybe-do(avatar != none, it => {
    stack(
      dir: if alignment == left { ltr } else { rtl },
      avatar,
      it,
    )
  })

  // Add name (if any) above the body
  show: maybe-do(name != none, it => box(
    stack(
      dir: ttb,
      text(..computed-name-style, name),
      it,
    ),
  ))

  bubble-box(computed-box-style, body)
}
