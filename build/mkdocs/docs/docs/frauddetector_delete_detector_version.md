<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_detector_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the detector version

### Description

Deletes the detector version. You cannot delete detector versions that
are in `ACTIVE` status.

When you delete a detector version, Amazon Fraud Detector permanently
deletes the detector and the data is no longer stored in Amazon Fraud
Detector.

### Usage

    frauddetector_delete_detector_version(detectorId, detectorVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_detector_version_:_detectorId">detectorId</code></td>
<td><p>[required] The ID of the parent detector for the detector version
to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_delete_detector_version_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The ID of the detector version to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_detector_version(
      detectorId = "string",
      detectorVersionId = "string"
    )
