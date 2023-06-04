<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_sample_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates sample findings of types specified by the list of finding types

### Description

Generates sample findings of types specified by the list of finding
types. If 'NULL' is specified for `findingTypes`, the API generates
sample findings of all supported finding types.

### Usage

    guardduty_create_sample_findings(DetectorId, FindingTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_create_sample_findings_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector to create sample findings
for.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_sample_findings_:_FindingTypes">FindingTypes</code></td>
<td><p>The types of sample findings to generate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_sample_findings(
      DetectorId = "string",
      FindingTypes = list(
        "string"
      )
    )
