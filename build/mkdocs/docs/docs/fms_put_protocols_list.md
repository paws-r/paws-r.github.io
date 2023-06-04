<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_put_protocols_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Firewall Manager protocols list

### Description

Creates an Firewall Manager protocols list.

### Usage

    fms_put_protocols_list(ProtocolsList, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_put_protocols_list_:_ProtocolsList">ProtocolsList</code></td>
<td><p>[required] The details of the Firewall Manager protocols list to
be created.</p></td>
</tr>
<tr class="even">
<td><code id="fms_put_protocols_list_:_TagList">TagList</code></td>
<td><p>The tags associated with the resource.</p></td>
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

    svc$put_protocols_list(
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
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
