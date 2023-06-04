<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new search domain

### Description

Creates a new search domain. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html"
target="_blank">Creating a Search Domain</a> in the *Amazon CloudSearch
Developer Guide*.

### Usage

    cloudsearch_create_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_create_domain_:_DomainName">DomainName</code></td>
<td><p>[required] A name for the domain you are creating. Allowed
characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain
names must start with a letter or number and be at least 3 and no more
than 28 characters long.</p></td>
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

    svc$create_domain(
      DomainName = "string"
    )
