<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_cidr_locations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of CIDR locations for the given collection (metadata only, does not include CIDR blocks)

### Description

Returns a paginated list of CIDR locations for the given collection
(metadata only, does not include CIDR blocks).

### Usage

    route53_list_cidr_locations(CollectionId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_cidr_locations_:_CollectionId">CollectionId</code></td>
<td><p>[required] The CIDR collection ID.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_cidr_locations_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token to indicate where the service is to
begin enumerating results.</p>
<p>If no value is provided, the listing of results starts from the
beginning.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_cidr_locations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of CIDR collection locations to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CidrLocations = list(
        list(
          LocationName = "string"
        )
      )
    )

### Request syntax

    svc$list_cidr_locations(
      CollectionId = "string",
      NextToken = "string",
      MaxResults = "string"
    )
