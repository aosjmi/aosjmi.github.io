---
title: "MSDFを導入する"
date: "2023-08-18"
publishdate: "2023-08-18"
lastmod: "2023-08-18"
draft: false
tags: ["GameMaker","Scribble","font"]
---

---
## できること
- サイズに左右されず、鮮明なフォントを表示させる
---
## 前提
- Scribbleが [https://github.com/JujuAdams/Scribble](https://github.com/JujuAdams/Scribble)
- GameMakerに
- importされている
--- 
## 前提知識
- Scribbleとは
- [MSDFとは](https://github.com/Chlumsky/msdfgen)
---
## 手順
- [Scribble Documentation](https://www.jujuadams.com/Scribble/#/latest/msdf-fonts)
	1. MSDF専用のpngファイルとjsonファイルを出力する
	2. GameMakerに適用させる
---
### 1. MSDF用のpngファイルとjsonファイルを出力する
> ttfとmsdf-atlas-gen.exeで

> MSDF専用のpngファイルとjsonファイルを出力する

- 最初に、下記1~5を同じフォルダに入れる
- [![Image from Gyazo|600](https://i.gyazo.com/ba206db4399a45919d97e18914e32bfd.png)](https://gyazo.com/ba206db4399a45919d97e18914e32bfd)
	1. result(命名自由)(不要)
		- 結果を入れる場所にした
	2. charset.txt
		- 導入する文字を"asdf"のようにして入れる。
		- 半角記号の代入に気を付ける。
		- 半角記号はシングルクォートで囲んで ,'/', このようにまとめる。
		- [charset.txt の例](https://drive.google.com/file/d/1y9-iEL2Zya8tfJUbHAAqklWk7rHaZugF/view?usp=drive_link)
	3. font.ttf(命名自由)
		- TrueTypeFontを使う 
		- otfでは機能しない
	4. Fontmaker.bat(命名自由)
		- 例:
			> msdf-atlas-gen.exe -font font.ttf -size 32 -charset charset.txt -format png -imageout fontNote.png -json fontNote.json -pxrange 8
		- フォントの鮮明さを上げる方法
			- pxrange の値を上げる
			- sizeを上げる

	5. msdf-atlas-gen.exe
		- DL:[Releases · Chlumsky/msdf-atlas-gen](https://github.com/Chlumsky/msdf-atlas-gen/releases)

---

- 次に、batファイルを起動させる。(今回はFontmaker.batをクリックする)
	- 結果、**jsonファイルとpngファイルが出力される。**
		- 上記の例では、fontNote.pngとfontNote.jsonが出力される
- batファイルが正常にしない場合は、下記を見直してください
	- ファイル名
	- フォルダの場所
	- charset.txtの内容
	- batファイルの内容
	- batの動作環境
---
### 2. GameMakerに適用させる
> 1の出力を

> GameMakerに適用させる

1. pngファイルをimportする(fromNoteは任意の命名です)

[![Image from Gyazo|300](https://i.gyazo.com/223f073b4d10116da7cb2c144303e754.png)](https://gyazo.com/223f073b4d10116da7cb2c144303e754)

- spriteを右クリックしてEdit Tagsでscribble msdfを追加する(要scribble import)

[![Image from Gyazo|300](https://i.gyazo.com/373ad87b41e3af980f8f8ed1e189c944.png)](https://gyazo.com/373ad87b41e3af980f8f8ed1e189c944)

2. 次にincluded fileにjsonファイルを入れる

[![Image from Gyazo|100](https://i.gyazo.com/5808773f368bfdc84368894711fa2c82.png)](https://gyazo.com/5808773f368bfdc84368894711fa2c82)

3. 最後にコード上のscribbleで設定する

[![Image from Gyazo|300](https://i.gyazo.com/05286962e49bb01551c7ebac1b71e4b4.png)](https://gyazo.com/05286962e49bb01551c7ebac1b71e4b4)

このようにspriteにタグが作用し、フォントとして機能させます。

[![Image from Gyazo|300](https://i.gyazo.com/bd5834903e895bde034448df16b10696.png)](https://gyazo.com/bd5834903e895bde034448df16b10696)

終了

---
## 参考資料
- [Best-practice-for-msdf-fonts](https://www.jujuadams.com/Scribble/#/latest/msdf-fonts?id=best-practice-for-msdf-fonts)
- [Scribble Documentation- function](https://www.jujuadams.com/Scribble/#/latest/scribble-methods?id=msdf)
