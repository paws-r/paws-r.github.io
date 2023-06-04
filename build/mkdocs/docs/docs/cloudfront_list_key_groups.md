<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_key_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of key groups

### Description

Gets a list of key groups.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_key_groups(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_list_key_groups_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of key groups. The response includes key groups in the list
that occur after the marker. To get the next page of the list, set this
field's value to the value of <code>NextMarker</code> from the current
page's response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_key_groups_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of key groups that you want in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyGroupList = list(
        NextMarker = "string",
        MaxItems = 123,
        Quantity = 123,
        Items = list(
          list(
            KeyGroup = list(
              Id = "string",
              LastModifiedTime = as.POSIXct(
                "2015-01-01"
              ),
              KeyGroupConfig = list(
                Name = "string",
                Items = list(
                  "string"
                ),
                Comment = "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$list_key_groups(
      Marker = "string",
      MaxItems = "string"
    )
