---
title: "Scribbleの簡易的な表示"
date: "2023-08-21"
publishdate: "2023-08-21"
lastmod: "2023-08-21"
draft: false
tags: ["GameMaker","Scribble"]
---


```create
scribble_font_set_default("font名もしくはsprite名の指定");
```

```draw
var _element = scribble("hello,world");

// ここでエフェクトを付与してもよい

_element.draw(x,y);
```
- scribble("hello").draw(x,y)と一体に記述せずに、上記のように分けるとエフェクトを付与しやすくなる。
---

