<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_key_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a key group, including the date and time when the key group was last modified

### Description

Gets a key group, including the date and time when the key group was
last modified.

To get a key group, you must provide the key group's identifier. If the
key group is referenced in a distribution's cache behavior, you can get
the key group's identifier using `list_distributions` or
`get_distribution`. If the key group is not referenced in a cache
behavior, you can get the identifier using `list_key_groups`.

### Usage

    cloudfront_get_key_group(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_key_group_:_Id">Id</code></td>
<td><p>[required] The identifier of the key group that you are getting.
To get the identifier, use <code>list_key_groups</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_key_group(
      Id = "string"
    )
