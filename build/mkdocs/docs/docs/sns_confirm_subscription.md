<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_confirm_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier Subscribe action

### Description

Verifies an endpoint owner's intent to receive messages by validating
the token sent to the endpoint by an earlier `subscribe` action. If the
token is valid, the action creates a new subscription and returns its
Amazon Resource Name (ARN). This call requires an AWS signature only
when the `AuthenticateOnUnsubscribe` flag is set to "true".

### Usage

    sns_confirm_subscription(TopicArn, Token, AuthenticateOnUnsubscribe)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_confirm_subscription_:_TopicArn">TopicArn</code></td>
<td><p>[required] The ARN of the topic for which you wish to confirm a
subscription.</p></td>
</tr>
<tr class="even">
<td><code id="sns_confirm_subscription_:_Token">Token</code></td>
<td><p>[required] Short-lived token sent to an endpoint during the
<code>subscribe</code> action.</p></td>
</tr>
<tr class="odd">
<td><code
id="sns_confirm_subscription_:_AuthenticateOnUnsubscribe">AuthenticateOnUnsubscribe</code></td>
<td><p>Disallows unauthenticated unsubscribes of the subscription. If
the value of this parameter is <code>true</code> and the request has an
Amazon Web Services signature, then only the topic owner and the
subscription owner can unsubscribe the endpoint. The unsubscribe action
requires Amazon Web Services authentication.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubscriptionArn = "string"
    )

### Request syntax

    svc$confirm_subscription(
      TopicArn = "string",
      Token = "string",
      AuthenticateOnUnsubscribe = "string"
    )
