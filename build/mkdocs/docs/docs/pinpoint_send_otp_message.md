<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_send_otp_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Send an OTP message

### Description

Send an OTP message

### Usage

    pinpoint_send_otp_message(ApplicationId,
      SendOTPMessageRequestParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_send_otp_message_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique ID of your Amazon Pinpoint
application.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_send_otp_message_:_SendOTPMessageRequestParameters">SendOTPMessageRequestParameters</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageResponse = list(
        ApplicationId = "string",
        EndpointResult = list(
          list(
            Address = "string",
            DeliveryStatus = "SUCCESSFUL"|"THROTTLED"|"TEMPORARY_FAILURE"|"PERMANENT_FAILURE"|"UNKNOWN_FAILURE"|"OPT_OUT"|"DUPLICATE",
            MessageId = "string",
            StatusCode = 123,
            StatusMessage = "string",
            UpdatedToken = "string"
          )
        ),
        RequestId = "string",
        Result = list(
          list(
            DeliveryStatus = "SUCCESSFUL"|"THROTTLED"|"TEMPORARY_FAILURE"|"PERMANENT_FAILURE"|"UNKNOWN_FAILURE"|"OPT_OUT"|"DUPLICATE",
            MessageId = "string",
            StatusCode = 123,
            StatusMessage = "string",
            UpdatedToken = "string"
          )
        )
      )
    )

### Request syntax

    svc$send_otp_message(
      ApplicationId = "string",
      SendOTPMessageRequestParameters = list(
        AllowedAttempts = 123,
        BrandName = "string",
        Channel = "string",
        CodeLength = 123,
        DestinationIdentity = "string",
        EntityId = "string",
        Language = "string",
        OriginationIdentity = "string",
        ReferenceId = "string",
        TemplateId = "string",
        ValidityPeriod = 123
      )
    )
