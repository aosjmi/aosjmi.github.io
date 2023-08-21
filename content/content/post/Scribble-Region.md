---
title: "Regionサンプル集"
date: "2023-08-21"
publishdate: "2023-08-21"
lastmod: "2023-08-21"
draft: false
tags: ["GameMaker","Scribble","text"]
---

## 前提
- Scribble.yypを開ける
- `SCRIBBLE_ALLOW_GLYPH_DATA_GETTER` を`true`にする

---
## ファイル構成
- Test Cases
	- Regions
		- ☆obj_test_regions
		- obj_test_region_line_height
		- obj_test_region_msdf
		- obj_test_region_pages
		- obj_test_region_transform

---
## obj_test_regions

```draw
//draw
//1.テキストの表示
var _element = scribble("Here is a [region,region 1]region\nto test[/region] this [region,region 2]feature.");
_element.draw(10, 10);

//2.当たり判定の設定
var _region = _element.region_detect(10, 10, mouse_x, mouse_y);
_element.region_set_active(_region, c_red, 0.5);

//3.当たり判定が返す値の表示
draw_set_font(scribble_fallback_font);
draw_text(10, 50, _region);
```
---
## ドキュメント
- [`.region_detect(elementX, elementY, pointerX, pointerY)`](https://www.jujuadams.com/Scribble/#/latest/scribble-methods?id=region_detectelementx-elementy-pointerx-pointery)
- [`.region_set_active(name, colour, blendAmount)`](https://www.jujuadams.com/Scribble/#/latest/scribble-methods?id=region_set_activename-colour-blendamount)

---
## 1.テキストの表示
```draw
var _element = scribble("Here is a [region,region 1]region\nto test[/region] this [region,region 2]feature.");
_element.draw(10, 10); //表示する
```

- テキスト単体は「Here is a region to test this feature.」
	- これに`\n`の改行を加えた表示になる。

- `[region,<name>]`,` [/region]`
	- 挟まれたテキストがクリック可能になる。 
	- `<name>`がホバーしたときに返すテキスト

--- 

## 2.当たり判定の設定
```draw
var _region = _element.region_detect(10, 10, mouse_x, mouse_y);
_element.region_set_active(_region, c_red, 0.5);
```

- [`.region_detect(elementX, elementY, pointerX, pointerY)`](https://www.jujuadams.com/Scribble/#/latest/scribble-methods?id=region_detectelementx-elementy-pointerx-pointery)
 - .region_detect(当たり判定のX座標, 当たり判定のY座標, カーソルのX座標, カーソルのY座標)
	 - こうするとカーソルがテキストに**ホバーするとnameを返す**

- `_element.region_set_active(<name>, <colour>, <blendAmount>)`
	- 当たり判定(`_region `)ではなく、テキスト(`_element `)につく
	- `<name>`
		- `_region`の**name**と同じregionが` <colour>`と`<blendAmount>`の影響を受ける
	- ` <colour>`,`<blendAmount>`
		- 色と透明度
---

## 3.

```draw
draw_set_font(scribble_fallback_font);//フォントの指定

draw_text(10, 50, _region);
```

- draw_text(10, 50, `_region`);
	- ホバーされていない
		- undifinedを返す
		- [![Image from Gyazo](https://i.gyazo.com/9693dbc6df5c213f71607958fddfb6ea.png)](https://gyazo.com/9693dbc6df5c213f71607958fddfb6ea)
	- ホバーされている
		- `[region,<name>]`,` [/region]`のnameが表示される。
		- [![Image from Gyazo](https://i.gyazo.com/e7fbd0b6622a45d026f3cc8ee2e9d2c2.png)](https://gyazo.com/e7fbd0b6622a45d026f3cc8ee2e9d2c2)
		- スクショの影響でカーソルは見えないがホバーしてます。
---
表記が荒れてる！


