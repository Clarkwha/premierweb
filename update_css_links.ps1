$files = @(
    "warehouse-sanitation.html",
    "office-space-sanitation.html",
    "food-processing-plant-cleaning.html",
    "apply.html"
)

foreach ($file in $files) {
    $content = Get-Content $file -Raw
    $content = $content -replace "<script src=\"https://cdn.tailwindcss.com\"></script>", ""
    $content = $content -replace "<link href=\"dist/styles.css\" rel=\"stylesheet\">", "<link href=\"dist/styles.css\" rel=\"stylesheet\">"
    $content = $content -replace "<script>.*?</script>", "", ([System.Text.RegularExpressions.RegexOptions]::Singleline)
    $content = $content -replace "<style>.*?</style>", "<style>
        .hero-bg {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('Warehouse_1.jpg');
            background-size: cover;
            background-position: center;
        }
    </style>", ([System.Text.RegularExpressions.RegexOptions]::Singleline)
    Set-Content $file $content
}
