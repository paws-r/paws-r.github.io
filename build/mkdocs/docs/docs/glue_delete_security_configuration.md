<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_security_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified security configuration

### Description

Deletes a specified security configuration.

### Usage

    glue_delete_security_configuration(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_security_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the security configuration to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_security_configuration(
      Name = "string"
    )
