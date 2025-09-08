# One Weekend Websites

Static site for One Weekend Websites.

## Development

This project uses [html-validate](https://github.com/html-validate/html-validate) and [stylelint](https://stylelint.io/) for linting.

```bash
npx -y html-validate index.html privacy.html refunds.html terms.html
npx -y stylelint styles.css
```

> **Note**
> These tools require Node.js 20 or newer. Use [nvm](https://github.com/nvm-sh/nvm) and the provided `.nvmrc` file to select the correct version.

## Rebuilding icon assets

To regenerate the optimized logo and favicon assets, ensure ImageMagick is installed and run:

```bash
scripts/generate-icons.sh
```
