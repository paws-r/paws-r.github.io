<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_copy_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the image within the same region or to a new region within the same AWS account

### Description

Copies the image within the same region or to a new region within the
same AWS account. Note that any tags you added to the image will not be
copied.

### Usage

    appstream_copy_image(SourceImageName, DestinationImageName,
      DestinationRegion, DestinationImageDescription)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_copy_image_:_SourceImageName">SourceImageName</code></td>
<td><p>[required] The name of the image to copy.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_copy_image_:_DestinationImageName">DestinationImageName</code></td>
<td><p>[required] The name that the image will have when it is copied to
the destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_copy_image_:_DestinationRegion">DestinationRegion</code></td>
<td><p>[required] The destination region to which the image will be
copied. This parameter is required, even if you are copying an image
within the same region.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_copy_image_:_DestinationImageDescription">DestinationImageDescription</code></td>
<td><p>The description that the image will have when it is copied to the
destination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DestinationImageName = "string"
    )

### Request syntax

    svc$copy_image(
      SourceImageName = "string",
      DestinationImageName = "string",
      DestinationRegion = "string",
      DestinationImageDescription = "string"
    )
