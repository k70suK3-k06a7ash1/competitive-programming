# setup

## Quicklisp

```bash
curl -O https://beta.quicklisp.org/quicklisp.lisp
curl -O https://beta.quicklisp.org/quicklisp.lisp.asc
sbcl

# setup
> (load "~/quicklisp/setup.lisp")

# インストールスクリプトの読み込み
> (load "quicklisp.lisp")

#  Quicklispのインストール
> (quicklisp-quickstart:install)

# Quicklispを自動でロードする設定
> (ql:add-to-init-file)
```

```bash
sbcl --load "bmi.lisp"

> (calc 170 65)
> (rate 22)
```

## test

```bash
sbcl --load "bmi_tests.lisp"

```
