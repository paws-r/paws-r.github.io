<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DomainSummary objects for all domains owned by the Amazon Web Services account that makes this call

### Description

Returns a list of
[DomainSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
objects for all domains owned by the Amazon Web Services account that
makes this call. Each returned `DomainSummary` object contains
information about a domain.

### Usage

    codeartifact_list_domains(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_list_domains_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_list_domains_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domains = list(
        list(
          name = "string",
          owner = "string",
          arn = "string",
          status = "Active"|"Deleted",
          createdTime = as.POSIXct(
            "2015-01-01"
          ),
          encryptionKey = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_domains(
      maxResults = 123,
      nextToken = "string"
    )
