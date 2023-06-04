<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_custom_verification_email_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the existing custom verification email templates for your account in the current AWS Region

### Description

Lists the existing custom verification email templates for your account
in the current AWS Region.

For more information about custom verification email templates, see
[Using Custom Verification Email
Templates](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html) in
the *Amazon SES Developer Guide*.

You can execute this operation no more than once per second.

### Usage

    ses_list_custom_verification_email_templates(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_list_custom_verification_email_templates_:_NextToken">NextToken</code></td>
<td><p>An array the contains the name and creation time stamp for each
template in your Amazon SES account.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_list_custom_verification_email_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of custom verification email templates to
return. This value must be at least 1 and less than or equal to 50. If
you do not specify a value, or if you specify a value less than 1 or
greater than 50, the operation will return up to 50 results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CustomVerificationEmailTemplates = list(
        list(
          TemplateName = "string",
          FromEmailAddress = "string",
          TemplateSubject = "string",
          SuccessRedirectionURL = "string",
          FailureRedirectionURL = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_verification_email_templates(
      NextToken = "string",
      MaxResults = 123
    )
