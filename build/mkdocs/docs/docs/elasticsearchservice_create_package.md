<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_create_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a package for use with Amazon ES domains

### Description

Create a package for use with Amazon ES domains.

### Usage

    elasticsearchservice_create_package(PackageName, PackageType,
      PackageDescription, PackageSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_create_package_:_PackageName">PackageName</code></td>
<td><p>[required] Unique identifier for the package.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_create_package_:_PackageType">PackageType</code></td>
<td><p>[required] Type of package. Currently supports only
TXT-DICTIONARY.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_create_package_:_PackageDescription">PackageDescription</code></td>
<td><p>Description of the package.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_create_package_:_PackageSource">PackageSource</code></td>
<td><p>[required] The customer S3 location <code>PackageSource</code>
for importing the package.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PackageDetails = list(
        PackageID = "string",
        PackageName = "string",
        PackageType = "TXT-DICTIONARY",
        PackageDescription = "string",
        PackageStatus = "COPYING"|"COPY_FAILED"|"VALIDATING"|"VALIDATION_FAILED"|"AVAILABLE"|"DELETING"|"DELETED"|"DELETE_FAILED",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        AvailablePackageVersion = "string",
        ErrorDetails = list(
          ErrorType = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$create_package(
      PackageName = "string",
      PackageType = "TXT-DICTIONARY",
      PackageDescription = "string",
      PackageSource = list(
        S3BucketName = "string",
        S3Key = "string"
      )
    )
