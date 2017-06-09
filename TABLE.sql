#TABLE

#create テーブル名は基本的に半角英字で複数形にする(items,usersなど)
CREATE TABLE TABLE_name (
	column_name1	int			PRIMARY KEY AUTO_INCREMENT
   	,column_name2	VARCHAR(10)		UNIQUE NOT NULL
	,column_name3	TIMESTAMP		NOT NULL
);

#PRIMARY KEY		レコードのキーになるカラムを定義
#NOT NULL		必須カラムとして定義
#UNIQUE			同テーブルの他レコードと重複できないことを定義

#AUTO_INCREMENT		レコードを作成した時に自動的に数値をインクリメントする
#VARCHAR(文字数)		文字列の上限値を()内で定義
#TIMESTAMP		日付・時間を格納するカラム
#BIT(1)			0か1のみ格納(boolean型と相性がいい)

#テーブルの格納情報を表示するSQL文
SELECT * FROM TABLE_name;

#テーブルに新しいレコードを生成するSQL文
INSERT INTO TABLE_name (
	column_name1
    ,column_name2
    ,column_name3
)VALUES(
	'SQ太郎'
    ,1
    ,CURRENT_TIMESTAMP
);

#VALUESはカラムの数と同じだけ、上から指定したカラムの型と合う値を入力する
#(1つ目のカラムがVARCHAR型ならVALUESの1つ目は文字列でなければならない)
#CURRENT_TIMESTAMPは現在の日付・時刻を格納する(TIMESTAMP型のカラムに対応)

#既存のレコードの情報を変更
UPDATE TABLE_name 
SET 
	column_name1 = 1
WHERE
	id = 1;

#idが1のレコードのcolumn_name1の情報を1に変更している

#TABLEにカラムを追加
ALTER TABLE TABLE_name ADD column_name1 column_definition;	#column_definitionはカラムの情報(int NOT NULL など)

#TABLEのレコード(情報リスト)を全削除
TRUNCATE TABLE TABLE_name;

#情報を取得するときにソートする
#DESC			降順
#ASC			昇順
SELECT * FROM TABLE_name order by column_name1 ASC, column_name2 DESC;
