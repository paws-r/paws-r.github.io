<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_create_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a package for use with Amazon OpenSearch Service domains

### Description

Creates a package for use with Amazon OpenSearch Service domains. For
more information, see [Custom packages for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_create_package(PackageName, PackageType,
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
id="opensearchservice_create_package_:_PackageName">PackageName</code></td>
<td><p>[required] Unique name for the package.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_package_:_PackageType">PackageType</code></td>
<td><p>[required] The type of package.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_package_:_PackageDescription">PackageDescription</code></td>
<td><p>Description of the package.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_package_:_PackageSource">PackageSource</code></td>
<td><p>[required] The Amazon S3 location from which to import the
package.</p></td>
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
