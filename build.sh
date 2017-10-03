#! /bin/sh

gitbook build || exit 1

mkdir -p _book/ebook

gitbook pdf . _book/ebook/a11ybook.pdf || exit 1
gitbook epub . _book/ebook/a11ybook.epub || exit 1
gitbook mobi . _book/ebook/a11ybook.mobi || exit 1
