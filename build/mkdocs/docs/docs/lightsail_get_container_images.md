<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_container_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the container images that are registered to your Amazon Lightsail container service

### Description

Returns the container images that are registered to your Amazon
Lightsail container service.

If you created a deployment on your Lightsail container service that
uses container images from a public registry like Docker Hub, those
images are not returned as part of this action. Those images are not
registered to your Lightsail container service.

### Usage

    lightsail_get_container_images(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_container_images_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to return
registered container images.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerImages = list(
        list(
          image = "string",
          digest = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$get_container_images(
      serviceName = "string"
    )
