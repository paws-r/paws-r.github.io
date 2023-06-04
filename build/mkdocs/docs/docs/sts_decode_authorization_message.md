<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sts_decode_authorization_message</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Decodes additional information about the authorization status of a request from an encoded message returned in response to an Amazon Web Services request

### Description

Decodes additional information about the authorization status of a
request from an encoded message returned in response to an Amazon Web
Services request.

For example, if a user is not authorized to perform an operation that he
or she has requested, the request returns a
`Client.UnauthorizedOperation` response (an HTTP 403 response). Some
Amazon Web Services operations additionally return an encoded message
that can provide details about this authorization failure.

Only certain Amazon Web Services operations return an encoded
authorization message. The documentation for an individual operation
indicates whether that operation returns an encoded message in addition
to returning an HTTP code.

The message is encoded because the details of the authorization status
can contain privileged information that the user who requested the
operation should not see. To decode an authorization status message, a
user must be granted permissions through an IAM
[policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
to request the `decode_authorization_message`
(`sts:DecodeAuthorizationMessage`) action.

The decoded message includes the following type of information:

-   Whether the request was denied due to an explicit deny or due to the
    absence of an explicit allow. For more information, see [Determining
    Whether a Request is Allowed or
    Denied](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow)
    in the *IAM User Guide*.

-   The principal who made the request.

-   The requested action.

-   The requested resource.

-   The values of condition keys in the context of the user's request.

### Usage

    sts_decode_authorization_message(EncodedMessage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sts_decode_authorization_message_:_EncodedMessage">EncodedMessage</code></td>
<td><p>[required] The encoded message that was returned with the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DecodedMessage = "string"
    )

### Request syntax

    svc$decode_authorization_message(
      EncodedMessage = "string"
    )

### Examples

    ## Not run: 
    # 
    svc$decode_authorization_message(
      EncodedMessage = "<encoded-message>"
    )

    ## End(Not run)
