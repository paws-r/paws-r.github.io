<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_presigned_domain_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a URL for a specified UserProfile in a Domain

### Description

Creates a URL for a specified UserProfile in a Domain. When accessed in
a web browser, the user will be automatically signed in to Amazon
SageMaker Studio, and granted access to all of the Apps and files
associated with the Domain's Amazon Elastic File System (EFS) volume.
This operation can only be called when the authentication mode equals
IAM.

The IAM role or user passed to this API defines the permissions to
access the app. Once the presigned URL is created, no additional
permission is required to access this URL. IAM authorization policies
for this API are also enforced for every HTTP request and WebSocket
frame that attempts to connect to the app.

You can restrict access to this API and to the URL that it returns to a
list of IP addresses, Amazon VPCs or Amazon VPC Endpoints that you
specify. For more information, see [Connect to SageMaker Studio Through
an Interface VPC
Endpoint](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-interface-endpoint.html)
.

The URL that you get from a call to `create_presigned_domain_url` has a
default timeout of 5 minutes. You can configure this value using
`ExpiresInSeconds`. If you try to use the URL after the timeout limit
expires, you are directed to the Amazon Web Services console sign-in
page.

### Usage

    sagemaker_create_presigned_domain_url(DomainId, UserProfileName,
      SessionExpirationDurationInSeconds, ExpiresInSeconds, SpaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_presigned_domain_url_:_DomainId">DomainId</code></td>
<td><p>[required] The domain ID.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_presigned_domain_url_:_UserProfileName">UserProfileName</code></td>
<td><p>[required] The name of the UserProfile to sign-in as.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_presigned_domain_url_:_SessionExpirationDurationInSeconds">SessionExpirationDurationInSeconds</code></td>
<td><p>The session expiration duration in seconds. This value defaults
to 43200.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_presigned_domain_url_:_ExpiresInSeconds">ExpiresInSeconds</code></td>
<td><p>The number of seconds until the pre-signed URL expires. This
value defaults to 300.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_presigned_domain_url_:_SpaceName">SpaceName</code></td>
<td><p>The name of the space.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthorizedUrl = "string"
    )

### Request syntax

    svc$create_presigned_domain_url(
      DomainId = "string",
      UserProfileName = "string",
      SessionExpirationDurationInSeconds = 123,
      ExpiresInSeconds = 123,
      SpaceName = "string"
    )
