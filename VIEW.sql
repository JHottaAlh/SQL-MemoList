#VIEW

#VIEW作成
CREATE VIEW VIEW_name AS
SELECT
	column_name1
    ,column_name2
    ,column_name3	AS	column_name
    ,One.column_name4
    ,Two.column_name5
FROM
	TABLE_name1		AS 	One
	,TABLE_name2	AS	Two
WHERE
	One.id = column_name1;

#SELECT---ビューに追加したいカラムを宣言(AS以降でビュー内におけるカラム名を指定)
#FROM-----参照するテーブルを選ぶ(AS以降でテーブルに一時的にニックネームのようなものを付けられる)
#WHERE----条件式をつける(例）usersテーブルのユーザーIDと投稿記事のテーブルの投稿者IDを紐づけるなど)

#TABLE_name.column_nameで複数のテーブルに同じ名前のカラムがあった場合にどっちのカラムか判別する

#VIEWの情報を表示する場合(テーブルと同様)
SELECT * FROM TABLE_name;

#既存のVIEWの内容を変更する場合(CREATE VIEWとほぼ同様)
ALTER VIEW VIEW_name AS
SELECT
	One.column_name1
    ,Two.column_name2
FROM
	TABLE_name1		AS One
    ,TABLE_name2	AS Two
WHERE
	One.id = column_name2;
	