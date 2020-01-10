homebrew-rdflint
--

Homebrew Formula for rdflint

see. https://brew.sh/

## How to use

```
brew tap imas/rdflint
brew install [package-name]
```

## Package List

| Package | Description | URL |
----|----|----
| rdflint | RDF Linter | https://github.com/imas/rdflint |

## How to update formula

After release of rdflint, update formula by following process.

1. check latest rdflint version.

   ```
   curl https://jitpack.io/api/builds/com.github.imas/rdflint/latestOk
   ```

2. download latest rdflint.

   ```
   export RDFLINT_VERSION=x.x.x
   wget https://jitpack.io/com/github/imas/rdflint/$RDFLINT_VERSION/rdflint-$RDFLINT_VERSION.jar
   ```

3. compute sha256.

   ```
   shasum -a 256 rdflint-$RDFLINT_VERSION.jar 
   ```

4. replace ``RDFLINT_VERSION`` and ``sha256`` value of ``rdflint.rb``.
