# 初期セットアップ
.PHONY: setup
setup:
	bundle install

# 型定義の生成
.PHONY: rbs
rbs:
	bundle exec rbs-inline --output lib/

# 型チェック実行
.PHONY: check
check: rbs
	bundle exec steep check

# クリーンアップ
.PHONY: clean
clean:
	rm -rf sig/generated/