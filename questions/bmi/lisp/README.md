# setup
```bash
curl -O https://beta.quicklisp.org/quicklisp.lisp
curl -O https://beta.quicklisp.org/quicklisp.lisp.asc
sbcl

# インストールスクリプトの読み込み
> (load "quicklisp.lisp")

#  Quicklispのインストール
> (quicklisp-quickstart:install)

# Quicklispを自動でロードする設定
> (ql:add-to-init-file)
```