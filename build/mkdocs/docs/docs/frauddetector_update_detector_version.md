<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_update_detector_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a detector version

### Description

Updates a detector version. The detector version attributes that you can
update include models, external model endpoints, rules, rule execution
mode, and description. You can only update a `DRAFT` detector version.

### Usage

    frauddetector_update_detector_version(detectorId, detectorVersionId,
      externalModelEndpoints, rules, description, modelVersions,
      ruleExecutionMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_:_detectorId">detectorId</code></td>
<td><p>[required] The parent detector ID for the detector version you
want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_detector_version_:_detectorVersionId">detectorVersionId</code></td>
<td><p>[required] The detector version ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_:_externalModelEndpoints">externalModelEndpoints</code></td>
<td><p>[required] The Amazon SageMaker model endpoints to include in the
detector version.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_detector_version_:_rules">rules</code></td>
<td><p>[required] The rules to include in the detector version.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_:_description">description</code></td>
<td><p>The detector version description.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_update_detector_version_:_modelVersions">modelVersions</code></td>
<td><p>The model versions to include in the detector version.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_update_detector_version_:_ruleExecutionMode">ruleExecutionMode</code></td>
<td><p>The rule execution mode to add to the detector.</p>
<p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector
evaluates rules sequentially, first to last, stopping at the first
matched rule. Amazon Fraud dectector then provides the outcomes for that
single rule.</p>
<p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector
evaluates all rules and returns the outcomes for all matched rules. You
can define and edit the rule mode at the detector version level, when it
is in draft status.</p>
<p>The default behavior is <code>FIRST_MATCHED</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_detector_version(
      detectorId = "string",
      detectorVersionId = "string",
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
      description = "string",
      modelVersions = list(
        list(
          modelId = "string",
          modelType = "ONLINE_FRAUD_INSIGHTS"|"TRANSACTION_FRAUD_INSIGHTS"|"ACCOUNT_TAKEOVER_INSIGHTS",
          modelVersionNumber = "string",
          arn = "string"
        )
      ),
      ruleExecutionMode = "ALL_MATCHED"|"FIRST_MATCHED"
    )
