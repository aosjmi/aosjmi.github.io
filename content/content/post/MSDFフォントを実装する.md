---
title: "MSDFフォントを実装する"
date: "2023-08-18"
publishdate: "2023-08-18"
lastmod: "2023-08-18"
draft: false
tags: ["GameMaker","Scribble"]
---

## 前提
- scribbleのパッケージがGMSにimportされている
- そのマニュアルを見たことがある。
### 理由
- 大きさによって解像度がマシになるフォントを実現したい場合
必読[Scribble Documentation](https://www.jujuadams.com/Scribble/#/latest/msdf-fonts)
[![Image from Gyazo|600](https://i.gyazo.com/ba206db4399a45919d97e18914e32bfd.png)](https://gyazo.com/ba206db4399a45919d97e18914e32bfd)
- result(命名自由)(不要)
	- 結果を入れる場所にした
- charset.txt
	- 導入する文字を"asdf"みたいに入れる。半角記号の代入に気を付ける。
	- [[charset.txt の例]]
>"ABCDEFGHIJKLMN"みたいに

- font.ttf(命名自由)
	- TrueTypeFontを使う 
	- otfでは機能しない
- Fontmaker.bat(命名自由)
> msdf-atlas-gen.exe -font font.ttf -size 32 -charset charset.txt -format png -imageout fontNote.png -json fontNote.json -pxrange 8
- フォントの鮮明さを上げる方法
	- pxrange の値を上げる
	- sizeを上げる
- msdf-atlas-gen.exe
	- ここでDLできる
		- [Releases · Chlumsky/msdf-atlas-gen](https://github.com/Chlumsky/msdf-atlas-gen/releases)

>上記を同じフォルダに入れてbatファイルを起動する。
>**jsonファイルとpngファイルが生成されます。**

- 起動しない場合はcharset.txtの内容やファイル名を見直す。

1. 次にpngをimportする(fromNoteは任意の命名です)
[![Image from Gyazo|500](https://i.gyazo.com/223f073b4d10116da7cb2c144303e754.png)](https://gyazo.com/223f073b4d10116da7cb2c144303e754)
spriteを右クリックしてEdit Tagsでscribble msdfを追加する(要scribble import)
[![Image from Gyazo|500](https://i.gyazo.com/373ad87b41e3af980f8f8ed1e189c944.png)](https://gyazo.com/373ad87b41e3af980f8f8ed1e189c944)
2. 次にincluded fileにjsonファイルを入れる
[![Image from Gyazo|300](https://i.gyazo.com/5808773f368bfdc84368894711fa2c82.png)](https://gyazo.com/5808773f368bfdc84368894711fa2c82)
3. 最後にコード上のscribbleで設定する
[![Image from Gyazo|500](https://i.gyazo.com/05286962e49bb01551c7ebac1b71e4b4.png)](https://gyazo.com/05286962e49bb01551c7ebac1b71e4b4)
spriteを指定すればタグ入れられたことが作用してパッケージがフォントとして機能させます。
[![Image from Gyazo|600](https://i.gyazo.com/bd5834903e895bde034448df16b10696.png)](https://gyazo.com/bd5834903e895bde034448df16b10696)
**完成**
## 参考資料
- [Best-practice-for-msdf-fonts](https://www.jujuadams.com/Scribble/#/latest/msdf-fonts?id=best-practice-for-msdf-fonts)
- [Scribble Documentation- function](https://www.jujuadams.com/Scribble/#/latest/scribble-methods?id=msdf)
