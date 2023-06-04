<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_list_domains_for_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Amazon ES domains associated with the package

### Description

Lists all Amazon ES domains associated with the package.

### Usage

    elasticsearchservice_list_domains_for_package(PackageID, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_list_domains_for_package_:_PackageID">PackageID</code></td>
<td><p>[required] The package for which to list domains.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_list_domains_for_package_:_MaxResults">MaxResults</code></td>
<td><p>Limits results to a maximum number of domains.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_list_domains_for_package_:_NextToken">NextToken</code></td>
<td><p>Used for pagination. Only necessary if a previous API call
includes a non-null NextToken value. If provided, returns results for
the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainPackageDetailsList = list(
        list(
          PackageID = "string",
          PackageName = "string",
          PackageType = "TXT-DICTIONARY",
          LastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          DomainName = "string",
          DomainPackageStatus = "ASSOCIATING"|"ASSOCIATION_FAILED"|"ACTIVE"|"DISSOCIATING"|"DISSOCIATION_FAILED",
          PackageVersion = "string",
          ReferencePath = "string",
          ErrorDetails = list(
            ErrorType = "string",
            ErrorMessage = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains_for_package(
      PackageID = "string",
      MaxResults = 123,
      NextToken = "string"
    )
