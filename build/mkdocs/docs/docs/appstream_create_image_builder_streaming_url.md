<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_image_builder_streaming_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a URL to start an image builder streaming session

### Description

Creates a URL to start an image builder streaming session.

### Usage

    appstream_create_image_builder_streaming_url(Name, Validity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_create_image_builder_streaming_url_:_Name">Name</code></td>
<td><p>[required] The name of the image builder.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_streaming_url_:_Validity">Validity</code></td>
<td><p>The time that the streaming URL will be valid, in seconds.
Specify a value between 1 and 604800 seconds. The default is 3600
seconds.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamingURL = "string",
      Expires = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_image_builder_streaming_url(
      Name = "string",
      Validity = 123
    )
