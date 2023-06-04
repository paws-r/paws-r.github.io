<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_list_domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all the domains for an AWS account that have been created

### Description

Returns a list of all the domains for an AWS account that have been
created.

### Usage

    customerprofiles_list_domains(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_list_domains_:_NextToken">NextToken</code></td>
<td><p>The pagination token from the previous ListDomain API
call.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_list_domains_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects returned per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          DomainName = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_domains(
      NextToken = "string",
      MaxResults = 123
    )
