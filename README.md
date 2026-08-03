# k

## setup

```
git clone --recurse-submodules git@github.com:kaycebasques/k.git
cd k
fish init.fish
```

### git submodule stuff

init in an existing clone:

```
git submodule update --init --recursive
```

update all remotes to latest commit:

```
git submodule update --remote --recursive
```

pull latest changes:

```
git submodule update --remote --rebase
```

update SHAs:

```
git commit -m 'update submodules'
```
