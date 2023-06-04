<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_remove_application_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an application instance

### Description

Removes an application instance.

### Usage

    panorama_remove_application_instance(ApplicationInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_remove_application_instance_:_ApplicationInstanceId">ApplicationInstanceId</code></td>
<td><p>[required] An application instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_application_instance(
      ApplicationInstanceId = "string"
    )
