<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_entitlement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified entitlement

### Description

Deletes the specified entitlement.

### Usage

    appstream_delete_entitlement(Name, StackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_delete_entitlement_:_Name">Name</code></td>
<td><p>[required] The name of the entitlement.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_delete_entitlement_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack with which the entitlement is
associated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_entitlement(
      Name = "string",
      StackName = "string"
    )
