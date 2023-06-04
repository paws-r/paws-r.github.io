<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_update_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a package for use with Amazon ES domains

### Description

Updates a package for use with Amazon ES domains.

### Usage

    elasticsearchservice_update_package(PackageID, PackageSource,
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
id="elasticsearchservice_update_package_:_PackageID">PackageID</code></td>
<td><p>[required] Unique identifier for the package.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_package_:_PackageSource">PackageSource</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_package_:_PackageDescription">PackageDescription</code></td>
<td><p>New description of the package.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_package_:_CommitMessage">CommitMessage</code></td>
<td><p>An info message for the new version which will be shown as part
of <code>GetPackageVersionHistoryResponse</code>.</p></td>
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
