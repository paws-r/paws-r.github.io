<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes all packages available to Amazon ES

### Description

Describes all packages available to Amazon ES. Includes options for
filtering, limiting the number of results, and pagination.

### Usage

    elasticsearchservice_describe_packages(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_packages_:_Filters">Filters</code></td>
<td><p>Only returns packages that match the
<code>DescribePackagesFilterList</code> values.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_packages_:_MaxResults">MaxResults</code></td>
<td><p>Limits results to a maximum number of packages.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_packages_:_NextToken">NextToken</code></td>
<td><p>Used for pagination. Only necessary if a previous API call
includes a non-null NextToken value. If provided, returns results for
the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PackageDetailsList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_packages(
      Filters = list(
        list(
          Name = "PackageID"|"PackageName"|"PackageStatus",
          Value = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
