<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_cidr_blocks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of location objects and their CIDR blocks

### Description

Returns a paginated list of location objects and their CIDR blocks.

### Usage

    route53_list_cidr_blocks(CollectionId, LocationName, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_cidr_blocks_:_CollectionId">CollectionId</code></td>
<td><p>[required] The UUID of the CIDR collection.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_cidr_blocks_:_LocationName">LocationName</code></td>
<td><p>The name of the CIDR collection location.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_cidr_blocks_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token to indicate where the service is to
begin enumerating results.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_cidr_blocks_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results you want returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CidrBlocks = list(
        list(
          CidrBlock = "string",
          LocationName = "string"
        )
      )
    )

### Request syntax

    svc$list_cidr_blocks(
      CollectionId = "string",
      LocationName = "string",
      NextToken = "string",
      MaxResults = "string"
    )
