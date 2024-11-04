# competitive-programming

## Language

### Elixir(Mix)

```bash
mix new ${project}
cd ${project}
mix test
```

### Haskell(Stack)

- premise
  package.yaml

```yml
tests:
  index-test:
    main:                Spec.hs
    source-dirs:         test
    ghc-options:
    - -threaded
    - -rtsopts
    - -with-rtsopts=-N
    dependencies:
    - index
    - hspec # ++
```

```bash
stack new ${project}
cd ${project}
stack test
```

### Clojure(Leiningen)

```bash
lein new ${project}
cd ${project}
lein test
```

### LISP

- premise

```bash
brew install sbcl
```

### Koka

- install

```sh
curl -sSL https://github.com/koka-lang/koka/releases/latest/download/install.sh | sh
```

```bash
koka
> :l ${file_name}.kk

> main()
```
