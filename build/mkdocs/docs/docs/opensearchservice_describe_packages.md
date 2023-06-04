<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_describe_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes all packages available to OpenSearch Service

### Description

Describes all packages available to OpenSearch Service. For more
information, see [Custom packages for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_describe_packages(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_describe_packages_:_Filters">Filters</code></td>
<td><p>Only returns packages that match the
<code>DescribePackagesFilterList</code> values.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_describe_packages_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_describe_packages_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>DescribePackageFilters</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>DescribePackageFilters</code>
operations, which returns results in the next page.</p></td>
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
