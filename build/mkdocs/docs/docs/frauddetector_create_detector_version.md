<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_detector_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a detector version

### Description

Creates a detector version. The detector version starts in a `DRAFT`
status.

### Usage

    frauddetector_create_detector_version(detectorId, description,
      externalModelEndpoints, rules, modelVersions, ruleExecutionMode, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_create_detector_version_:_detectorId">detectorId</code></td>
<td><p>[required] The ID of the detector under which you want to create
a new version.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_detector_version_:_description">description</code></td>
<td><p>The description of the detector version.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_detector_version_:_externalModelEndpoints">externalModelEndpoints</code></td>
<td><p>The Amazon Sagemaker model endpoints to include in the detector
version.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_detector_version_:_rules">rules</code></td>
<td><p>[required] The rules to include in the detector version.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_detector_version_:_modelVersions">modelVersions</code></td>
<td><p>The model versions to include in the detector version.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_detector_version_:_ruleExecutionMode">ruleExecutionMode</code></td>
<td><p>The rule execution mode for the rules included in the detector
version.</p>
<p>You can define and edit the rule mode at the detector version level,
when it is in draft status.</p>
<p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector
evaluates rules sequentially, first to last, stopping at the first
matched rule. Amazon Fraud dectector then provides the outcomes for that
single rule.</p>
<p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector
evaluates all rules and returns the outcomes for all matched rules.</p>
<p>The default behavior is <code>FIRST_MATCHED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_detector_version_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      detectorId = "string",
      detectorVersionId = "string",
      status = "DRAFT"|"ACTIVE"|"INACTIVE"
    )

### Request syntax

    svc$create_detector_version(
      detectorId = "string",
      description = "string",
      externalModelEndpoints = list(
        "string"
      ),
      rules = list(
        list(
          detectorId = "string",
          ruleId = "string",
          ruleVersion = "string"
        )
      ),
      modelVersions = list(
        list(
          modelId = "string",
          modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
          modelVersionNumber = "string",
          arn = "string"
        )
      ),
      ruleExecutionMode = "ALL_MATCHED"|"FIRST_MATCHED",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
