<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_account_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update your Amazon SES account details

### Description

Update your Amazon SES account details.

### Usage

    sesv2_put_account_details(MailType, WebsiteURL, ContactLanguage,
      UseCaseDescription, AdditionalContactEmailAddresses,
      ProductionAccessEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_put_account_details_:_MailType">MailType</code></td>
<td><p>[required] The type of email your account will send.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_account_details_:_WebsiteURL">WebsiteURL</code></td>
<td><p>[required] The URL of your website. This information helps us
better understand the type of content that you plan to send.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_put_account_details_:_ContactLanguage">ContactLanguage</code></td>
<td><p>The language you would prefer to be contacted with.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_account_details_:_UseCaseDescription">UseCaseDescription</code></td>
<td><p>[required] A description of the types of email that you plan to
send.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_put_account_details_:_AdditionalContactEmailAddresses">AdditionalContactEmailAddresses</code></td>
<td><p>Additional email addresses that you would like to be notified
regarding Amazon SES matters.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_account_details_:_ProductionAccessEnabled">ProductionAccessEnabled</code></td>
<td><p>Indicates whether or not your account should have production
access in the current Amazon Web Services Region.</p>
<p>If the value is <code>false</code>, then your account is in the
<em>sandbox</em>. When your account is in the sandbox, you can only send
email to verified identities. Additionally, the maximum number of emails
you can send in a 24-hour period (your sending quota) is 200, and the
maximum number of emails you can send per second (your maximum sending
rate) is 1.</p>
<p>If the value is <code>true</code>, then your account has production
access. When your account has production access, you can send email to
any address. The sending quota and maximum sending rate for your account
vary based on your specific use case.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_account_details(
      MailType = "MARKETING"|"TRANSACTIONAL",
      WebsiteURL = "string",
      ContactLanguage = "EN"|"JA",
      UseCaseDescription = "string",
      AdditionalContactEmailAddresses = list(
        "string"
      ),
      ProductionAccessEnabled = TRUE|FALSE
    )
