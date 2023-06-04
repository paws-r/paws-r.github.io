<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the detector

### Description

Deletes the detector. Before deleting a detector, you must first delete
all detector versions and rule versions associated with the detector.

When you delete a detector, Amazon Fraud Detector permanently deletes
the detector and the data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_detector(detectorId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_detector_:_detectorId">detectorId</code></td>
<td><p>[required] The ID of the detector to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_detector(
      detectorId = "string"
    )
