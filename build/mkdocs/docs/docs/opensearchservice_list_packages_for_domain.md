<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_packages_for_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all packages associated with an Amazon OpenSearch Service domain

### Description

Lists all packages associated with an Amazon OpenSearch Service domain.
For more information, see [Custom packages for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_list_packages_for_domain(DomainName, MaxResults,
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
id="opensearchservice_list_packages_for_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain for which you want to list
associated packages.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_packages_for_domain_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_list_packages_for_domain_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_packages_for_domain</code> operation
returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent
<code>list_packages_for_domain</code> operations, which returns results
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

    svc$list_packages_for_domain(
      DomainName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
