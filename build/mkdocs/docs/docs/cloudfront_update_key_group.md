<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_key_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a key group

### Description

Updates a key group.

When you update a key group, all the fields are updated with the values
provided in the request. You cannot update some fields independent of
others. To update a key group:

1.  Get the current key group with `get_key_group` or
    `get_key_group_config`.

2.  Locally modify the fields in the key group that you want to update.
    For example, add or remove public key IDs.

3.  Call `update_key_group` with the entire key group object, including
    the fields that you modified and those that you didn't.

### Usage

    cloudfront_update_key_group(KeyGroupConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_key_group_:_KeyGroupConfig">KeyGroupConfig</code></td>
<td><p>[required] The key group configuration.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_update_key_group_:_Id">Id</code></td>
<td><p>[required] The identifier of the key group that you are
updating.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudfront_update_key_group_:_IfMatch">IfMatch</code></td>
<td><p>The version of the key group that you are updating. The version
is the key group's <code>ETag</code> value.</p></td>
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

    svc$update_key_group(
      KeyGroupConfig = list(
        Name = "string",
        Items = list(
          "string"
        ),
        Comment = "string"
      ),
      Id = "string",
      IfMatch = "string"
    )
