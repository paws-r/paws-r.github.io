<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_batch_import_evidence_to_assessment_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads one or more pieces of evidence to a control in an Audit Manager assessment

### Description

Uploads one or more pieces of evidence to a control in an Audit Manager
assessment. You can upload manual evidence from any Amazon Simple
Storage Service (Amazon S3) bucket by specifying the S3 URI of the
evidence.

You must upload manual evidence to your S3 bucket before you can upload
it to your assessment. For instructions, see
[CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html)
and
[PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
in the *Amazon Simple Storage Service API Reference.*

The following restrictions apply to this action:

-   Maximum size of an individual evidence file: 100 MB

-   Number of daily manual evidence uploads per control: 100

-   Supported file formats: See [Supported file types for manual
    evidence](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
    in the *Audit Manager User Guide*

For more information about Audit Manager service restrictions, see
[Quotas and restrictions for Audit
Manager](https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).

### Usage

    auditmanager_batch_import_evidence_to_assessment_control(assessmentId,
      controlSetId, controlId, manualEvidence)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_batch_import_evidence_to_assessment_control_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_batch_import_evidence_to_assessment_control_:_controlSetId">controlSetId</code></td>
<td><p>[required] The identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_batch_import_evidence_to_assessment_control_:_controlId">controlId</code></td>
<td><p>[required] The identifier for the control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_batch_import_evidence_to_assessment_control_:_manualEvidence">manualEvidence</code></td>
<td><p>[required] The list of manual evidence objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          manualEvidence = list(
            s3ResourcePath = "string"
          ),
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_import_evidence_to_assessment_control(
      assessmentId = "string",
      controlSetId = "string",
      controlId = "string",
      manualEvidence = list(
        list(
          s3ResourcePath = "string"
        )
      )
    )
