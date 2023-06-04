<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_delete_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the package

### Description

Delete the package.

### Usage

    elasticsearchservice_delete_package(PackageID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_delete_package_:_PackageID">PackageID</code></td>
<td><p>[required] Internal ID of the package that you want to delete.
Use <code>describe_packages</code> to find this value.</p></td>
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

    svc$delete_package(
      PackageID = "string"
    )
