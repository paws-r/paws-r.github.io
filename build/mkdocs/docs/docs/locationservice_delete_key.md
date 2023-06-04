<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_delete_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified API key

### Description

Deletes the specified API key. The API key must have been deactivated
more than 90 days previously.

### Usage

    locationservice_delete_key(KeyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="locationservice_delete_key_:_KeyName">KeyName</code></td>
<td><p>[required] The name of the API key to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_key(
      KeyName = "string"
    )
