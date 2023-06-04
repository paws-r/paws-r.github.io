<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_detector_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a particular detector version

### Description

Gets a particular detector version.

### Usage

    frauddetector_get_detector_version(detectorId, detectorVersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_detector_version_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_detector_version_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The detector version ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      detectorId = "string",
      detectorVersionId = "string",
      description = "string",
      externalModelEndpoints = list(
        "string"
      ),
      modelVersions = list(
        list(
          modelId = "string",
          modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
          modelVersionNumber = "string",
          arn = "string"
        )
      ),
      rules = list(
        list(
          detectorId = "string",
          ruleId = "string",
          ruleVersion = "string"
        )
      ),
      status = "DRAFT"|"ACTIVE"|"INACTIVE",
      lastUpdatedTime = "string",
      createdTime = "string",
      ruleExecutionMode = "ALL_MATCHED"|"FIRST_MATCHED",
      arn = "string"
    )

### Request syntax

    svc$get_detector_version(
      detectorId = "string",
      detectorVersionId = "string"
    )
