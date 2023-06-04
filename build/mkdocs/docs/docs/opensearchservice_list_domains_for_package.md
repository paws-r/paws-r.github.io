<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_domains_for_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Amazon OpenSearch Service domains associated with a given package

### Description

Lists all Amazon OpenSearch Service domains associated with a given
package. For more information, see [Custom packages for Amazon
OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_list_domains_for_package(PackageID, MaxResults,
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
id="opensearchservice_list_domains_for_package_:_PackageID">PackageID</code></td>
<td><p>[required] The unique identifier of the package for which to list
associated domains.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_domains_for_package_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_list_domains_for_package_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_domains_for_package</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent
<code>list_domains_for_package</code> operations, which returns results
in the next page.</p></td>
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
