<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_key_group_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a key group configuration

### Description

Gets a key group configuration.

To get a key group configuration, you must provide the key group's
identifier. If the key group is referenced in a distribution's cache
behavior, you can get the key group's identifier using
`list_distributions` or `get_distribution`. If the key group is not
referenced in a cache behavior, you can get the identifier using
`list_key_groups`.

### Usage

    cloudfront_get_key_group_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_key_group_config_:_Id">Id</code></td>
<td><p>[required] The identifier of the key group whose configuration
you are getting. To get the identifier, use
<code>list_key_groups</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyGroupConfig = list(
        Name = "string",
        Items = list(
          "string"
        ),
        Comment = "string"
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_key_group_config(
      Id = "string"
    )
