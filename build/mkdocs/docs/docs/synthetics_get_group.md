<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_get_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one group

### Description

Returns information about one group. Groups are a global resource, so
you can use this operation from any Region.

### Usage

    synthetics_get_group(GroupIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_get_group_:_GroupIdentifier">GroupIdentifier</code></td>
<td><p>[required] Specifies the group to return information for. You can
specify the group name, the ARN, or the group ID as the
<code>GroupIdentifier</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        Id = "string",
        Name = "string",
        Arn = "string",
        Tags = list(
          "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_group(
      GroupIdentifier = "string"
    )
