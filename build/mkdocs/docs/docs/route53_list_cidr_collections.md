<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_cidr_collections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of CIDR collections in the Amazon Web Services account (metadata only)

### Description

Returns a paginated list of CIDR collections in the Amazon Web Services
account (metadata only).

### Usage

    route53_list_cidr_collections(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_cidr_collections_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token to indicate where the service is to
begin enumerating results.</p>
<p>If no value is provided, the listing of results starts from the
beginning.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_cidr_collections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of CIDR collections to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CidrCollections = list(
        list(
          Arn = "string",
          Id = "string",
          Name = "string",
          Version = 123
        )
      )
    )

### Request syntax

    svc$list_cidr_collections(
      NextToken = "string",
      MaxResults = "string"
    )
