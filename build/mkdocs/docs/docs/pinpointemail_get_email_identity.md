<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings

### Description

Provides information about a specific identity associated with your
Amazon Pinpoint account, including the identity's verification status,
its DKIM authentication status, and its custom Mail-From settings.

### Usage

    pinpointemail_get_email_identity(EmailIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_get_email_identity_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity that you want to retrieve details
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityType = "EMAIL_ADDRESS"|"DOMAIN"|"MANAGED_DOMAIN",
      FeedbackForwardingStatus = TRUE|FALSE,
      VerifiedForSendingStatus = TRUE|FALSE,
      DkimAttributes = list(
        SigningEnabled = TRUE|FALSE,
        Status = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE"|"NOT_STARTED",
        Tokens = list(
          "string"
        )
      ),
      MailFromAttributes = list(
        MailFromDomain = "string",
        MailFromDomainStatus = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE",
        BehaviorOnMxFailure = "USE_DEFAULT_VALUE"|"REJECT_MESSAGE"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_email_identity(
      EmailIdentity = "string"
    )
