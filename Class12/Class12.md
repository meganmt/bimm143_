Class 12: Bioinformatics pt. 1
================

## PDB Statistics

Here we inspect the types of structures in the main database for 3D
biomolecular data - the PDB.

NOTE: The “Analyze” -\> “PDB Statistics” \> “by Experimental Method and
Molecular Type”

> Q1. Determine the percentage of structures solved by X-Ray and
> Electron Microscopy.

``` r
# read in file
stats <- read.csv("Data Export Summary.csv", row.names = 1)

# calculate percentage values for each 'method'
# total number of structures in data set
sum(stats$Total)
```

    ## [1] 160464

``` r
ans <- (stats$Total / sum(stats$Total)) * 100
names(ans) <- rownames(stats)
round(ans, 2)
```

    ##               X-Ray                 NMR Electron Microscopy               Other 
    ##               88.95                8.04                2.72                0.19 
    ##        Multi Method 
    ##                0.10

> Q2. Also can you determine what proportion of structures are protein?
> Aim to have a rendered GitHub document with working code that yields
> your answers.

``` r
protein <- round(sum(stats$Proteins) / sum(stats$Total) * 100, 2)
protein
```

    ## [1] 92.69

> Q2: Type HIV in the PDB website search box on the home page and
> determine how many HIV-1 protease structures are in the current PDB?
