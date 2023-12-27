param (
    [Parameter(Mandatory=$true)][string]$commit
    )

Remove-Item *.html
Remove-Item -r .\gitbook\

npx honkit build 

Copy-Item -R _book/* .

git clean -fx _book

git add .

git commit -m $commit

git push