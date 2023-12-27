param (
    [Parameter(Mandatory=$true)][string]$commit
    )

Copy-Item -RF _book/* .

git clean -fx _book

git add .

git commit -m $commit

git push