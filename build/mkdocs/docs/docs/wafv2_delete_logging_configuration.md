<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_delete_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the LoggingConfiguration from the specified web ACL

### Description

Deletes the LoggingConfiguration from the specified web ACL.

### Usage

    wafv2_delete_logging_configuration(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_delete_logging_configuration_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the web ACL from
which you want to delete the LoggingConfiguration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_logging_configuration(
      ResourceArn = "string"
    )
