update: ## ライブラリ 最新にアップグレード
	@carthage update --platform ios --use-ssh --cache-builds

install: ## 固定したバージョンをインストール
	@carthage bootstrap --platform ios --use-ssh --cache-builds
