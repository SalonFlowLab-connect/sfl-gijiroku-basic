# 議事録（基本版）

Lark Minutes（妙記）のURLを貼るだけで、次の形の議事録をLark Docで作るスキルです。Claude Code と Codex のどちらでも使えます。

- 1枚サマリー（Larkの画板。画像生成が使える人は手描き風も選べる）
- ✅ 決定事項（1決定＝1つの緑の箱）
- ToDo（担当・内容・期限の表）
- 図解・チャート（効く会議だけ。数字は文字起こしに出たものだけ使う）
- 次のステップのフロー図（毎回）

自動で見張ったり、通知カードを出したりする仕組みは入っていません。使いたいときにURLを貼る形です。

## 必要なもの

- lark-cli（`npm install -g @larksuite/cli`）が入っていて、自分のアカウントでログイン済みであること
- Claude Code または Codex

## 入れ方

```bash
git clone https://github.com/SalonFlowLab-connect/sfl-gijiroku-basic.git
cd sfl-gijiroku-basic
./install.sh
```

`~/.claude/skills/` と `~/.codex/skills/` のうち、ある方に `gijiroku-basic` が入ります。

## 使い方

Claude Code か Codex を開いて、妙記のURLを貼って一言そえるだけです。

```
https://xxxx.larksuite.com/minutes/obcnxxxxxxxx 議事録にして
```

できあがると、DocのURLが返ってきます。

## 自分用に変える

`gijiroku-basic/SKILL.md` の先頭にある「設定」の表を書き換えます（入れた先のフォルダの方を直してください）。

| 項目 | 既定値 | 変えられる値 |
|---|---|---|
| サマリーの作り方 | 画板 | 画板／手描き |
| メインカラー | 緑 | 緑／青／紫／橙 |
| 文字起こしの保存 | する | する／しない |
| 保存先フォルダ | 空（マイスペース直下） | LarkフォルダのURL |
