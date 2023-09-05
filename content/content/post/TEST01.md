---
title: "SyntaxHighlightのテスト"
date: "2023-09-04"
publishdate: "2023-09-04"
lastmod: "2023-09-04"
draft: false
tags: ["テスト"]
---
---
- シンタックスハイライトの確認
- 内容はダイクストラ法のつもりらしい
- コピーできるボタンが実装されている↓
```gamemakerlanguage
s =argument0
function Dijkstra(s){
/*-----宣言------------------------------------------------------------------------*/
	var g = oGameControl.map01;		//node,edge
	var T = ds_list_create();		//最短経路木T
	var que = ds_priority_create();	//優先キュー
	var dist = [];					//最短距離
	var parent1 = [];				//親ノード
/*-----初期設定------------------------------------------------------------------------*/
	for (var v = 0;v < array_length(g.node);v++) {
		dist[v] = INF;//INF=99999
		parent1[v] = -1;
	}
	ds_list_clear(T)				//Tを空にする
	dist[s] = 0;
	ds_priority_add(que,[0,s],0);	//(0,s)を代入する
/*------Dijkstra-----------------------------------------------------------------------*/  
	while (0 < ds_priority_size(que))  {
	    var q = ds_priority_delete_min(que)
	    var cost = q[0] 
	    var u = q[1]
    if (dist[u] < cost) continue;
    ds_list_add(T,u);
/*--------------------------------------------------------------------------------------*/
    for (var i = 0 ;i<array_length(g.edge[u]);i++){
		var v = g.node[i].vertex_id;
		if (0 < g.edge[u][i]){
			var newDist = (cost + g.edge[u][i]);//辺の重さ
			if (dist[v] > newDist){
		        dist[v] = newDist;
				 parent1[v] = u;					//再構築のための配列
		        ds_priority_add(que, [newDist, v], newDist);
			}
		}
	}
 }
/*----削除-------------------------------------------------------------------------*/  
  ds_priority_destroy(que);
  ds_list_destroy(T);
  return {dist: dist, parent1: parent1};
}
```
---
- 「意匠には無限に時間が掛かる」と以前のブログ101に書かれてたけど、真実だった
- アウトラインの
	- 見やすさも
		- 実装
			- しま
				- した
- 前の記事と矛盾してしまうが、目次を作って、そこを埋めていく方針にした
- i.e.
	- 記事を作るために記事を作ります(最悪)
---



