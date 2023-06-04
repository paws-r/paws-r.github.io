<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_detector_version_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the detector version’s status

### Description

Updates the detector version’s status. You can perform the following
promotions or demotions using `update_detector_version_status`: `DRAFT`
to `ACTIVE`, `ACTIVE` to `INACTIVE`, and `INACTIVE` to `ACTIVE`.

### Usage

    frauddetector_update_detector_version_status(detectorId,
      detectorVersionId, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_status_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_detector_version_status_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_status_:_status">status</code></td>
<td><p>[required] The new status.</p>
<p>The only supported values are <code>ACTIVE</code> and
<code>INACTIVE</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_detector_version_status(
      detectorId = "string",
      detectorVersionId = "string",
      status = "DRAFT"|"ACTIVE"|"INACTIVE"
    )
