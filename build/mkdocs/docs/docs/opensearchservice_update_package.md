<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_update_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a package for use with Amazon OpenSearch Service domains

### Description

Updates a package for use with Amazon OpenSearch Service domains. For
more information, see [Custom packages for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_update_package(PackageID, PackageSource,
      PackageDescription, CommitMessage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_update_package_:_PackageID">PackageID</code></td>
<td><p>[required] The unique identifier for the package.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_package_:_PackageSource">PackageSource</code></td>
<td><p>[required] Amazon S3 bucket and key for the package.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_package_:_PackageDescription">PackageDescription</code></td>
<td><p>A new description of the package.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_package_:_CommitMessage">CommitMessage</code></td>
<td><p>Commit message for the updated file, which is shown as part of
<code>GetPackageVersionHistoryResponse</code>.</p></td>
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

    svc$update_package(
      PackageID = "string",
      PackageSource = list(
        S3BucketName = "string",
        S3Key = "string"
      ),
      PackageDescription = "string",
      CommitMessage = "string"
    )
