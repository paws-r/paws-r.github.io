<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_delete_container_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a container image that is registered to your Amazon Lightsail container service

### Description

Deletes a container image that is registered to your Amazon Lightsail
container service.

### Usage

    lightsail_delete_container_image(serviceName, image)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_delete_container_image_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to delete
a registered container image.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_delete_container_image_:_image">image</code></td>
<td><p>[required] The name of the container image to delete from the
container service.</p>
<p>Use the <code>get_container_images</code> action to get the name of
the container images that are registered to a container service.</p>
<p>Container images sourced from your Lightsail container service, that
are registered and stored on your service, start with a colon
(<code>:</code>). For example, <code
style="white-space: pre;">⁠:container-service-1.mystaticwebsite.1⁠</code>.
Container images sourced from a public registry like Docker Hub don't
start with a colon. For example, <code>nginx:latest</code> or
<code>nginx</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_container_image(
      serviceName = "string",
      image = "string"
    )
