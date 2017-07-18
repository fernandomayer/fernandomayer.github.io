# Academic personal pages

This repository hosts the source code to build an academic personal page
based on the [academic theme][1] for [Hugo][2]. The pages are created
with Rmarkdown (`.Rmd`) files and converted to markdown (`.md`) with the
R package [**knitr**][3].

## Installation requirements

You must have Hugo installed on your system. In most Linux
distributions, it may already be available through your package manager.
If it is not, follow the instructions on the Hugo website.

You will also need the latest version of R and the latest version of
knitr, which can be installed as follows:


```r
library(devtools)
install_github("yihui/knitr")
```

## Building from scratch

To build a site from scratch with Hugo, you can simply run:


```sh
hugo new site <mysite>
```

where `<mysite>` will be the container of the source files for your
site. Then `cd mysite`. By default there will be no theme preloaded, so
you will have to pick one from [here][4]. As we are using the academic
theme, the "installation" would be done by cloning the git repository of
the theme:


```sh
git clone https://github.com/gcushen/hugo-academic.git themes/academic
```

To have an example structure of a complete webpage, simply copy the
`exampleSite` folder:


```sh
cp -av themes/academic/exampleSite/* .
```

Then start Hugo server with


```sh
hugo server --watch
```

and open your browser at `localhost:1313` to see the website. Every time
you edit and save a file from this structure, the pega is automaticaly
refreshed.

## Forking this repository

You may jump all the steps above by forking this repository and editing
the content as you need.

## Usage

If you forked this repository, go to the root of your site, start `hugo
server` and follow these steps do edit the content of your webpage:

1. Edit the contents of `config.toml`. This is straightforward to do
   since all the fields have intuitive names.
2. Edit all the `.Rmd` files under `content/home`. Some files will not
   need any further processing as they stand only for holding the
   "widgets" to render information from other folders.
3. Edit or create new files (copy the TOML headers from existing files)
   in folders: `project/`, `publication/`, and `talk/` (if you will use
   it all). If files inside this folders are properly set, then
   information will be automatic rendered in the webpage.

Note that all files created are `.Rmd` files, since we may want to
render R source code from any page. To render all `.Rmd` files at once,
source and run the custom function `build()`. All `.Rmd` files in all
subfolders will be rendered to `.md` files.

**Important:**

- One important modification made in `config.toml` is the value of
  `publishDir` which is set to `docs` instead of the defauld `public`
  folder. This was made only because to publish a website from Github
  pages, the contents must lie in a folder with this name. We are not
  using this scheme in this repository, but may want to use it in others,
  so it was set like this.
- For the reason stated above, the `build()` function has an argument
  called `ignore.path`, which by default is set to `"docs"`. This means
  that `.Rmd` files under this path will be ignored for kni'ing since
  they dont't need (and didn't should be) processed. So if you didn't
  specify a `publishDir` then you must use `build(ignore.path =
  "public")` or any other folder you've specified.
- Other important field in `config.toml` is the `baseurl`, which must be
  set accordingly with the host address of your webpage.

## Building the website

After editing the contents and running `build()` you still have one more
step to effectively build your site with Hugo. This is done by simply
running


```sh
hugo
```

from the root of your project. The command will build the site by
creating all the necessary files at the `publishDir` directory, which in
our case is the `docs` folder. This is all you need to host your webpage
somewhere.

## Deploying the site

To publish your site in a personal server, you just have to move the
contents of the `docs` folder to the apropriate place on that server.
This can be done with `rsync` or any other tool.

For convenience, there is a shell script called `deploy.sh` which can be
properly set to build and deploy the contents of your site to a remote
server. (**Edit this file before using it!**).

## Workflow

A tipical workflow should be like this:

1. `cd` to the root of your site
2. Run `hugo server --watch`
3. Edit/create new files (`.Rmd`)
4. Run `build()` in R to render `.Rmd` files
5. Build your site with `hugo`
6. Deploy with `deploy.sh`

## Details when hosting on git

- If you are not using Github pages to host your site, as in this case,
  you may want to put the `docs` folder in your `.gitignore`, since they
  are only the byproducts of a build from the source files. Therefore,
  it is important only to track those source files.
- If you will host your page with Github pages, then remove the `docs`
  folder from `.gitignore` and properly set (in repo Github settings)
  that the site must be deployed from there.

## Troubleshooting

- If you build the site from scratch and cloned the academic theme, then
  it is a git repository inside another (if you made the root of your
  site a git repository). To properly track the theme folder you may
  need to do this:


```sh
git rm --cached themes/academic
git add themes/academic
```

## Useful links

- [Installing Hugo on DigitalOcean][5]
- Hugo [quick start][6]
- Hugo [deployment with Rsync][7]
- Configuring [Github pages][8]


<!-- links -->

[1]: https://sourcethemes.com/academic/#intro
[2]: https://gohugo.io/
[3]: https://yihui.name/knitr/
[4]: https://themes.gohugo.io/
[5]: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-hugo-a-static-site-generator-on-ubuntu-14-04
[6]: https://gohugo.io/getting-started/quick-start/
[7]: https://gohugo.io/hosting-and-deployment/deployment-with-rsync/
[8]: https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/
