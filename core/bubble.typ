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
  avatar-style: (:),
  box-style: (:),
  body,
) = {
  let box-style = merge-settings(box-style, (
    stroke: (thickness: 2pt, paint: luma(15%)),
    inset: 5pt,
    radius: 5pt,
  ))
  let name-style = merge-settings(name-style, (
    size: .8em,
  ))
  let avatar-style = merge-settings(avatar-style, (
    width: 3em,
  ))

  let maybe-do(test, op) = body => if test { op(body) } else { body }
  set stack(spacing: 4pt)

  // Add avatar (if any) next to the rest
  show: maybe-do(avatar != none, it => {
    stack(
      dir: if alignment == left { ltr } else { rtl },
      box(..avatar-style, align(center, avatar)),
      it,
    )
  })

  // Add name (if any) above the body
  show: maybe-do(name != none, it => box(
    stack(
      dir: ttb,
      text(..name-style, name),
      it,
    ),
  ))

  bubble-box(box-style, body)
}
