<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_update_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status for the specified findings

### Description

Updates the status for the specified findings.

### Usage

    accessanalyzer_update_findings(analyzerArn, status, ids, resourceArn,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_update_findings_:_analyzerArn">analyzerArn</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN
of the analyzer</a> that generated the findings to update.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_update_findings_:_status">status</code></td>
<td><p>[required] The state represents the action to take to update the
finding Status. Use <code>ARCHIVE</code> to change an Active finding to
an Archived finding. Use <code>ACTIVE</code> to change an Archived
finding to an Active finding.</p></td>
</tr>
<tr class="odd">
<td><code id="accessanalyzer_update_findings_:_ids">ids</code></td>
<td><p>The IDs of the findings to update.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_update_findings_:_resourceArn">resourceArn</code></td>
<td><p>The ARN of the resource identified in the finding.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_update_findings_:_clientToken">clientToken</code></td>
<td><p>A client token.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_findings(
      analyzerArn = "string",
      status = "ACTIVE"|"ARCHIVED",
      ids = list(
        "string"
      ),
      resourceArn = "string",
      clientToken = "string"
    )
