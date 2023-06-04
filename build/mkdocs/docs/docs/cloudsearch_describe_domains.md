<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the search domains owned by this account

### Description

Gets information about the search domains owned by this account. Can be
limited to specific domains. Shows all domains by default. To get the
number of searchable documents in a domain, use the console or submit a
`matchall` request to your domain's search endpoint:
`⁠q=matchall&amp;q.parser=structured&amp;size=0⁠`. For more information,
see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
target="_blank">Getting Information about a Search Domain</a> in the
*Amazon CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_domains(DomainNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_domains_:_DomainNames">DomainNames</code></td>
<td><p>The names of the domains you want to include in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainStatusList = list(
        list(
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
    )

### Request syntax

    svc$describe_domains(
      DomainNames = list(
        "string"
      )
    )
