<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_update_user_pool_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool

### Description

Updates the Secure Sockets Layer (SSL) certificate for the custom domain
for your user pool.

You can use this operation to provide the Amazon Resource Name (ARN) of
a new certificate to Amazon Cognito. You can't use it to change the
domain for a user pool.

A custom domain is used to host the Amazon Cognito hosted UI, which
provides sign-up and sign-in pages for your application. When you set up
a custom domain, you provide a certificate that you manage with
Certificate Manager (ACM). When necessary, you can use this operation to
change the certificate that you applied to your custom domain.

Usually, this is unnecessary following routine certificate renewal with
ACM. When you renew your existing certificate in ACM, the ARN for your
certificate remains the same, and your custom domain uses the new
certificate automatically.

However, if you replace your existing certificate with a new one, ACM
gives the new certificate a new ARN. To apply the new certificate to
your custom domain, you must provide this ARN to Amazon Cognito.

When you add your new certificate in ACM, you must choose US East (N.
Virginia) as the Amazon Web Services Region.

After you submit your request, Amazon Cognito requires up to 1 hour to
distribute your new certificate to your custom domain.

For more information about adding a custom domain to your user pool, see
[Using Your Own Domain for the Hosted
UI](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html).

### Usage

    cognitoidentityprovider_update_user_pool_domain(Domain, UserPoolId,
      CustomDomainConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_domain_:_Domain">Domain</code></td>
<td><p>[required] The domain name for the custom domain that hosts the
sign-up and sign-in pages for your application. One example might be
<code>auth.example.com</code>.</p>
<p>This string can include only lowercase letters, numbers, and hyphens.
Don't use a hyphen for the first or last character. Use periods to
separate subdomain names.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_update_user_pool_domain_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The ID of the user pool that is associated with the
custom domain whose certificate you're updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_update_user_pool_domain_:_CustomDomainConfig">CustomDomainConfig</code></td>
<td><p>[required] The configuration for a custom domain that hosts the
sign-up and sign-in pages for your application. Use this object to
specify an SSL certificate that is managed by ACM.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CloudFrontDomain = "string"
    )

### Request syntax

    svc$update_user_pool_domain(
      Domain = "string",
      UserPoolId = "string",
      CustomDomainConfig = list(
        CertificateArn = "string"
      )
    )
