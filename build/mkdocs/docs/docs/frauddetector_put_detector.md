<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a detector

### Description

Creates or updates a detector.

### Usage

    frauddetector_put_detector(detectorId, description, eventTypeName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_put_detector_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_put_detector_:_description">description</code></td>
<td><p>The description of the detector.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_put_detector_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_put_detector_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_detector(
      detectorId = "string",
      description = "string",
      eventTypeName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
