<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_detector_version_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the detector version's description

### Description

Updates the detector version's description. You can update the metadata
for any detector version (`⁠DRAFT, ACTIVE,⁠` or `INACTIVE`).

### Usage

    frauddetector_update_detector_version_metadata(detectorId,
      detectorVersionId, description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_metadata_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_detector_version_metadata_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_metadata_:_description">description</code></td>
<td><p>[required] The description.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_detector_version_metadata(
      detectorId = "string",
      detectorVersionId = "string",
      description = "string"
    )
