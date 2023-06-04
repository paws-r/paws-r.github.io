<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_field_level_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a field-level encryption configuration

### Description

Remove a field-level encryption configuration.

### Usage

    cloudfront_delete_field_level_encryption_config(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_field_level_encryption_config_:_Id">Id</code></td>
<td><p>[required] The ID of the configuration you want to delete from
CloudFront.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_field_level_encryption_config_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the configuration identity to delete. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_field_level_encryption_config(
      Id = "string",
      IfMatch = "string"
    )
