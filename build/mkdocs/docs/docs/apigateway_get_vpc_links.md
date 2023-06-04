<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apigateway_get_vpc_links</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the VpcLinks collection under the caller's account in a selected region

### Description

Gets the VpcLinks collection under the caller's account in a selected
region.

### Usage

    apigateway_get_vpc_links(position, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="apigateway_get_vpc_links_:_position">position</code></td>
<td><p>The current pagination position in the paged result set.</p></td>
</tr>
<tr class="even">
<td><code id="apigateway_get_vpc_links_:_limit">limit</code></td>
<td><p>The maximum number of returned results per page. The default
value is 25 and the maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      position = "string",
      items = list(
        list(
          id = "string",
          name = "string",
          description = "string",
          targetArns = list(
            "string"
          ),
          status = "AVAILABLE"|"PENDING"|"DELETING"|"FAILED",
          statusMessage = "string",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_vpc_links(
      position = "string",
      limit = 123
    )
