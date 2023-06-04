<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_register_container_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a container image to your Amazon Lightsail container service

### Description

Registers a container image to your Amazon Lightsail container service.

This action is not required if you install and use the Lightsail Control
(lightsailctl) plugin to push container images to your Lightsail
container service. For more information, see Pushing and managing
container images on your Amazon Lightsail container services in the
*Amazon Lightsail Developer Guide*.

### Usage

    lightsail_register_container_image(serviceName, label, digest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_register_container_image_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the container service for which to
register a container image.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_register_container_image_:_label">label</code></td>
<td><p>[required] The label for the container image when it's registered
to the container service.</p>
<p>Use a descriptive label that you can use to track the different
versions of your registered container images.</p>
<p>Use the <code>get_container_images</code> action to return the
container images registered to a Lightsail container service. The label
is the <code style="white-space: pre;">⁠&lt;imagelabel&gt;⁠</code> portion
of the following image name example:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠:container-service-1.&lt;imagelabel&gt;.1⁠</code></p></li>
</ul>
<p>If the name of your container service is
<code>mycontainerservice</code>, and the label that you specify is
<code>mystaticwebsite</code>, then the name of the registered container
image will be <code
style="white-space: pre;">⁠:mycontainerservice.mystaticwebsite.1⁠</code>.</p>
<p>The number at the end of these image name examples represents the
version of the registered container image. If you push and register
another container image to the same Lightsail container service, with
the same label, then the version number for the new registered container
image will be <code>2</code>. If you push and register another container
image, the version number will be <code>3</code>, and so on.</p></td>
</tr>
<tr class="odd">
<td><code
id="lightsail_register_container_image_:_digest">digest</code></td>
<td><p>[required] The digest of the container image to be
registered.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerImage = list(
        image = "string",
        digest = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$register_container_image(
      serviceName = "string",
      label = "string",
      digest = "string"
    )
