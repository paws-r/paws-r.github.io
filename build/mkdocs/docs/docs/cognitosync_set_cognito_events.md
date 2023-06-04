<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_set_cognito_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the AWS Lambda function for a given event type for an identity pool

### Description

Sets the AWS Lambda function for a given event type for an identity
pool. This request only updates the key/value pair specified. Other
key/values pairs are not updated. To remove a key value pair, pass a
empty value for the particular key.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_set_cognito_events(IdentityPoolId, Events)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_set_cognito_events_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] The Cognito Identity Pool to use when configuring
Cognito Events</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_set_cognito_events_:_Events">Events</code></td>
<td><p>[required] The events to configure</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_cognito_events(
      IdentityPoolId = "string",
      Events = list(
        "string"
      )
    )
