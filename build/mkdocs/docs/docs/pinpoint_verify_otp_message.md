<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_verify_otp_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Verify an OTP

### Description

Verify an OTP

### Usage

    pinpoint_verify_otp_message(ApplicationId,
      VerifyOTPMessageRequestParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_verify_otp_message_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique ID of your Amazon Pinpoint
application.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_verify_otp_message_:_VerifyOTPMessageRequestParameters">VerifyOTPMessageRequestParameters</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerificationResponse = list(
        Valid = TRUE|FALSE
      )
    )

### Request syntax

    svc$verify_otp_message(
      ApplicationId = "string",
      VerifyOTPMessageRequestParameters = list(
        DestinationIdentity = "string",
        Otp = "string",
        ReferenceId = "string"
      )
    )
