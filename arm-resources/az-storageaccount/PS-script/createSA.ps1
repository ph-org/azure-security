param(
    # SA Name
    [Parameter(Mandatory=$false)]
    [string]$saName="phwesa01",

    # RG Name
    [Parameter(Mandatory=$false)]
    [string]$rgName="pawelhaubus-we-rg",

    # Location
    [Parameter(Mandatory=$false)]
    [string]$location="westeurope",

    # SKU
    [Parameter(Mandatory=$false)]
    [string]$SKU="Standard_LRS",

    # Kind
    [Parameter(Mandatory=$false)]
    [string]$kind="StorageV2",

    # Https true false
    [Parameter(Mandatory=$false)]
    [string]$https= $True
)


# Create SA

New-AzStorageAccount -ResourceGroupName $rgName  `
                    -Name $saName `
                    -SkuName $SKU `
                    -Location $location `
                    -Kind $kind `
                    -EnableHttpsTrafficOnly $True