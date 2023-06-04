<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_delete_container_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes your Amazon Lightsail container service

### Description

Deletes your Amazon Lightsail container service.

### Usage

    lightsail_delete_container_service(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_delete_container_service_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_container_service(
      serviceName = "string"
    )
