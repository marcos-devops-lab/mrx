$base = "C:\Users\HP\Documents\DevOpsLab"

$folders = @(
    "$base/procedures",
    "$base/tools/folder_matrix_gui",
    "$base/notes"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force
}

# Create top-level markdown files
$mdFiles = @(
    "README.md", "projects.md", "now.md", "philosophy.md"
)

foreach ($file in $mdFiles) {
    New-Item -Path "$base/$file" -ItemType File -Force
}

# Create sample files inside folders
New-Item -Path "$base/procedures/create_folder_tree.ps1" -ItemType File -Force
New-Item -Path "$base/procedures/create_python_env.ps1" -ItemType File -Force
New-Item -Path "$base/procedures/batch_repo_initializer.ps1" -ItemType File -Force
New-Item -Path "$base/procedures/readme_template.md" -ItemType File -Force
New-Item -Path "$base/notes/devops_books_summary.md" -ItemType File -Force
New-Item -Path "$base/tools/folder_matrix_gui/README.md" -ItemType File -Force

