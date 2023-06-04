<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_protocols_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified Firewall Manager protocols list

### Description

Returns information about the specified Firewall Manager protocols list.

### Usage

    fms_get_protocols_list(ListId, DefaultList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_protocols_list_:_ListId">ListId</code></td>
<td><p>[required] The ID of the Firewall Manager protocols list that you
want the details for.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_protocols_list_:_DefaultList">DefaultList</code></td>
<td><p>Specifies whether the list to retrieve is a default list owned by
Firewall Manager.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProtocolsList = list(
        ListId = "string",
        ListName = "string",
        ListUpdateToken = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        ProtocolsList = list(
          "string"
        ),
        PreviousProtocolsList = list(
          list(
            "string"
          )
        )
      ),
      ProtocolsListArn = "string"
    )

### Request syntax

    svc$get_protocols_list(
      ListId = "string",
      DefaultList = TRUE|FALSE
    )
