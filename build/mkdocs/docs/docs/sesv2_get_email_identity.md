<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a specific identity, including the identity's verification status, sending authorization policies, its DKIM authentication status, and its custom Mail-From settings

### Description

Provides information about a specific identity, including the identity's
verification status, sending authorization policies, its DKIM
authentication status, and its custom Mail-From settings.

### Usage

    sesv2_get_email_identity(EmailIdentity)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_email_identity_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity.</p></td>
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
        ),
        SigningAttributesOrigin = "AWS_SES"|"EXTERNAL",
        NextSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT",
        CurrentSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT",
        LastKeyGenerationTimestamp = as.POSIXct(
          "2015-01-01"
        )
      ),
      MailFromAttributes = list(
        MailFromDomain = "string",
        MailFromDomainStatus = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE",
        BehaviorOnMxFailure = "USE_DEFAULT_VALUE"|"REJECT_MESSAGE"
      ),
      Policies = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ConfigurationSetName = "string",
      VerificationStatus = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE"|"NOT_STARTED"
    )

### Request syntax

    svc$get_email_identity(
      EmailIdentity = "string"
    )
