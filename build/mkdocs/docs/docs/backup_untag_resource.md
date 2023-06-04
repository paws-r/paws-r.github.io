<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)

### Description

Removes a set of key-value pairs from a recovery point, backup plan, or
backup vault identified by an Amazon Resource Name (ARN)

### Usage

    backup_untag_resource(ResourceArn, TagKeyList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] An ARN that uniquely identifies a resource. The format
of the ARN depends on the type of the tagged resource.</p></td>
</tr>
<tr class="even">
<td><code id="backup_untag_resource_:_TagKeyList">TagKeyList</code></td>
<td><p>[required] A list of keys to identify which key-value tags to
remove from a resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeyList = list(
        "string"
      )
    )
