<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Permanently deletes a search domain and all of its data

### Description

Permanently deletes a search domain and all of its data. Once a domain
has been deleted, it cannot be recovered. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html"
target="_blank">Deleting a Search Domain</a> in the *Amazon CloudSearch
Developer Guide*.

### Usage

    cloudsearch_delete_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_delete_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to permanently
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainStatus = list(
        DomainId = "string",
        DomainName = "string",
        ARN = "string",
        Created = TRUE|FALSE,
        Deleted = TRUE|FALSE,
        DocService = list(
          Endpoint = "string"
        ),
        SearchService = list(
          Endpoint = "string"
        ),
        RequiresIndexDocuments = TRUE|FALSE,
        Processing = TRUE|FALSE,
        SearchInstanceType = "string",
        SearchPartitionCount = 123,
        SearchInstanceCount = 123,
        Limits = list(
          MaximumReplicationCount = 123,
          MaximumPartitionCount = 123
        )
      )
    )

### Request syntax

    svc$delete_domain(
      DomainName = "string"
    )
