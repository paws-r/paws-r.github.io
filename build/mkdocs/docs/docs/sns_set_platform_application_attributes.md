<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_set_platform_application_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM (Firebase Cloud Messaging)

### Description

Sets the attributes of the platform application object for the supported
push notification services, such as APNS and GCM (Firebase Cloud
Messaging). For more information, see [Using Amazon SNS Mobile Push
Notifications](https://docs.aws.amazon.com/sns/latest/dg/sns-mobile-application-as-subscriber.html).
For information on configuring attributes for message delivery status,
see [Using Amazon SNS Application Attributes for Message Delivery
Status](https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).

### Usage

    sns_set_platform_application_attributes(PlatformApplicationArn,
      Attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_set_platform_application_attributes_:_PlatformApplicationArn">PlatformApplicationArn</code></td>
<td><p>[required] PlatformApplicationArn for
SetPlatformApplicationAttributes action.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_set_platform_application_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] A map of the platform application attributes.
Attributes in this map include the following:</p>
<ul>
<li><p><code>PlatformCredential</code> – The credential received from
the notification service.</p>
<ul>
<li><p>For ADM, <code>PlatformCredential</code>is client
secret.</p></li>
<li><p>For Apple Services using certificate credentials,
<code>PlatformCredential</code> is private key.</p></li>
<li><p>For Apple Services using token credentials,
<code>PlatformCredential</code> is signing key.</p></li>
<li><p>For GCM (Firebase Cloud Messaging),
<code>PlatformCredential</code> is API key.</p></li>
</ul></li>
<li><p><code>PlatformPrincipal</code> – The principal received from the
notification service.</p>
<ul>
<li><p>For ADM, <code>PlatformPrincipal</code>is client id.</p></li>
<li><p>For Apple Services using certificate credentials,
<code>PlatformPrincipal</code> is SSL certificate.</p></li>
<li><p>For Apple Services using token credentials,
<code>PlatformPrincipal</code> is signing key ID.</p></li>
<li><p>For GCM (Firebase Cloud Messaging), there is no
<code>PlatformPrincipal</code>.</p></li>
</ul></li>
<li><p><code>EventEndpointCreated</code> – Topic ARN to which
<code>EndpointCreated</code> event notifications are sent.</p></li>
<li><p><code>EventEndpointDeleted</code> – Topic ARN to which
<code>EndpointDeleted</code> event notifications are sent.</p></li>
<li><p><code>EventEndpointUpdated</code> – Topic ARN to which
<code>EndpointUpdate</code> event notifications are sent.</p></li>
<li><p><code>EventDeliveryFailure</code> – Topic ARN to which
<code>DeliveryFailure</code> event notifications are sent upon Direct
Publish delivery failure (permanent) to one of the application's
endpoints.</p></li>
<li><p><code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give
Amazon SNS write access to use CloudWatch Logs on your behalf.</p></li>
<li><p><code>FailureFeedbackRoleArn</code> – IAM role ARN used to give
Amazon SNS write access to use CloudWatch Logs on your behalf.</p></li>
<li><p><code>SuccessFeedbackSampleRate</code> – Sample rate percentage
(0-100) of successfully delivered messages.</p></li>
</ul>
<p>The following attributes only apply to <code>APNs</code> token-based
authentication:</p>
<ul>
<li><p><code>ApplePlatformTeamID</code> – The identifier that's assigned
to your Apple developer account team.</p></li>
<li><p><code>ApplePlatformBundleID</code> – The bundle identifier that's
assigned to your iOS app.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_platform_application_attributes(
      PlatformApplicationArn = "string",
      Attributes = list(
        "string"
      )
    )
