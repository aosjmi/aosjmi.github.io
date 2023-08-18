---
title: "マニュアル"
date: "2023-08-17"
publishdate: "2023-08-17"
lastmod: "2023-08-17"
draft: false
tags: ["GameMaker","Scribble"]
---
## ＃はじめに

<a href="https://manual.yoyogames.com/">GMS のマニュアル</a>は使いにくい。

理由は 4 つ

<ul>
<li>マニュアルが編集しにくい</li>
<li>英語版以外の訳が杜撰</li>
<li>読みにくいデザイン</li>
<li>読みにくい構造</li>
</ul>

これらをマシにする方法を考えたので共有します。

## ＃ダウンロード(Win)

GameMaker の関数は膨大な数あるので、マニュアルを追記してまとめた方がいちから作るより楽です。だがブラウザでは編集できない。

よってマニュアルを自分で編集するためにローカルに落とそう。
ブラウザから html として保存する方法ではローカルでマニュアルが上手く動かないため、GMS のフォルダにある圧縮されたマニュアルを解凍する方法をとる。

<blockquote>C:\ProgramData\GameMakerStudio2\Manual\GMS2-Robohelp-en.zip</blockquote>

このパスに置かれた GMS2-Robohelp-en.zip を解凍する。(要バックアップ)

次にこれをダウンロードする。
<a href="/GMSmanual.zip" download="smple.zip">GMSmanual.zip/download</a>

内容は index.htm,default.css,layout.css の 3 つのファイルです。

これらを解凍した GMS2-Robohelp-en の内部にある同じ名前のファイルに置き換えます。(要バックアップ)

それぞれのパスはこちら

<blockquote>"\GMS2-Robohelp-en\index.htm"</blockquote>
<br>
<blockquote>"\GMS2-Robohelp-en\assets\css\default.css"</blockquote>
<br>
<blockquote>"\GMS2-Robohelp-en\template\Charcoal_Grey\layout.css"</blockquote>

index.htm を展開すればマニュアル全体の確認ができます。

問題なく表示されて、なおかつデザインが変更されていれば成功です。後は置き換えた GMS2-Robohelp-en を再び圧縮して先ほどのパスに置けば完了です。<blockquote>C:\ProgramData\GameMakerStudio2\Manual\GMS2-Robohelp-en.zip</blockquote>

それでもデザインが気に食わない場合はローカルでデべロッパーツールで確認しながらファイルに直接手を加えてください。フォルダーはマニュアルの表示と同じ構成なので、記事と同名のファイルを編集,追記すれば自分用のマニュアルを作ることができます。ツールの F1 の機能も継続して使えます。F1 は積極的に使おう。

## ＃追記

全ての html の構造を変えたい場合は<a href="https://textss.sakura.ne.jp/download.html">textSS</a>を使ってフォルダ内の全ての html を編集すると簡単です。(要バックアップ)
