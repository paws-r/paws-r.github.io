<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_update_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by Security Hub customers to update information about their investigation into a finding

### Description

Used by Security Hub customers to update information about their
investigation into a finding. Requested by administrator accounts or
member accounts. Administrator accounts can update findings for their
account and their member accounts. Member accounts can update findings
for their account.

Updates from `batch_update_findings` do not affect the value of
`UpdatedAt` for a finding.

Administrator and member accounts can use `batch_update_findings` to
update the following finding fields and objects.

-   `Confidence`

-   `Criticality`

-   `Note`

-   `RelatedFindings`

-   `Severity`

-   `Types`

-   `UserDefinedFields`

-   `VerificationState`

-   `Workflow`

You can configure IAM policies to restrict access to fields and field
values. For example, you might not want member accounts to be able to
suppress findings or change the finding severity. See [Configuring
access to
BatchUpdateFindings](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
in the *Security Hub User Guide*.

### Usage

    securityhub_batch_update_findings(FindingIdentifiers, Note, Severity,
      VerificationState, Confidence, Criticality, Types, UserDefinedFields,
      Workflow, RelatedFindings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_update_findings_:_FindingIdentifiers">FindingIdentifiers</code></td>
<td><p>[required] The list of findings to update.
<code>batch_update_findings</code> can be used to update up to 100
findings at a time.</p>
<p>For each finding, the list provides the finding identifier and the
ARN of the finding provider.</p></td>
</tr>
<tr class="even">
<td><code id="securityhub_batch_update_findings_:_Note">Note</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_batch_update_findings_:_Severity">Severity</code></td>
<td><p>Used to update the finding severity.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_batch_update_findings_:_VerificationState">VerificationState</code></td>
<td><p>Indicates the veracity of a finding.</p>
<p>The available values for <code>VerificationState</code> are as
follows.</p>
<ul>
<li><p><code>UNKNOWN</code> – The default disposition of a security
finding</p></li>
<li><p><code>TRUE_POSITIVE</code> – The security finding is
confirmed</p></li>
<li><p><code>FALSE_POSITIVE</code> – The security finding was determined
to be a false alarm</p></li>
<li><p><code>BENIGN_POSITIVE</code> – A special case of
<code>TRUE_POSITIVE</code> where the finding doesn't pose any threat, is
expected, or both</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_batch_update_findings_:_Confidence">Confidence</code></td>
<td><p>The updated value for the finding confidence. Confidence is
defined as the likelihood that a finding accurately identifies the
behavior or issue that it was intended to identify.</p>
<p>Confidence is scored on a 0-100 basis using a ratio scale, where 0
means zero percent confidence and 100 means 100 percent
confidence.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_batch_update_findings_:_Criticality">Criticality</code></td>
<td><p>The updated value for the level of importance assigned to the
resources associated with the findings.</p>
<p>A score of 0 means that the underlying resources have no criticality,
and a score of 100 is reserved for the most critical resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_batch_update_findings_:_Types">Types</code></td>
<td><p>One or more finding types in the format of
namespace/category/classifier that classify a finding.</p>
<p>Valid namespace values are as follows.</p>
<ul>
<li><p>Software and Configuration Checks</p></li>
<li><p>TTPs</p></li>
<li><p>Effects</p></li>
<li><p>Unusual Behaviors</p></li>
<li><p>Sensitive Data Identifications</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="securityhub_batch_update_findings_:_UserDefinedFields">UserDefinedFields</code></td>
<td><p>A list of name/value string pairs associated with the finding.
These are custom, user-defined fields added to a finding.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_batch_update_findings_:_Workflow">Workflow</code></td>
<td><p>Used to update the workflow status of a finding.</p>
<p>The workflow status indicates the progress of the investigation into
the finding.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_batch_update_findings_:_RelatedFindings">RelatedFindings</code></td>
<td><p>A list of findings that are related to the updated
findings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessedFindings = list(
        list(
          Id = "string",
          ProductArn = "string"
        )
      ),
      UnprocessedFindings = list(
        list(
          FindingIdentifier = list(
            Id = "string",
            ProductArn = "string"
          ),
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_update_findings(
      FindingIdentifiers = list(
        list(
          Id = "string",
          ProductArn = "string"
        )
      ),
      Note = list(
        Text = "string",
        UpdatedBy = "string"
      ),
      Severity = list(
        Normalized = 123,
        Product = 123.0,
        Label = "INFORMATIONAL"|"LOW"|"MEDIUM"|"HIGH"|"CRITICAL"
      ),
      VerificationState = "UNKNOWN"|"TRUE_POSITIVE"|"FALSE_POSITIVE"|"BENIGN_POSITIVE",
      Confidence = 123,
      Criticality = 123,
      Types = list(
        "string"
      ),
      UserDefinedFields = list(
        "string"
      ),
      Workflow = list(
        Status = "NEW"|"NOTIFIED"|"RESOLVED"|"SUPPRESSED"
      ),
      RelatedFindings = list(
        list(
          ProductArn = "string",
          Id = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example updates Security Hub findings. The finding
    # identifier parameter specifies which findings to update. Only specific
    # finding fields can be updated with this operation.
    svc$batch_update_findings(
      Confidence = 80L,
      Criticality = 80L,
      FindingIdentifiers = list(
        list(
          Id = "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss...",
          ProductArn = "arn:aws:securityhub:us-west-1::product/aws/securityhub"
        ),
        list(
          Id = "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss...",
          ProductArn = "arn:aws:securityhub:us-west-1::product/aws/securityhub"
        )
      ),
      Note = list(
        Text = "Known issue that is not a risk.",
        UpdatedBy = "user1"
      ),
      RelatedFindings = list(
        list(
          Id = "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss...",
          ProductArn = "arn:aws:securityhub:us-west-1::product/aws/securityhub"
        )
      ),
      Severity = list(
        Label = "LOW"
      ),
      Types = list(
        "Software and Configuration Checks/Vulnerabilities/CVE"
      ),
      UserDefinedFields = list(
        reviewedByCio = "true"
      ),
      VerificationState = "TRUE_POSITIVE",
      Workflow = list(
        Status = "RESOLVED"
      )
    )

    ## End(Not run)
