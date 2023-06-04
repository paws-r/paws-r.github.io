<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_get_security_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides details about a batch of security controls for the current Amazon Web Services account and Amazon Web Services Region

### Description

Provides details about a batch of security controls for the current
Amazon Web Services account and Amazon Web Services Region.

### Usage

    securityhub_batch_get_security_controls(SecurityControlIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_get_security_controls_:_SecurityControlIds">SecurityControlIds</code></td>
<td><p>[required] A list of security controls (identified with
<code>SecurityControlId</code>, <code>SecurityControlArn</code>, or a
mix of both parameters). The security control ID or Amazon Resource Name
(ARN) is the same across standards.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityControls = list(
        list(
          SecurityControlId = "string",
          SecurityControlArn = "string",
          Title = "string",
          Description = "string",
          RemediationUrl = "string",
          SeverityRating = "LOW"|"MEDIUM"|"HIGH"|"CRITICAL",
          SecurityControlStatus = "ENABLED"|"DISABLED"
        )
      ),
      UnprocessedIds = list(
        list(
          SecurityControlId = "string",
          ErrorCode = "INVALID_INPUT"|"ACCESS_DENIED"|"NOT_FOUND"|"LIMIT_EXCEEDED",
          ErrorReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_security_controls(
      SecurityControlIds = list(
        "string"
      )
    )
